<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Site</title>
</head>
<body>

<marquee><h1>Yo Yo Yo, Welcome to Film FunΩ!</h1></marquee>
<h2>${TESTFILM.title}</h2>

	<form method="POST" action="addNewFilm.do">
		<label for="title">Title:</label>
		<input type="text" name="title"> <br>
		<label for="description">Description:</label>
		<input type="text" name="description"> <br> 
		</form>
</body>
</html>