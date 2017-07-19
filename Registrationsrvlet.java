package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registrationsrvlet
 */
@WebServlet("/Registrationsrvlet")
public class Registrationsrvlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{ 
		PrintWriter out=response.getWriter();
		String userID=request.getParameter("name");
		String password=request.getParameter("password");
		String category=request.getParameter("type");
		
		
		if(login(userID,password,category)>0)
		{
			response.sendRedirect("homepage.jsp");
		}
	  
	
	}
	
	int login(String userID,String password,String category)
	{
		try{
			
			
				
				Connection con=(Connection) DBConnection.getConnection();
				
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into login values(?,?,?)");
				ps.setString(1,userID);
				
				ps.setString(2,password);
				
				ps.setString(3,category);
				
				ps.executeUpdate();
				
			}
		
		   catch( Exception e)
		   {
			   System.out.print(e);
			   
		   }
		
		return 0;
		
	}
	
	
	
	
	
	

}
