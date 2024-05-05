<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Form</title>
</head>
<body>
	
	<h1 style="color: green; font-style: italic;">${Msg}</h1>

	<h2 style="color: blue; font-style: italic;">${user.userName}</h2>
	<h2 style="color: blue; font-style: italic;">${user.email}</h2>
	<h2 style="color: blue; font-style: italic;">${user.password}</h2>

</body>
</html>