package importers;

import crawler.Neo4jHelper;
import crawler.Neo4jInserter;
import crawler.Utils;
import model.Player;
import model.Team;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.QueryExecutionException;
import org.neo4j.graphdb.Transaction;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.zip.ZipFile;

public class ZipImporter {
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

        Neo4jInserter inserter = new Neo4jInserter(graphDb);

        importTeams(dataFile, inserter);
        importPlayers(dataFile, inserter);
        importTransfers(dataFile, inserter);
        importLocations(dataFile, inserter);
    }

    private void importLocations(DataFile dataFile, Neo4jInserter inserter) {

    }

    private void importTransfers(DataFile dataFile, Neo4jInserter inserter) {

    }

    private void importPlayers(DataFile dataFile, Neo4jInserter inserter) throws UnsupportedEncodingException, QueryExecutionException {
        SimpleDateFormat dateParser = new SimpleDateFormat("dd MMM, YY");

        try (Transaction tx = graphDb.beginTx()) {
            Utils.forEachLineAsJson(dataFile.playersInputStream, jPlayer -> {
                Player player = new Player("http://www.soccerbase.com/players/player.sd?player_id=" + jPlayer.getInt("id"), Utils.trim(jPlayer.getString("name", null)));
                player.setAge(Integer.parseInt(jPlayer.getJsonObject("details").getString("Age", "0").trim()));
                player.setNationality(Utils.trim(jPlayer.getJsonObject("details").getString("Nationality", null)));
                player.setDateSigned(Utils.trim(jPlayer.getJsonObject("details").getString("Date Signed", null)));
//                System.out.println(player);
            });

            tx.success();
        }
    }

    private void importTeams(DataFile dataFile, Neo4jInserter inserter) throws UnsupportedEncodingException, QueryExecutionException {
        try (Transaction tx = graphDb.beginTx()) {
            Utils.forEachLineAsJson(dataFile.getTeamsInputStream(), jTeam -> {
                Team team = new Team("http://www.soccerbase.com/teams/team.sd?team_id=" + jTeam.getInt("id"), jTeam.getString("name").trim());

                team.setAddress1(Utils.trim(jTeam.getJsonObject("details").getString("Address", null)));
                team.setChairman(Utils.trim(jTeam.getJsonObject("details").getString("Chairman", null)));
                team.setGround(Utils.trim(jTeam.getJsonObject("details").getString("Ground", null)));
                team.setYearFormed(jTeam.getJsonObject("details").getInt("Year Formed", 0));
                team.setNickname(Utils.trim(jTeam.getJsonObject("details").getString("Also known as", null)));

//                System.out.println(team.getGround());
            });

            tx.success();
        }
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
        public InputStream teamsInputStream;
        public InputStream playersInputStream;
        public InputStream transfersInputStream;
        public InputStream locationsInputStream;
        public ZipFile zipFile;

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
}
