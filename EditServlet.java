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
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
        PrintWriter out=response.getWriter();
        String name=request.getParameter("ename");
        String dept=request.getParameter("edept");
        String phone=request.getParameter("eph");
        String pc=request.getParameter("epc");
        String addr=request.getParameter("eadd");
        
        HttpSession hs=request.getSession();
        String n=hs.getAttribute("userId").toString();
		
	    
		try{
			
			
				
				Connection con= DBConnection.getConnection();
				
				/*PreparedStatement ps=con.prepareStatement("select emp_id from employee where emp_name=?");
				ps.setString(1,n);*/
				
				PreparedStatement ps1=con.prepareStatement("update employee set emp_name=? ,dept_no=? ,ph_no=?, address=? ,pc_no=?  where emp_name=?");
				ps1.setString(1,name);
				ps1.setString(2, dept);
				ps1.setString(3, phone);
				ps1.setString(4, pc);
				ps1.setString(5, addr);
				ps1.setString(6, n);
				
				ps1.executeUpdate();
				
				
				response.sendRedirect("empprofile.jsp");
				
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
	}

}
