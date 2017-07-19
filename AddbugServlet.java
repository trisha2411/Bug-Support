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
 * Servlet implementation class AddbugServlet
 */
@WebServlet("/AddbugServlet")
public class AddbugServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String request_no=request.getParameter("request");
		String bug_id=request.getParameter("bugid");
		String employee_name=request.getParameter("empname");
		String employee_id=request.getParameter("empid");
		String employee_dept=request.getParameter("dept");
		String machine_id=request.getParameter("id");
		String breakdowncodename=request.getParameter("code");
		
		
		
		if(addbug(request_no,bug_id,employee_name,employee_id,employee_dept,machine_id,breakdowncodename)>0)
		{
			response.sendRedirect("Employee.jsp");
		}
	  
	
	}
	
	int addbug(String request_no,String bug_id,String employee_name,String employee_id,String employee_dept,String machine_id,String breakdowncodename)
	{
		try{
			
			
				
				Connection con=(Connection) DBConnection.getConnection();
				
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into addbug values(?,?,?,?,?,?,?,?)");
				ps.setString(1,request_no);
				
				ps.setString(2,bug_id);
				
				ps.setString(3,employee_name);
				
				ps.setString(4,employee_id);
				ps.setString(5,employee_dept);
				ps.setString(6,machine_id);
				
				ps.setString(7,breakdowncodename);
				
				
				
				
				
				
				ps.executeUpdate();
				 
			}
		
		   catch( Exception e)
		   {
			   System.out.print(e);
			   
		   }
		
		return 1;
		
	}
	
		
}


