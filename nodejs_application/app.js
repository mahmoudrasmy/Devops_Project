const express = require('express')
var bodyParser = require('body-parser');
const app = express();
const request = require('request');
var Promise = require('promise');
app.use(bodyParser.json());

var http = require('http');

app.get('/', (req, res) => {
console.log("Test Nodejs");
res.send('Test Nodejs');
})


var httpServer = http.createServer(app);

httpServer.listen(3000, () =>{
	console.log("http is listening on 3000");
});