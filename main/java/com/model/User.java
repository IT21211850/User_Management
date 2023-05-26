package com.model;

public class User {	
	
	private int id;
	private String fname;
	private String lname;
	private String Uaddress;
	private String district;
	private String email;
	private int conNum;
	private String dob;
	private String password;
	
	//overloaded constructor
	public User(int id,String fname, String lname, String uaddress, String district, String email, int conNum, String dob,String password) 
	{	//abs
		this.id=id;
		this.fname = fname;
		this.lname = lname;
		this.Uaddress = uaddress;
		this.district = district;
		this.email = email;
		this.conNum = conNum;
		this.dob = dob;
		this.password = password;
	}
	
	//getters 
	//enc
	public int getid() {
		return id;
	}
	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getUaddress() {
		return Uaddress;
	}

	public String getDistrict() {
		return district;
	}

	public String getEmail() {
		return email;
	}

	public int getConNum() {
		return conNum;
	}

	public String getDob() {
		return dob;
	}

	public String getPassword() {
		return password;
	}

	
	
}