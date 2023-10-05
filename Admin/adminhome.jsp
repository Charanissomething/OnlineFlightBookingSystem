<!DOCTYPE html>
<%
	HttpSession session3 = request.getSession(false);
	if(session3.getAttribute("id") == null) response.sendRedirect("AdminPage.jsp");
%>
<html>
<head>
<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background-image: url("img/16682.jpg");
  background-repeat: no-repeat;
  background-size: cover;
}

.navbar {
  display: flex;
  justify-content: space-between; /* Distribute space between buttons */
  align-items: center; /* Vertically center align items */
  padding: 10px 20px;
}

.navbar a {
  color: #fff;
  text-decoration: none;
  padding: 10px 20px;
  transition: background-color 0.3s, transform 0.3s, color 0.3s;
}

.navbar a:hover {
  background-color:orange;
  color: yellow;
  transform: scale(1.05);
}

.navbar a:active {
  background-color: #1d6fa5;
  color: #fff;
  transform: scale(1.05);
}

</style>
<script type="text/javascript">
function preventBack() {
    window.history.forward(); 
}
  
setTimeout("preventBack()", 0);
  
window.onunload = function () { null };
</script>
</head>
<body>

<div class="navbar">
  <a href="adduser.jsp">Add User</a>
  <a href="deluser.jsp">Delete User</a>
  <a href="addcity.jsp">Add City</a>
  <a href="delcity.jsp">Delete City</a>
  <a href="LogoutAdmin.jsp" style="background-color: red;" name="btnname">Logout</a>
</div>

	<%
		if(session3.getAttribute("sucessl")!= null){
	%>
	<p style="color:orange;">
		<%= session3.getAttribute("sucessl") %>
	</p>
	<%
		}
		session3.setAttribute("sucessl","");
	%>
</center>
</body>
</html>
