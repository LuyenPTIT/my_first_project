<%@page import="java.util.ArrayList"%>
<%@page import="com.savis.soft.Model.Student" %>
<%@page import="com.savis.soft.DAO.StudentDao" %>
<%@page import="com.savis.soft.Commom.DatabaseConnection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Danh sách sinh viên</h1>
	
	<table border="1" style="border-collapse: collapse;" > 
		<tr>
			<th>Mã sinh viên</th>
			<th>Tên sinh viên</th>
			<th>Địa chỉ</th>
			<th>Email</th>
			<th>Số điện thoại</th>
			<th colspan="3"></th>
		</tr>
		
		<%
			//List<Student> student = new ArrayList<>();
			StudentDao studentDao = new StudentDao();
			for(int i  = 0; i < studentDao.findAll().size();i++){
			
		%>
		
		<tr>
			<td> <%= studentDao.findAll().get(i).getId() %></td>
			<td> <%= studentDao.findAll().get(i).getName() %> </td>
			<td> <%= studentDao.findAll().get(i).getAddress() %> </td>
			<td> <%= studentDao.findAll().get(i).getEmail() %> </td>
			<td> <%= studentDao.findAll().get(i).getPhone() %> </td>
			<td> <a href="detail.jsp">Chi tiết</a></td>
			<td> <a href="doEdit.jsp?id=">Cập nhật</a></td>
			<td> <a href="Remove.jsp?id=">Xóa</a></td>	
		</tr>
		<%
			}
		%>	
		
	</table>
	<br/>
	<input type="submit" name="submit" value="Thêm mới"/>
	
</body>
</html>