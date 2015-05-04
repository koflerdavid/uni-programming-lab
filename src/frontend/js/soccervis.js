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

Soccervis.prototype.searchTournament = function (term) {
    var query = [
        'MATCH (tournament:Tournament)',
        ' WHERE tournament.name =~ {namePattern}',
        'RETURN tournament',
        'ORDER BY tournament.name ASC'
    ].join(' ');

    return this.graphdb()
        .query(query, {}, {namePattern: '(?i).*' + (term || '') + '.*'})
        .getResults('tournament')
        .then(convertResultSet);
};

Soccervis.prototype.getTeam = function (teamSlug) {
    return this.graphdb()
        .query('MATCH (team:Team) WHERE team.slug = {teamSlug} RETURN team', {}, {
            teamSlug: teamSlug
        })
        .getResults('team')
        .then(firstResultOrNull);
};

Soccervis.prototype.getPlayer = function (playerSlug) {
    var queryParts = [
        'MATCH (player:Player)',
        ' WHERE player.slug = {playerSlug}',
        'OPTIONAL MATCH (player:Player)--(transfer:TRANSFER)',
        'OPTIONAL MATCH (fromTeam:Team)-->(transfer:TRANSFER)-->(toTeam:Team)',
        'RETURN player, collect(transfer) AS transfers'
    ];

    return this.graphdb()
        .query(queryParts.join(' '), {}, {
            playerSlug: playerSlug
        })
        .getResults('player', 'transfers')
        .then(firstResultOrNull)
        .then(function (result) {
            if (result != null) {
                var player = result.player;
                player.transfers = result.transfers || [];
                return player;
            }

            return null;
        })
        ;
};

Soccervis.prototype.searchPlayer = function (name, birthyear, nationality, tournament, team) {
    var queryParts = [];
    var conditions = [];
    var parameters = {};

    if (name != null) {
        conditions.push('player.name =~ {namePattern}');
        parameters.namePattern = '(?i).*' + name + '.*';
    }

    if (birthyear != null) {
        conditions.push('player.birthyear = {birthyear}');
        parameters.birthyear = birthyear;
    }

    if (nationality != null) {
        conditions.push('player.nation =~ {nationPattern}');
        parameters.nationPattern = '(?i).*' + nationality + '.*';
    }

    if (team != null) {
        conditions.push('team.name =~ {teamNamePattern}');
        parameters.teamNamePattern = '(?i).*' + team + '.*';
    }

    if (tournament != null) {
        queryParts.push('MATCH (player:Player)-[:CURRENT_TEAM]-(team:Team)-[:PARTICIPATES_IN]-(tournament:Tournament)');
    } else {
        queryParts.push('MATCH (player:Player)-[:CURRENT_TEAM]-(team:Team)');
    }

    if (conditions.length > 0) {
        queryParts.push('WHERE');
        queryParts.push(conditions.join(' AND '));
    }

    queryParts.push('OPTIONAL MATCH (player:Player)--(transfer:TRANSFER)');
    queryParts.push('OPTIONAL MATCH (fromTeam:Team)-->(transfer:TRANSFER)-->(toTeam:Team)');

    queryParts.push('RETURN player, team.slug AS teamSlug, collect(transfer) AS transfers');

    var query = queryParts.join(' ');
    console.log(query);
    console.log(parameters);

    return this.graphdb()
        .query(query, {}, parameters)
        .getResults('player', 'teamSlug', 'transfers')
        .then(function (results) {
            return results.map(function (result) {
                var player = result.player;
                player.team = result.teamSlug;
                player.transfers = result.transfers || [];
                return player;
            });
        });
};

Soccervis.prototype.getTeamTransfers = function (player) {
    return this.graphdb()
        .query('MATCH (', {}, {
            playerSlug: player
        })
        .getResults('transfer')
        .then(function (results) {

        });
};

Soccervis.prototype.searchTeam = function (name, yearEstablished, nation, tournamentSlug) {
    var queryParts = [];
    var conditions = [];
    var parameters = {};

    if (tournamentSlug != null) {
        queryParts.push('MATCH (tournament:Tournament)-[:PARTICIPATES]-(team:Team)-[:CURRENT_TEAM]-(player:Player)');
        conditions.push('tournament.slug = {tournamentSlug}');
        parameters.tournamentSlug = tournamentSlug;
    } else {
        queryParts.push('MATCH (team:Team)-[:CURRENT_TEAM]-(player:Player)');
    }

    if (name != null) {
        conditions.push("team.name =~ {namePattern}");
        parameters.namePattern = '(?i).*' + name + '.*';
    }

    if (yearEstablished != null) {
        conditions.push('team.year = {yearEstablished}');
        parameters.yearEstablished = yearEstablished;
    }

    if (nation != null) {
        conditions.push("team.nation =~ {nationPattern}");
        parameters.nationPattern = '(?i).*' + nation + '.*';
    }

    if (conditions.length > 0) {
        queryParts.push('WHERE');
        queryParts.push(conditions.join(' AND '));
    }

    queryParts.push('RETURN team, collect(player) AS players ORDER BY team.name ASC');

    return this.graphdb()
        .query(queryParts.join(' '), {}, parameters)
        .getResults('team', 'players')
        .then(function (results) {
            return results.map(function (result) {
                var team = result.team;
                team.players = result.players;
                team.transfers = result.transfers || [];
                return team;
            });
        });
};

Soccervis.prototype.getPlayersLeavingTeam = function (teamSlug) {
    var query = [
        'MATCH (player:Player)--(transfer:Transfer)-->(team:Team { slug: {teamSlug} })',
        'MATCH (originTeam:Team)-->(transfer:Transfer)',
        'RETURN player, originTeam.slug AS originTeamSlug'
    ].join(' ');

    return this.graphdb()
        .query(query, {}, { teamSlug: teamSlug })
        .getResults('player', 'originTeamSlug')
        .then(function (playersAndTransfers) {
            return playersAndTransfers.map(function (playerAndTransfer) {
                return {
                    player: playerAndTransfer[0],
                    old_team_slug: playerAndTransfer[1],
                    new_team_slug: teamSlug
                };
            });
        });
};

Soccervis.prototype.getPlayersJoiningTeam = function (teamSlug) {
    var query = [
        'MATCH (player:Player)-(transfer:Transfer)->(team:Team { slug: {teamSlug} })',
        'MATCH (transfer:Transfer)-->(destinationTeam:Team)',
        'RETURN player, destinationTeam.slug as destinationTeamSlug'
    ].join(' ');

    return this.graphdb()
        .query(query, {}, { teamSlug: teamSlug })
        .getResults('player', 'destinationTeamSlug')
        .then(function (playersAndTransfers) {
            return playersAndTransfers.map(function (playerAndTransfer) {
                return {
                    player: playerAndTransfer[0],
                    old_team_slug: playerAndTransfer[1],
                    new_team_slug: teamSlug
                };
            });
        });
};

Soccervis.prototype.simpleTeamSearch = function (term) {
    var query = [
        'MATCH (team:Team)',
        ' WHERE team.name =~ {namePattern} OR team.trainer =~ {namePattern}',
        '  OR team.address1 =~ {namePattern} OR team.address2 =~ {namePattern} OR team.address3 =~ {namePattern}',
        'RETURN team'
    ].join(' ');

    return this.graphdb()
        .query(query, {}, {namePattern: '(?i).*' + term + '.*'})
        .getResults('team')
        .then(convertResultSet);
};

Soccervis.prototype.simplePlayerSearch = function (term) {
    var query = [
        'MATCH (player:Player)',
        ' WHERE player.name =~ {namePattern}',
        'RETURN player'
    ].join(' ');

    return this.graphdb()
        .query(query, {}, {namePattern: '(?i).*' + term + '.*'})
        .getResults('player')
        .then(convertResultSet);
};

function firstResultOrNull(results) {
    if (results.length == 0) {
        return null;
    } else {
        return results[0];
    }
}

function convertResultSet(resultSet) {
    return resultSet || [];
}
