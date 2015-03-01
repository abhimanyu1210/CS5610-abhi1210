var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var multer = require('multer');

app.use(express.static(__dirname + '/public'));
app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(multer()); // for parsing multipart/form-data

var movies = [{ title: "Shawshank Redemption", year: "1994", rating: "9.2" },
                { title: "Godfather", year: "1972", rating: "9.2" },
                { title: "Dark Knight", year: "2008", rating: "8.9" },
                { title: "Fight Club", year: "1999", rating: "8.8" },
                { title: "Inception", year: "2010", rating: "8.7" },
                { title: "Interstellar", year: "2014", rating: "8.6" }];


app.get("/movies", function (req, res) {
    res.json(movies);
});

app.post("/movies", function (req, res) {
    var movie = req.body;
    movies.push(movie);
    res.json(movies);
});

app.delete("/movies/:index", function (req, res) {
    var index = req.params.index;
    movies.splice(index, 1);
    res.json(movies);
});

app.put("/movies/:index", function (req, res) {
    var index = req.params.index;
    var movie = req.body;
    console.log(index);
    console.log(movie);
    movies[index] = movie;
    console.log(movies);
    res.json(movies);
});

app.listen(3000);
