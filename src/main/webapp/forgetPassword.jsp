<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
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

.reset-container {
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
    font-size: 24px;
}

p {
    text-align: center;
    margin-bottom: 20px;
    color: #666;
    font-size: 14px;
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

.back-to-login {
    text-align: center;
    margin-top: 15px;
}

.back-to-login a {
    color: #007bff;
    text-decoration: none;
}

.back-to-login a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
<div class="reset-container">
<h1>Reset Your Password</h1>
<p>Enter your email and set a new password below.</p>
<form action="update-pass" method="post">
<div class="form-group">
<label>Email</label>
<input type="email" name="email" placeholder="Enter Your Email" required>
</div>
<div class="form-group">
<label>New Password</label>
<input type="password" name="new-pass" placeholder="Enter New Password" required>
</div>
<div class="form-group">
<button type="submit">Reset Password</button>
</div>
</form>
<div class="back-to-login">
<a href="login.jsp">Back to Login</a>
</div>
</div>

</body>
</html>
