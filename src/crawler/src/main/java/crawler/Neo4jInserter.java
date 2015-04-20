package crawler;

import model.Player;
import model.Team;
import model.Tournament;
import org.neo4j.graphdb.*;
import org.neo4j.graphdb.factory.GraphDatabaseFactory;
import org.neo4j.graphdb.schema.ConstraintDefinition;
import org.neo4j.graphdb.schema.ConstraintType;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class Neo4jInserter {
    private GraphDatabaseService graphDb;

    public static enum SoccerRelationshipTypes implements RelationshipType {
        IN_TOURNAMENT, CURRENT_TEAM
    }

    public Neo4jInserter(GraphDatabaseService graphDb) {
        this.graphDb = graphDb;
    }

    public Node createPlayer(Player player) {
        HashMap<String, Object> parameters = new HashMap<>(7);
        parameters.put("name", player.getName());
        parameters.put("age", player.getAge());
        parameters.put("uri", player.getUri());
        parameters.put("birthdate", player.getBirthdate());
        parameters.put("birthplace", player.getBirthplace());
        parameters.put("height", player.getHeight());
        parameters.put("weight", player.getWeight());
        parameters.put("nationality", player.getNationality());
//        parameters.put("position", player.getPosition());

        Object result = graphDb
                .execute("MERGE (player : Player {name: {name}, age: {age}, uri: {uri}," +
                        "  birthdate: {birthdate}, birthplace: {birthplace}, height: {height}," +
                        "  weight: {weight}, nationality: {nationality}})" +
                        " RETURN player", parameters)
                .columnAs("player").next();

        if (!(result instanceof Node)) {
            throw new RuntimeException("Neo4j exception", (Throwable) result);
        }

        Node nPlayer = (Node) result;

        parameters.clear();
        parameters.put("playerUri", player.getUri());
        parameters.put("teamUri", player.getTeam().getUri());

        Relationship currentTeamMembership = (Relationship) graphDb
                .execute("MATCH (player:Player)" +
                        "  WHERE player.uri = {playerUri}" +
                        " MATCH (team:Team)" +
                        "  WHERE team.uri = {teamUri}" +
                        " CREATE (player)-[teamMembership:" + SoccerRelationshipTypes.CURRENT_TEAM + "]-(team)" +
                        " RETURN teamMembership", parameters)
                .columnAs("teamMembership");

        currentTeamMembership.setProperty("contractSigned", player.getDateSigned());
//        currentTeamMembership.setProperty("position", player.getPosition());
        currentTeamMembership.setProperty("fee", player.getFee());
        currentTeamMembership.setProperty("number", player.getNumber());

        return nPlayer;
    }

    public Node createTeam(Team team) {
        HashMap<String, Object> parameters = new HashMap<>(2);
        parameters.put("name", team.getName());
        parameters.put("uri", team.getUri());

        return (Node) graphDb
                .execute("MERGE (team : Team {name: {name}, country: {country}, uri: {uri})" +
                        " RETURN team", parameters)
                .columnAs("team").next();
    }

    public Node createTournament(Tournament tournament) {
        HashMap<String, Object> parameters = new HashMap<>(3);

        parameters.put("name", tournament.getName());
        parameters.put("uri", tournament.getUri());
        parameters.put("country", tournament.getCountry());

        return (Node) graphDb
                .execute("MERGE (tournament : Tournament {name: {name}, country: {country}, uri: {uri})" +
                        " RETURN tournament", parameters)
                .columnAs("tournament").next();
    }

    public Relationship addTeamToTournament(Tournament tournament, Team team) {
        HashMap<String, Object> parameters = new HashMap<>(3);

        parameters.put("tournamentUri", tournament.getUri());
        parameters.put("teamUri", team.getUri());

        return (Relationship) graphDb
                .execute("MATCH (tournament:Tournament), (team:Team)" +
                        "  WHERE tournament.uri = {tournamentUri} AND team.uri = {teamUri}" +
                        " CREATE (team)-[participation:" + SoccerRelationshipTypes.IN_TOURNAMENT + "]-(tournament)" +
                        " RETURN participation", parameters)
                .columnAs("participation").next();
    }

    public static void createSchema(GraphDatabaseService graphDb) {
        try (Transaction tx = graphDb.beginTx()) {
            // Add a constraint for uniqueness of "uri" on each label
            for (String labelName : Arrays.asList("Player", "Team", "Tournament", "Trainer")) {
                Label label = DynamicLabel.label(labelName);
                boolean uniqueConstraintOnUri = false;

                for (ConstraintDefinition definition : graphDb.schema().getConstraints(label)) {
                    if (definition.isConstraintType(ConstraintType.UNIQUENESS)) {
                        if (definition.getPropertyKeys().spliterator().getExactSizeIfKnown() == 1
                                && "uid".equals(definition.getPropertyKeys().iterator().next())) {
                            uniqueConstraintOnUri = true;
                            break;
                        }
                    }
                }

                if (!uniqueConstraintOnUri) {
                    graphDb.schema()
                            .constraintFor(label)
                            .assertPropertyIsUnique("uri").create();
                }
            }

            tx.success();
        }
    }

    public static GraphDatabaseService openGrapDb(String dbPath) {
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

    public Set<Tournament> crawlPage(String uri) {
        // Create the crawler. Doing it this way offers the opportunity to attach listeners
        // which are executed after na entity was parsed.
        PlayerCrawler playerCrawler = new PlayerCrawler();
        playerCrawler.onPlayerCrawled(this::createPlayer);

        TeamCrawler teamCrawler = new TeamCrawler(playerCrawler);
        teamCrawler.onTeamCrawled(this::createTeam);

        TournamentCrawler tournamentCrawler = new TournamentCrawler(teamCrawler);
        tournamentCrawler.onTournamentCrawled(this::createTournament);

        MainCrawler crawler = new MainCrawler(tournamentCrawler);

        HashSet<Tournament> tournaments = crawler.crawlMainPage(uri);

        tournaments.forEach((Tournament tournament) ->
                        tournament.getTeams().forEach((Team team) ->
                                this.addTeamToTournament(tournament, team))
        );

        return tournaments;
    }

    public static void main(String[] args) {
        String uri = "http://www.soccerbase.com/tournaments/home.sd";
        String dbPath = "neo4j.db";

        GraphDatabaseService graphDb = openGrapDb(dbPath);
        createSchema(graphDb);

        Neo4jInserter inserter = new Neo4jInserter(graphDb);
        inserter.crawlPage(uri);
    }
}
