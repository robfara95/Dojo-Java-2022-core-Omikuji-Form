<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Omikuji Form</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="container">
	 
		<form action="/omikuji/show" method="POST">
			<h1>Send an Omikuji!</h1>
			<div class="form-group">
				<label for="number">Pick any number from 5 to 25</label>
				<input class="form-control-sm" type="number" min="5" max="25" value="5" id="number" name="number">
			</div>
			<div class="form-group">
		   		<label for="city">Enter the name of any city</label>
				<input class="form-control-sm" type="text" id="city" name="city">
		  	</div>
			<div class="form-group">
		   		<label for="name">Enter the name of any real person</label>
				<input class="form-control-sm" type="text" id="name" name="name">
		  	</div>	
			<div class="form-group">
		   		<label for="hobby">Enter professional endeavor or hobby:</label>
				<input class="form-control-sm" type="text" id="hobby" name="hobby">
		  	</div>
			<div class="form-group">
		   		<label for="type">Enter any type of living thing</label>
				<input class="form-control-sm" type="text" id="type" name="type">
		  	</div>		  	
			<div class="form-group">
				<p>Say Something nice to someone:</p>
		   		<textarea class="form-control-sm" id="speaky" name="speak" cols="60" rows="5"></textarea>
		  	</div>	  
		  	
		 	<div class="form-group">
		   		<p>Send and show a friend</p>
		   		<button type="submit" class="btn btn-primary">Send</button>
		  	</div>	  	
		</form>
	</div>
	 
</body>
</html>