<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.savis.soft.Model.Student" %>
<%@page import="com.savis.soft.Commom.DatabaseConnection" %>
<%@page import="com.savis.soft.DAO.StudentDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP page</title>
</head>
<body>
	<form method="POST" action="doEdit">
		<table>
			<tr>
			 	<td>ID: </td>
			 	<td> <input type="text" name="id" placeholder="12348"/></td>
			</tr>
			<tr>
			 	<td>Name: </td>
			 	<td> <input type="text" name="name" /></td>
			</tr>
			<tr>
			 	<td>Address: </td>
			 	<td> <input type="text" name="address"/></td>
			</tr>
			<tr>
			 	<td>Email: </td>
			 	<td> <input type="text" name="email" placeholder="namnn@gmail.com"/></td>
			</tr>
			<tr>
			 	<td>Phone: </td>
			 	<td> <input type="text" name="phone" /></td>
			</tr>
		</table>
		<input type="submit" value="submit"/>
		<input type="reset" value="reset"/>
	
	</form>
</body>
</html>