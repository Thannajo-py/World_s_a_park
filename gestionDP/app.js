const path = require("path");
const express = require('express');
const app = express();


const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'worldapark'
});
app.set("view engine","ejs")
app.set("views",path.join(__dirname,"./views"))

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
        let query = `SELECT * FROM parks WHERE continent LIKE '%${result}%';`;
        connection.query(query, (err, result) => {
            if (err) throw err; 
            res.render("search.ejs",{park:result})
            

    })})
    .get('/park/:id', (req, res) => {
        console.log(req.params)
        const id = req.params.id
        let query = `SELECT * FROM parks WHERE id = ${id};`;
        connection.query(query, (err, result) => {
            if (err) throw err
            res.render("parcs.ejs",{park:result[0]})
            

    })
    
    

    
});

app.listen(8080);
