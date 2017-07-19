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
	margin-top:150px;
	margin-left:10px;
	margin-bottom:50px;
	width:150px;
	bckground-color:#800000;
	font-size:20px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:15px;
}
#register
{
    
	margin-top:150px;
	margin-left:200px;
	margin-bottom:150px;
	width:1100px;
	font-size:20px;
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
<div id="register">
<form>
<table  border="10"  cellspacing="10" cellpadding="5" align="left">
<caption align="top"><b><u><h2><%out.print(n);out.print("'s Profile"); %></h2></u></b></caption>

 <%         
         
        
        
          Connection con1=DBConnection.getConnection();
	      PreparedStatement ps=con1.prepareStatement("select *from employee where emp_name=? ");
	      ps.setString(1,n);
	     
	      ResultSet rs=ps.executeQuery();

	      while(rs.next())
	      { 
		   
		   
	    %>  
	                
 					
 	                <tr><td>EMPLOYEE NAME</td><td><%= rs.getString(2)%> </td>
 					    
 					</tr><br>
 						
  					<tr><td>EMPLOYEE DEPT.</td><td><%= rs.getString(6)%> </td>
  					     
  					</tr><br>
  					<tr><td>PC NO.</td><td><%= rs.getString(5)%> </td>
  					     
  					</tr><br>
  					<tr><td>PHONE NO.</td><td><%= rs.getString(3)%> </td>
  					     
  					</tr><br>
  					<tr><td>ADDRESS</td><td><%= rs.getString(4)%> </td>
  					     <td><a href="Editprofile.jsp">Edit </a></td>
  					</tr><br>
  					
  						
		
	   
       <% }
          
         


%>


</table>
</form>
</div>

</body>
</html>