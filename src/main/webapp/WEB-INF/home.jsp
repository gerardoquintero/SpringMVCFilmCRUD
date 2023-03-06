<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Site</title>
</head>
<body>

	<marquee>
		<h1>Yo Yo Yo, Welcome to Film FunΩ!</h1>
	</marquee>
	<h2>Search By ID</h2>

	<form method="GET" action="getSingleFilm.do">
		<label for="filmId">Search By Id:</label>
		<input type="text" name="filmId"> 
		<br> 
		<input type="submit" value="Submit Request">
	</form>

	<h2>Create New Film</h2>
	<form action="addFilmPage.do">
		<input type="submit" value="Create Film Here"> 
		<br>
	</form>


</body>
</html>