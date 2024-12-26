package com.studentinfo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/regform")
public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String mobile = request.getParameter("mob");
		String email = request.getParameter("email");
		String dob = request.getParameter("dob");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String pin = request.getParameter("pin");
		String country = request.getParameter("country");
		String degree = request.getParameter("degree");
		String passYear = request.getParameter("passy");
		String password = request.getParameter("pass");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch197?useSSL=false","root","55035");
			PreparedStatement ps = c.prepareStatement("insert into register(firstName,lastName,email,mobileNo,dob,age,gender,city,state,pin,country,degree,passyear,password)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, email);
			ps.setString(4, mobile);
			ps.setString(5, dob);
			ps.setString(6, age);
			ps.setString(7, gender);
			ps.setString(8, city);
			ps.setString(9, state);
			ps.setString(10, pin);
			ps.setString(11, country);
			ps.setString(12, degree);
			ps.setString(13, passYear);
			ps.setString(14, password);
			ps.executeUpdate();
			
			request.setAttribute("successMessage", "Registration successful! Please log in.");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
			c.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}