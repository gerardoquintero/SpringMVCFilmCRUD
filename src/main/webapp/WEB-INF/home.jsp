<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Film Site</title>
</head>
<body>

	<marquee>
		<h1>Yo Yo Yo, Welcome to Film FunΩ!</h1>
	</marquee>
	<div class="card">
  		<div class="card-header" id="singleFilm">
   		 Search By ID
  		</div>
  		<div class="card-body" id="singleFilm">
    		<form method="GET" action="getSingleFilm.do">
				<label for="filmId"></label>
				<input type="text" name="filmId"> 
				<br>
				<br> 
				<input type="submit" value="Search">
			</form>
  		</div>
	</div>
	<br>
	<div class="card">
  		<div class="card-header" id="singleFilm">
   		 Search By Keyword
  		</div>
  		<div class="card-body" id="singleFilm">
    		<form method="GET" action="filmKeyword.do">
				<label for="searchByKeyword"></label>
				<input type="text" name="searchByKeyword"> 
				<br> 
				<br>
				<input type="submit" value="Search">
			</form>
  		</div>
	</div>
	<br>
	<div class="card">
  		<div class="card-header" id="singleFilm">
   		 Click Below To Create Your Own Film!
  		</div>
  		<div class="card-body" id="singleFilm">
    		<form method="GET" action="addFilmPage.do">
				<input type="submit" value="Create Film">
			</form>
  		</div>
	</div>
	<br>


</body>
</html>