<%@page import="com.src.dao.DaoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement"%>
	
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Select City</title>
<style>
/* Global styles */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #ff6f61; 
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

/* Form container */
.container {
	max-width: 400px;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow */
	border-radius: 5px;
}

/* Form header */
.container h1 {
	text-align: center;
	margin-bottom: 20px;
}

/* Form select input */
.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-group select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

/* Submit button */
.btn-submit {
	background-color: #333;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease; /* Smooth transition */
}

.btn-submit:hover {
	background-color: #555; /* Button color on hover */
}
</style>
</head>
<body>
	<div class="container">
		<h1>Select a City</h1>
		<form action="delcityimpl.jsp" method="post">
			<div class="form-group">
				<label for="citySelect">Choose a city:</label> <select
					id="citySelect" name="selectedCity">
					<option value="" selected disabled>Select a city</option>

					<%
					DaoService ds = new DaoService();
					try {
						Statement statement = ds.getMyStatement();
						String query = "SELECT city FROM cities";
						ResultSet resultSet = statement.executeQuery(query);
						while (resultSet.next()) {
							String city = resultSet.getString(1);
					%>
					<option><%=city%></option>
					<%
					}
					resultSet.close();
					ds.closeMyStatement();
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</select>
			</div>
			<div class="form-group">
				<input type="submit" value="Submit" class="btn-submit">
			</div>
		</form>
	</div>
</body>
</html>
