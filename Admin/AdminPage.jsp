<%@page import="org.checkerframework.checker.units.qual.s"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="/FlightBookingSystem_Final_Project/src/main/webapp/login-form-18/css/style.css">
</head>

<script>
	function validateForm() {
		var adminid = document.getElementById("adminid").value;
		var password = document.getElementById("password").value;
		if (adminid.trim() === "") {
			alert("Please enter your Admin ID.");
			return false;
		}
		if (password.trim() === "") {
			alert("Please enter your password.");
			return false;
		}
		return true;
	}
</script>

<style>
body {
  background:url("img/16710.jpg");
  font-family: 'Asap', sans-serif;
}

.login {
  overflow: hidden;
  background-color: white;
  padding: 40px 30px 30px 30px;
  border-radius: 10px;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  transform: translate(-50%, -50%);
  transition: transform 300ms, box-shadow 300ms;
  box-shadow: 5px 10px 10px rgba(2, 128, 144, 0.2);
}

.login::before,
.login::after {
  content: '';
  position: absolute;
  width: 600px;
  height: 600px;
  border-top-left-radius: 40%;
  border-top-right-radius: 45%;
  border-bottom-left-radius: 35%;
  border-bottom-right-radius: 40%;
  z-index: -1;
}

.login::before {
  left: 40%;
  bottom: -130%;
  background-color: rgba(69, 105, 144, 0.15);
  animation: wawes 6s infinite linear;
}

.login::after {
  left: 35%;
  bottom: -125%;
  background-color: rgba(2, 128, 144, 0.2);
  animation: wawes 7s infinite;
}

.login > input {
  font-family: 'Asap', sans-serif;
  display: block;
  border-radius: 5px;
  font-size: 16px;
  background: white;
  width: 100%;
  border: 0;
  padding: 10px 10px;
  margin: 15px -10px;
}

.login > button {
  font-family: 'Asap', sans-serif;
  cursor: pointer;
  color: #fff;
  font-size: 16px;
  text-transform: uppercase;
  width: 80px;
  border: 0;
  padding: 10px 0;
  margin-top: 10px;
  margin-left: -5px;
  border-radius: 5px;
  background-color: orange;
  transition: background-color 300ms;
}

.login > button:hover {
  background-color: rgba(214, 81, 95, 1);
}

@keyframes wawes {
  from {
    transform: rotate(0);
  }
  to {
    transform: rotate(360deg);
  }
}

a {
  text-decoration: none;
  color: rgba(255, 255, 255, 0.6);
  position: absolute;
  right: 10px;
  bottom: 10px;
  font-size: 12px;
}

</style>

<body>
<form class="login" method="post" action="admincheck.jsp" autocomplete="off">
  <h3>Admin Login</h3>
  <input type="text" placeholder="Adminid" name="adminid">
  <input type="password" placeholder="Password" name="password">
  <button type="submit">Login</button>
</form> 
	<%
		HttpSession session3 = request.getSession(false);
		if(session3.getAttribute("errormsgl")!= null){
	%>
		<h1 style="color:orange; text-align: center;">
			<%= session3.getAttribute("errormsgl") %>
		</h1>
	<%
		}
		session3.setAttribute("errormsgl", "");
	%> 
</body>
</html>