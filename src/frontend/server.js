var express = require('express');
var soccervis = require('./js/soccervis');

var port = 8080;
var neo4j_host = 'http://localhost:7474';

console.log("Starting server on 'localhost:" + port + "'");

var app = express();
var soccervisConnection = new soccervis.connection(neo4j_host);

app.use(express.static(__dirname)).listen(port);

app.get('/search', function (req, res) {
    var searchText = req.query.text;
    //TODO use searchtext to filter all tournaments/players/teams
    //the output just look like this:
    var initArr = function(name){
        var arr = [];
        var l =(Math.random()*10)|0;
        for(var i=0;i<l;i++){
            var str = name+i;
            arr.push({name:str,uid:str})
        }
        return arr;
    }
    var tournaments = initArr('Tournament');
    var players = initArr('Player');
    var teams = initArr('Team');
    res.send(JSON.stringify({
        Tournaments: tournaments,
        Players:players,
        Teams:teams
    }));
});

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
    var name = req.query.name;
    res.send(JSON.stringify({
        name: name,
        trainer: 'Best trainer',
        yearformed:2015,
        website:'google.at',
        players:[
            {name:'player1',uid:'player1'},
            {name:'player2',uid:'player2'},
            {name:'player2',uid:'player2'},
            {name:'player7',uid:'player2'},
            {name:'player2',uid:'player2'},
            {name:'player3',uid:'player2'},
            {name:'player2',uid:'player2'},
            {name:'player6',uid:'player2'},
        ]
    }));
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
    var name = req.query.name;
    res.send(JSON.stringify({
        name: name,
        team:'ASdasd',
        age:12,
        nationality:'Austria',
        transfers:[
            {
                from: 'Barce',
                to: 'Manchester'
            },
            {
                from: 'Manchester',
                to: 'Wacker Innsbruck'
            }
        ]
    }));
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
