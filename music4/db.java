package music4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class db {
	public static boolean insert(String name,String uname,String email,String password) {
		Connection c=null;
		PreparedStatement st=null;
		MD5 obj=new MD5();
		try {
			c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","raju0408");
			st=c.prepareStatement("insert into sign values(?,?,?,?);");
			st.setString(1, name);
			st.setString(2, uname);
			st.setString(3, email);
			st.setString(4, obj.encrypted(password));
			int rs=st.executeUpdate();
			if(rs>0)
				return true;
			return false;
		}
		catch(Exception e) {
			System.out.println(e);
			return false;
		}
		finally{
			try {
		
				st.close();
				c.close();
			}
			catch(Exception e) {
				System.out.println(e);
			}
		}
	}
}
