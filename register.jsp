<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BUG DETECTION SYSTEM</title>
<style>
#regis
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
#register
{
    
	margin-top:150px;
	margin-left:100px;
	margin-bottom:50px;
	width:1100px;
	font-size:30px;
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
<body bgcolor="white">

<div id="regis">
<h1><marquee>BUG DETECTION SYSTEM</marquee></h1>
<%=new java.util.Date() %>

</div>
<div id="log" align="right">
     <br>
     <a href="LogoutServlet"><font color="#ffffff">LOGOUT</font></a><&nbsp><br>
     <a href="Changepass.jsp"><font color="#ffffff">CHANGE PASSWORD</font></a><&nbsp>
 
</div>

<div id="register" >
<form action="AddbugServlet" method="post">
<table>

  <tr>
     <th align="center" ><h3>REGISTRATION</h3></th>
  </tr>
  <tr>
      <td>Request No.:</td><td><input type="text" name="request" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid requestno.">
      </td>
  
  
      <td > &nbsp&nbspDate:</td><td style="height:20px;font-size:18px;color:black;"><%=new java.util.Date() %>
      </td>
  
  </tr>
  <tr>
      <td >Bug ID&nbsp&nbsp&nbsp&nbsp&nbsp:</td><td><input type="text" name="bugid" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid bugid">
      </td>
  </tr>
  
  <tr>
      <td>Employee Name&nbsp&nbsp&nbsp&nbsp&nbsp:</td><td><input type="text" name="empname" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid Username">
      </td>
  </tr>
  <tr>
      <td>Employee ID&nbsp&nbsp&nbsp&nbsp&nbsp:</td><td><input type="text" name="empid" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid Username">
      </td>
  </tr>
   <tr>
      <td>Employee Dept.&nbsp&nbsp&nbsp&nbsp&nbsp:</td><td><input type="text" name="dept" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid department">
      </td>
  </tr>
 
  
  <tr>
      <td>Machine Id&nbsp&nbsp&nbsp:</td><td><input type="text" name="id" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid section">
      
     </td>
  </tr>
  <tr>
      <td>Breakdown code name&nbsp&nbsp&nbsp:</td><td><input type="text" name="code" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid section">
      
     </td>
  </tr>
 
  <tr align="right">
      <td><input type="submit" value="ADD BUG" style="padding:3px;width:140px;background-color:black;color:white;font-size:15px;" title="Click to register">
      </td>
  </tr>
</table>
  

</form>
</div>

</body>
</html>