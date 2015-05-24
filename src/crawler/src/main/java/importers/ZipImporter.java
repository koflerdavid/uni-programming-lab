package importers;

import crawler.Neo4jHelper;
import crawler.Neo4jInserter;
import crawler.TransferCalculator;
import crawler.Utils;
import model.Contract;
import model.Player;
import model.Team;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.QueryExecutionException;
import org.neo4j.graphdb.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonValue;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.zip.ZipFile;

public class ZipImporter {
    private final static Logger LOGGER = LoggerFactory.getLogger(ZipImporter.class);

    private final GraphDatabaseService graphDb;

    public ZipImporter(GraphDatabaseService graphDb) {
        this.graphDb = graphDb;
    }

    public static void main(String... args) {
        GraphDatabaseService graphDb = Neo4jHelper.openGraphDb(args[0]);
        String zipFile = args[1];

        Neo4jHelper.createSchema(graphDb);

        ZipImporter importer = new ZipImporter(graphDb);
        try {
            importer.importData(zipFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void importData(String zipFile) throws IOException {
        final DataFile dataFile = openZipFile(zipFile);

        final Neo4jInserter inserter = new Neo4jInserter(graphDb);

        final Map<Integer, PlayerWithRawContracts> playersWithRawContracts = importPlayers(dataFile);
        final Map<Integer, Team> teams = importTeams(dataFile, playersWithRawContracts);

        assignContracts(playersWithRawContracts, teams);
        importLocations(dataFile, teams);

//        detectDoublePlayers(playersWithRawContracts);

        try (Transaction tx = graphDb.beginTx()) {
            playersWithRawContracts.values().forEach(playerWithRawContracts -> inserter.createPlayer(playerWithRawContracts.getPlayer()));

            teams.values().forEach(team -> {
                inserter.createTeam(team);
                team.getPlayers().forEach(player -> inserter.addPlayerToTeam(team, player));
            });

            playersWithRawContracts.values().forEach(playerWithRawContracts -> {
                final Player player = playerWithRawContracts.getPlayer();
                inserter.addPlayerContracts(player);
            });

            new TransferCalculator(graphDb).calculateTransfers();

            tx.success();
        }
    }

    public static void detectDoublePlayers(Map<Integer, PlayerWithRawContracts> playersWithRawContracts) {
        final Map<String, Set<Player>> doubles = new HashMap<>();
        playersWithRawContracts.values().forEach(playerWithRawContracts -> {
            final String name = playerWithRawContracts.getPlayer().getName();

            Set<Player> players = doubles.get(name);
            if (players == null) {
                players = new LinkedHashSet<>();
                doubles.put(name, players);
            }

            players.add(playerWithRawContracts.getPlayer());
        });

        doubles.forEach((playerName, players) -> {
            if (players.size() > 1) {
                System.out.printf("Doubles for %s:\n", playerName);
                players.forEach(System.out::println);
                System.out.println();
            }
        });
    }

    private void assignContracts(Map<Integer, PlayerWithRawContracts> players, Map<Integer, Team> teams) {
        final SimpleDateFormat dateParser = new SimpleDateFormat("dd MMM, YY");

        players.values().forEach(playerWithRawContracts -> {
            Player player = playerWithRawContracts.getPlayer();

            List<JsonObject> rawContracts = playerWithRawContracts.getRawContracts().getValuesAs(JsonObject.class);
            player.getContracts().clear();

            rawContracts.forEach(contract -> {
                try {
                    final Team team = teams.get(contract.getInt("uid"));
                    final Date from = dateParser.parse(contract.getJsonArray("details").getString(0));
                    final String fee = contract.getJsonArray("details").getString(2);

                    final String rawToDate = contract.getJsonArray("details").getString(1).trim();
                    final Date to = rawToDate.isEmpty() ? null : dateParser.parse(rawToDate);

                    player.getContracts().add(new Contract(team, from, to, fee));

                } catch (ParseException e) {
                    e.printStackTrace();
                }
            });
        });
    }

    private void importLocations(final DataFile dataFile, final Map<Integer, Team> teams) throws UnsupportedEncodingException {
        Utils.forEachLineAsJson(dataFile.getLocationsInputStream(), (lineNumber, value) -> {
            assert value.getValueType() == JsonValue.ValueType.ARRAY;
            final JsonArray jCoordinates = (JsonArray) value;

            Team team = teams.get(lineNumber);
            team.setLongitude(jCoordinates.getJsonNumber(0).doubleValue());
            team.setLatitude(jCoordinates.getJsonNumber(1).doubleValue());
        });
    }

    private Map<Integer, PlayerWithRawContracts> importPlayers(final DataFile dataFile) throws UnsupportedEncodingException, QueryExecutionException {
        final Map<Integer, PlayerWithRawContracts> playersWithRawContracts = new HashMap<>();

        try (final Transaction tx = graphDb.beginTx()) {
            Utils.forEachLineAsJson(dataFile.getPlayersInputStream(), jsonValue -> {
                assert jsonValue.getValueType() == JsonValue.ValueType.OBJECT;
                final JsonObject jPlayer = (JsonObject) jsonValue;

                final Player player = new Player("http://www.soccerbase.com/players/player.sd?player_id=" + jPlayer.getInt("id"), Utils.trim(jPlayer.getString("name", null)));
                player.setAge(Integer.parseInt(jPlayer.getJsonObject("details").getString("Age", "0").trim()));
                player.setNationality(Utils.trim(jPlayer.getJsonObject("details").getString("Nationality", null)));
                player.setDateSigned(Utils.trim(jPlayer.getJsonObject("details").getString("Date Signed", null)));

                playersWithRawContracts.put(jPlayer.getInt("id"), new PlayerWithRawContracts(player, jPlayer.getJsonArray("teams")));
            });

            tx.success();
        }

        return playersWithRawContracts;
    }

    private Map<Integer, Team> importTeams(final DataFile dataFile, final Map<Integer, PlayerWithRawContracts> players) throws UnsupportedEncodingException, QueryExecutionException {
        Map<Integer, Team> teams = new HashMap<>();

        try (final Transaction tx = graphDb.beginTx()) {
            Utils.forEachLineAsJson(dataFile.getTeamsInputStream(), jsonValue -> {
                assert jsonValue.getValueType() == JsonValue.ValueType.OBJECT;
                final JsonObject jTeam = (JsonObject) jsonValue;

                final Team team = new Team("http://www.soccerbase.com/teams/team.sd?team_id=" + jTeam.getInt("id"), jTeam.getString("name").trim());

                team.setAddress1(Utils.trim(jTeam.getJsonObject("details").getString("Address", null)));
                team.setChairman(Utils.trim(jTeam.getJsonObject("details").getString("Chairman", null)));
                team.setGround(Utils.trim(jTeam.getJsonObject("details").getString("Ground", null)));
                team.setYearFormed(jTeam.getJsonObject("details").getInt("Year Formed", 0));
                team.setNickname(Utils.trim(jTeam.getJsonObject("details").getString("Also known as", null)));

                for (JsonObject jPlayerReference : jTeam.getJsonArray("players").getValuesAs(JsonObject.class)) {
                    final int playerId = jPlayerReference.getInt("uid");
                    final Player player = players.get(playerId).getPlayer();
                    team.getPlayers().add(player);
                }

                teams.put(jTeam.getInt("id"), team);
            });

            tx.success();
        }

        return teams;
    }

    protected DataFile openZipFile(final String filename) throws IOException {
        final ZipFile zipFile = new ZipFile(new File(filename), ZipFile.OPEN_READ);

        DataFile dataFile = new DataFile();
        dataFile.setZipFile(zipFile);

        dataFile.setLocationsInputStream(zipFile.getInputStream(zipFile.getEntry("locs.dat")));
        dataFile.setPlayersInputStream(zipFile.getInputStream(zipFile.getEntry("players.dat")));
        dataFile.setTeamsInputStream(zipFile.getInputStream(zipFile.getEntry("teams.dat")));
        dataFile.setTransfersInputStream(zipFile.getInputStream(zipFile.getEntry("teamtransfers.dat")));

        return dataFile;
    }

    private static class DataFile {
        private InputStream teamsInputStream;
        private InputStream playersInputStream;
        private InputStream transfersInputStream;
        private InputStream locationsInputStream;
        private ZipFile zipFile;

        public InputStream getTeamsInputStream() {
            return teamsInputStream;
        }

        public void setTeamsInputStream(InputStream teamsInputStream) {
            this.teamsInputStream = teamsInputStream;
        }

        public InputStream getPlayersInputStream() {
            return playersInputStream;
        }

        public void setPlayersInputStream(InputStream playersInputStream) {
            this.playersInputStream = playersInputStream;
        }

        public InputStream getTransfersInputStream() {
            return transfersInputStream;
        }

        public void setTransfersInputStream(InputStream transfersInputStream) {
            this.transfersInputStream = transfersInputStream;
        }

        public InputStream getLocationsInputStream() {
            return locationsInputStream;
        }

        public void setLocationsInputStream(InputStream locationsInputStream) {
            this.locationsInputStream = locationsInputStream;
        }

        public ZipFile getZipFile() {
            return zipFile;
        }

        public void setZipFile(ZipFile zipFile) {
            this.zipFile = zipFile;
        }
    }

    private static class PlayerWithRawContracts {
        private Player player;
        private JsonArray rawContracts;

        public PlayerWithRawContracts(Player player, JsonArray rawContracts) {
            this.player = player;
            this.rawContracts = rawContracts;
        }

        public Player getPlayer() {
            return player;
        }

        public JsonArray getRawContracts() {
            return rawContracts;
        }
    }
}
