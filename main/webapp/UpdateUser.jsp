<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Account</title>
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

 	<form action="UpadateUserServlet" method="post">
		
		Customer ID    :<input type="text" name="id" value="<%=id%>" readonly/><br>
		First Name     :<input type="text" name="fname" value="<%=fname%>"/><br>
		Last Name      :<input type="text" name="lname" value="<%=lname%>"/><br>
		Address        :<input type="text" name="uaddress" value="<%=uaddress%>" readonly/><br>
		District       :<input type="text" name="district" value="<%=district%>" readonly/><br>
		E-mail         :<input type="text" name="email" value="<%=email%>"/><br>
		Contact Number :<input type="text" name="conNum" value="<%=conNum%>" readonly/><br>
		Date of Birth  :<input type="text" name="dob" value="<%=dob%>"/><br>
		Password       :<input type="text" name="password" value="<%=password%>"/>
		<br><br>
		<input type="submit" name="submit" value="Update Data">
		<br>
 	</form>

</body>
</html>