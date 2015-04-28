package crawler;

import model.Player;
import model.Team;
import model.Tournament;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.Node;
import org.neo4j.graphdb.Relationship;
import org.neo4j.graphdb.RelationshipType;

import java.io.IOException;
import java.util.*;

public class Neo4jInserter {
    private GraphDatabaseService graphDb;

    public static enum SoccerRelationshipTypes implements RelationshipType {
        IN_TOURNAMENT, CURRENT_TEAM
    }

    public Neo4jInserter(GraphDatabaseService graphDb) {
        this.graphDb = graphDb;
    }

    public Node createPlayer(Player player) {
        HashMap<String, Object> parameters = new HashMap<>(9);
        parameters.put("name", player.getName());
        parameters.put("slug", Slugifier.generateSlug(Arrays.asList(player.getName(), player.getNationality())));
        parameters.put("age", player.getAge());
        parameters.put("uri", player.getUri());
        parameters.put("birthday", player.getBirthday());
        parameters.put("birthplace", player.getBirthplace());
        parameters.put("height", player.getHeight());
        parameters.put("weight", player.getWeight());
        parameters.put("nationality", player.getNationality());

        Node nPlayer = (Node) graphDb
                .execute("MERGE (player : Player { uri: {uri}, slug: {slug} })" +
                        " SET player.name = {name}, player.age = {age}, player.birthday = {birthday}," +
                        "  player.birthplace = {birthplace}, player.height = {height}, player.weight = {weight}," +
                        "  player.nationality = {nationality}" +
                        " RETURN player", parameters)
                .columnAs("player").next();

        return nPlayer;
    }

    public Node createTeam(Team team) {
        HashMap<String, Object> parameters = new HashMap<>(13);
        parameters.put("uri", team.getUri());
        parameters.put("name", team.getName());
        parameters.put("slug", Slugifier.generateSlug(Arrays.asList(team.getName(), Integer.toString(team.getYearFormed()))));
        parameters.put("nickname", team.getNickname());
        parameters.put("website", team.getWebsite());
        parameters.put("yearFormed", team.getYearFormed());
        parameters.put("address1", team.getAddress1());
        parameters.put("address2", team.getAddress2());
        parameters.put("address3", team.getAddress3());
        parameters.put("postcode", team.getPostCode());
        parameters.put("chairman", team.getChairman());
        parameters.put("ground", team.getGround());
        parameters.put("trainer", team.getTrainer() != null ? team.getTrainer().getName() : null);

        Node nTeam = (Node) graphDb
                .execute("MERGE (team : Team { uri: {uri}, slug: {slug} })" +
                        " SET team.name = {name}, team.nickname = {nickname}, team.website = {website}," +
                        "  team.yearFormed = {yearFormed}, team.address1 = {address1}, team.address1 = {address1}," +
                        "  team.address2 = {address2}, team.address3 = {address3}, team.postcode = {postcode}," +
                        "  team.chairman = {chairman}, team.ground = {ground}, team.trainer = {trainer}" +
                        " RETURN team", parameters)
                .columnAs("team").next();

        return nTeam;
    }

    public Node createTournament(Tournament tournament) {
        HashMap<String, Object> parameters = new HashMap<>(4);

        parameters.put("name", tournament.getName());
        parameters.put("slug", Slugifier.generateSlug(Arrays.asList(tournament.getName(), tournament.getCountry())));
        parameters.put("uri", tournament.getUri());
        parameters.put("country", tournament.getCountry());

        Node nTournament = (Node) graphDb
                .execute("MERGE (tournament : Tournament { uri: {uri}, slug: {slug} })" +
                        " SET tournament.name = {name}, tournament.country = {country}" +
                        " RETURN tournament", parameters)
                .columnAs("tournament").next();

        return nTournament;
    }

    public Relationship addTeamToTournament(Tournament tournament, Team team) {
        HashMap<String, Object> parameters = new HashMap<>(2);

        parameters.put("tournamentUri", tournament.getUri());
        parameters.put("teamUri", team.getUri());

        return (Relationship) graphDb
                .execute("MERGE (team:Team { uri: {teamUri} })" +
                        "  ON CREATE SET team.name = {teamName}" +
                        " MERGE (tournament:Tournament { uri: {tournamentUri} })" +
                        "  ON CREATE SET tournament.name = {tournamentName}" +
                        " MERGE (team)-[participation:" + SoccerRelationshipTypes.IN_TOURNAMENT + "]->(tournament)" +
                        " RETURN participation", parameters)
                .columnAs("participation").next();
    }

    public Relationship addPlayerToTeam(Team team, Player player) {
        HashMap<String, Object> parameters = new HashMap<>(6);

        parameters.put("teamUri", team.getUri());
        parameters.put("playerUri", player.getUri());
        parameters.put("contractSigned", player.getDateSigned());
        parameters.put("position", player.getPosition());
        parameters.put("fee", player.getFee());
        parameters.put("number", player.getNumber());

        return (Relationship) graphDb
                .execute("MATCH (team:Team), (player:Player)" +
                        "  WHERE team.uri = {teamUri} AND player.uri = {playerUri}" +
                        " MERGE (team)-[membership:" + SoccerRelationshipTypes.CURRENT_TEAM + "]-(player)" +
                        "  SET membership.contractSigned = {contractSigned}, membership.fee = {fee}," +
                        "   membership.number = {number}, membership.position = {position}" +
                        " RETURN membership", parameters)
                .columnAs("membership").next();
    }

    private TournamentCrawler getTournamentCrawler(TeamCrawler teamCrawler) {
        TournamentCrawler tournamentCrawler = new TournamentCrawler();
        tournamentCrawler.onTournamentCrawled(this::createTournament);
        tournamentCrawler.onTournamentCrawled((Tournament tournament) -> teamCrawler.crawlAllTeamPages(tournament.getTeams()));
        tournamentCrawler.onTournamentCrawled((Tournament tournament) ->
                tournament.getTeams().forEach((Team team) -> addTeamToTournament(tournament, team)));
        return tournamentCrawler;
    }

    private TeamCrawler getTeamCrawler(PlayerCrawler playerCrawler) {
        TeamCrawler teamCrawler = new TeamCrawler();
        teamCrawler.onTeamCrawled(this::createTeam);
        teamCrawler.onTeamCrawled((Team team) -> playerCrawler.crawlAllPlayerPages(team.getPlayers()));
        teamCrawler.onTeamCrawled((Team team) -> team.getPlayers().forEach((Player player) -> addPlayerToTeam(team, player)));
        return teamCrawler;
    }

    private PlayerCrawler getPlayerCrawler() {
        PlayerCrawler playerCrawler = new PlayerCrawler();
        playerCrawler.onPlayerCrawled(this::createPlayer);
        return playerCrawler;
    }

    public void crawlPlayers() {
        PlayerCrawler playerCrawler = new PlayerCrawler();
        TeamCrawler teamCrawler = new TeamCrawler();

        teamCrawler.onTeamCrawled((Team team) -> playerCrawler.crawlAllPlayerPages(team.getPlayers()));
        playerCrawler.onPlayerCrawled(this::createPlayer);

        graphDb.execute("MATCH (team:Team) RETURN team.uri AS uri").forEachRemaining((Map<String, Object> row) -> {
            Team team = new Team((String) row.get("uri"), (String) row.get("name"));
            teamCrawler.crawlTeamPage(team);
        });
    }

    public Set<Tournament> crawlWebsite(String rootUri) throws IOException {
        // Create the crawler. Doing it this way offers the opportunity to attach listeners
        // which are executed after an entity was parsed.
        PlayerCrawler playerCrawler = getPlayerCrawler();
        TeamCrawler teamCrawler = getTeamCrawler(playerCrawler);
        TournamentCrawler tournamentCrawler = getTournamentCrawler(teamCrawler);

        MainCrawler crawler = new MainCrawler(tournamentCrawler);

        HashSet<Tournament> tournaments = crawler.crawlMainPage(rootUri);

        return tournaments;
    }

    public Tournament crawlTournament(Tournament tournament) {
        PlayerCrawler playerCrawler = getPlayerCrawler();

        TeamCrawler teamCrawler = getTeamCrawler(playerCrawler);

        TournamentCrawler tournamentCrawler = getTournamentCrawler(teamCrawler);

        try {
            tournamentCrawler.crawlTournamentPage(tournament);
            return tournament;

        } catch (IOException e) {
            return null;
        }
    }

    public static void main(String[] args) {
        String dbPath = args[0];

        GraphDatabaseService graphDb = Neo4jHelper.openGrapDb(dbPath);
        Neo4jHelper.createSchema(graphDb);
        Neo4jInserter inserter = new Neo4jInserter(graphDb);

        try {
            if (args.length > 2) {
                inserter.crawlTournament(new Tournament(args[1], args[2]));
            } else {
                String rootUri = "http://www.soccerbase.com/tournaments/home.sd";
                inserter.crawlWebsite(rootUri);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
