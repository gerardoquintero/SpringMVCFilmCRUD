<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Create Your Film</h1>
	<form method="POST" action="addFilm.do">
		<label for="title">Title: </label>
		<input type="text" name="title">
		<br>
		<label for="description">Description: </label>
		<input type="text" name="description">	
		<br>
		<label for="releaseYear">Release Year: </label>
		<input type="text" name="releaseYear">
		<br>	
		<label for="languageId">LanguageId: </label>
		<input type="text" name="languageId">
		<br>	
		<label for="rentalDuration">Rental Duration: </label>
		<input type="text" name="rentalDuration">
		<br>  
		<label for="rentalRate">Rental Rate: </label>
		<input type="text" name="rentalRate">
		<br>
		<label for="length">Length: </label>
		<input type="text" name="length">
		<br>	
		<label for="replacementCost">Replacement Cost: </label>
		<input type="text" name="replacementCost">
		<br>	
		<label for="rating">Rating: </label>
		<input type="text" name="rating">
		<br>	 
		<label for="specialFeatures">Special Features: </label>
		<input type="text" name="specialFeatures">
		<br>	  
		<input type="submit" value="Submit Request">
	</form>
	<br>	
	<form action="home.do">
		<input type="submit" value="Return Home" >
	</form>
</body>
</html>