package crawler;

import model.Contract;
import model.Player;
import model.Team;
import model.Tournament;
import org.neo4j.graphdb.*;
import org.neo4j.helpers.collection.IteratorUtil;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

public class Neo4jInserter {
    private GraphDatabaseService graphDb;

    public Neo4jInserter(GraphDatabaseService graphDb) {
        this.graphDb = graphDb;
    }

    public Node createPlayer(Player player) {
        HashMap<String, Object> parameters = new HashMap<>(9);
        parameters.put("name", player.getName());
        parameters.put("slug", Slugifier.generateSlug(Arrays.asList(player.getName(), player.getNationality(), player.getBirthday())));
        parameters.put("age", player.getAge());
        parameters.put("uri", player.getUri());
        parameters.put("birthday", player.getBirthday());
        parameters.put("birthplace", player.getBirthplace());
        parameters.put("height", player.getHeight());
        parameters.put("weight", player.getWeight());
        parameters.put("nationality", player.getNationality());

        Node nPlayer = (Node) graphDb
                .execute("MERGE (player : Player { uri: {uri} })" +
                        " SET player.name = {name}, player.slug = {slug}, player.age = {age}, player.birthday = {birthday}," +
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
                .execute("MERGE (team : Team { uri: {uri} })" +
                        " SET team.name = {name}, team.slug = {slug}, team.nickname = {nickname}, team.website = {website}," +
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
                .execute("MERGE (tournament : Tournament { uri: {uri} })" +
                        " SET tournament.name = {name}, tournament.slug = {slug}, tournament.country = {country}" +
                        " RETURN tournament", parameters)
                .columnAs("tournament").next();

        return nTournament;
    }

    public Relationship addTeamToTournament(Tournament tournament, Team team) {
        HashMap<String, Object> parameters = new HashMap<>(2);

        parameters.put("tournamentUri", tournament.getUri());
        parameters.put("teamUri", team.getUri());

        ResourceIterator<Relationship> results = graphDb
                .execute("MERGE (team:Team { uri: {teamUri} })" +
                        "  ON CREATE SET team.name = {teamName}" +
                        " MERGE (tournament:Tournament { uri: {tournamentUri} })" +
                        "  ON CREATE SET tournament.name = {tournamentName}" +
                        " MERGE (team)-[participation:" + Neo4jHelper.SoccerRelationshipTypes.IN_TOURNAMENT + "]->(tournament)" +
                        " RETURN participation", parameters)
                .columnAs("participation");

        return IteratorUtil.singleOrNull(results);
    }

    public Relationship addPlayerToTeam(Team team, Player player) {
        HashMap<String, Object> parameters = new HashMap<>(6);

        parameters.put("teamUri", team.getUri());
        parameters.put("playerUri", player.getUri());
        parameters.put("contractSigned", player.getDateSigned());
        parameters.put("position", player.getPosition());
        parameters.put("fee", player.getFee());
        parameters.put("number", player.getNumber());

        ResourceIterator<Relationship> results = graphDb
                .execute("MATCH (team:Team), (player:Player)" +
                        "  WHERE team.uri = {teamUri} AND player.uri = {playerUri}" +
                        " MERGE (team)-[membership:" + Neo4jHelper.SoccerRelationshipTypes.CURRENT_TEAM + "]-(player)" +
                        "  SET membership.contractSigned = {contractSigned}, membership.fee = {fee}," +
                        "   membership.number = {number}, membership.position = {position}" +
                        " RETURN membership", parameters)
                .columnAs("membership");

        return IteratorUtil.singleOrNull(results);
    }

    public List<Relationship> addPlayerContracts(Player player) {
        HashMap<String, Object> parameters = new HashMap<>(5);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        ArrayList<Relationship> contracts = new ArrayList<>(player.getContracts().size());

        parameters.put("playerUri", player.getUri());

        try (Transaction tx = graphDb.beginTx()) {
            for (Contract contract : player.getContracts()) {
                parameters.put("teamUri", contract.getTeam().getUri());
                parameters.put("fee", contract.getFee());
                parameters.put("from", contract.getFrom() != null ? dateFormat.format(contract.getFrom()) : null);
                parameters.put("to", contract.getTo() != null ? dateFormat.format(contract.getTo()) : null);

                ResourceIterator<Relationship> result = graphDb
                        .execute("MERGE (team:Team { uri: {teamUri} })" +
                                " MERGE (player:Player { uri: {playerUri} })" +
                                " MERGE (team)-[contract:" + Neo4jHelper.SoccerRelationshipTypes.IN_TEAM + "]-(player)" +
                                "  SET contract.from = {from}, contract.to = {to}, contract.fee = {fee}" +
                                " RETURN contract", parameters)
                        .columnAs("contract");

                if (result.hasNext()) {
                    contracts.add(result.next());
                }
            }

            tx.success();
        }

        System.out.println("Contracts: " + contracts.size());
        return contracts;
    }

    private TournamentCrawler getTournamentCrawler(TeamCrawler teamCrawler) {
        TournamentCrawler tournamentCrawler = new TournamentCrawler();
        tournamentCrawler.onTournamentCrawled(this::createTournament);
        tournamentCrawler.onTournamentCrawled(tournament -> teamCrawler.crawlAllTeamPages(tournament.getTeams()));
        tournamentCrawler.onTournamentCrawled(tournament ->
                tournament.getTeams().forEach(team -> addTeamToTournament(tournament, team)));
        return tournamentCrawler;
    }

    private TeamCrawler getTeamCrawler(PlayerCrawler playerCrawler) {
        TeamCrawler teamCrawler = new TeamCrawler();
        teamCrawler.onTeamCrawled(this::createTeam);
        teamCrawler.onTeamCrawled(team -> playerCrawler.crawlAllPlayerPages(team.getPlayers()));
        teamCrawler.onTeamCrawled(team -> team.getPlayers().forEach(player -> addPlayerToTeam(team, player)));
        return teamCrawler;
    }

    private PlayerCrawler getPlayerCrawler() {
        PlayerCrawler playerCrawler = new PlayerCrawler();
        playerCrawler.onPlayerCrawled(this::createPlayer);
        playerCrawler.onPlayerCrawled(this::addPlayerContracts);
        return playerCrawler;
    }

    public void crawlPlayers() {
        PlayerCrawler playerCrawler = new PlayerCrawler();
        TeamCrawler teamCrawler = new TeamCrawler();

        teamCrawler.onTeamCrawled(team -> playerCrawler.crawlAllPlayerPages(team.getPlayers()));
        playerCrawler.onPlayerCrawled(this::createPlayer);

        graphDb.execute("MATCH (team:Team) RETURN team.uri AS uri").forEachRemaining(row -> {
            Team team = new Team((String) row.get("uri"), (String) row.get("name"));
            teamCrawler.crawlTeamPage(team.getUri(), team);
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
            tournamentCrawler.crawlTournamentPage(tournament.getUri(), tournament);
            return tournament;

        } catch (IOException e) {
            return null;
        }
    }

    public void completeTeamInformation() {
        TeamCrawler teamCrawler = new TeamCrawler();
        teamCrawler.onTeamCrawled(this::createTeam);

        try (Transaction tx = graphDb.beginTx()) {
            ResourceIterator<String> incompleteTeams = graphDb
                    .execute("MATCH (team:Team) " +
                            " WHERE team.slug IS NULL " +
                            "RETURN team.uri as teamUri")
                    .columnAs("teamUri");

            incompleteTeams.forEachRemaining(teamCrawler::crawlTeamPage);

            tx.success();
        }
    }

    public static void main(String[] args) {
        String dbPath = args[0];
        String command = args[1];

        GraphDatabaseService graphDb = Neo4jHelper.openGraphDb(dbPath);
        Neo4jHelper.createSchema(graphDb);
        Neo4jInserter inserter = new Neo4jInserter(graphDb);

        try {
            switch (command) {
                case "tournament":
                    inserter.crawlTournament(new Tournament(args[2], args.length > 3 ? args[3] : ""));
                    break;

                case "all":
                    String rootUri = "http://www.soccerbase.com/tournaments/home.sd";
                    inserter.crawlWebsite(rootUri);
                    break;

                case "fixTeams":
                    inserter.completeTeamInformation();
                    break;
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
