<%@page import="java.sql.Statement"%>
<%@page import="com.src.dao.DaoService"%>
<%@page import="com.src.service.UserServiceImpl"%>
<%@page import="com.src.model.UsersFlight"%>
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
			int userid = Integer.parseInt(request.getParameter("userid"));
			UsersFlight u = new UsersFlight(userid);
			UserServiceImpl uimp = new UserServiceImpl();
			DaoService ds = new DaoService();
			Statement st = ds.getMyStatement();
			String q = "delete from UsersFlight where userid="+u.getUserid();
			int x = st.executeUpdate(q);
			if(x > 0){
		response.sendRedirect("adminhome.jsp");
			}
			else{
				out.write("User can't be deleted..");
				response.sendRedirect("deluser.jsp");
			}
			ds.closeMyStatement();
	%>
</body>
</html>