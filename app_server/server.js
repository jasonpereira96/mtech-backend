const mysql = require('mysql');
const express = require('express');
const cors = require('cors');

const app = express();
const port = 3001;

const USERNAME = 'root';
const PASSWORD = 'root';
const HOST = 'localhost';

var connection = mysql.createConnection({
    host: HOST,
    user: USERNAME,
    password: PASSWORD
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
});

app.use(cors());

app.get('/data', (request, res) => {
    var url = require('url');
    var url_parts = url.parse(request.url, true);
    var query = url_parts.query;
    console.log(query);
    console.log(JSON.stringify(query));
    const sql = getSQL(query);
    console.log(sql);
    // res.send('Hello World!');
    connection.query(sql, function (err, result) {
        if (err) throw err;

        console.log("Result: " + result);

        var rows = result;

        for (let row of rows) {
            console.log(row);
        }
        console.log(JSON.stringify(rows));
        res.json(rows);
    });

});

app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
});

function getSQL(query) {
    let filters = JSON.parse(query.filter);
    if (filters.length === 0) {
        return 'select * from Students.Students;';
    }
    var sql = 'select * from Students.Students where ';

    var filterCriteria = filters.map(filter => {
        let { value, operation, columnName } = filter;
        return `\`${columnName}\` like "${value}%"`;
    });
    return sql + filterCriteria.join(' and ');
    // return 'select * from Students.Students;';
}