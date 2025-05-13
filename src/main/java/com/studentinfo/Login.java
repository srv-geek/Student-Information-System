package com.studentinfo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/logform")
public final class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("pass");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch197?useSSL=false", "root",
					"root");
			PreparedStatement ps = c.prepareStatement("select * from register where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				req.setAttribute("successMessage", "Login Successful!");
				req.setAttribute("fname", rs.getString(1));
				req.setAttribute("lname", rs.getString(2));
				req.setAttribute("email", rs.getString(3));
				req.setAttribute("mob", rs.getString(4));
				req.setAttribute("dob", rs.getString(5));
				req.setAttribute("age", rs.getString(6));
				req.setAttribute("gender", rs.getString(7));
				req.setAttribute("city", rs.getString(8));
				req.setAttribute("state", rs.getString(9));
				req.setAttribute("pin", rs.getString(10));
				req.setAttribute("country", rs.getString(11));
				req.setAttribute("degree", rs.getString(12));
				req.setAttribute("passy", rs.getString(13));
				RequestDispatcher rd = req.getRequestDispatcher("/profile.jsp");
				rd.forward(req, resp);
			} else {
				req.setAttribute("errorMessage", "Invalid email or password. Please try again.");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.forward(req, resp);
			}
			c.close();
		} catch (Exception e) {
			req.setAttribute("errorMessage", "An error occurred during the login process.");
	        RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
	        rd.forward(req, resp);
			e.printStackTrace();
		}

	}
}
