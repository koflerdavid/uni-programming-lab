var nodejs_simple = require('neo4j-simple');

exports.connection = Soccervis;

function Soccervis(dbUri) {
    if (dbUri == null) {
        throw new TypeError("the path to the Neo4j database must be specified");
    }

    var connection = null;

    this.graphdb = function () {
        if (connection == null) {
            connection = nodejs_simple(dbUri);
        }

        return connection;
    };
}

Soccervis.prototype.getTournaments = function () {
    return this.graphdb()
        .query('MATCH (tournament:Tournament) RETURN tournament ORDER BY tournament.name ASC ')
        .getResults('tournament').then(function (results) {
            return results;
        });
};

Soccervis.prototype.getTeam = function (teamSlug) {
    return this.graphdb()
        .query('MATCH (team:Team) WHERE team.slug = {teamSlug} RETURN team', {}, {
            teamSlug: teamSlug
        })
        .getResults('team').then(function (results) {
            if (results.length == 0) {
                return null;
            } else {
                return results[0];
            }
        });
};

Soccervis.prototype.getPlayer = function (playerSlug) {
    return this.graphdb()
        .query('MATCH (player:Player) WHERE player.slug = {playerSlug} RETURN player', {}, {
            playerSlug: playerSlug
        })
        .getResults('player').then(function (results) {
            if (results.length == 0) {
                return null;
            } else {
                return results[0];
            }
        });
};
