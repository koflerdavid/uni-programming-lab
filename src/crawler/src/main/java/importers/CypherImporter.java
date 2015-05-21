package importers;

import crawler.Neo4jHelper;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.QueryExecutionException;
import org.neo4j.graphdb.Transaction;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class CypherImporter {
    public static void main(String... args) {
        GraphDatabaseService graphDb = Neo4jHelper.openGraphDb(args[0]);
        String file = args[1];

        Neo4jHelper.createSchema(graphDb);

        try (Transaction tx = graphDb.beginTx()) {
            BufferedReader reader = new BufferedReader(new FileReader(file));

            reader.lines().forEachOrdered(line -> {
                System.out.println(line);
                graphDb.execute(line);
            });

            tx.success();
        } catch (IOException | QueryExecutionException e) {
            e.printStackTrace();
        }
    }
}
