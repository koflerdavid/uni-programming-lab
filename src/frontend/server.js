var express = require('express');
var byline = require('byline');
var unzip = require('unzip');
var fs = require('fs');

var port = 8080;

console.log("Starting server on 'localhost:" + port + "'");

var app = express();

app.use(express.static(__dirname)).listen(port);

app.get('/search', function (req, res) {
    var searchText = req.query.text.toLowerCase();
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
    var teams = [];
    for(var i =0;i<allteams.length;i++){
        team = allteams[i];
        if(team.namelowercase && team.namelowercase.indexOf(searchText) > -1){
            //if(alllocs[i].length>0)
            teams.push({name:team.name,uid:team.uid})
            if(teams.length>=10)
                break;
        }
    }
    var players = [];
    for(var i =0;i<allplayers.length;i++){
        player = allplayers[i];
        if(player && player.namelowercase && player.namelowercase.indexOf(searchText) > -1){
            //if(alllocs[i].length>0)
            players.push({name:player.name,uid:i+1})
            if(players.length>=10)
                break;
        }
    }
    res.send(JSON.stringify({
        Tournaments:[],
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

function getTransferDetails(teamid){
    teamid = parseInt(teamid)-1
    var team = allteams[teamid];
    pos = alllocs[teamid];
    if(pos.length!=2)
        return null;
    return {
        name:team.name,
        uid:team.uid,
        pos:alllocs[teamid]
    };
}

app.get('/team/:team', function (req, res) {
    var teamid = parseInt(req.url.substring('/team/'.length))-1;
    if(teamid>=0 && teamid<alllocs.length){
        var team = allteams[teamid];
        var players = [];
        if(team.players)
            players = team.players;
        var transfers =[];
        var t = allteamtransfers[teamid];
        var loc = alllocs[teamid];
        if(t){
            var teamdetails = {name:team.name,uid:team.uid,pos:loc};
            var sold = Object.keys(t.sold);
            for(var i=0;i<sold.length;i++){
                var to = getTransferDetails(sold[i]);
                if(to)
                    transfers.push({
                        from:teamdetails,
                        to:to,
                        strength:t.sold[sold[i]]
                    });
            }
            var bought = Object.keys(t.bought);
            for(var i=0;i<bought.length;i++){
                var from = getTransferDetails(bought[i]);
                if(from)
                    transfers.push({
                        from:from,
                        to:teamdetails,
                        strength:t.bought[bought[i]]
                    });
            }
        }
        var result = {name:team.name,details:team.details,players:players,transfers:transfers,pos:loc};
        res.send(JSON.stringify(result));
    }
});

app.get('/player/:player', function (req, res) {
    var playerid = parseInt(req.url.substring('/player/'.length))-1;
    if(playerid>=0 && playerid<allplayers.length){
        var player = allplayers[playerid];
        var transfers = [];
        var team = null;
        if(player.teams.length>0){
            var teamid = player.teams[0].uid;
            var currentteam = allteams[teamid-1];
            var loc = alllocs[teamid-1];
            team = {name:currentteam.name,uid:currentteam.uid,loc:loc};
        }
        var lastteam = null;
        for(var i = player.teams.length-1;i>=0;i--){
            if(i>=1){
                var from = player.teams[i].uid;
                var to = player.teams[i-1].uid;
                var fromd = getTransferDetails(from.toString());
                var tod = getTransferDetails(to.toString());
                if(fromd==null)
                    fromd = lastteam;
                else
                    lastteam = fromd;
                if(fromd!=null && tod!=null)
                    transfers.push({
                        from: fromd,
                        to: tod,
                        strength: 5
                    });
            }
        }

        var result = {name:player.name,details:player.details,transfers:transfers,team:team};
        res.send(JSON.stringify(result));
    }else{
        res.send('{}');
    }
});

function parselinebyline(entry,arr,name,defaultitem,preprocess){
    stream = byline.createStream(entry,{keepEmptyLines:true})
    stream.on('data', function(line){
        line = line.toString('utf8');
        if(line.length>0){
            var obj = JSON.parse(line);
            if(preprocess)
                preprocess(obj);
            arr.push(obj);
        }else{
            arr.push(defaultitem);
        }
    });
    stream.on('end',function(line){
        /* POSSIBLE BUG, LAST PLAYER ITEMS EMPTY*/
        arr.pop()
        console.log('parsed ' + arr.length + ' from ' + name + ' !');
    });
}

var allplayers = []
var allteamtransfers = []
var alllocs = []
var allteams = []
fs.createReadStream('data/data.zip').pipe(unzip.Parse()).on('entry',function(entry){
    var arr = null;
    var preprocess = null;
    var defaul = null;
    if(entry.path=='players.dat'){
        arr = allplayers;
        preprocess = function(player){
            player.namelowercase = player.name.toLowerCase();
        }
    }else if(entry.path=='teamtransfers.dat'){
        arr = allteamtransfers
    }else if(entry.path=='locs.dat'){
        arr = alllocs
        defaul = []
        preprocess = function(loc){
            if(loc.length==2){
                tmp = loc[0];
                loc[0] = loc[1];
                loc[1] = tmp;
            }
        }
    }else if(entry.path=='teams.dat'){
        arr = allteams
        defaul = {}
        preprocess = function(team){
            team.namelowercase = team.name.toLowerCase();
            team.uid = allteams.length+1;
        }
    }
    if(arr!=null)
        parselinebyline(entry,arr,entry.path,defaul,preprocess)
    entry.autodrain();
});

