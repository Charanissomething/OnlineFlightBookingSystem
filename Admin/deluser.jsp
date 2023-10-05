<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
/* Global styles */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #ff6f61; /* Vibrant background color */
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

/* Form container */
.container {
	max-width: 400px;
	padding: 70px;
	paddin-left: 50px;
	background-color: rgba(255, 255, 255, 0.9);
	/* Semi-transparent white background */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Box shadow */
	border-radius: 10px;
}

/* Form header */
.container h2 {
	text-align: center;
	margin-bottom: 20px;
}

/* Form fields */
.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-group input[type="text"], .form-group input[type="password"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	transition: border-color 0.3s ease;
	/* Smooth transition for border color */
}

.form-group input[type="text"]:focus, .form-group input[type="password"]:focus
	{
	border-color: #ff6f61; /* Border color on focus */
}

/* Submit button */
.btn-submit {
	background-color: #ff6f61; /* Vibrant button color */
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
	/* Smooth transition for button color */
}

.btn-submit:hover {
	background-color: #e94e47; /* Button color on hover */
}

.btn-submit {
	margin-left: 50px;
}

/* Animation for the form */
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
.container {
	animation: fadeIn 1s ease-in-out; /* Apply the animation */
}

 /* CSS for the navbar container */
    .navbar {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 60px; /* Adjust the height as needed */
        justify-content:space-between;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
    }

    /* Style for the button-like hyperlinks */
    .navbar a {
        display: inline-block;
        padding: 10px 20px;
        margin: 0 10px;
        text-decoration: none;
        color: white;
        background-color: #4CAF50;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    /* Style for the "Logout" button */
    .navbar a[name="btnname"] {
        background-color: red;
    }

    /* Style the button-like hyperlinks on hover */
    .navbar a:hover {
        background-color: #45a049; /* Darker green color on hover */
    }
</style>
</head>
<body>
	<div class="navbar">
      <a href="adduser.jsp">Add User</a>
	  <a href="deluser.jsp">Delete User</a>
	  <a href="addcity.jsp">Add City</a>
	  <a href="delcity.jsp">Delete City</a>
	   <a href="adminhome.jsp" style="background-color: orange;" name="btnname">Home</a>
    </div>
	<div class="container">
		<h2>Delete User</h2>
		<form action="Admin/deleteuserimpl.jsp" method="post">
			<div class="form-group">
				<label for="userID">UserId:</label> <input type="text" id="userID"
					name="userid" required>
			</div>
			<div class="form-group">
				<input type="submit" value="Delete" class="btn-submit">
			</div>
		</form>
	</div>
</body>
</html>
