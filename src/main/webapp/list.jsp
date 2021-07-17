<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container mt-2">
		<div class="row">
		       <c:forEach var="p" items="${products}" >
				<div class="card-deck col-md-4">
					<p style="color: blue;">${p.id}.</p>
							<a
								href="${pageContext.servletContext.contextPath}/detail?id=${p.id}"
								class="card mt-2 nav-link"> <img src="${p.src}"
								class="card-img-top mt-2" alt="${p.description}">
								<p class="card-text text-success">${p.name}</p>
							</a>
							<c:set var="type" value="${p.type}"></c:set>
							<p class="card-text text-danger">$${p.price}</p>&nbsp;&nbsp;
				 
				 </div>
			</c:forEach>
		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
</body>
</html>