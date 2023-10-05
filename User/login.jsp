<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<script>
	function refreshForm() {
	    var form = document.getElementById("myForm");
	    form.reset();
	}
	window.onload = refreshForm;
</script>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Booking Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 200px;
            padding: 0;
        }
        .login-container {
            max-width: 750px;
            margin: 0 auto;
            padding: 50px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .login-container h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .login-container label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .login-container button[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        .login-container button[type="submit"]:hover {
            background-color: #0056b3;
        }

        .register-link {
            margin-top: 20px;
            display:flex;
            justify-content: space-around;	
        }

        .register-link a {
            text-decoration: none;
            color: #007BFF;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login to Flight Booking</h1>
        <form action="User/logincheck.jsp" method="post" id="myForm">
            <label for="username">Userid:</label>
            <input type="text" id="userid" name="userid" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <div class="register-link">
	            <button><a href="User/registration.jsp">New User? Register</a></button>
	            <button type="submit">Login</button>
            </div>
        </form>
    </div>
</body>
</html>
