<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BUG DETECTION SYSTEM</title>
<style>
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
<body>
<div id="head">
<h1><marquee>BUG DETECTION SYSTEM</marquee></h1>
<%=new java.util.Date() %>
</div>
<div id="log" align="right">
     <br>
     <a href="LogoutServlet"><font color="#ffffff">LOGOUT</font></a><&nbsp><br>
     <a href="Changepass.jsp"><font color="#ffffff">CHANGE PASSWORD</font></a><&nbsp>
 
</div>
<div id="register" >
<form action="AddempServlet" method="post">
<table>
  <tr>
     <th align="center" ><h3>Form For Add EMPLOYEE </h3></th>
  </tr>
  <tr>
      <td>Employee ID:</td><td><input type="text" name="id" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid employee id">
      </td>
   </tr>
   <tr>
  
  
      <td> Employee Name:</td><td> <input type="text" name="name" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid employee name">
      </td>
  </tr>
  <tr>
  
      <td>Employee PH No.:</td><td> <input type="text" name="ph" style="height:20px;font-size:18px;color:black;" required pattern="[0-9]{1,500}" title="Enter valid phone number">
      </td>
  </tr>
  <tr>
      <td>Employee Address:</td>
      <td> <input type="text" name="address" style="height:20px;font-size:18px;color:black;" required pattern="[0-9]{1,500}" title="Enter valid address">
     </td>
  </tr>
  <tr>
      <td>Employee PC No.:</td><td><input type="text" name="pc" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid pc number">
      </td>
  </tr>
   <tr>
      <td>Employee Dept. No.:</td><td><input type="text" name="dept" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid department">
      </td>
  </tr>
  
  
  <tr align="right">
      <td><input type="submit" value="Add Employee" style="padding:3px;width:140px;background-color:black;color:white;font-size:15px;" title="Click to register">
      </td>
  </tr>
</table>
  

</form>
</div>


</body>
</html>