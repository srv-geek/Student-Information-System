<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<style>
body {
    font-family: Arial, sans-serif;
    background: url('https://img.freepik.com/free-photo/abstract-digital-grid-black-background_53876-97647.jpg') no-repeat center center fixed;
    background-size: cover;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    text-align: center;
    background: rgba(255, 255, 255, 0.9); 
    padding: 40px 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    font-size: 24px;
    margin-bottom: 20px;
}

p {
    font-size: 16px;
    color: #666;
    margin-bottom: 30px;
}

.button-group {
    display: flex;
    justify-content: center;
    gap: 20px;
}

.button {
    padding: 10px 20px;
    font-size: 16px;
    color: white;
    background-color: #007bff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    text-decoration: none;
}

.button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<div class="container">
<h1>Welcome to Our Website</h1>
<p>Please choose an option to get started.</p>
<div class="button-group">
<a href="login.jsp" class="button">Login</a>
<a href="register.jsp" class="button">Register</a>
</div>
</div>
</body>
</html>
