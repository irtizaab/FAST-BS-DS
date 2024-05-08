var mysql = require("mysql");

const connectiton = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password:'HelloWorld14', 
    database: 'farewellpartymanagement'
}); 

module.exports = connectiton;

// let sql = "SELECT * FROM Student";
// connection.query(sql, function(err, results){
// if (err) throw err;
// res.send(results);
// });