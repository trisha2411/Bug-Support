package pack;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	
	public static Connection getConnection(){
		
		
		Connection con=null;
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			
			return con;
		}
		catch(Exception e){

			System.out.println(e);
		}
			
		return null;
	}
	
}
