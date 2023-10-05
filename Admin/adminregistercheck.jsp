<%@page import="com.src.service.AdminServiceImpl"%>
<%@page import="com.src.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String adminname = request.getParameter("admin-name");
		String adminid = request.getParameter("admin-id");
		String adminpwd = request.getParameter("password");
		Admin a = new Admin(adminname,adminid,adminpwd);
		AdminServiceImpl aimpl = new AdminServiceImpl();
		int x = aimpl.addAdmin(a);
		if(x > 0){
			response.sendRedirect("AdminPage.jsp");
		}
		else {
			out.write("Admin can't be Registered..");
			response.sendRedirect("registrationadmin.jsp");
		}
	%>
</body>
</html>