<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="pack.DBConnection"%>
<%@page import="java.sql.Connection"%>
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
	margin-bottom:150px;
	width:1100px;
	font-size:15px;
	box-shadow:5px 10px 10px white;
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
     <a href="Changepass.jsp"><font color="#ffffff">CHANGE PASSWORD</font></a><&nbsp>
 
</div>


<div id="register" >


<table  border="10"  cellspacing="10" cellpadding="5" align="left">
<caption align="top"><b><u><h2>VIEW LIST OF TECHNICAL PERSON IN COMPANY</h2></u></b></caption>

<th>EMP ID</th>
<th>EMP NAME</th>
<th>EMP PHONE NO.</th>
<th>EMP ADDRESS</th>
<th>EMP PC NO.</th>
<th>EMP DEPT.</th>

<th>DATE</th>
<%          Connection con=DBConnection.getConnection();

	      PreparedStatement ps=con.prepareStatement("select *from employee  ");
	      
	    ResultSet rs=ps.executeQuery();

	   while(rs.next())
	   { 
		   
		   
	    %>  
	                <tr><td><%= rs.getString(1)%> </td>
  					<td><%= rs.getString(2)%> </td>
 					<td><%= rs.getString(3)%> </td>
 					<td><%= rs.getString(4)%> </td>
 					<td><%= rs.getString(5)%> </td>
 					<td><%= rs.getString(6)%> </td>
  					<td><%= new java.util.Date()%> </td></tr>
  						
		
	   
       <%}
		
	  
	   


%>
</table>

</div>

</body>
</html>