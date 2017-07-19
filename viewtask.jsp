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
	margin-left:50px;
	margin-bottom:50px;
	width:1100px;
	font-size:13px;
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
     <a href="Changepass.jsp"><font color="#ffffff">CHANGE PASSWORD</font></a><&nbsp>
 
</div>
<div id="register" >
<form>
<table  border="10"  cellspacing="10" cellpadding="5" align="left">

 <th>BUG ID </th>
    <th>BUG NAME </th>
    <th>EMPLOYEE ID </th>
    <th>EMPLOYEE NAME </th>
    <th>EMPLOYEE DEPARTMENT </th>
    <th>MACHINE ID </th>
    <th>DATE </th>
    <th>STATUS </th>
  <%   
               
                 HttpSession hs=request.getSession();
                 String name=hs.getAttribute("userId").toString();
                
  			 Connection con=DBConnection.getConnection();
  
  				PreparedStatement ps=con.prepareStatement("select *from addbug where handlername=?");
  				ps.setString(1,name);
  				
  				ResultSet rs=ps.executeQuery();
  				
  				while(rs.next())
  				{
  					%>
  					<tr><td><%= rs.getString(2)%> </td>
  						<td><%= rs.getString(7) %> </td>
 						<td><%= rs.getString(4)%> </td>
 						<td><%= rs.getString(3)%> </td>
 						
  						<td><%= rs.getString(5)%> </td>
  						<td><%= rs.getString(6)%> </td>
  						<td><%= new java.util.Date()%> </td>
  						<td><a href="UpdateServlet?t=<%=rs.getString(2) %>"><%= rs.getString(8)%></a> </td>
  				<%} 
  					 
  %> 
 
  </tr>
  
  



</table>
</form>
</div>


</body>
</html>