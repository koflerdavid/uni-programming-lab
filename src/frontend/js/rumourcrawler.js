var express = require('express');
var fs = require('fs');
var request = require('request');
var cheerio = require('cheerio');
var sentiment = require('sentiment');
var app     = express();
var ourPassword = "1234";
var Promise = require('bluebird');
var _ = require('underscore');

app.get('/scrape/:password', function(req, res){

    if(req.params.password != ourPassword){
        res.status(403).send("Access Denied")
    }

    var probs = new Array();
    var names = new Array();
    var toTeams = new Array();
    var links = new Array();
    var data;

    // TODO while loop for every page

    var options = {
        url: 'http://www.transfermarkt.co.uk/rumourmill/detail/forum/180/ajax/threadList',
        headers: {
            'User-Agent': 'Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0'
        }
    };

    request(options, function(error, response, html){
        if(!error){
            var $ = cheerio.load(html);

            $('.no-border-links.text-center').filter(function(){
                data = $(this).children();
                for (var i = 0; i < data.length; i++) {
                    if(data[i].children[0].data == '?' || data[i].children[0].data.length > 1 ) {
                        probs.push(data[i].children[0].data);
                    }
                }
            })

            $('.board_titel.spielprofil_tooltip').filter(function(){
                data = $(this);
                for (var i = 0; i < data.length; i++) {
                    var rumour = $(data[i]).attr("title");
                    var res;
                    if (rumour.indexOf(" to ") != -1) {
                        res = rumour.split(" to ");
                        names.push(res[0]);
                        toTeams.push(res[1].substring(0,res[1].length-1));
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
            })

        }

        var resultPromises = doSentimentAnalysisForNames(names, toTeams, probs, links);

        Promise.all(resultPromises)
            .then(function(result) {
                
                res.json(result);
            });
    }) ;
})

var doSentimentAnalysisForNames = onceEveryElseCache(function (names, toTeams, probs, links) {
    var pSentimentAnalysis = Promise.promisify(sentimentAnalysis);
    return names.map(function (name, i) {
        return pSentimentAnalysis(links[i])
            .then(function (res) {
                var score = res[0], comparative = res[1];
                //console.log(names[i]);
                //console.log(toTeams[i]);
                //console.log(probs[i]);
                //console.log(links[i]);
                //console.log('avg score '.concat(score));
                //console.log('comparative '.concat(comparative));
                //console.log("\n");
                sleep(1000);
                return [name, toTeams[i], probs[i], links[i], score, comparative];
            });
    });
}, 45*1000);

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

app.listen('8081');
console.log('Magic happens on port 8081');
exports = module.exports = app;

/**
 * Wrapps callable so that it gets executed at most once in the specified interval.
 * If options.immedeately is set to true, then the callable is executed immediately.
 * @param callable
 * @param interval
 * @param options
 * @returns {Function}
 */
function onceEveryElseCache(callable, interval, options) {
    var lastTime = null;
    var oldResult;

    var wrapper = function() {
        var now = Date.now();
        if (lastTime == null || now > lastTime + interval) {
            console.log(now, lastTime, lastTime + interval);
            lastTime = now;
            oldResult = callable.apply(this, arguments);
        }

        return oldResult;
    };

    if (options != null && options.immediately) {
        oldResult = wrapper();
    }

    return wrapper;
}
