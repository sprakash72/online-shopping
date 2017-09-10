<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<%@include file="shared/navbar.jsp"%>

	<!-- Page Content -->
	<c:if test="${homeClicked == true}">
		<%@include file="home.jsp"%>
	</c:if>

	<c:if test="${aboutClicked== true}">
		<%@include file="about.jsp"%>
	</c:if>

	<c:if test="${contactClicked== true}">
		<%@include file="home.jsp"%>
	</c:if>

	<!-- Footer -->
	<%@include file="shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js }/jquery.min.js"></script>
	<script src="${js }/popper.js"></script>
	<script src="${js }/bootstrap.min.js"></script>

</body>

</html>