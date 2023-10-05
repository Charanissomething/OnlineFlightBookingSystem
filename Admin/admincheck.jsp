<%@page import="com.src.model.Admin"%>
<%@page import="com.src.service.AdminServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String adminid = request.getParameter("adminid");
		String adminpwd = request.getParameter("password");
		Admin a = new Admin(adminid,adminpwd);
		AdminServiceImpl asimpl = new AdminServiceImpl();
		HttpSession session3 = request.getSession(true);
		session3.setAttribute("id", adminid);
		int x = asimpl.getAdmin(a);
		if(x > 0){
			session3.setAttribute("sucessl", "admin login sucesssfully..");
			RequestDispatcher rd = request.getRequestDispatcher("adminhome.jsp");
			rd.forward(request, response);
		}
		else{
			session3.setAttribute("errormsgl", "Enter valid details... user login invalid...."); 
			response.sendRedirect("registration_admin.jsp");
		}
	%>
</body>
</html>