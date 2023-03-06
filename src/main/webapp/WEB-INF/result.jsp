<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Results</h1>
		<c:if test="${Film.id > 0}">
			<h2>Title: ${Film.title}</h2>
			<ul>
				<li>Title: ${Film.title}</li>
				<li>Description: ${Film.description}</li>
				<li>Release Year: ${Film.releaseYear}</li>
				<li>Language: ${Film.language}</li>
				<li>Length: ${Film.length}</li>
				<li>ReplacementCost: ${Film.replacementCost}</li>
				<li>Rating: ${Film.rating}</li>
				<li>Special Features: ${Film.specialFeatures}</li>
				<li>Cast: ${Film.cast}</li>
			</ul>
		</c:if>
		<c:if test="${isDeleted}">
			<p>Film Deleted Successfully</p>
		</c:if>
		<c:if test="${notDeleted}">
			<p>Unable To Delete Film</p>
		</c:if>
		
	<form action="delete.do" method="POST">
		<input type="submit" value="Delete Film"> 
		<input style="display: none" name="filmId" value="${Film.id}">
			<br>
	</form>
	
	<br>
	
	<form action="home.do">
		<input type="submit" value="Return Home" >
	</form>
</body>
</html>