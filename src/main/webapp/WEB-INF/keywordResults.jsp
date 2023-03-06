<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film</title>
</head>
<body>
    <c:choose>
        <c:when test="${! empty films}">
            <ul>
                <c:forEach var="f" items="${films}">
                    <br>
                    <h4>${f.title}</h4>
                    <li>Title: ${f.title}</li>
					<li>Description: ${f.description}</li>
					<li>Release Year: ${f.releaseYear}</li>
					<li>Language: ${f.language}</li>
					<li>Length: ${f.length}</li>
					<li>Rental Duration: ${f.rentalDuration}</li>
					<li>Rental Rate: ${f.rentalRate}</li>
					<li>ReplacementCost: ${f.replacementCost}</li>
					<li>Rating: ${f.rating}</li>
					<li>Special Features: ${f.specialFeatures}</li>
					<li>Cast: ${f.cast}</li>
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
	
				<br>
                </c:forEach>
            </ul>
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