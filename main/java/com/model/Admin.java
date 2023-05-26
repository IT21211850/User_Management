package com.model;

public class Admin extends User {
	
	String Department;

	//overloaded constructer
	public Admin(int id, String fname, String lname, String uaddress, String district, String email, int conNum,
			String dob, String password, String department) {
		super(id, fname, lname, uaddress, district, email, conNum, dob, password);
		Department = department;
	}
	
	
//getters and setters
	public String getDepartment() {
		return Department;
	}

	public void setDepartment(String department) {
		Department = department;
	}
	
	
	
	
	

	
	
}
