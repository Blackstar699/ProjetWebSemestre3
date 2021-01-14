
const express = require('express'),
    app = express(),
    mysql = require('mysql'), // import mysql module
    cors = require('cors'),
    bodyParser = require('body-parser');

    mysql.db = mysql.createConnection({
    host: 'localhost',
    user: 'zekir',
    password: 'zekir2012',
    database: 'netflix_like'
})

var server = {
    port: 3306
};

app.use(cors())
app.use(bodyParser.json());

app.listen( server.port , () => console.log(`Server started, listening port: ${server.port}`));

