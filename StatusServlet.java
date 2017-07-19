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

@WebServlet("/StatusServlet")
public class StatusServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String bugid=request.getParameter("bugid");
		String name=request.getParameter("type");
	
		try{
			
			
				
				Connection con= DBConnection.getConnection();
				
				
				String st="processing";
				PreparedStatement ps1=con.prepareStatement("update addbug set status=? where bug_id=?");
				ps1.setString(1,st);
				ps1.setString(2, bugid);
				
				ps1.executeUpdate();
				
				
				
				PreparedStatement ps=con.prepareStatement("update addbug set handlername=? where bug_id=? ");
				ps.setString(1, name);
				ps.setString(2, bugid);
				ps.executeUpdate();
				
				response.sendRedirect("Adminhome.jsp");
				
				
				
				
				
		}
		
		   catch( Exception e)
		   {
			   System.out.print(e);
			   
		   }
		
		
		
	}

}
