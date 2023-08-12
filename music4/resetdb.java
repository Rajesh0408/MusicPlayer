package music4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class resetdb {
	public static boolean update(String em,String p) {
		Connection c=null;
		PreparedStatement st=null;
		MD5 obj=new MD5();
		try {
			c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","raju0408");
			st=c.prepareStatement("update sign set password=? where email=?;");
			st.setString(1, obj.encrypted(p));
			st.setString(2, em);
			int rs=st.executeUpdate();
			while(rs>0)
				return true;
			return false;
		}
		catch(Exception x) {
			System.out.println(x);
			return false;
		}
		finally{
			try {
			
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
