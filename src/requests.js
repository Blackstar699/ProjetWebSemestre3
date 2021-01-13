import db from "mysql";

const express = require('express'),
    router = express.Router();

function getuserslist(){
  // get user lists
  router.get('/list', function(req, res) {
    let sql = `SELECT * FROM users`;
    db.query(sql, function(err, data, fields) {
      if (err) throw err;
      res.json({
        status: 200,
        data,
        message: "User lists retrieved successfully"
      })
    })
  });
};

export default getuserslist();