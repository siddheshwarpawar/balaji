<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	$(function() {
		$("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true,
			maxDate : new Date()
		});
	});
</script>

<title>Registration Form</title>
</head>
<body>
	<form:form action="userReg" method="post" modelAttribute="formModel">
		<div align="center">
			<table>
				<tr>
					<td>First Name :</td>
					<td><form:input path="firstName" /></td>
				</tr>

				<tr>
					<td>Last Name :</td>
					<td><form:input path="lastName" /></td>
				</tr>

				<tr>
					<td>Email :</td>
					<td><form:input path="userEmail" /></td>
				</tr>

				<tr>
					<td>Password :</td>
					<td><form:password path="userPwd" /></td>
				</tr>

				<tr>
					<td>Phone :</td>
					<td><form:input path="userPhno" /></td>
				</tr>

				<tr>
					<td>DOB :</td>
					<td><form:input path="userDob" id="datepicker"/></td>
				</tr>

				<tr>
					<td>User Role :</td>
					<td><form:select path="userRole" items="${userRole}" /></td>
				</tr>

				<tr>
					<td><input type="reset" value="Reset" /></td>
					<td><input type="submit" value="Register" /></td>
				</tr>
			</table>
		</div>
	</form:form>
</body>
</html>