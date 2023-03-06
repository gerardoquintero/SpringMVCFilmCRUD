<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
</head>
<body>
	<h4>${film.id}</h4>
	<form action="updateFilm.do" method="POST">
		<input type="hidden" name="id" value="${film.id}">
		<label for="filmTitle">Film Title: </label>
		<input type="text" name="title" value="${film.title}"><br>
		<label for="filmDescription">Film Description: </label>
		<input type="text" name="description" value="${film.description}"><br>
		<label for="filmYear">Film Year: </label>
		<input type="text" name="releaseYear" value="${film.releaseYear}"><br>
		<label for="languageId">Language ID: </label>
		<select name="languageId" value="${film.languageId}">
				<option value=1>English</option>
				<option value=2>Italian</option>
				<option value=3>Japanese</option>
				<option value=4>Mandarin</option>
				<option value=5>French</option>
				<option value=6>German</option>
		</select>
		<br>
		<label for="filmRentalDuration">Rental Duration: </label>
		<input type="text" name="rentalDuration" value="${film.rentalDuration}"><br>
		<label for="filmRentalRate">Rental Rate: </label>
		<input type="text" name="rentalRate" value="${film.rentalRate}"><br>
		<label for="filmLength">Film Length: </label>
		<input type="text" name="length" value="${film.length}"><br>
		<label for="filmReplacementCost">Film Replacement Cost: </label>
		<input type="text" name="replacementCost" value="${film.replacementCost}"><br>
		<label for="filmRating">Film Rating: </label>
		<select name="rating" value="${film.rating}">
					<option value="G">G</option>
					<option value="PG">PG</option>
					<option value="PG13">PG13</option>
					<option value="R">R</option>
					<option value="NC17">NC17</option>
				</select><br>
		<label for="filmSpecialFeatures">Film Special Features: </label>
		<select name="specialFeatures" value="${film.specialFeatures}">
					<option value="Trailers">Trailers</option>
					<option value="Commentaries">Commentaries</option>
					<option value="Deleted Scenes">Deleted Scenes</option>
					<option value="Behind the Scenes">Behind the Scenes</option>
				</select><br>
				<input type="submit" value="Submit">
				<br>
	</form>
<form action="home.do">
		<input type="submit" value="Home">
</form>
</body>
</html>