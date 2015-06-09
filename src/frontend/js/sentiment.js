var sentiment = require('sentiment');

var r1 = sentiment('Liverpool have made a £10 million bid for Inter Milan and Croatia midfielder Mateo Kovacic.The Milanese maestro is only 21, and has long caught the eye of Brendan Rodgers bunch with his sultry skills. And while an offer earlier this month was knocked back by Inter, Liverpool, in hopes of bolstering their midfield in Steven Gerrards absence, have no mind to quit on Kovacic.');
console.dir(r1.score);

var r2 = sentiment('Liverpool has spend 220 million pounds to take shitty players and they bid Kovasic for only 10 million..This player is worth 20-25 million and have future along side with Coutinho');
console.dir(r2.score);