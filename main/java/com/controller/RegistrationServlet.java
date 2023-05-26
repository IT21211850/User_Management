package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBUtilClasses.UserdbUtil;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get parameters
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String Uaddress = request.getParameter("Uaddress");
		String district = request.getParameter("District");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		int conNum = Integer.parseInt(contact);
		String dob = request.getParameter("day");
		String password = request.getParameter("password");
		
		//set boolean value
		boolean result = false;
		
		try {
			//calling UserDButil method
			result = UserdbUtil.insertUser(fname, lname, Uaddress, district, email, conNum, dob, password);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//check result
		if(result == true) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("Registration.jsp");
			rd.forward(request, response);
		}
		
	}
		
		
}


