package crawler;

import org.neo4j.graphdb.*;
import org.neo4j.helpers.collection.IteratorUtil;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

public class Slugifier {

    public static final String UNWANTED_CHARACTERS = "[+=.,<>;:'\"\\\\]]";

    public static String generateSlug(Iterable<String> sources) throws IllegalArgumentException {
        Stream<String> purifiedStrings = IteratorUtil.asCollection(sources).stream().map(Slugifier::purifyString);
        Iterator<String> nonEmptyStrings = purifiedStrings.filter(asPredicate((String s) -> !s.isEmpty())).iterator();

        if (!nonEmptyStrings.hasNext()) {
            throw new IllegalArgumentException("No strings specified out of which a slug could be generated");
        }

        return String.join("-", IteratorUtil.loop(nonEmptyStrings));
    }

    protected static String purifyString(String s) {
        return s == null ? "" : s
                .trim()
                .toLowerCase()
                .replace(' ', '-')
                .replaceAll(UNWANTED_CHARACTERS, "");
    }

    public static <T> Predicate<T> asPredicate(Function<T, Boolean> callable) {
        return callable::apply;
    }

    private static void slugifyUnsluggedNodes(GraphDatabaseService graphDb, String labelName, String slugProperty, List<String> properties) {
        do {
            try (Transaction tx = graphDb.beginTx()) {
                Result result = graphDb.execute("MATCH (node:" + labelName + ")" +
                        " WHERE node." + labelName + " IS NULL" +
                        " RETURN node" +
                        " LIMIT 100");

                ResourceIterator<Node> resultSet = result.columnAs("node");

                if (!resultSet.hasNext()) {
                    break;
                }

                final ArrayList<String> arguments = new ArrayList<>(properties.size());

                resultSet.forEachRemaining((Node node) -> {
                    Stream<String> propertyValues = properties.stream().map(property -> (String) node.getProperty(property, null));
                    arguments.addAll(IteratorUtil.asCollection(propertyValues.iterator()));

                    String slug = generateSlug(arguments);
                    node.setProperty(slugProperty, slug);

                    arguments.clear();
                });
            }
        } while (true);

        try (Transaction tx = graphDb.beginTx()) {
            Result result = graphDb.execute("MATCH (node:" + labelName + ")" +
                    " WITH node.slug, COUNT(node.slug) AS c, COLLECT(node) AS duplicates" +
                    " WHERE C > 1" +
                    " RETURN duplicates");
            ResourceIterator<List<Node>> results = result.columnAs("duplicates");

            for (List<Node> duplicates : IteratorUtil.asIterable(results)) {
                int i = 1;

                for (Node node : duplicates) {
                    node.setProperty("slug", String.format("%s-%d", node.getProperty("slug"), i));
                    ++i;
                }
            }

            tx.failure();
        }
    }

    public static void main(String... args) {
        GraphDatabaseService graphDb = Neo4jHelper.openGraphDb(".");

        Arrays.asList("Player", "Team", "Tournament")
                .forEach(labelName -> slugifyUnsluggedNodes(graphDb, labelName, "slug", Arrays.asList("name", "nationality")));
    }
}
