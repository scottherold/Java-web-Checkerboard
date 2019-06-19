<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Checkerboard Query</title>
	<link rel="stylesheet" href="Checkerboard.css">
</head>
<body>
	<% String width = request.getParameter("width"); %>
	<% String height = request.getParameter("height"); %>
	
	<h1>Checkerboard: <%= width %>w X <%= height %>h </h1>
	<%
		int i = 0;
		int j = 0;
		int alt = 0;
	%>
	<% while(i < Integer.parseInt(height)) { %>
		<% if(i % 2 == 0) { %>
			<% alt = 0; %>
		<% } else { %>
			<% alt = 1; %>
		<% } %>
		<div>
		<% while(j < Integer.parseInt(width)) { %>
			<% if(alt == 0) { %>
				<div class="redsquare"></div>
				<% alt++; %>
			<% } else { %>
				<div class="bluesquare"></div>
				<% alt--; %>
			<% } %>
			<% j++; %>
		<% } %>
		</div>
		<% j = 0; %>
		<% i++; %>
	<% } %>
</body>
</html>