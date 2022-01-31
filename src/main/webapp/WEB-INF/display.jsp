<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Omikuji Display</title>
	<link rel="stylesheet" href="/css/main.css"/>
</head>
<body>
	
	<div id="main">
		<h1>Here's Your Omikuji!</h1>
	
		<p id="msg">In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${name}"/> 
		as your roommate, selling <c:out value="${hobby}"/> for a living. The next time you see a <c:out value="${type}"/>, 
		you will have good luck. Also, <c:out value="${speak}"/>
		</p>
		
		<p><a href="/omikuji">Go Back</a></p>
	</div>
	
</body>
</html>