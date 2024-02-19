const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// MySQL Connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'anthony',
    password: 'Huawei@1234',
    database: 'signup'
});

// Connect to MySQL
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to MySQL database');
});

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));

// Set up view engine
app.set('view engine', 'ejs');

// Routes
app.get('/', (req, res) => {
    res.render('index');
});

app.post('/submit', (req, res) => {
    const { name, email } = req.body;
    const userData = { name, email };
    const sql = 'INSERT INTO users SET ?';
    db.query(sql, userData, (err, result) => {
        if (err) throw err;
        console.log('Data inserted successfully');
        res.redirect('/');
    });
});

// Start server
app.listen(3000, () => {
    console.log(`Server running on port 3000`);
});

// does nothing, pheew.
