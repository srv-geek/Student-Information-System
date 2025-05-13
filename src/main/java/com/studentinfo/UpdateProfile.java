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
import jakarta.servlet.http.HttpSession;

@WebServlet("/UpdateProfile")
public class UpdateProfile extends HttpServlet{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        
        String email = req.getParameter("email");
        String mobile = req.getParameter("mob");
        String city = req.getParameter("city");
        String state = req.getParameter("state");
        String pin = req.getParameter("pin");
        String password = req.getParameter("pass");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch197?useSSL=false", "root", "root");
            PreparedStatement ps = c.prepareStatement("UPDATE register SET mobileNo = ?, city = ?, state = ?, pin = ?, password = ? WHERE email = ?");
            ps.setString(1, mobile);
            ps.setString(2, city);
            ps.setString(3, state);
            ps.setString(4, pin);
            ps.setString(5, password);
            ps.setString(6, email);
          
            int rowsUpdated = ps.executeUpdate();
            
            if (rowsUpdated > 0) {
                HttpSession session = req.getSession();
                session.setAttribute("email", email);
                session.setAttribute("mob", mobile);
                session.setAttribute("city", city);
                session.setAttribute("state", state);
                session.setAttribute("pin", pin);
                session.setAttribute("pass", password);
                RequestDispatcher rd = req.getRequestDispatcher("/profile.jsp");
                rd.forward(req, resp);
            } else {
                req.setAttribute("errorMessage", "Profile update failed. Please try again.");
                RequestDispatcher rd = req.getRequestDispatcher("/updateProfile.jsp");
                rd.forward(req, resp);
            }

            c.close();
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "An error occurred during the update process.");
            RequestDispatcher rd = req.getRequestDispatcher("/updateProfile.jsp");
            rd.forward(req, resp);
        }
    }
}
