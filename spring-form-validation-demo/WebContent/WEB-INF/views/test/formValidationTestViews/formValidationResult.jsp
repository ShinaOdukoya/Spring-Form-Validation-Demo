<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<spring:url value="/resources/test-main.css" var="testMainCss"/>
	<link href="${testMainCss}" rel="stylesheet"/>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Form Validation Test Result</title>
</head>
<body>
	<h1 class="ch1">Congratulations! You are now a registered representative of your organizations</h1>
	<h2 class="ch2">Details are below...</h2>
	<hr>
	
	<div align="center">
		<h3>Name: <b class="cb">${orgrep.firstName} ${orgrep.lastName}</b></h3>
		<h3>Age: <b class="cb">${orgrep.age}</b></h3>
		<h3>Zip Code: <b class="cb">${orgrep.zipCode}</b></h3>
		<h3>Email: <b class="cb">${orgrep.email}</b></h3>
		<h3>Password: <b class="cb">${orgrep.password}</b></h3>
	</div>
	
	<div align="center">
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		<a href="${contextPath}/formValidationDemo/home" style="font-size:17px">Click here to go back to the home page</a>
	</div>
</body>
</html>