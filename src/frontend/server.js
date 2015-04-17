var express = require('express');
var soccervis = require('./js/soccervis');

var port = 8080;
var neo4j_host = 'http://localhost:7474';

console.log("Starting server on 'localhost:" + port + "'");

var app = express();
var soccervisConnection = new soccervis.connection(neo4j_host);

app.use(express.static(__dirname)).listen(port);

app.get('/tournaments', function (req, res) {
    // Gets all tournaments
    soccervisConnection.getTournaments()
        .then(function (tournaments) {
            res.send(JSON.stringify(tournaments));
        }, function (error) {
            res.statusCode = 500;
            res.send(JSON.stringify(error));
        });
});

app.get('/team', function (req, res) {
    res.send('Search teams');
});

app.get('/team/:team', function (req, res) {
    // Get a single team
    soccervisConnection.getTeam(req.params.team)
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
    res.send('Get all transfers from and to a team');
});

app.get('/team/:team/transfers/from', function (req, res) {
    res.send('Get all transfers where people left the team');
});

app.get('/team/:team/transfers/to', function (req, res) {
    res.send('Get all transfers where people joined the team');
});

app.get('/player', function (req, res) {
    res.send('Search players');
});

app.get('/player/:player', function (req, res) {
    // Get a single player
    soccervisConnection.getPlayer(req.params.player)
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
    res.send('Get all transfers of a player');
});
