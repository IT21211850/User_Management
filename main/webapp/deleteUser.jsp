<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String uaddress = request.getParameter("uaddress");
		String district = request.getParameter("district");
		String email = request.getParameter("email");
		String conNum = request.getParameter("conNum");
		String dob = request.getParameter("dob");
		String password = request.getParameter("password");
	%>
	
	<h1>Delete Account</h1>
	<form action="deleteUserServlet" method="post">
		<table>
	 
	 	<tr>
	 		<td>User ID</td>
	 		<td><input type="text" name="id" value="<%= id %>" readonly></td>
	 	</tr>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" value="<%= fname %>" readonly></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="fname" value="<%= lname %>" readonly></td>
		<tr>
			<td>Address</td>
			<td><input type="text" name="fname" value="<%= uaddress %>" readonly></td>
		</tr>
		<tr>
			<td>District</td>
			<td><input type="text" name="fname" value="<%= district %>" readonly></td>
		</tr>
		<tr>
			<td>E-mail</td>
			<td><input type="text" name="fname" value="<%= email %>" readonly></td>
		</tr>
		<tr>
			<td>Contact Number</td>
			<td><input type="text" name="fname" value="<%= conNum %>" readonly></td>
		</tr>
		<tr>
			<td>DOB</td>
			<td><input type="text" name="fname" value="<%= dob %>" readonly></td>
		</tr>
		<tr>
			<td>Password </td>
			<td><input type="text" name="fname" value="<%= password %>" readonly></td>
		</tr>
		
		</table>
		
	<br><br>
	<input type="submit" name="submit" value="Delete My Account">

	</form>
</body>
</html>