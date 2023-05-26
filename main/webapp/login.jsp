<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

input[type=text],input[type=date],textarea{
    width: 25%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }
  input[type=number]{

    width: 100px;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }
  input[type=email],input[type=phone],input[type=password]{
  width: 25%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  }
  input[type=submit]{
    width: 20%;
    font-size: 30px;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  input[type=submit]:hover {
    background-color: #45a049;
  }
  hr {
    border: 1px solid grey;
    margin-bottom: 25px;
  }
  
.sform
{
 
  font-size: 20px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 50px;
  box-sizing: border-box;
}
h1{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
}
p.inv{
  background-color: red;
  color: white;
  padding:10px;
}

</style>

</head>
<body>
    <center>
    
  <h1>Enter your details to login to the website</h1>
    </center>
	<div class="sform">
	    <center>
		<form name="theform" method="post" action="LoginServlet" >
		   
		    Username :                            
		    <input type="email" id="email" name="uemail" placeholder="Enter your email address" required><br>
		
		    Password :
		    <input type="password" id="password" name="upassword" placeholder="Enter your password" required><br>
		</center>
		  
		    <center>
		        <input type="submit" value="Login" name="lsubmit" ><a herf="UserProfile.php"></a>
		        
		        <br><br>
		   <a href="Registration.jsp">Register from here</a>
		    </center>
		   
		   
		
		</form>
	</div>

</body>
</html>