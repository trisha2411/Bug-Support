package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/EditnameServlet")
public class EditnameServlet extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();
		String user=request.getParameter("ename");
		String edept=request.getParameter("edept");
		
		HttpSession hs=request.getSession();
		  String n=hs.getAttribute("userId").toString();
		  
	  String id=request.getParameter("id");
	  
	  int checkn=checkname(user,n,id);
	  
	  if(checkn>0)
	  {
         RequestDispatcher rs=request.getRequestDispatcher("Editprofile.jsp");
		  
		  rs.forward(request, response);
	  }
	
	  
     /*int checkd=checkname(edept,n,id);
	  
	  if(checkd>0)
	  {
		  RequestDispatcher rs=request.getRequestDispatcher("Editprofile.jsp");
		  
		  rs.forward(request, response);
	  }*/
	}
	
	int checkname(String user,String n,String id)
	{
		
	try{
			
			
				
				Connection con= DBConnection.getConnection();
				
				
				
				
				PreparedStatement ps1=con.prepareStatement("update employee set emp_name=? where emp_id=?");
			       ps1.setString(1,user);
			       ps1.setString(2,id);
				
				ps1.executeUpdate();
				
				 PreparedStatement ps2=con.prepareStatement("update login set userID=? where userID=?");
			       ps2.setString(1,user);
			       ps2.setString(2,n);
				
				ps2.executeUpdate();
				
				
				  return 1;
				
				
			}
		
		   catch( Exception e)
		   {
			   System.out.print(e);
			   return 0;
		   }
		
	
	
			
		
		
		
		
	}

	
	/*int checkdept(String edept,String n,String id)
	{
		
	try{
			
			
				
				Connection con= DBConnection.getConnection();
				
				
				
				
				PreparedStatement ps1=con.prepareStatement("update employee set dept_no=? where emp_name=? emp_id=?");
			       ps1.setString(1,edept);
			       ps1.setString(2,n);
			       ps1.setString(3,id);
				
				ps1.executeUpdate();
				
				 PreparedStatement ps2=con.prepareStatement("update login set userID=? where userID=?");
			       ps2.setString(1,user);
			       ps2.setString(2,n);
				
				ps2.executeUpdate();
				
				
				  return 1;
				
				
			}
		
		   catch( Exception e)
		   {
			   System.out.print(e);
			   return 0;
		   }
		
	
	
			
		
		
		
		
	}
*/
}
