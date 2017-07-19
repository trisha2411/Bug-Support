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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EdittechServlet
 */
@WebServlet("/EdittechServlet")
public class EdittechServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
       
        String dept=request.getParameter("tdept");
        String phone=request.getParameter("tph");
        String addr=request.getParameter("tadd");
        
        HttpSession hs=request.getSession();
        String n=hs.getAttribute("userId").toString();
		
	    
		try{
			
			
				
				Connection con= DBConnection.getConnection();
				
				
				
				PreparedStatement ps1=con.prepareStatement("update detailtech set T_name=? ,T_dept=? ,T_ph=?, T_add=?  where T_name=?");
				ps1.setString(1,n);
				ps1.setString(2, dept);
				ps1.setString(3, phone);
				
				ps1.setString(4, addr);
				ps1.setString(5, n);
				
				ps1.executeUpdate();
				
				
				response.sendRedirect("techprofile.jsp");
				
		}
		catch(Exception e)
		{
			System.out.print(e);
		
	}

  }
}