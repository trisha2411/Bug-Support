package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{  
		PrintWriter out=response.getWriter();
		
	    
		try{
			
			
				
				Connection con= DBConnection.getConnection();
				String bugid=request.getParameter("t");
				
			
				
				String st="OK";
				PreparedStatement ps1=con.prepareStatement("update addbug set status=? where bug_id=?");
				ps1.setString(1,st);
				ps1.setString(2, bugid);
				
				ps1.executeUpdate();
				
				
				response.sendRedirect("techperson.jsp");
				
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
				
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		
				
				
		
		
	}

}
