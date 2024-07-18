<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Input Form</title>

</head>
<body>
	<form action="InputData" method="post">
		<table align="center">
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>SurName :</td>
				<td><input type="text" name="surname"></td>
			</tr>
			<tr>
				<td colspan="1"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>