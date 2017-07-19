<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BUG DETECTION SYSTEM</title>
<link rel="stylesheet" href="design.css">
<link rel="icon" href="img2.jpg"/>
<style>
#imgs{

	float:left;
	margin-top:200px;
	width:65%;
	border-bottom:8px ;
	z-index:1;
	
}
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
#about
{
    float:right;
	margin-top:-380px;
	margin-left:300px;
	width:500px;
	bckground-color:#ffffff;
	color:#000000;
	font-size:20px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:15px;

}
#obj
{
    float:left;
	margin-top:-640px;
	width:400px;
	bckground-color:#ffffff;
	color:#000000;
	font-size:20px;
	box-shadow:5px 10px 10px darkslategrey;
	padding:15px;


}
</style>
</head>
<body>

<div id="head">
<h1><marquee>BUG DETECTION SYSTEM</marquee></h1>
<%=new java.util.Date() %>
</div>
<div class="header">
<div class="links">
<a href="homepage.jsp">HOME</a>
<a href="aboutus.jsp">ABOUT US</a>
<a href="contact.jsp">CONTACT</a> 
<a href="enquiry.jsp">ENQUIRY</a>
</div>
<div class="heading">
<b></b>
</div>
</div>
<span id="imgs">
<img src="computer-science.jpg" height="300px" width="60%" border="20px"/>
</span> 
<div id="about">
<h3><b><u>Bug Tracking System</u></b></h3>
<p>Bug Tracking System is the system which enable to detect the bugs. 
It not merely detects the bugs but provides the complete information regarding bugs detected.</p>
<p>Bug Tracking System ensures the user of it who needs to know about a provide information regarding the identified bug. 
Using this no bug will be unfixed in the developed application.The developer develops the project as per customer requirements. 
In the testing phase the tester will identify the bugs.</p>
<p> Whenever the tester encounter even number of bugs he adds the bug id and information in the database.
The tester reports to both project manager and developer.
 The bug details in the database table are accessible to both project manager and developer.
 When a customer puts request or orders for a product to be developed.</p> 
 <p>The project manager is responsible for adding users to Bus Tracking System and assigning projects to the users.

The project manager assigns projects to the developers. The developer develops the projects as per customer requirements.
 The project manager itself assigns the developed applications to the Testers for testing. 
 The tester tests the application and identify the bugs in the application. 
 When the tester encounter no. of bugs, he generates a unique id number for each individual bug.</p> 
<p> The bug information along with its id are mailed to the project manager and developer. 
 This is Bug Report. These are stored in the database. This is useful for further reference.

Bug information includes the bug id, bug name, bug priority, project name, bug location, bug type.
This whole process continues until all the bugs are got fixed in the application.</p>
<p>The bug report is mailed to the project manager and the developer as soon as the bug is identified. 
This makes that no error will go unfixed because of poor communication. 
It makes ensure that anyone who needs to know about a bug can learn of it soon after it is reported.

Bug Tracking System plays an vital role in the testing phase. 
But it supports assigning projects for the developer, tester by the project manager. 
The Bug Tracking System maintains the different users separately i.e., it provides separate environments for project manager, developer and tester.</p>
</div>
<div id="obj">
<h3><b><u>Objectives of the Bug Tracking System</u></b></h3>
The main objectives of the Bug Tracking System are:<br>

-Identifying the bugs in the developed application.<br><br>
-No bug will be unfixed in the developed application.<br><br>
-Not merely identifying the bugs but also providing the bug information.<br><br>
-As soon as the bugs are identified. They are reported to the project manager and developer.<br><br>
-To ensure that who needs to know about the bug can learn soon after it is reported.
</div>


</body>
</html>