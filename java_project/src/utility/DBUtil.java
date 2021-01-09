package utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {


	public static Connection getMySqlDbConnection()
	{

		String driverClassName="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/pharmacy";
		String username="root";
		String password="password";
		Connection con=null;
		
		try {
			Class.forName(driverClassName);
			con=DriverManager.getConnection(url, username, password);
		
	}catch(Exception e) {
		System.out.println("exception ocurred"+e);
		
	}
		return con;
	}
	}


