package music4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class logindb {
	public static boolean select(String em,String p) {
		Connection c=null;
		PreparedStatement st=null;
		ResultSet rs=null;
		MD5 obj=new MD5();
		try {
			c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","raju0408");
			st=c.prepareStatement("select *from sign where email=? and password=?;");
			st.setString(1, em);
			st.setString(2,obj.encrypted(p));
			rs=st.executeQuery();
			while(rs.next())
				return true;
			return false;
		}
		catch(Exception x) {
			System.out.println(x);
			return false;
		}
		finally{
			try {
				if(rs != null) {
					rs.close();
					rs = null;
					}
					if(st != null) {
					st.close();
					st = null;
					}
					if(c != null) {
					c.close();
					c = null;
					}
			}
			catch(Exception y) {
				System.out.println(y);
			}
		}
	}
}
