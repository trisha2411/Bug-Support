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
#back
{
    float:left;
	margin-top:150px;
	margin-left:10px;
	margin-bottom:50px;
	width:300px;
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
<a href="viewtask.jsp">VIEW TASK</a><br><br>


</div>
<div id="profile" align="right">

 
<a href="techprofile.jsp">VIEW PROFILE</a>


</div><br><br><br>


<div class="footer">

</div>
</head>


</body>
</html>