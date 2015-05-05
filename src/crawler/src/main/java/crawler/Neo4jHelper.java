package crawler;

import org.neo4j.graphdb.DynamicLabel;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.Label;
import org.neo4j.graphdb.Transaction;
import org.neo4j.graphdb.factory.GraphDatabaseFactory;
import org.neo4j.graphdb.schema.ConstraintDefinition;
import org.neo4j.graphdb.schema.ConstraintType;
import org.neo4j.helpers.collection.IteratorUtil;

import java.util.Arrays;
import java.util.Collection;

public class Neo4jHelper {
    private Neo4jHelper() {
    }

    public static GraphDatabaseService openGraphDb(String dbPath) {
        final GraphDatabaseService graphDb = new GraphDatabaseFactory()
                .newEmbeddedDatabaseBuilder(dbPath)
                .newGraphDatabase();

        // Registers a shutdown hook for the Neo4j instance so that it
        // shuts down nicely when the VM exits (even if you "Ctrl-C" the
        // running application).
        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            public void run() {
                graphDb.shutdown();
            }
        });

        return graphDb;
    }

    public static void createSchema(GraphDatabaseService graphDb) {
        try (Transaction tx = graphDb.beginTx()) {
            // Add a constraint for uniqueness of "uri" on each label
            for (String labelName : Arrays.asList("Player", "Team", "Tournament", "Trainer")) {
                Label label = DynamicLabel.label(labelName);
                boolean uniqueConstraintOnUri = false;
                boolean uniqueConstraintOnSlug = false;

                for (ConstraintDefinition definition : graphDb.schema().getConstraints(label)) {
                    if (definition.isConstraintType(ConstraintType.UNIQUENESS)) {
                        Collection<String> propertyKeys = IteratorUtil.asCollection(definition.getPropertyKeys());
                        if (propertyKeys.size() == 1) {
                            final String propertyName = propertyKeys.iterator().next();

                            if ("uri".equals(propertyName)) {
                                uniqueConstraintOnUri = true;
                            }

                            if ("slug".equals(propertyName)) {
                                uniqueConstraintOnSlug = true;
                            }
                        }
                    }
                }

                if (!uniqueConstraintOnUri) {
                    graphDb.schema()
                            .constraintFor(label)
                            .assertPropertyIsUnique("uri").create();
                }

                if (!uniqueConstraintOnSlug) {
                    graphDb.schema()
                            .constraintFor(label)
                            .assertPropertyIsUnique("slug").create();
                }
            }

            tx.success();
        }
    }
}
