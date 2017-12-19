<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/static/css/bootstrap-theme.min.css" rel="stylesheet"/>
	<title>Employee Registration Form</title>

</head>

<body>

	<h2>Registration Form</h2>

	<form:form method="POST" modelAttribute="employee">
		<form:input type="hidden" path="id" id="id"/>
		<table>
			<tr class="form-group">
				<td><label for="name">Name: </label> </td>
				<td><form:input path="name" id="name"  cssClass="form-control"/></td>
				<td><form:errors path="name" cssClass="control-label"/></td>
		    </tr>

			<tr class="form-group has-warning">
				<td><label for="joiningDate">Joining Date: </label> </td>
				<td><form:input path="joiningDate" id="joiningDate" cssClass="form-control"/></td>
				<td><form:errors path="joiningDate" cssClass="control-label" id="inputWarning1"/></td>
		    </tr>

			<tr class="form-group">
				<td><label for="salary">Salary: </label> </td>
				<td><form:input path="salary" id="salary" cssClass="form-control"/></td>
				<td><form:errors path="salary" cssClass="control-label"/></td>
		    </tr>

			<tr class="form-group">
				<td><label for="ssn">SSN: </label> </td>
				<td><form:input path="ssn" id="ssn" cssClass="form-control"/></td>
				<td><form:errors path="ssn" cssClass="control-label"/></td>
		    </tr>

			<tr class="form-group">
				<td colspan="3">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update" class="btn btn-default"/>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register" class="btn btn-default"/>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</table>
	</form:form>
	<br/>
	<br/>
	Go back to <a href="<c:url value='/list' />">List of All Employees</a>

	<script src="/static/js/jquery-2.1.4.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>



</body>
</html>