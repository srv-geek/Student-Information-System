<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
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
	max-width: 500px;
}

h1 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 24px;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-group input, .form-group select {
	width: 100%;
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.form-group input:focus, .form-group select:focus {
	border-color: #007bff;
	outline: none;
}

.form-group.gender {
	display: flex;
	align-items: center;
	gap: 10px;
}

.form-group.gender label {
	margin-bottom: 0;
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

.success-message {
    color: green;
    font-size: 16px;
    margin-bottom: 15px;
}
</style>
</head>
<body>
<div class="register-container">
<% 
        String successMessage = (String) request.getAttribute("successMessage");
        if (successMessage != null) { 
	%>
        <p class="success-message"><%= successMessage %></p>
	<% 
        } 
%>
<h1>Register Here</h1>
<form action="regform" method="post">
<div class="form-group">
<label>First Name:</label> 
<input type="text" name="fname" placeholder="Enter Your First Name" required>
</div>
<div class="form-group">
<label>Last Name:</label> 
<input type="text" name="lname" placeholder="Enter Your Last Name" required>
</div>
<div class="form-group">
<label>Email:</label> 
<input type="email" name="email" placeholder="Enter Your Email" required>
</div>
<div class="form-group">
<label>Mobile No:</label> 
<input type="tel" name="mob" placeholder="Enter Your Mobile No" required>
</div>
<div class="form-group">
<label>DOB:</label> 
<input type="date" name="dob" required>
</div>
<div class="form-group">
<label>Age:</label> 
<input type="number" name="age" placeholder="Enter Your Age" required>
</div>
<div class="form-group gender">
<label>Gender:</label> 
<label><input type="radio" name="gender" value="Male" required> Male </label>
<label><input type="radio" name="gender" value="Female" required> Female </label>
</div>
<div class="form-group">
<label>City:</label> 
<input type="text" name="city" placeholder="Enter Your City" required>
</div>
<div class="form-group">
<label>State:</label> 
<input type="text" name="state" placeholder="Enter Your State" required>
</div>
<div class="form-group">
<label>Pin Code:</label> 
<input type="text" name="pin" placeholder="Enter Your Pin Code" required>
</div>
<div class="form-group">
<label>Country:</label> 
<input type="text" name="country" placeholder="Enter Your Country" required>
</div>
<div class="form-group">
<label>Degree:</label>
<select name="degree" required>
    <option value="">Select Your Highest Degree</option>
    <option value="B.Tech">B.Tech</option>
    <option value="B.B.A">B.B.A</option>
    <option value="M.Tech">M.Tech</option>
    <option value="M.B.A">M.B.A</option>
</select>

</div>
<div class="form-group">
<label>Passing Year:</label> 
<input type="date" name="passy" required>
</div>
<div class="form-group">
<label>Password:</label> 
<input type="password" name="pass" placeholder="Enter Your Password" required>
</div>
<div class="form-group">
<button type="submit">Register</button>
</div>
</form>
</div>
</body>
</html>
