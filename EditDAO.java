package pack;

import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class EditDAO 
{
	
	
	  
    
	 int checkname(EditBean eb)
		{
			try{
				
				
					
					Connection con=(Connection) DBConnection.getConnection();
					
					PreparedStatement ps1=(PreparedStatement) con.prepareStatement("update employee set emp_name=? where emp_id=?");
				       ps1.setString(1,eb.getEmpname());
				       ps1.setString(2,eb.getempid());
					
					ps1.executeUpdate();
					
					 PreparedStatement ps2=(PreparedStatement) con.prepareStatement("update login set userID=? where userID=?");
				       ps2.setString(1,eb.getEmpname());
				       ps2.setString(2,eb.getUsername());
					
					ps2.executeUpdate();
					
				}
			
			   catch( Exception e)
			   {
				   System.out.print(e);
				   
			   }
			return 0;
			
		}
	 int checkdept(EditBean eb)
		{
			try{
				
				
					
					Connection con=(Connection) DBConnection.getConnection();
					
					PreparedStatement ps1=(PreparedStatement) con.prepareStatement("update employee set dept_no=? where emp_name=? emp_id=?");
				       ps1.setString(1,eb.getedept());
				       ps1.setString(2,eb.getUsername());
				       ps1.setString(3,eb.getedept());
					
					ps1.executeUpdate();
					
				}
			
			   catch( Exception e)
			   {
				   System.out.print(e);
				   
			   }
			return 0;
			
		}


}
