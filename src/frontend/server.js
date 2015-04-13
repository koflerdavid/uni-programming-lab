var connect = require('connect');
var serveStatic = require('serve-static');
var port = 8080;
console.log("Starting server on 'localhost:"+port+"'");
connect().use(serveStatic(__dirname)).listen(8080);
