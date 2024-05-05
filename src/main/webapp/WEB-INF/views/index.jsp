<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h1>This is home page</h1>

	<%
	String name = (String) request.getAttribute("name");
	long number = (long) request.getAttribute("mobileNumber");

	List<String> employee = (List<String>) request.getAttribute("emp");
	%>
	<h1>
		My Name is
		<%=name%></h1>

	<h3 style="color: red;">
		Mob Number :
		<%=number%></h3>
	<br>


	<h1 style="color: blue;">List of Employees</h1>

	<%
	for (String s : employee) {
	%>
	<h2 style="color: green;">
		<%=s%></h2>
	<%
	}
	%>
	
	
	
	




</body>
</html>