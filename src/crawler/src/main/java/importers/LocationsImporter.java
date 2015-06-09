package importers;

import crawler.Neo4jHelper;
import crawler.Utils;
import org.neo4j.graphdb.DynamicLabel;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.Node;
import org.neo4j.graphdb.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.json.JsonArray;
import javax.json.JsonValue;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public class LocationsImporter {
    private final static Logger LOGGER = LoggerFactory.getLogger(LocationsImporter.class);

    private final GraphDatabaseService graphDb;

    public LocationsImporter(GraphDatabaseService graphDb) {
        this.graphDb = graphDb;
    }

    public static void main(String... args) {
        GraphDatabaseService graphDb = Neo4jHelper.openGraphDb(args[0]);
        String locationsFile = args[1];

        Neo4jHelper.createSchema(graphDb);

        LocationsImporter importer = new LocationsImporter(graphDb);

        try {
            importer.importLocationsFile(locationsFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void importLocationsFile(final String locationsFile) throws IOException {
        try (FileInputStream locationsFileHandle = new FileInputStream(locationsFile)) {
            Map<String, Object> parameters = new HashMap<>();

            try (Transaction tx = graphDb.beginTx()) {
                Utils.forEachLineAsJson(locationsFileHandle, (lineNumber, value) -> {
                    assert value.getValueType() == JsonValue.ValueType.ARRAY;
                    final JsonArray jCoordinates = (JsonArray) value;

                    Node nTeam = graphDb.findNode(DynamicLabel.label("Team"), "uri", String.format("http://www.soccerbase.com/teams/team.sd?team_id=%d", lineNumber));
                    if (nTeam == null) {
                        LOGGER.error("The team with the id {} was not found!", lineNumber);
                    } else {
                        LOGGER.info("Coordinates of team {}: {}, {}", lineNumber, jCoordinates.getJsonNumber(0).doubleValue(), jCoordinates.getJsonNumber(1).doubleValue());
                        nTeam.setProperty("longitude", jCoordinates.getJsonNumber(0).doubleValue());
                        nTeam.setProperty("latitude", jCoordinates.getJsonNumber(1).doubleValue());
                    }
                });

                tx.success();
            }
        }
    }
}
