<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
    <link rel="stylesheet" href="registration_styles.css">
</head>
<style>
html {
    height: 100%;
    width: 100%;
}

body {
    background: url("https://images.unsplash.com/photo-1485802007047-7774de7208e5?dpr=1&auto=compress,format&fit=crop&w=1800&h") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Droid Serif', serif;
}

#container {
    background: rgba(3, 3, 55, 0.5);
    width: 18.75rem;
    height: 25rem;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

header {
    text-align: center;
    vertical-align: middle;
    line-height: 3rem;
    height: 3rem;
    background: rgba(3, 3, 55, 0.7);
    font-size: 1.4rem;
    color: #d3d3d3;
}

fieldset {
    border: 0;
    text-align: center;
}

input[type="submit"] {
    background: rgba(235, 30, 54, 1);
    border: 0;
    display: block;
    width: 70%;
    margin: 0 auto;
    color: white;
    padding: 0.7rem;
    cursor: pointer;
}

input {
    background: transparent;
    border: 0;
    border-left: 4px solid;
    border-color: #FF0000;
    padding: 10px;
    color: white;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus {
    outline: 0;
    background: rgba(235, 30, 54, 0.3);
    border-radius: 1.2rem;
    border-color: transparent;
}

::placeholder {
    color: #d3d3d3;
}

/*Media queries */

@media all and (min-width: 481px) and (max-width: 568px) {
    #container {
        margin-top: 10%;
        margin-bottom: 10%;
    }
}
@media all and (min-width: 569px) and (max-width: 768px) {
    #container {
        margin-top: 5%;
        margin-bottom: 5%;
    }
}
	
</style>


<script>
// Function to validate the form
function validateForm() {
    var adminName = document.getElementById("admin-name").value;
    var adminId = document.getElementById("admin-id").value;
    var password = document.getElementById("password").value;
    if (adminName.trim() === "") {
        alert("Please enter your Admin Name.");
        return false;
    }
    if (adminId.trim() === "") {
        alert("Please enter your Admin ID.");
        return false;
    }
    if (password.trim() === "") {
        alert("Please enter your password.");
        return false;
    }
    if (password.length < 8) {
        alert("Password must be at least 8 characters long.");
        return false;
    }
    return true;
}

function login(){
	var targetUrl = 'AdminPage.jsp';
    window.location.href = targetUrl;
}
</script>

<body>
    <body>
      <div id="container">
         <header>Admin Register</header>
         <form method="post" action="User/adminregistercheck.jsp" autocomplete="off" onsubmit="return validateForm();">
            <fieldset>
               <br/>
               <input type="text" name="admin-name" id="admin-name" placeholder="adminname" autofocus>
               <br/><br/>
               <input type="text" name="admin-id" id="admin-id" placeholder="Adminid">
               <br/><br/>
               <input type="password" name="password" id="password" placeholder="Password">
               <br/><br/>
               <label for="submit"></label>
               <input type="submit" name="submit" id="submit" value="REGISTER" onclick="return validateForm();"><br>
              <b style="color:lime;"> <u> Already Registered?</u> </b> <input type="button" onclick="login()" value="LOGIN">
            </fieldset>
         </form>
      </div>
   </body>
</body>
</html>
