
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
#profile
{
    float:right;
	margin-top:150px;
	margin-left:500px;
	margin-bottom:50px;
	width:250px;
	bckground-color:#800000;
	font-size:20px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:15px;

}
#view
{
    float:center;
	margin-top:250px;
	margin-left:300px;
	margin-bottom:50px;
	width:500px;
	bckground-color:#800000;
	font-size:20px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:15px;
 
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
<h3>CONTENTS</h3>
<ul type="square">
 <li>&nbsp&nbsp<a href="register.jsp">ADD BUG</a></li>
</ul>
</div>
<div id="profile" align="right">

 <h3>WELCOME <% out.print(n); %> </h3>
<a href="empprofile.jsp">VIEW PROFILE</a>


</div><br><br><br>
<div id="view" align="center">
<form action="Viewstatus.jsp" method="post">
<table>
<caption><b><u><h3>VIEW STATUS OF BUG </h3></u></b></caption>
<tr>
  <td>Enter your Employee ID:</td>
      <td> <input type="text" name="empID" style="height:20px;font-size:18px;color:black;" required pattern="[A-Za-z0-9]{1,500}" title="Enter valid employee id">
       
      </td>
 </tr><br>
 <tr><td></td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="submit"></td></tr> 
 
</table>
</form>

</div>


<div class="footer">

</div>
</body>
</html>