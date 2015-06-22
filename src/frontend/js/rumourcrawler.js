var Promise = require('bluebird');
var cheerio = require('cheerio');
var express = require('express');
var fs = require('fs');
var request = require('request');
var sentiment = require('sentiment');
var _ = require('underscore');

var requestP = Promise.promisify(request);

var ourPassword = "1234";
var app     = express();

app.get('/scrape/:password', function(req, res){
    if(req.params.password != ourPassword){
        res.status(403).send("Access Denied")
    }
    scrape(function(pages){
        res.json(pages);
        try{
            fs.unlinkSync('../data/rumourdata.json');
        }catch(err){
            console.log(err);
        }
        pages.forEach(function(page){
            fs.appendFileSync('../data/rumourdata.json', JSON.stringify(page)+'\n');
        });
        console.log('File successfully written!');
    });
});

function scrape(clb){

    var baseuri = 'http://www.transfermarkt.co.uk/rumourmill/detail/forum/180/ajax/threadList';
    var pages = [];

    Promise.resolve([1])
    //Promise.resolve([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])
        .each(function(page) {
            var uri = baseuri;
            uri += "/page/";
            uri += page;
            sleep(2000);
            console.dir(uri);

            var options = {
                url: uri,
                headers: {
                    'User-Agent': 'Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0'
                }
            };

            pages.push(requestP(options)
                .spread(function(response, html) {
                    var $ = cheerio.load(html);
                    var probs = new Array();
                    var names = new Array();
                    var toTeams = new Array();
                    var links = new Array();

                    $('.no-border-links.text-center').filter(function () {
                        var data = $(this).children();
                        for (var i = 0; i < data.length; i++) {
                            if (data[i].children[0].data == '?' || data[i].children[0].data.length > 1) {
                                probs.push(data[i].children[0].data);
                            }
                        }
                    });

                    $('.board_titel.spielprofil_tooltip').filter(function () {
                        var data = $(this);
                        for (var i = 0; i < data.length; i++) {
                            var rumour = $(data[i]).attr("title");
                            var res;
                            if (rumour.indexOf(" to ") != -1) {
                                res = rumour.split(" to ");
                                names.push(res[0]);
                                toTeams.push(res[1].substring(0, res[1].length - 1));
                            } else if (rumour.indexOf(" interested in ") != -1) {
                                res = rumour.split(" interested in ");
                                names.push(res[1]);
                                toTeams.push(res[0]);
                            } else if (rumour.indexOf(" in trials with ") != -1) {
                                res = rumour.split(" in trials with ");
                                names.push(res[0]);
                                toTeams.push(res[1]);
                            } else {
                                names.push("error");
                                toTeams.push("error");
                            }
                            links.push($(data[i]).attr("href"));
                        }
                    });

                    for(var i = 0; i < names.length; i++){
                        if(names[i] == "error"){
                            names.splice(i,1);
                            toTeams.splice(i,1);
                            probs.splice(i,1);
                            links.splice(i,1);
                        }
                    }
                    console.dir( $('.page.selected').text() + "  " + names[0]);
                    var resultPromises = doSentimentAnalysisForNames(names, toTeams, probs, links);

                    return Promise.all(resultPromises);

                    //return Promise.resolve(html);

                }));
        })
        .then(function() {
            Promise.all(pages).then(function (pages) {
                pages = Array.prototype.concat.apply([], pages);
                if(clb)
                    clb(pages);
            });
        });
}

var doSentimentAnalysisForNames = function (names, toTeams, probs, links) {
    console.log(names[0]);
    var pSentimentAnalysis = Promise.promisify(sentimentAnalysis);
    return names.map(function (name, i) {
        return pSentimentAnalysis(links[i])
            .then(function (res) {
                var score = res[0], comparative = res[1];
                console.log(name);
                //console.log(toTeams[i]);
                //console.log(probs[i]);
                //console.log(links[i]);
                //console.log('avg score '.concat(score));
                //console.log('comparative '.concat(comparative));
                //console.log("\n");
                sleep(10);
                return [name, toTeams[i], probs[i], links[i], score, comparative];
            });
    });
};

function sleep(milliseconds) {
    var start = new Date().getTime();
    for (var i = 0; i < 1e7; i++) {
        if ((new Date().getTime() - start) > milliseconds){
            break;
        }
    }
}

function sentimentAnalysis(link, callback){
        var score = 0;
        var comparative = 0;

        var options = {
            url: "http://www.transfermarkt.co.uk".concat(link),
            headers: {
                'User-Agent': 'Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0'
            }
        };

        request(options, function(error, response, html){
            if(!error) {
                var $ = cheerio.load(html);
                var lines = new Array();
                var counter = 0;

                $('.content').filter(function () {
                    data = $(this).children();
                    for (var i = 0; i < data.length; i++) {
                        if (data[i].prev) {
                        lines.push(data[i].prev.data);
                        }
                    }
                })

                for (var i = 0; i < lines.length; i++) {
                    if(lines[i].length > 2) {
                        counter++;
                        var res = sentiment(lines[i]);
                        score += res.score;
                        comparative += res.comparative;
                    }
                }

                score /= counter;
                comparative /= counter;
                callback(null, [score, comparative]);
            }
        })
}

//app.listen('8081');
console.log('Magic happens on port 8081');
exports = module.exports = scrape;
