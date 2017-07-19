
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BUG DETECTION SYSTEM</title>
<style type="text/css">
#regis
{
    position:fixed;
	border-bottom:8px ;
	background-color:#800000;
	color:#ffffff;
	width:100%;
	top:2px;
	left:5px;
	z-index:1;

}
#register
{
    
	margin-top:150px;
	margin-left:100px;
	margin-bottom:50px;
	width:800px;
	font-size:25px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:50px;
}
#log
{ 
    position:absolute;
	border-bottom:20px ;
	background-color:#000000;
	width:100%;
	font-size:20px;
	top:100px;
	left:5px;
	z-index:1;
}
</style>
</head>
<body>
<div id="regis">
<h1><marquee>BUG DETECTION SYSTEM</marquee></h1>
<%=new java.util.Date() %>
</div>
<div id="log" align="right">
     <br>
     <a href="LogoutServlet"><font color="#ffffff">LOGOUT</font></a><&nbsp><br>
    
 
</div>
<div id="register" >
<form  action="ChangepassServlet" method="post">
<table>
  <tr>
     <th ><center><h3>CHANGE YOUR PASSWORD </h3></center></th>
  </tr>
  <tr>
  
      <td> Old password:</td><td> <input type="password" name="opassword" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid password">
      </td>
 </tr>
 
  <tr>
  
      <td> New password:</td><td> <input type="password" name="npassword" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid password">
      </td>
 </tr>
  <tr>
  
      <td> Confirm password:</td><td> <input type="password" name="repassword" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid password">
      </td>
 </tr>
  
 
 
  <tr align="right">
      <td><input type="submit" value="Change" style="padding:3px;width:140px;background-color:black;color:white;font-size:15px;" title="Click to register">
      </td>
  </tr>
</table>
</form>


</body>
</html>