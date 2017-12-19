<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>University Enrollments</title>
	<link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/static/css/bootstrap-theme.min.css" rel="stylesheet"/>
</head>


<body>
	<h2>List of Employees</h2>	
	<table class="table">
		<tr>
			<td>NAME</td><td>Joining Date</td><td>Salary</td><td>SSN</td><td></td>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
			<td>${employee.name}</td>
			<td>${employee.joiningDate}</td>
			<td>${employee.salary}</td>
			<td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
			<td><a class="btn btn-danger" href="<c:url value='/delete-${employee.ssn}-employee'/>">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<a class="btn btn-default" href="<c:url value='/new' />">Add New Employee</a>
	<script src="/static/js/jquery-2.1.4.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>


</body>
</html>