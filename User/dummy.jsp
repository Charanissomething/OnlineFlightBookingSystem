<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Success</title>
<style>
    /* Add your CSS styles here */
    body {
        font-family: Arial, sans-serif;
        background:url("https://media.istockphoto.com/id/140256497/photo/website-redirection.jpg?s=612x612&w=0&k=20&c=82V7FvOb328pCKFc89eCwMnf2iiY3vn6e5oJhZYsPvs=");
        text-align: center;
        background-size: cover;
        background-repeat: no-repeat;
    }

    h1 {
        color: #0073e6;
    }

    p {
        font-size: 18px;
    }

	button:hover {
	  background-color: #2980b9;
	  transform: scale(1.1); /* Scale the button slightly when hovered */
	}
	
	button {
	  background-color: white;
	  color: #fff;
	  padding: 10px 20px;
	  border: none;
	  border-radius: 10px;
	  cursor: pointer;
	  transition: background-color 0.3s, transform 0.3s;
	}

</style>
</head>
<body>
    <h1>Payment Successful!</h1>
    <p>Thank you for your payment.</p>
    <p>Redirecting you to your page...</p>
    <button><a href="User/UserHome.jsp">Redirect</a></button>
</body>
</html>
