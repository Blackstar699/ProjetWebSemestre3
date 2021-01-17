const express = require('express'),
    app = express(),
    mysql = require('mysql'), // import mysql module
    cors = require('cors'),
    bodyParser = require('body-parser');

db = mysql.createConnection({
    host: 'localhost',
    user: 'matt',
    password: 'matt',
    database: 'netflix_like'
});

const server = {
    port: 3306
};

app.use(cors())
app.use(bodyParser.json());

app.listen( server.port , () => console.log(`Server started, listening port: ${server.port}`));

