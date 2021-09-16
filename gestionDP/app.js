const path = require("path");
const express = require('express');
const app = express();
const server = require('http').createServer(app);
const io = require('socket.io')(server);
const bodyParser = require("body-parser");

const mysql = require('mysql');
const { createSecureServer } = require("http2");
const connection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : 'root',
  database : 'park'
});

//connection.connect();
connection.connect(function(err){
    if(err) throw err;
    console.log("Connected");  
});
app.use(express.static(path.join(__dirname, '/public')))
    .use(express.urlencoded({
        extended: true
    }))
    
    .get('/', (req, res) => {
        res.sendFile(__dirname + '/public/main.html');
    })
    .post('/search', (req, res) => {
        const result = req.body.searchBar;
        let query = `SELECT * FROM parks WHERE continent = "${result}";`;
        connection.query(query, (err, result) => {
            if (err) throw err; 
            
             console.log(result) ;
    })
    
    

    
});


server.listen(8080);
