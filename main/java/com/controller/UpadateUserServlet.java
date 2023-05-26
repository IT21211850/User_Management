package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBUtilClasses.UserdbUtil;


@WebServlet("/UpadateUserServlet")
public class UpadateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get parameters
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String uaddress = request.getParameter("uaddress");
		String district = request.getParameter("district");
		String email = request.getParameter("email");
		String conNum = request.getParameter("conNum");
		String dob = request.getParameter("dob");
		String password = request.getParameter("password");
		
		//set boolean 
		boolean isTrue;
		isTrue = UserdbUtil.updateUser(id, fname, lname, uaddress, district, email, conNum, dob, password);
		
		//check boolean value
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
		
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("UnSuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
;