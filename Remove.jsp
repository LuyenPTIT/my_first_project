<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.savis.soft.DAO.StudentDao" %>
    <%@page import="com.savis.soft.Model.Student" %>
    <%@page import="javax.management.modelmbean.RequiredModelMBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Page</title>
</head>
<body>
	<%
		StudentDao studentDao = new StudentDao();
		//int id=request.getParameter("id");
		//studentDao.remove(id);
		response.sendRedirect("index.jsp");
	%>

</body>
</html>