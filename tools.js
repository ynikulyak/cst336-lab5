const request = require('request');
const mysql = require('mysql');
module.exports = {

	/**
	* Return random image URLs from an API
	* @param string keyword - search term
	* @param int imageCount - number of random images
	* @returm array of image urls
	*/
	getRandomImages_cb: function(keyword, imageCount, callback){
		var requestURL = "https://api.unsplash.com//photos/random?query="+keyword+"&count="+imageCount+"&client_id=1cb6b0f7046b1dc3f8cea1d4aa493d2d7024a5d74d6f224c48ce393470ed3a83&orientation=landscape";
		request(requestURL, function (error, response, body) {
	  		
	  		if (!error){
	  			var parseData = JSON.parse(body);
	  			var imageURLs = [];
	  			for(let i = 0; i < 9; i++){
	  				imageURLs.push(parseData[i]["urls"]["regular"]);
	  			};
	  			//console.log(imageURLs);
	  			//console.log("image url", parseData["urls"]["regular"]);
	  			callback(imageURLs);
	  		}else{
	  			console.log("error", error);
	  		}
		}); //request
	},


	/**
	* Return random image URLs from an API
	* @param string keyword - search term
	* @param int imageCount - number of random images
	* @returm array of image urls
	*/
	getRandomImages: function(keyword, imageCount){
		var requestURL = "https://api.unsplash.com//photos/random?query="+keyword+"&count="+imageCount+"&client_id=1cb6b0f7046b1dc3f8cea1d4aa493d2d7024a5d74d6f224c48ce393470ed3a83&orientation=landscape";
		
		return new Promise(function(resolve, reject){
			request(requestURL, function (error, response, body) {
		  		
		  		if (!error){
		  			var parseData = JSON.parse(body);
		  			var imageURLs = [];
		  			for(let i = 0; i < imageCount; i++){
		  				if (parseData[i]) {
		  					imageURLs.push(parseData[i]["urls"]["regular"]);
		  				}
		  			};

		  			resolve(imageURLs);
		  			//console.log(imageURLs);
		  			//console.log("image url", parseData["urls"]["regular"]);
		  		}else{
		  			console.log("error", error);
		  		}
		  	}); //request
		}); //promise
	},//end of 2nd function

	/**
	* creates database connection
	* @return db connection
	**/
	createConnection: function(){
		var connection = mysql.createConnection({
			host: "us-cdbr-iron-east-02.cleardb.net",
			user: "ba82a6508f0006",
			password: "a12f6cf4",
			database: "heroku_4235877cbde3f13"
		});
		return connection;
	}//end of 3d function
}



