<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Details</title>
</head>
<body>
	<%
		String name = (String)request.getAttribute("name");
		String surname = (String)request.getAttribute("surname");
	%>
	<h1>Details passed by Model class</h1>
	<h2>Name : <%=name %></h2>
	<h2>Surname : <%=surname %></h2>
</body>
</html>