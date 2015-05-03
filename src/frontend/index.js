var express = require('express');
var soccervis = require('./js/soccervis');
var Promise = require('bluebird');

var port = 8080;
if (process.argv.length > 2) {
    var parsed_value = parseInt(process.argv[2]);
    if (!Number.isNaN(parsed_value) && parsed_value > 0) {
        port = parsed_value;
    }
}

var neo4j_host = 'http://localhost:7474';
if (process.argv.length > 3) {
    neo4j_host = process.argv[3];
}

console.log("Starting server on 'localhost:" + port + "'");

var app = express();
var soccervisConnection = new soccervis.connection(neo4j_host);

app.use(express.static(__dirname)).listen(port);

app.get('/tournaments', function (req, res) {
    // Gets all tournaments
    soccervisConnection
        .getTournaments()
        .then(function (tournaments) {
            res.send(JSON.stringify(tournaments));
        }, function (error) {
            res.statusCode = 500;
            res.send(JSON.stringify(error));
        });
});

app.get('/team', function (req, res) {
    // Search teams
    soccervisConnection
        .searchTeam(req.query.name, req.query.year, req.query.nation, req.query.tournament)
        .then(function (teams) {
            res.send(JSON.stringify(teams));
        });
});

app.get('/team/:team', function (req, res) {
    // Get a single team
    soccervisConnection
        .getTeam(req.params.team)
        .then(function (team) {
            if (team == null) {
                res.statusCode = 404;
                res.send(null);
            } else {
                res.send(JSON.stringify(team));
            }
        });
});

app.get('/team/:team/transfers', function (req, res) {
    // Get all transfers from and to a team
    soccervisConnection
        .getTeamTransfers(req.params.team)
        .then(function (transfers) {
            res.send(JSON.stringify(transfers));
        });
});

app.get('/team/:team/transfers/from', function (req, res) {
    // Get all transfers from and to a team
    soccervisConnection
        .getPlayersLeavingTeam(req.params.team)
        .then(function (transfers) {
            res.send(JSON.stringify(transfers));
        });
});

app.get('/team/:team/transfers/to', function (req, res) {
    // Get all transfers from and to a team
    soccervisConnection
        .getPlayersJoiningTeam(req.params.team)
        .then(function (transfers) {
            res.send(JSON.stringify(transfers));
        });
});

app.get('/player', function (req, res) {
    // Search players
    soccervisConnection
        .searchPlayer(req.query.name, req.query.year, req.query.nation, req.query.tournament, req.query.team)
        .then(function (players) {
            res.send(JSON.stringify(players));
        });
});

app.get('/player/:player', function (req, res) {
    // Get a single player
    soccervisConnection
        .getPlayer(req.params.player)
        .then(function (player) {
            if (player == null) {
                res.statusCode = 404;
                res.send(null);
            } else {
                res.send(JSON.stringify(player));
            }
        });
});

app.get('/player/:player/transfers', function (req, res) {
    // Get all transfers of a player
    soccervisConnection
        .getTeamTransfers(req.params.player)
        .then(function (transfers) {
            res.send(JSON.stringify(transfers));
        });
});

app.get('/search/:term', function (req, res) {
    // Look for tournaments, teams and players
    var term = req.params.term;

    Promise.join(
        soccervisConnection.simpleTournamentSearch(term),
        soccervisConnection.simpleTeamSearch(term),
        soccervisConnection.simplePlayerSearch(term)
    )
        .then(function (tournaments, teams, players) {
            res.send(JSON.stringify({
                tournaments: tournaments,
                teams: teams,
                players: players
            }));
        });
});

function parseDate(isoDateString) {
    var dateRegex = /(\d{4})-(\d\d)-(\d\d)/g;
    var match = dateRegex.exec(isoDateString);
    if (match != null) {
        return new Date(+match[1], +match[2], +match[3]);
    }
}

function paramToDate(query, paramName) {
    var param = query[paramName];
    if (param != null) {
        return parseDate(param.toString());
    }

    return null;
}
