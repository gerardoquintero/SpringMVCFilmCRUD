<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Results</h1>
	<h2>Title: ${Film.title}</h2>
	<ul>
		<li>Title: ${Film.title}</li>
		<li>Description: ${Film.description}</li>
		<li>Release Year: ${Film.releaseYear}</li>
		<li>Language Id: ${Film.languageId}</li>
		<li>Length: ${Film.length}</li>
		<li>ReplacementCost: ${Film.replacementCost}</li>
		<li>Rating: ${Film.rating}</li>
		<li>Special Features: ${Film.specialFeatures}</li>
		<li>Language: ${Film.language}</li>


	</ul>
</body>
</html>