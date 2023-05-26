<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
	
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
	<script>
	function checkPassword(){
	    if(document.getElementById("pwd").value!=document.getElementById("cnfrmpwd").value)
	    {
	        alert("Password Mismatched");
	        return false;
	    }
	    else
	    {   
	        alert("Successful");
	        return true;
	    }
	}

	function enableSubmit()
	{
	    if (document.getElementById("agree")){
	        document.getElementById('btnsubmit').disabled = false;
	    } 
	    else {
	        document.getElementById('btnsubmit').disabled = true;
	    }
	}


	</script>

</head>
<body>
	<center>
	    <h1>Regitration Form</h1>
    </center>
    <hr>
<div class="sform">
<form name="theform" method="post" action="RegistrationServlet" onsubmit="return checkPassword()">
    First Name :                            Last Name : <br>
    <input type="text" id="fname" name="fname" placeholder="First Name" required="">
    <input type="text" id="lname" name="lname" placeholder="Last Name" required=""><br><br>

    Address :<br>
    <textarea id="Uaddress" name="Uaddress" rows="4" cols="70"></textarea><br>
    District :
    <input type="text" id="District" name="District" placeholder="ex : Gampaha" required=""><br>

    E-mail:
    <input type="email" id="email" name="email" placeholder="ex: abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9,._+]+\.[a-z]{2.3}" required=""><br>
    
    Contact Number :
    <input type="phone" id="contact" name="contact" placeholder="077 XXXXXXX" pattern="[0-9]{10}" required=""><br><br>
    
    Date Of Birth :
    <input type="date" name="day"><br>
    
    Password :
    <input type="password" id="pwd" name="password" pattern="{!#@$^%[a-z]}{!#@$^%[0-9][a-z]}{!#@$^%[0-9][a-z][A-Z]}" required="">
    Re-Enter Password :
    <input type="password" id="cnfrmpwd" name="password" required=""><br><br>
    

<hr>
    Do you agree to above all information that you provied are true :
    <input type="checkbox" id="agree" onclick="enableSubmit()"><br><br>
    <center>
        <input action="register" type="submit" value="Submit" id="btnsubmit" disabled="">
    </center>
   

</form>
</div>

</body>
</html>