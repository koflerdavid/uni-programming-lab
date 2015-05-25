package crawler;

import org.neo4j.graphdb.*;

import java.util.List;
import java.util.Map;

@SuppressWarnings({"unchecked"})
public class TransferCalculator {
    GraphDatabaseService graphDb;

    public TransferCalculator(GraphDatabaseService graphDb) {
        this.graphDb = graphDb;
    }

    public static void main(String... args) {
        GraphDatabaseService graphDb = Neo4jHelper.openGraphDb(args[0]);

        try (Transaction tx = graphDb.beginTx()) {
            new TransferCalculator(graphDb).calculateTransfers();
            tx.success();
        }
    }

    public void calculateTransfers() {
        ResourceIterator<Map<String, Object>> results = graphDb
                .execute("MATCH (player:Player)-[c:" + Neo4jHelper.SoccerRelationshipTypes.IN_TEAM + "]-(:Team) " +
                        " WHERE c.fee = \"Signed\" " +
                        "WITH player, c ORDER BY player.slug, c.from, c.to " +
                        "RETURN player, collect(c) AS contracts");

        results.forEachRemaining(result -> {
            Node nPlayer = (Node) result.get("player");
            List<Relationship> contracts = (List<Relationship>) result.get("contracts");

            System.out.println(nPlayer.getProperty("name") + " " + contracts.size());
            contracts.forEach(contract ->
                    System.out.println(contract.getProperty("from", "") + " " + contract.getProperty("to", "")));

            System.out.println();

            if (!contracts.isEmpty()) {
                Relationship oldContract = contracts.get(0);

                for (int i = 1; i < contracts.size(); i++) {
                    Relationship newContract = contracts.get(i);
                    Node nOldTeam = oldContract.getStartNode();
                    Node nNewTeam = newContract.getStartNode();

                    Node nTransfer = graphDb.createNode(DynamicLabel.label("Transfer"));
                    nOldTeam.createRelationshipTo(nTransfer, Neo4jHelper.SoccerRelationshipTypes.FROM_TEAM);
                    nTransfer.createRelationshipTo(nNewTeam, Neo4jHelper.SoccerRelationshipTypes.TO_TEAM);
                    nTransfer.createRelationshipTo(nPlayer, Neo4jHelper.SoccerRelationshipTypes.TRANSFERRED_PLAYER);
                    nTransfer.setProperty("when", newContract.getProperty("from"));

                    oldContract = newContract;
                }

                System.out.println();
                System.out.println();
            }
        });
    }
}
