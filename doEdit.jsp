<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.savis.soft.Model.Student" %>
<%@page import="com.savis.soft.Commom.DatabaseConnection" %>
<%@page import="com.savis.soft.DAO.StudentDao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		StudentDao studentDao = new StudentDao();
		Student studentEdit = studentDao.findOne(4);
		//student.setId(request.getParameter("id"));
		studentEdit.setName(request.getParameter("name"));
		studentEdit.setAddress(request.getParameter("address"));
		studentEdit.setEmail(request.getParameter("email"));
		studentEdit.setPhone(request.getParameter("phone"));
		studentDao.edit(studentEdit);
		response.sendRedirect("index.jsp");
	%>
</body>
</html>