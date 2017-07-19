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
	margin-left:250px;
	margin-bottom:50px;
	width:1100px;
	font-size:15px;
	box-shadow:5px 10px 10px white;
	padding:10px;
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
 <script language="javascript" type="text/javascript">
 
 function check()
 {
	if(document.f1.request.value=="")
		{
		 alert("request field not found");
		 return false;
		}
	else if(document.f1.type.value=="")
	   {
		 alert("category field not found");
		 return false;
		}
	else
		return ture;
	 
	 
	 
 }


</script> 
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
<form action="StatusServlet" method="post" name=f1>
<table  border="10"  cellspacing="10" cellpadding="5" align="left">
<caption align="top"><b><u><h2>ALLOCATE BUG TO TECHNICAL PERSON</h2></u></b></caption>

 <tr><td>Request No.:</td><td><input type="text" name="request"></td></tr>
<%
          String s=request.getParameter("t");
%>
        

<%          Connection con=DBConnection.getConnection();

	      PreparedStatement ps=con.prepareStatement("select *from addbug where bug_id=?");
	      ps.setString(1,s);
	    ResultSet rs=ps.executeQuery();

	   while(rs.next())
	   { 
		   
		   
	    %>  
	                <tr><td>BUG ID</td><td><%= rs.getString(2)%> </td><br>
  					<tr><td>BUG NAME</td><td><%= rs.getString(7)%> </td></tr><br>
 					<tr><td>EMPLOYEE ID</td><td><%= rs.getString(4)%> </td></tr><br>
 					<tr><td>EMPLOYEE NAME</td><td><%= rs.getString(3)%> </td></tr><br>
 						
  					<tr><td>EMPLOYEE DEPT.</td><td><%= rs.getString(5)%> </td></tr><br>
  					<tr><td>MACHINE ID</td><td><%= rs.getString(6)%> </td></tr><br>
  					<tr><td>DATE</td><td><%= new java.util.Date()%> </td></tr><br>
  						
		
	   
       <%}
		


%>
 <tr>
     <td>ALLOCATE TECH PERSON:</td>
       <td> <label><select  name="type" style="width:200px;height:25px;font-size:18px;color:black;" required title="Enter valid Category">
          <% 
          
           Connection con1=DBConnection.getConnection();
         
          ResultSet rs1;
          PreparedStatement ps1=con1.prepareStatement("select userID from login where category='Tech person'");
          
          rs1=ps1.executeQuery(); 
          
          
          while(rs1.next())
          { 
        	  
        	  String val=rs1.getString(1);
          %>
          <option value="<%= val %>"><%= val %></option>
        
          
           <% 
           
          } 
          
          
          %>
         
         
          
          </select></label></td>
     <td><input type=hidden name=bugid value="<%= s %>"></td>
    
     
 </tr>

<tr align="right"><td align="right"></td><td><input type="submit" value="submit" onClick="return check()" ></td></tr>
  
</table>
</form>
</div>

</body>
</html>