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
		HttpSession session3 = request.getSession(false);
		if(session3 != null){
			session3.invalidate();
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma","no-cache");
			response.setHeader("Expires","0");
		}
		response.sendRedirect("AdminPage.jsp");
	%>
</body>
</html>