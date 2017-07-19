package pack;

import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class LoginDAO 
{
 
	 
	  int login(LoginBean lb)
		{
			try{
				
				
					
					Connection con=(Connection) DBConnection.getConnection();
					
					PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into login values(?,?,?)");
					ps.setString(1,lb.getUsername());
					
					ps.setString(2,lb.getPassword());
					
					ps.setString(3,lb.getType());
					
					ps.executeUpdate();
					
				}
			
			   catch( Exception e)
			   {
				   System.out.print(e);
				   
			   }
			return 0;
			
		}
  
}
