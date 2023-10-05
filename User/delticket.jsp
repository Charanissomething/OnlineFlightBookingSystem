<%@page import="com.src.model.Tickets"%>
<%@page import="com.src.service.TicketServiceImpl"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.src.dao.DaoService"%>
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
		String tid = request.getParameter("Tid");
		Tickets t = new Tickets(tid);
		TicketServiceImpl timpl = new TicketServiceImpl();
		int x = timpl.deleteTicket(t);
		if (x > 0)
			response.sendRedirect("User/UserHome.jsp");
	%>
</body>
</html>