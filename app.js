const express = require('express');
const app = express();

app.set('view engine', 'ejs');
app.use(express.static('public'));

const request = require('request');
const mysql = require('mysql');
const tools = require("./tools.js");

//routes

//root route
app.get('/', async function(req, res){

	var imageURLs = await tools.getRandomImages('', 1);
	res.render("index", {"imageURLs": imageURLs});
	
}); //root route

app.get("/search", async function(req, res){
	//console.dir(req);
	//console.log(req.query.keyword);
	var keyword = req.query.keyword;

	var imageURLs = await tools.getRandomImages(keyword, 9);
	res.render("results", {"imageURLs": imageURLs, "keyword": keyword});

	//getRandomImages_cb(keyword, 9, function(imageURLs){
	//	res.render("results", {"imageURLs": imageURLs});
	//});

}); //search

app.get("/api/updateFavorites", function(req, res){
	var connection = tools.createConnection();

	var sql;
	var sqlParams;
	if(req.query.action == "add"){
		sql = "INSERT INTO favorites (imageURL, keyword) VALUES (?,?)";
		sqlParams = [req.query.imageURL, req.query.keyword];
	}else {
		sql = "DELETE FROM favorites WHERE imageURL = ?";
		sqlParams = [req.query.imageURL];
	}
	connection.connect( function(err){
		if(err) throw err;
		connection.query(sql, sqlParams, function(err, result){
			connection.end();
			if(err) throw err;
		});//query
	}); //connection
	res.send("it works");
}); //updateFavorite

app.get("/displayKeywords", async function(req, res){
	var imageURLs = await tools.getRandomImages('', 1);
	var connection = tools.createConnection();
	var sql = "SELECT DISTINCT keyword FROM favorites ORDER BY keyword";

	//code for the connection
	connection.connect(function(err){
		if(err) throw err;

		connection.query(sql, function(err, result){
			if(err) {
				connection.end();
				throw err
			}
			//pass records to the view 'favorites'
			res.render("favorites", {"rows": result, "imageURLs": imageURLs});
			connection.end();
		}); //query
	})

});

app.get("/api/displayFavorites", function(req, res){
	//to connect to db
	var connection = tools.createConnection();
	var sql = "SELECT imageURL FROM favorites WHERE keyword = ?";

	var sqlParams =[req.query.keyword];

	//code for the connection
	connection.connect(function(err){
		if(err) throw err;

		connection.query(sql, sqlParams, function(err, results){
			if(err) {
				connection.end();
				throw err
			}
			//display records that we get from database
			res.send(results);
			connection.end();
		}); //query

	}); //displayFavorites
});

//server listener
app.listen(process.env.PORT, process.env.IP, function(){
	console.log("Express Server is running");
});