var express = require('express');
var soccervis = require('./js/soccervis');
var linereader = require('line-reader');

var port = 8080;
var neo4j_host = 'http://localhost:7474';

console.log("Starting server on 'localhost:" + port + "'");

var app = express();
var soccervisConnection = new soccervis.connection(neo4j_host);

app.use(express.static(__dirname)).listen(port);

app.get('/search', function (req, res) {
    var searchText = req.query.text.toLowerCase();
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
    var teams = [];
    for(var i =0;i<allteams.length;i++){
        team = allteams[i];
        if(team.namelowercase && team.namelowercase.indexOf(searchText) > -1)
            teams.push({name:team.name,uid:team.uid})
    }
    res.send(JSON.stringify({
        Tournaments:[],
        Players:[],
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

app.get('/tournament', function (req, res) {
    var name = req.query.name;
    res.send(JSON.stringify({
        name: name,
        date:"2015",
        teams:[
            {name:'team1',uid:'team1'},
            {name:'team2',uid:'team2'},
        ]
    }));
});

app.get('/team', function (req, res) {
    var name = req.query.name;
    var barce = {name:'Barce',uid:'Barce',pos:[2.173403, 41.385064]};
    var man = {name:'Manchester',uid:'man',pos:[-2.242631, 53.480759]};
    var ibk = {name:'Innsbruck',uid:'ibk',pos:[11.404102, 47.269212]};
    var rapid = {name:'Wien',uid:'vie',pos:[16.373819, 48.208174]};
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
        ],
        transfers:[
            {
                from: barce,
                to: man,
                strength: 5,
            },
            {
                from: man,
                to: ibk,
                strength: 5,
            },
            {
                from: ibk,
                to: rapid,
                strength: 5,
            }
        ]
    }));
});

app.get('/team/:team', function (req, res) {
    try{
        var teamid = parseInt(req.url.substring('/team/'.length))-1;
        if(teamid>=0 && teamid<allteams.length){
            var team = allteams[teamid];
            var players = [];
            if(team.players)
                players = team.players;
            var pos = alllocs[teamid];
            var transfers =[];
            if (pos.length==2){
                var tmp = pos[0];
                pos[0] = pos[1];
                pos[1] = tmp;
                transfers = [{
                    from:{name:team.name,uid:team.uid,pos:pos},
                    to:{name:team.name,uid:team.uid,pos:pos},
                    strength:5 }]
            }
            var result = {name:team.name,details:team.details,players:players,transfers:transfers};
            res.send(JSON.stringify(result));
        }
    }catch(e){
        console.log(e);
    }
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
    var barce = {name:'Barce',uid:'Barce',pos:[-15.132555052631583,11.908241315789475]};
    var man = {name:'Manchester',uid:'man',pos:[11.88548080645161,-0.5387664516129034]};
    var ibk = {name:'Innsbruck',uid:'ibk',pos:[159.8473874324324,-8.792477783783786]};
    res.send(JSON.stringify({
        name: name,
        team:'ASdasd',
        age:12,
        nationality:'Austria',
        transfers:[
            {
                from: barce,
                to: man,
                strength: 5,
            },
            {
                from: man,
                to: ibk,
                strength: 5,
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

var allteams = []
linereader.eachLine('data/teams.dat',function(line,last){
    if(line.length>0){
        var team = JSON.parse(line);
        team.namelowercase = team.name.toLowerCase();
        team.uid = allteams.length+1;
        allteams.push(team);
    }else
        allteams.push({});
    if(last) console.log('parsed ' + allteams.length + ' teams!');
});
var alllocs = []
linereader.eachLine('data/locs.dat',function(line,last){
    if(line.length>0){
        var loc = JSON.parse(line);
        alllocs.push(loc);
    }else
        alllocs.push([]);
    if(last) console.log('parsed ' + alllocs.length + ' locations!');
});
