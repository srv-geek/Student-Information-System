<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
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

.profile-container {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
    text-align: center;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

p {
    margin: 10px 0;
    font-size: 16px;
}

.profile-field {
    font-weight: bold;
}

.profile-picture {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    margin: 10px auto;
    background-color: #ddd;
    background-size: cover;
    background-position: center;
}

a.logout, a.update {
    display: inline-block;
    margin-top: 20px;
    margin-right: 10px;
    padding: 10px 20px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-size: 16px;
}

a.logout:hover, a.update:hover {
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
<div class="profile-container">
<% 
        String successMessage = (String) request.getAttribute("successMessage");
        if (successMessage != null) { 
	%>
        <p class="success-message"><%= successMessage %></p>
	<% 
        } 
%>
<div class="profile-picture" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvViVzNGjRtN3vib76Zzs0GVrIC7CW0kj9WQ&s');">
</div>
<h1>Welcome To Your Profile</h1>
<p><span class="profile-field">First Name:</span> <%=request.getAttribute("fname")%></p>
<p><span class="profile-field">Last Name:</span> <%=request.getAttribute("lname")%></p>
<p><span class="profile-field">Email:</span> <%=request.getAttribute("email")%></p>
<p><span class="profile-field">Mobile No:</span> <%=request.getAttribute("mob")%></p>
<p><span class="profile-field">DOB:</span> <%=request.getAttribute("dob")%></p>
<p><span class="profile-field">Age:</span> <%=request.getAttribute("age")%></p>
<p><span class="profile-field">Gender:</span> <%=request.getAttribute("gender")%></p>
<p><span class="profile-field">City:</span> <%=request.getAttribute("city")%></p>
<p><span class="profile-field">State:</span> <%=request.getAttribute("state")%></p>
<p><span class="profile-field">Pin:</span> <%=request.getAttribute("pin")%></p>
<p><span class="profile-field">Country:</span> <%=request.getAttribute("country")%></p>
<p><span class="profile-field">Degree:</span> <%=request.getAttribute("degree")%></p>
<p><span class="profile-field">Passing Year:</span> <%=request.getAttribute("passy")%></p>
<a href="updateProfile.jsp" class="update">Update</a>
<a href="main.jsp" class="logout">Logout</a>
</div>
</body>
</html>
