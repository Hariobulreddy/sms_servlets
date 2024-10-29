<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        h1 {
            margin-bottom: 20px;
            color: #333;
        }
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border 0.3s;
        }
        input:focus {
            border-color: #007BFF;
            outline: none;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Register here</h1>
        <form action="reg" method="post">
            <div class="form-group">
                <input type="text" name="id" placeholder="Enter ID" required>
            </div>
            <div class="form-group">
                <input type="text" name="name" placeholder="Enter Name" required>
            </div>
            <div class="form-group">
                <input type="email" name="email" placeholder="Enter Email" required>
            </div>
            <div class="form-group">
                <input type="tel" name="phone" placeholder="Enter Phone" required>
            </div>
            <div class="form-group">
                <input type="text" name="username" placeholder="Enter Username" required>
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Enter Password" required>
            </div>
            <button type="submit">Register</button>
        </form>
         <h3>Have Account <a href="login.jsp">Click here</a> to Login.</h3>
    </div>
</body>
</html>