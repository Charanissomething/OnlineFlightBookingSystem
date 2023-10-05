<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
<style>
body {
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	font-family: 'Jost', sans-serif;
	background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
}

.main {
	width: 350px;
	height: 500px;
	background: red;
	overflow: hidden;
	background:
		url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38")
		no-repeat center/cover;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
}

#chk {
	display: none;
}

.signup {
	position: relative;
	width: 100%;
	height: 100%;
}

label {
	color: #fff;
	font-size: 2.3em;
	justify-content: center;
	display: flex;
	margin: 60px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

input {
	width: 60%;
	height: 20px;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}

button {
	width: 60%;
	height: 40px;
	margin: 10px auto;
	justify-content: center;
	display: block;
	color: #fff;
	background: #573b8a;
	font-size: 1em;
	font-weight: bold;
	margin-top: 20px;
	outline: none;
	border: none;
	border-radius: 5px;
	transition: .2s ease-in;
	cursor: pointer;
}

button:hover {
	background: #6d44b8;
}	
</style>
<script type="text/javascript">
	    function validateForm() {
	        var userid = document.getElementById("userid").value; 
	        var username = document.getElementById("username").value;
	        var emailid = document.getElementById("emailid").value;
	        var password = document.getElementById("password").value;
	        if (userid.length < 4 || userid.length > 20) {
	            alert("User ID must be between 6 and 20 characters.");
	            return false;
	        }
	        if (password.length < 8 || !/[A-Z]/.test(password)) {
	            alert("Password must be at least 8 characters and contain at least one uppercase letter.");
	            return false;
	        }
	        var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
	        if (!emailRegex.test(emailid)) {
	            alert("Please enter a valid email address.");
	            return false;
	        }
	        return true;
	    }
	</script>

</head>

<body>
	<div class="main">
		<input type="checkbox" id="chk" aria-hidden="true" autocomplete="off">
		<div class="signup">
			<form method="post" action="adduserimpl.jsp" autocomplete="off"
				onsubmit="return validateForm();">
				<label for="chk" aria-hidden="true">Sign up</label> <input
					type="text" name="userid" id="userid" placeholder="User id"
					required> <input type="text" name="username" id="username"
					placeholder="User name" required> <input type="text"
					name="emailid" id="emailid" placeholder="Email" required> <input
					type="password" name="password" id="password"
					placeholder="Password" required>
				<button type="submit">Sign up</button>
			</form>
		</div>
	</div>
</body>
</html>
