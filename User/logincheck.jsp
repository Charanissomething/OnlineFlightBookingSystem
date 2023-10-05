<%@page import="com.src.service.UserServiceImpl"%>
<%@page import="com.src.model.UsersFlight"%>
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
			int userid = Integer.parseInt(request.getParameter("userid"));
			String password = request.getParameter("password");
			UsersFlight u = new UsersFlight(userid,password);
			UserServiceImpl uimp = new UserServiceImpl();
			boolean x = uimp.userCheck(u);
			HttpSession session1 = request.getSession(true);
			UsersFlight us = uimp.getUser(u);
			session1.setAttribute("u", us);
			if(x) {
				session1.setAttribute("sucess","action is sucesfull...");
				response.sendRedirect("User/UserHome.jsp");
			}
			else {
				session1.setAttribute("errormsg", "error occured please re enter the values");   
				response.sendRedirect("User/LoginUser.jsp");
			}
	%>
	<p><%= userid %></p>
	<p><%= password %></p>
</body>
</html>