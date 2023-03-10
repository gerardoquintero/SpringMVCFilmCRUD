<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Film</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty films}">
			<c:forEach var="f" items="${films}">
			<br>	
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h4 class="card-title">${f.title}</h4>
						<ul>
							<li>Title: ${f.title}</li>
							<li>Description: ${f.description}</li>
							<li>Release Year: ${f.releaseYear}</li>
							<li>Language: ${f.language}</li>
							<li>Length: ${f.length}</li>
							<li>Rental Duration: ${f.rentalDuration}</li>
							<li>Rental Rate: ${f.rentalRate}</li>
							<li>ReplacementCost: ${f.replacementCost}</li>
							<li>Rating: ${f.rating}</li>
							<li>Speci al Features: ${f.specialFeatures}</li>
							<li>Categories: ${f.category}</li>
							<li>Cast: ${f.cast}</li>
						</ul>
						<br>
						<form action="update.do" method="GET">
							<input type="submit" value="Update Film"> <input
								style="display: none" name="filmId" value="${Film.id}">
						</form>
						<br>
						<form action="delete.do" method="POST">
							<input type="submit" value="Delete Film"> <input
								style="display: none" name="filmId" value="${Film.id}">
							<br>
						</form>
					</div>
				</div>
			</c:forEach>
			<br>
			<form action="home.do">
				<input type="submit" value="Back">
			</form>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
			<form action="home.do">
				<input type="submit" value="Return Home">
			</form>
		</c:otherwise>
	</c:choose>
</body>
</html>