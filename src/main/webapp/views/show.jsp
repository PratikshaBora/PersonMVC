<%@page import="com.tka.model.Person"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Data</title>
<style type="text/css">
	table,tr,th,td{
		border: 2px solid green;
		text-align: center;
		padding : 5px;
	}
	table{
		width: 400px;
		height: 400px;
	}
</style>
</head>
<body>
	<a href="${pageContext.request.contextPath}/w">Home</a>
	<h2 align="center" style="color:rgb(123,123,123);"> Person Data</h2>
	<table align="center" border="2">
		<tr>
			<th> Id </th>
			<th> Name </th>
			<th> Surname </th>
		</tr>
		<%
			List<Person> list = (List<Person>)request.getAttribute("data");
			for(Person p:list){
		%>
		<tr>
			<td><%=p.getId() %></td>
			<td><%=p.getName() %></td>
			<td><%=p.getSurname() %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>