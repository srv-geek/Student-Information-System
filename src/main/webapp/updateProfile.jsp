<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
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

.update-container {
	background: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
	text-align: center;
}

h1 {
	margin-bottom: 20px;
	font-size: 24px;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
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

.error-message {
	color: red;
	margin-bottom: 15px;
}
</style>
</head>
<body>
<div class="update-container">
<h1>Update Profile</h1>

<c:if test="${not empty errorMessage}">
<p class="error-message">${errorMessage}</p>
</c:if>

<form action="UpdateProfile" method="post">
<div class="form-group">
<label>Email:</label> 
<input type="email" placeholder="Enter Your Email" name="email" value="<%=request.getSession().getAttribute("email")%>" required>
</div>
<div class="form-group">
<label>Mobile:</label> 
<input type="tel" placeholder="Enter Your Mobile" name="mob" value="<%=request.getSession().getAttribute("mob")%>" required>
</div>
<div class="form-group">
<label>City:</label>
<input type="text" name="city" placeholder="Enter Your City" value="<%= request.getSession().getAttribute("city") %>" required>
</div>
<div class="form-group">
<label>State:</label>
<input type="text" name="state" placeholder="Enter Your State" value="<%= request.getSession().getAttribute("state") %>" required>
</div>
<div class="form-group">
<label>Pin:</label>
<input type="text" name="pin" placeholder="Enter Your Pin" value="<%= request.getSession().getAttribute("pin") %>" required>
</div>
<div class="form-group">
<label>Password:</label>
<input type="text" name="pass" placeholder="Enter Your Password" value="<%= request.getSession().getAttribute("pass") %>" required>
</div>
<div class="form-group">
<button type="submit">Update</button>
</div>
</form>
</div>
</body>
</html>
