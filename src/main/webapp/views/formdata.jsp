<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.tka.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Data</title>
</head>
<style type="text/css">
	h2,h3{
		text-align: center;
		color: purple;
	}
	h1{
		text-align:center;
		color: teal;
	}
	a{
		text-align: right;
	}
</style>
<body>
	<a href="${pageContext.request.contextPath}/all">Back</a>
	<%
		String msg = (String)request.getAttribute("msg");
		Person p = (Person)request.getAttribute("Person");
	%>
	<h1>Data from Form </h1>
	
	<h2>Name : <%=p.getName() %></h2>
	<h2>Surname : <%=p.getSurname() %></h2>
	<h3><%=msg %></h3>
</body>
</html>