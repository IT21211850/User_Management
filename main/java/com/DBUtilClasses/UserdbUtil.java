package com.DBUtilClasses;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import com.model.User;

public class UserdbUtil {
	
	public static Connection con = null;
	public static Statement stmt = null;
	public static ResultSet rs = null;
	public static boolean isSuccess;
	

	public static boolean insertUser(String fname, String Lname, String cAddress, String district,String cemail,int contactNumber,String dob, String password) throws SQLException {
		
		//set database connection
		con =  DBConfig.getConnection();
		
		//create statement
		stmt = con.createStatement();
		
		String sql = "INSERT INTO `systemdb`.`customer` (`firstname`, `lastname`, `cAddress`, `district`, `cemail`, `contactNumber`, `dob`, `password`) VALUES ('"+fname+"', '"+Lname+"', '"+cAddress+"', '"+district+"', '"+cemail+"', "+contactNumber+", '"+dob+"', '"+password+"')";
			
		//run sql
		int result = stmt.executeUpdate(sql);
		
		if(result == 1) {
			isSuccess = true;
		}else {
			isSuccess = false;
		}
		
		return isSuccess;
	}
	
	public static List<User> validate(String username,String password){
				
			ArrayList <User> ur = new ArrayList<>();
			
			//validation
			try {
				
			
				//set database connection
				con =  DBConfig.getConnection();
				//create statement
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM `systemdb`.`customer` WHERE cemail='"+username+"' AND password = '"+password+"'";
				ResultSet rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String fname = rs.getString(2);
					String lname = rs.getString(3);
					String uAddress = rs.getString(4);
					String district = rs.getString(5);
					String email = rs.getString(6);
					int conNum = rs.getInt(7);
					String dob = rs.getString(8);
					String pass = rs.getString(9);
					
					User u = new User(id,fname,lname,uAddress,district,email,conNum,dob,pass);
					ur.add(u);
				}
				else {
					System.out.println("Invalid Login");
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
				
				
				
		return ur;
	}
	
	
	//update user details
	public static boolean updateUser(String id,String fname,String lname,String uaddress,String district,String email,String conNum,String dob,String password) {
		
		int newid = Integer.parseInt(id);
		
		try {
			con = DBConfig.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE `systemdb`.`customer` SET firstname='"+fname+"',lastname='"+lname+"',cemail='"+email+"',dob='"+dob+"',password='"+password+"' WHERE cid='"+newid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	//delete user account
	public static boolean deleteUser(String id) {
		
		int convID = Integer.parseInt(id);
		
		try {
			
			con = DBConfig.getConnection();
			stmt = con.createStatement();
			
			
			String sql = "delete from `systemdb`.`customer` where cid = '"+convID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
}
