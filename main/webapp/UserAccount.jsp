<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>
		
</head>
<body>
<h1><center>User Account</center></h1>
		
		<center><table width:100% border=1px>
 <c:forEach var="ur" items="${urDetails}">
	
	
	<c:set var="id" value="${ur.id}" />
	<c:set var="fname" value="${ur.fname}" />
	<c:set var="lname" value="${ur.lname}" />
	<c:set var="uaddress" value="${ur.uaddress}" />
	<c:set var="district" value="${ur.district}" />
	<c:set var="email" value="${ur.email}" />
	<c:set var="conNum" value="${ur.conNum}" />
	<c:set var="dob" value="${ur.dob}" />
	<c:set var="password" value="${ur.password}" />
	
	
	
	<tr>
		<td>User ID</td>
		<td>${ur.id}</td>
	</tr>
	<tr>
		<td>First Name</td>
		<td>${ur.fname}</td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td>${ur.lname}</td>
	<tr>
		<td>Address</td>
		<td>${ur.uaddress}</td>
	</tr>
	<tr>
		<td>District</td>
		<td>${ur.district}</td>
	</tr>
	<tr>
		<td>E-mail</td>
		<td>${ur.email}</td>
	</tr>
	<tr>
		<td>Contact Number</td>
		<td>${ur.conNum}</td>
	</tr>
	<tr>
		<td>DOB</td>
		<td>${ur.dob}</td>
	</tr>
	<tr>
		<td>Password </td>
		<td>${ur.password}</td>
	</tr>
		
	</c:forEach>	
	</table>
	</center>	
	
	<br><br><br>
	
	<div class="edtbuttons">
		
		<center>
		
		<c:url value="UpdateUser.jsp" var="urUpdate">
			
			<c:param name="id" value="${id}"/>
			<c:param name="fname" value="${fname}"/>
			<c:param name="lname" value="${lname}"/>
			<c:param name="uaddress" value="${uaddress}"/>
			<c:param name="district" value="${district}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="conNum" value="${conNum}"/>
			<c:param name="dob" value="${dob}"/>
			<c:param name="password" value="${password}"/>
		
		</c:url>
			<a href="${urUpdate}">
			<input type="button" name="Updateacc" value="Update Account Details">
			</a>
		
		<br><br>
		
		<c:url value="deleteUser.jsp" var="deleteUser">
			
			<c:param name="id" value="${id}"/>
			<c:param name="fname" value="${fname}"/>
			<c:param name="lname" value="${lname}"/>
			<c:param name="uaddress" value="${uaddress}"/>
			<c:param name="district" value="${district}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="conNum" value="${conNum}"/>
			<c:param name="dob" value="${dob}"/>
			<c:param name="password" value="${password}"/>
			
		</c:url>
		<a href="${deleteUser}">
		<input type="button" name="Deleteacc" value="Delete Account">
		</a>
		</center>
	</div>

</body>
</html>