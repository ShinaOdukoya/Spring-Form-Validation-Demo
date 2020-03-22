<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
	<spring:url value="/resources/test-main.css" var="testMainCss"/>
	<link href="${testMainCss}" rel="stylesheet"/>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Test Bed</title>
</head>
<body>
	<div align="center">
		<h1 class="ch1">Welcome to the Form validation Test Bed</h1>
		<hr>
		<h3>Please register yourself as your organization representative</h3>
		<form action="registerOrgRep" method=POST>
			<table>
				<tr>
					<td><form:label path="orgrep.firstName" cssClass="clabel">First Name</form:label></td>
					<td><form:input path="orgrep.firstName" placeholder="Enter First Name" cssClass="cinput"/></td>
					<td><form:errors path="orgrep.firstName" cssClass="cb"/></td>
				</tr>
				<tr>
					<td><form:label path="orgrep.lastName" cssClass="clabel">Last Name</form:label></td>
					<td><form:input path="orgrep.lastName" placeholder="Enter Last Name" cssClass="cinput"/></td>
					<td><form:errors path="orgrep.lastName" cssClass="cb"/></td>
				</tr>
				
				<tr>
					<td><form:label path="orgrep.age" cssClass="clabel">Age</form:label></td>
					<td><form:input path="orgrep.age" placeholder="Enter Age" cssClass="cinput"/></td>
					<td><form:errors path="orgrep.age" cssClass="cb"/></td>
				</tr>
				
				<tr>
					<td><form:label path="orgrep.zipCode" cssClass="clabel">Zip Code</form:label></td>
					<td><form:input path="orgrep.zipCode" placeholder="Enter Zipcode" cssClass="cinput"/></td>
					<td><form:errors path="orgrep.zipCode" cssClass="cb"/></td>
				</tr>
				
				<tr>
					<td><form:label path="orgrep.email" cssClass="clabel">Email</form:label></td>
					<td><form:input path="orgrep.email" placeholder="Enter Email Address" cssClass="cinput"/></td>
					<td class="cb"><form:errors path="orgrep.email"/>
						<spring:hasBindErrors name="orgrep">
							<c:forEach items="${errors.globalErrors}" var="globalError">
								<c:if test="${fn:contains(globalError, 'Email')}">
									<c:out value="${globalError.defaultMessage}"/>
								</c:if>
							</c:forEach>
						</spring:hasBindErrors>
					
					</td>
				</tr>
				
				<tr>
					<td><form:label path="orgrep.verifyEmail" cssClass="clabel">Verify Email</form:label></td>
					<td><form:input path="orgrep.verifyEmail" placeholder="Confirm Email Address" cssClass="cinput"/></td>
					<td><form:errors path="orgrep.verifyEmail" cssClass="cb"/></td>
				</tr>
				
				<tr>
					<td><form:label path="orgrep.password" cssClass="clabel">Password</form:label></td>
					<td><form:password path="orgrep.password" placeholder="Enter Password" cssClass="cinput"/></td>
					<td class="cb"><form:errors path="orgrep.password"/>
					
						<spring:hasBindErrors name="orgrep">
							<c:forEach items="${errors.globalErrors}" var="globalError">
								<c:if test="${fn:contains(globalError, 'Password')}">
									<c:out value="${globalError.defaultMessage}"/>
								</c:if>
							</c:forEach>
						</spring:hasBindErrors>
					
					</td>
				</tr>
				
				<tr>
					<td><form:label path="orgrep.verifyPassword" cssClass="clabel">Verify Password</form:label></td>
					<td><form:password path="orgrep.verifyPassword" placeholder="Confirm Password" cssClass="cinput"/></td>
					<td><form:errors path="orgrep.verifyPassword" cssClass="cb"/></td>
				</tr>
				
				<tr>
					<td/>
					<td align="center"><input type="submit" value="Submit" class="csubmit"/></td>
				</tr>
			</table>
			<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
			<c:if test="${formerrors ne null}">
				<a href="${contextPath}/formValidationDemo/home" style="font-size:17px">Click here to start a fresh form</a>
			</c:if>
		</form>
	</div>
</body>
</html>