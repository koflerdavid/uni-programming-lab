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

app.get('/tournament', function (req, res) {
    soccervisConnection
        .searchTournament(req.query.name)
        .then(function (tournaments) {
            res.json(tournaments);
        }, function (error) {
            res.status(500).json(error);
        });

    //if (res.query != null && res.query.name != null) {

    //}
});

app.get('/team', function (req, res) {
    // Search teams
    soccervisConnection
        .searchTeam(req.query.name, req.query.year, req.query.nation, req.query.tournament)
        .then(function (teams) {
            res.json(teams);
        });
});

app.get('/team/:team', function (req, res) {
    // Get a single team
    soccervisConnection
        .getTeam(req.params.team)
        .then(function (team) {
            if (team == null) {
                res.status(404).json(null);
            } else {
                res.json(team);
            }
        });
});

app.get('/team/:team/transfers', function (req, res) {
    // Get all transfers from and to a team
    soccervisConnection
        .getTeamTransfers(req.params.team)
        .then(function (transfers) {
            res.json(transfers);
        });
});

app.get('/team/:team/transfers/from', function (req, res) {
    // Get all transfers from and to a team
    soccervisConnection
        .getPlayersLeavingTeam(req.params.team)
        .then(function (transfers) {
            res.json(transfers);
        });
});

app.get('/team/:team/transfers/to', function (req, res) {
    // Get all transfers from and to a team
    soccervisConnection
        .getPlayersJoiningTeam(req.params.team)
        .then(function (transfers) {
            res.json(transfers);
        });
});

app.get('/player', function (req, res) {
    // Search players
    soccervisConnection
        .searchPlayer(req.query.name, req.query.year, req.query.nation, req.query.tournament, req.query.team)
        .then(function (players) {
            res.json(players);
        });
});

app.get('/player/:player', function (req, res) {
    // Get a single player
    soccervisConnection
        .getPlayer(req.params.player)
        .then(function (player) {
            if (player == null) {
                res.status(404).json(null);
            } else {
                res.json(player);
            }
        });
});

app.get('/player/:player/transfers', function (req, res) {
    // Get all transfers of a player
    soccervisConnection
        .getTeamTransfers(req.params.player)
        .then(function (transfers) {
            res.json(transfers);
        });
});

app.get('/search/', function (req, res) {
    // Look for tournaments, teams and players
    var term = req.query.text;

    Promise.join(
        soccervisConnection.searchTournament(term),
        soccervisConnection.simpleTeamSearch(term),
        soccervisConnection.simplePlayerSearch(term)
    )
        .then(function (results) {
            var result = {
                Tournaments: results[0],
                Teams: results[1],
                Players: results[2]
            };
            res.json(result);
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

function isObjectEmpty(object) {
    return Object.getOwnPropertyNames(object).length === 0;
}
