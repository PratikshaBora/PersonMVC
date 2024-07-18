<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style type="text/css">
	#a1{
		float: left;
		font-size: xx-large;
		color: orange;
	}
	#a2{
		float: right;
		font-size: xx-large;
		color: maroon;
	}
	body{
		background-color: lightgray;
	}
	h1{
		color : yellow;
		text-align: center;
	}
</style>
</head>
<body>
	<h1>Welcome to Person Management system</h1>
	<hr>
	<div id="a1"><a href="${pageContext.request.contextPath}/all" >Data</a></div>
	<div id="a2"><a href="InputForm.jsp">Add Data</a></div>
</body>
</html>