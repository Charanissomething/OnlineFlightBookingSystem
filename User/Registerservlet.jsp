<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.src.model.UsersFlight"%>
<%@page import="com.src.dao.DaoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Servlet</title>
</head>
<body>
    <%
    		int userid = Integer.parseInt(request.getParameter("userid"));
            String username = request.getParameter("username");
            String emailid = request.getParameter("emailid");
            String password = request.getParameter("password");
            DaoService ds = new DaoService();
            UsersFlight u = new UsersFlight(userid, username, emailid, password);
            Statement st = ds.getMyStatement();
            int i = 0;
            String query = "insert into UsersFlight values(" + u.getUserid() + ",'" + u.getUsername() + "','" + u.getEmailid() + "','" + u.getPassword() + "')";
            try {
                i = st.executeUpdate(query);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            if (i > 0) {
                response.sendRedirect("User/LoginUser.jsp");
            } else {
            	response.sendRedirect("./RegisterServlet");
            }
            ds.closeMyStatement();
    %>
</body>
</html>
