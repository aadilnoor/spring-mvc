<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Page</title>
</head>
<body>

	<h1 style="color: blue; font-style: italic;">Hello</h1>
	<h2 style="color: purple; font-style: italic;">How can help you</h2>

	<h2 style="color: maroon; font-style: italic;">This is help page</h2>

	<%-- <%
	 String name = (String) request.getAttribute("name");
	String address = (String) request.getAttribute("address");
	LocalDate date = (LocalDate) request.getAttribute("date"); 
	%>
     <!-- Print value By using servlet request Interface  -->

	<h1 style="color: navy; font-style: italic;">
		My name is -->
		<%=name%></h1>
	<h1 style="color: navy; font-style: italic;">
		Address -->
		 <%=address%> </h1>

	<h3 style="color: green; font-style: normal;">
		Today Date is -->
		 <%=date%> </h3>
		 
		  --%>

	<!-- Print value By using jsp expression tag -->

	<h1 style="color: navy; font-style: italic;">
		My name is --> ${name}
		<%-- <%=name%> --%>
	</h1>
	<h1 style="color: navy; font-style: italic;">
		Address --> ${address}
		<%-- <%=address%> --%>
	</h1>

	<h3 style="color: green; font-style: oblique;">
		Today Date is --> ${date}
		<%-- <%=date%> --%>
	</h3>
	<hr>

	<h1 style="color: olive; font-style: italic;">Marks List --></h1>

	${marks}

	<c:forEach var="item" items="${marks}">
		<h3 style="color: fuchsia; font-style: italic;">${item}</h3>
		<%-- <h3><c:out value="${item}"></c:out></h3>--%>
	</c:forEach>

</body>
</html>