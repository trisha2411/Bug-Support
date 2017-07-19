package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangepassServlet
 */
@WebServlet("/ChangepassServlet")
public class ChangepassServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		 PrintWriter out=response.getWriter();
		 HttpSession hs=request.getSession();
		  String n=hs.getAttribute("userId").toString();
		
		  String npass=request.getParameter("npassword");
		  String opass=request.getParameter("opassword");
		  String repass=request.getParameter("repassword");
		  
		  
		  try
		  {
			  Connection con=DBConnection.getConnection();
			  PreparedStatement ps=con.prepareStatement("select password from login where userID=?");
			  ps.setString(1,n);
			  ResultSet rs=ps.executeQuery();
			  
			  while(rs.next())
			  {
				  String pass=rs.getString(1);
			      
				  if((pass.equals(opass))&&(npass.equals(repass)))
				  {
					  pass=npass;
					  PreparedStatement ps1=con.prepareStatement("update login set password=? where userID=?");
					  ps1.setString(1, pass);
					  ps1.setString(2, n);
					  ps1.executeUpdate();
					  
					  response.sendRedirect("Employee.jsp");
				  }
				  else
					  out.print("you have entered wrong password");
			  }
			  
			  
			  
			  
		  }
		  catch(Exception e)
		  {
			  System.out.print(e);
		  }
	}

}
