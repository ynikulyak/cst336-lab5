$(document).ready(function(){
	$(".favorite").on("click", function(){
		//alert($(this).prev().attr("src"));
		var imageURL = $(this).prev().attr("src");
		if ($(this).attr("src") == "img/fav_off.png"){
			$(this).attr("src", "img/fav_on.png");
			updateFavorite("add", imageURL); //insert into db
		}else {
			$(this).attr("src", "img/fav_off.png");
			updateFavorite("delete", imageURL); //delete db record
		}
	});

//display images based on the keyword we clicked on
$(".keywordLink").on("click", function(){
	//alert($(this).text().trim());

	//variable to save the value of clicked keyword
	var keywordLink = $(this).text().trim();
	$.ajax({
		method: "get",
		url: "/api/displayFavorites",
		data: {"keyword": $(this).text().trim()},
		success: function(rows, status){
			//to not display all pics again and again, clean 
			$("#favorites").html("");

			//display pics in row of 4
			rows.forEach(function(row, i){
				if(i % 4 == 0){
					$("#favorites").append("<br>"+"<img class='image' src='"+row.imageURL+"' width='200' height='200'>");
					$("#favorites").append("<img src='img/fav_on.png' width='20' height='20' class='favorite'>");
				}else{
					$("#favorites").append("<img class='image' src='"+row.imageURL+"' width='200' height='200'>");
					$("#favorites").append("<img src='img/fav_on.png' width='20' height='20' class='favorite'>");
				}
			});
			//add event listener to newly displayed pics in page favorite pics
			$(".favorite").each(function(){
					$(this).click(function(){
					//var imageURL = $(this).prev().attr("src");

					if ($(this).attr("src") == "img/fav_off.png"){
						$(this).attr("src", "img/fav_on.png");
						//to add pics again in db
						$.ajax({
							method: "get",
							url: "/api/updateFavorites",
							data: {"imageURL": $(this).prev().attr("src"),
									"keyword": keywordLink, "action": "add"}
						}); //insert into db
					}else {
						$(this).attr("src", "img/fav_off.png");
						updateFavorite("delete", $(this).prev().attr("src")); //delete db record
					}
				});
				});
		}
	});//ajax
});

function updateFavorite(action, imageURL){
	$.ajax({
		method: "get",
		url: "/api/updateFavorites",
		data: {"imageURL": imageURL,
				"keyword": $("#keyword").val(), "action": action} //params that the rout is expecting
	});
}

});




