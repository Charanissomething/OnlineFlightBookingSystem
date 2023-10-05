<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
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
        .container {
            max-width: 400px;
            padding: 70px;
            paddin-left:50px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
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

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s ease; 
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="password"]:focus {
            border-color: #ff6f61; 
        }

        /* Submit button */
        .btn-submit {
            background-color: #ff6f61; 
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease; 
        }

        .btn-submit:hover {
            background-color: #e94e47; 
        }
        .btn-submit{
        	margin-left:50px;
        }

     
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .container {
            animation: fadeIn 1s ease-in-out; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add City</h2>
        <form action="addcityimpl.jsp" method="post">
            <div class="form-group">
                <label for="Addcity">City:</label>
                <input type="text" id="city" name="city" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Addcity" class="btn-submit">
            </div>
        </form>
    </div>
</body>
</html>
