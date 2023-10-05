<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Button Page</title>
    <style>
        /* Global styles */
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f0f0f0; /* Background color */
            background: url("https://images.unsplash.com/photo-1600577916048-804c9191e36c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2VsY29tZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80");
            background-repeat:no-repeat;
            background-size:cover;
        }

        /* Button container */
        .button-container {
            text-align: center;
        }

        /* Button styles */
        .button {
            display: inline-block;
            padding: 15px 30px;
            margin: 10px;
            background-color: #007BFF; /* Button background color */
            color: #fff; /* Button text color */
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth transitions */
        }

        .button:hover {
            background-color: #0056b3; /* Button color on hover */
            transform: scale(1.05); /* Scale up on hover */
        }
        div{
        	margin-top: 500px;
        }
    </style>
</head>
<body>
    <div class="button-container">
        <a href="Admin/registrationadmin.jsp" class="button" id = "admin">Admin</a>
        <a href="User/LoginUser.jsp" class="button" id="user">User</a>
    </div>
</body>
</html>
