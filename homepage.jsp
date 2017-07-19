<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BUG DETECTION SYSTEM</title>
<link rel="stylesheet" href="design.css">
<link rel="icon" href="img2.jpg"/>
<style>
#login
{
    float:right;
	margin-top:-370px;
	margin-left:300px;
	width:320px;
	bckground-color:#800000;
	font-size:20px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:15px;
}

#imgs{

	float:left;
	margin-top:140px;
	width:80%;
	z-index:-1;
	-webkit-animation-name:example;
    -webkit-animation-duration: 4s;
	animation-name: example;
    animation-duration: 4s;
}
 #registration
 {
	float:left;
	margin-top:30px;
	margin-left:10px;
	font-size:15px;
	text-align:center;
	margin-right:-8px;
	box-shadow:5px 10px 10px gray;
	padding:6px;
}

#head
{
    position:absolute;
	border-bottom:8px ;
	background-color:#800000;
	color:#ffffff;
	width:100%;
	top:2px;
	left:5px;
	z-index:1;

}
#home
{
    float:right;
	margin-top:-200px;
	margin-left:250px;
	width:500px;
	bckground-color:#800000;
	color:#4B0082;
	font-size:20px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:15px;
}
</style>
<script language="javascript" type="text/javascript">

function check()
{
	if(document.f1.username.value=="")
		{
		 alert("username field not found");
		 return false;
		}
	else if(document.f1.password.value=="")
	{
		 alert("password field not found");
		 return false;
		}
	else if(document.f1.type.value=="")
	{
		 alert("category field not found");
		 return false;
		}
	else
		return true; 
	
	
	
}

</script> 
</head>
<body>
<div class="page">
<div id="head">
<h1><marquee>BUG DETECTION SOFTWARE</marquee></h1>
<%=new java.util.Date() %>
</div>
<div class="header">
<div class="links">
<a href="homepage.jsp">HOME</a>
<a href="aboutus.jsp">ABOUT US</a>
<a href="contact.jsp">CONTACT</a> 
<a href="enquiry.jsp">ENQUIRY</a>
</div>
<div class="heading">
<b></b>
</div>
</div>
</div>
<span id="imgs">
<img src="img2.jpg" height="400px" width="80%"/>
</span> 
<div id="registration" align="left">
<h3>Register As!</h3><br>
<a href="registration.html"><img src="user1.png" height="100px" width="100px"/></a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<a href="registration.html"><img src="user1.png" height="100px" width="100px"></a><br> 
<a href="registration.html" style="color:black;text-shadow:0px 0px 0px white;">Employee</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="registration.html" style="color:black;text-shadow:0px 0px 0px white;">Tech Person</a>
</div> 



<div id="login" align="right">

<form action="SessionDemo" method="post" class="frm" name="f1">
<fieldSet >
<legend >Login Here!</legend>
User ID: <input type="text" name="username" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid Username">
<br><br>
Password: <input type="password" name="password" style="height:20px;font-size:18px;color:black;" required title="Enter valid Password">
<br><br>

Category: <select  name="type"style="width:200px;height:25px;font-size:18px;color:black;" required title="Enter valid Category">
          
         
          <option value="Admin">Admin</option>
          <option value="Employee">Employee</option>
           <option value="Tech person">Tech Person</option>
          </select>

<br><br>
<input type="submit" value="Login" Onclick="return check()"  style="padding:3px;align:right;width:100px;background-color:black;color:white;font-size:15px;" title="Click to Login">
<br><br>



<a href="Mail.java" style="color:black;">forgot Password</a>
</fieldSet>
</form>
</div>
<div id="home">
<marquee direction="up" scrollamount="3" ><h4>-"Knowledge is the only thing in this world which gets increased when you share it."</h4><br>

<h4>-"No man can succeed unless he is ready to face and overcome difficulties and is prepared to assume responsibilities".</h4><br>

<h4>-"Obstacles are those frightful things,you see, when you take your eyes off your goal."</h4><br>

<h4>-"A man who wins, IS the man,who thinks he can."</h4><br>
<h4>-"Get what you can and keep what you have;that's the way to get rich."</h4><br>

<h4>-"Learn from yesterday,Live for today and Hope for tomorrow."</h4></marquee>
</div>
 


<div class="footer">
Copyrights 2015 Bug Detection Software- All Rights Reserved.


</div>


</body>
</html>