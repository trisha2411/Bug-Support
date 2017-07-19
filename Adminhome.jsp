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
	width:250px;
	bckground-color:#f0ffff;
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
#imgs{

	float:right;
	margin-top:200px;
	width:60%;
	z-index:-1;
	-webkit-animation-name:example;
    -webkit-animation-duration: 4s;
	animation-name: example;
    animation-duration: 4s;
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
<span id="imgs">
<img src="img5.jpg" height="300px" width="60%" align="right"/>
</span> 



<div id="back" align="left">
<h3>WELCOME <% out.print(n); %> </h3>
<a href="addemp.jsp">ADD EMPLOYEE</a><br><br>
<a href="addtech.jsp">ADD TECHNICAL PERSON</a><br><br>
<a href="viewbug.jsp">VIEW BUG</a><br><br>
<a href="viewtech.jsp">VIEW TECHNICAL PERSON</a><br><br>
<a href="viewemp.jsp">VIEW EMPLOYEE</a><br><br>

</div>











</body>
</html>