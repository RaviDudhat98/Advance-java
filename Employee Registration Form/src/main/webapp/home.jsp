<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Home page</title>
		<link href="home.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<h3>Welcome.... </h3>
		<% 
			String firstname = request.getParameter("firstname");
			out.println(firstname);
		%> &nbsp
		<%
			String lastname = request.getParameter("lastname");
			out.println(lastname);
		%>
	</body>
</html>