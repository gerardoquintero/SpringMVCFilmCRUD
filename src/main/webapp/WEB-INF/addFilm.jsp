<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Insert title here</title>
</head>
<body>
	<div class="card" style="width: 18rem;">
		<div class="card-body">
			<h1 class="card-title">Create Your Film</h1>
			<form method="POST" action="addFilm.do">
				<label for="title">Title: </label> <input type="text" name="title">
				<br> <label for="description">Description: </label> <input
					type="text" name="description"> <br> <label
					for="releaseYear">Release Year: </label> <input type="text"
					name="releaseYear"> <br> <label for="languageId">LanguageId:
				</label> <input type="text" name="languageId"> <br> <label
					for="rentalDuration">Rental Duration: </label> <input type="text"
					name="rentalDuration"> <br> <label for="rentalRate">Rental
					Rate: </label> <input type="text" name="rentalRate"> <br> <label
					for="length">Length: </label> <input type="text" name="length">
				<br> <label for="replacementCost">Replacement Cost: </label> <input
					type="text" name="replacementCost"> <br> <label
					for="rating">Rating: </label> <input type="text" name="rating">
				<br> <label for="specialFeatures">Special Features: </label> <input
					type="text" name="specialFeatures"> <br> <input
					type="submit" value="Submit Request">
			</form>
			<br>
		</div>
	</div>
	<form action="home.do">
		<input type="submit" value="Return Home">
	</form>
</body>
</html>