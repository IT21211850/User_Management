package com.DBUtilClasses;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
	private static String url = "jdbc:mysql://localhost:3306/systemdb";
	private static String username = "root";
	private static String password = "cm123456";
	
	private static Connection con;
	
	public static Connection getConnection() {
				
		try {
			
			//Register the driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//Create connection
			con = DriverManager.getConnection(url, username, password);
			
		}
		catch(Exception e){
			System.out.println("Database connection failed");
		}
		
		return con;
	}


}
