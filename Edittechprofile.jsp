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
<title>BUG DETECTION SOFTWARE</title>
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
<script language="javascript" type="text/javascript">

function check()
{
	if(document.f1.empid.value=="")
		{
		 alert("Employee id field not found");
		 return false;
		}
	
	else
		return true; 
	
	
	
}

</script> 
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
<form action="EdittechServlet" name="f1" method="post">
<table  border="10"  cellspacing="10" cellpadding="5" align="left">
<caption align="top"><b><u><h2><%out.print(n);out.print("'s Profile"); %></h2></u></b></caption>
<%
               Connection con1=DBConnection.getConnection();
                PreparedStatement ps=con1.prepareStatement("select *from detailtech where T_name=? ");
                ps.setString(1,n);

                ResultSet rs=ps.executeQuery();

              while(rs.next())
              { 

%>
<tr><td>Tech ID:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=rs.getString(1) %></td></tr>
<tr><td>Tech Name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=rs.getString(2) %></td></tr>
<tr><td>Tech Dept.:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="tdept" value="<%=rs.getString(5)%>"></td></tr>
<tr><td>Tech Phone no.:&nbsp&nbsp<input type="text" name="tph" value="<%=rs.getString(3)%>"></td></tr>
<tr><td>Tech Address:&nbsp&nbsp&nbsp<input type="text" name="tadd" value="<%=rs.getString(4)%>"></td></tr>
<tr><td align="right"><input type="submit" value="edit" Onclick="return check()" ></td></tr>
  <%}
%>


</table>
</form>
</div>


</body>
</html>