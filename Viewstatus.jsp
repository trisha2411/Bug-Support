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
<style type="text/css">
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
#back
{
    float:left;
	margin-top:50px;
	margin-left:10px;
	margin-bottom:50px;
	width:420px;
	bckground-color:#800000;
	font-size:20px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:15px;
}
#register
{
    
	margin-top:120px;
	margin-left:50px;
	margin-bottom:150px;
	width:1000px;
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
<%
  HttpSession hs=request.getSession();
  String n=hs.getAttribute("userId").toString();
  

%>
<div id="regis">
<h1><marquee>BUG DETECTION SYSTEM</marquee></h1>
<%=new java.util.Date() %>
</div>
<div id="log" align="right">
     <br>
     <a href="LogoutServlet"><font color="#ffffff">LOGOUT</font></a><&nbsp><br>
     <a href="Changepass.jsp"><font color="#ffffff">CHANGE PASSWORD</font></a><&nbsp>
 
</div>
<div id="back" align="left">
<h3>WELCOME <% out.print(n); %> </h3>
</div>
<div id="register" >
<form >
<table  border="10"  cellspacing="10" cellpadding="5" align="center">
<caption align="top"><b><h2>LIST OF VERIFIED / UNVERIFIED BUG</h2></b></caption>
    <th>BUG ID </th>
    <th>BUG NAME </th>
    <th>EMPLOYEE ID </th>
    <th>EMPLOYEE NAME </th>
    <th>EMPLOYEE DEPARTMENT </th>
    <th>MACHINE ID </th>
    <th>DATE </th>
    <th>STATUS </th>
 
 
  
 
<%


         String empid=request.getParameter("empID");
%>
        

<%          Connection con=DBConnection.getConnection();


           PreparedStatement ps1=con.prepareStatement("select * from addbug where employee_id=?");
           ps1.setString(1, empid);

           ResultSet rs=ps1.executeQuery();
	        
           while(rs.next())
	       { 
		   
		   
	    %>  
	                <tr><td><%= rs.getString(2)%> </td>
  					<td><%= rs.getString(7)%> </td>
 					<td><%= rs.getString(4)%> </td>
 					<td><%= rs.getString(3)%> </td>
     				<td><%= rs.getString(5)%> </td>
  					<td><%= rs.getString(6)%> </td>
  					<td><%= new java.util.Date()%> </td>
  					<td><%= rs.getString(8)%> </td></tr>
  						
		
	   
       <%}
		


%>
  
</table>
</form>
</div>

<div class="footer">

</div>




</body>
</html>