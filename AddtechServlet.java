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
 * Servlet implementation class AddtechServlet
 */
@WebServlet("/AddtechServlet")
public class AddtechServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String emp_id=request.getParameter("tid");
		String emp_name=request.getParameter("tname");
		String ph_no=request.getParameter("tph");
		String address=request.getParameter("taddress");
		String dept_no=request.getParameter("tdept");
		
		
		
		if(insert(emp_id,emp_name,ph_no,address,dept_no)>0)
		{
			response.sendRedirect("Adminhome.jsp");
		}
	  
	
	}
	
	int insert(String emp_id,String emp_name,String ph_no,String address,String dept_no)
	{
		try{
			
			
				
				Connection con=(Connection) DBConnection.getConnection();
				
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into detailtech values(?,?,?,?,?)");
				ps.setString(1,emp_id);
				
				ps.setString(2,emp_name);
				
				ps.setString(3,ph_no);
				
				ps.setString(4,address);
				
				
				ps.setString(5,dept_no);
				
				ps.executeUpdate();
				
				return 1;
				
			}
		
		   catch( Exception e)
		   {
			   System.out.print(e);
			   return 0;
		   }
		
		
		
	}

	

}
