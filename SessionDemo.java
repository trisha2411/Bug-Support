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
 * Servlet implementation class SessionDemo
 */
@WebServlet("/SessionDemo")
public class SessionDemo extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		PrintWriter out=response.getWriter();
		
		String userID=request.getParameter("username");
		String password=request.getParameter("password");
		String category=request.getParameter("type");
		
		
		
		boolean islogin=islogin(userID, password,category);
		HttpSession hs=request.getSession(true);
		
		
		if(islogin)
		{
			if(category.equals("Admin"))
			{
				
				 hs.setAttribute("userId", userID);
				 hs.setAttribute("password",password);
				 hs.setAttribute("category",category);
				 
			   response.sendRedirect("Adminhome.jsp");
			}
			else if(category.equals("Employee"))
		   {
			    hs.setAttribute("userId", userID);
				 hs.setAttribute("password",password);
				 hs.setAttribute("category",category);
			   
				 response.sendRedirect("Employee.jsp");
		   }
			else if(category.equals("Tech person"))
			{
				
				 hs.setAttribute("userId", userID);
				 hs.setAttribute("password",password);
				 hs.setAttribute("category",category);
				 
			   response.sendRedirect("techperson.jsp");
			}
		}
		else
			out.println("wrong user name or password");
	  
		
		
	
	}
	
		
		


boolean islogin(String userID,String password,String category)
{
	try{
		
		
			
			Connection con=(Connection) DBConnection.getConnection();
			
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("select * from login where userID=? and password=? and category=? ");
			ps.setString(1,userID);
			
			ps.setString(2,password);
			
			ps.setString(3,category);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				
				return true;
			}
			else
				return false;
			
			
		}
	
	   catch( Exception e)
	   {
		   System.out.print(e);
		   
	   }
	
	return false;
	
}
	

}
