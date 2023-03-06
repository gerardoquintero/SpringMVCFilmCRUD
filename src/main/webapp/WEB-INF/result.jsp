<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Insert title here</title>
</head>
<body>
	<h1 id="singleFilm">Results</h1>
		<c:if test="${Film.id > 0}">
		<%-- 	<h2>Title: ${Film.title}</h2>
			<ul>
				<li>Title: ${Film.title}</li>
				<li>Description: ${Film.description}</li>
				<li>Release Year: ${Film.releaseYear}</li>
				<li>Language: ${Film.language}</li>
				<li>Length: ${Film.length}</li>
				<li>Rental Duration: ${Film.rentalDuration}</li>
				<li>Rental Rate: ${Film.rentalRate}</li>
				<li>ReplacementCost: ${Film.replacementCost}</li>
				<li>Rating: ${Film.rating}</li>
				<li>Special Features: ${Film.specialFeatures}</li>
				<li>Categories: ${Film.category}</li>
				<li>Cast: ${Film.cast}</li>
			</ul> --%>
			
			<div class="card" style="width: 18rem;">
                  <div class="card-body">
                    <h5 class="card-title">Title: ${Film.title}</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Release Year: ${Film.releaseYear}</h6>
                    <p class="card-text">Description: ${Film.description}</p>
                    <p class="card-text">Language: ${Film.language}</p>
                    <p class="card-text">Length: ${Film.length}</p>
                    <p class="card-text">Rent Duration: ${Film.rentalDuration}</p>
                    <p class="card-text">Rent Rate: ${Film.rentalRate}</p>
                    <p class="card-text">ReplacementCost: ${Film.replacementCost}</p>
                    <p class="card-text">Rating: ${Film.rating}</p>
                    <p class="card-text">Features: ${Film.specialFeatures}</p>
                    <p class="card-text">Categories: ${Film.category}</p>
                    <p class="card-text">Cast: ${Film.cast}</p>
                    <form action="update.do" method="GET">
						<input type="submit" value="Update Film"> 
						<input style="display: none" name="filmId" value="${Film.id}">
					</form>
					<br>
					<form action="delete.do" method="POST">
						<input type="submit" value="Delete Film"> 
						<input style="display: none" name="filmId" value="${Film.id}">
					<br>
					</form>
                  </div>
            </div>
			
		</c:if>
		<c:if test="${isDeleted}">
			<p>Film Deleted Successfully</p>
		</c:if>
		<c:if test="${notDeleted}">
			<p>Unable To Delete Film</p>
		</c:if>
	
	<br>
	
	<form action="home.do">
		<input type="submit" value="Return Home" >
	</form>
</body>
</html>