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
		HttpSession session1 = request.getSession(false);
		if(session1 != null){
			session1.invalidate();
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma","no-cache");
			response.setHeader("Expires","0");
		}
		HttpSession session2 = request.getSession(false);
		if(session2 != null){
			session2.invalidate();
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma","no-cache");
			response.setHeader("Expires","0");
		}
		response.sendRedirect("User/LoginUser.jsp");
	%>
</body>
</html>