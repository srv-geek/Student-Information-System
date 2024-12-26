<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.register-container {
	background: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
}

h1 {
	text-align: center;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-group input {
	width: 100%;
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.form-group input:focus {
	border-color: #007bff;
	outline: none;
}

.form-group button {
	width: 100%;
	padding: 10px;
	font-size: 16px;
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.form-group button:hover {
	background-color: #0056b3;
}

.forgot-password {
	text-align: center;
	margin-top: 15px;
}

.forgot-password a {
	color: #007bff;
	text-decoration: none;
}

.forgot-password a:hover {
	text-decoration: underline;
}

.error-message {
	color: red;
	margin-bottom: 15px;
}
</style>
</head>
<body>
<div class="register-container">
<h1>Login Here</h1>
<c:if test="${not empty errorMessage}">
<p class="error-message">${errorMessage}</p>
</c:if>
<form action="logform" method="post">
<div class="form-group">
<label>Email</label> 
<input type="email" placeholder="Enter Your Email" name="email" required>
</div>
<div class="form-group">
<label>Password</label> 
<input type="password" placeholder="Enter Your Password" name="pass" required>
</div>
<div class="form-group">
<button type="submit">Login</button>
</div>
</form>
<div class="forgot-password">
<a href="forgetPassword.jsp">Forgot Password?</a>
</div>
</div>
</body>
</html>
