const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const path = require('path');

const app = express();
const port = 5500;
SID=1
// Middleware for parsing JSON bodies
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));


// Serving static files from the 'public' directory
app.use(express.static('project'));

// Define MIME type for CSS files


const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password:'HelloWorld14', 
    database: 'farewellpartymanagement'
}); 

app.get('/', (req, res) => {
    res.render(('landingpage.ejs'));
});

app.get('/createAccount', (req, res) => {
    res.render('createAccount.ejs');
});

app.get('/loginpage', (req, res) => {
    res.render('login.ejs');
});

// Register endpoint
app.post('/register', function(req, res) {
    var name = req.body.name;
    var email = req.body.email;
    var password = req.body.password;
    var teamID = req.body.teamID;

    var sql = "INSERT INTO Student (Name, Email, Password, TeamID) VALUES (?, ?, ?, ?)";
    connection.query(sql, [name, email, password, teamID], function(err, result) {
        if (err) {
            console.error('Error inserting data: ' + err);
            res.status(500).send('Failed to register');
        } else {
            console.log('Student registered successfully');
            res.send('Account Created Successfully!');
        }
    });


});

// Login endpoint
app.post('/login', function(req, res) {
    var email = req.body.email;
    var password = req.body.password;

    var sql = "SELECT * FROM Student WHERE Email = ? AND Password = ?";
    connection.query(sql, [email, password], function(err, result) {
        if (err) {
            console.error('Error retrieving data: ' + err);
            res.status(500).send('Failed to login');
        } else {
            if (result.length > 0) {
                console.log('Login successful');
                res.send('Login Successful!');
            } else {
                console.log('Invalid email or password');
                res.send('Invalid email or password');
            }
        }
    });
});
app.listen(port, () => {
    console.log(`Server running on port: ${port}`);
});