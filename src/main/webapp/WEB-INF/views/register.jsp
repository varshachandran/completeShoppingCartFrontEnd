<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="row"> 
		    <div  class="col-sm-4" >
<div class ="container" style="margin-top:50px;">
		
		<div class="row jumbotron" style="margin:15px; padding:15px;">
	<h3>Enter your details...</h3>

	<div id="box">
		<c:url var="action" value="here/register"></c:url>
		<form:form action="${action}" method="post" modelAttribute="user">
			<table>

				<tr>
					<td>ID:</td>
					<td><input type="id" name="id"></td>
				</tr>

				<tr>
					<td>Name:</td>
					<td><input type="text" name="name"></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type="text" name="password" /></td>
				</tr>

				<tr>
					<td>Mobile:</td>
					<td><input type="text" name="mobile" /></td>
				</tr>
				<tr>
					<td>Mail:</td>
					<td><input type="text" name="mail" /></td>
					<br/>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" name="address" /></td>
			</tr>

				<tr>
					<td><input class="btn btn-warning" type="submit" value="Register"></td>
				</tr>

			</table>



		</form:form>
	</div>
</body>
</html>