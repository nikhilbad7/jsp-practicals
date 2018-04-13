package mstest;
import java.sql.*;
public class DBtest {
	public static void main(String []args){
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con= DriverManager.getConnection("jdbc:odbc:Database1");
			Statement stmt=con.createStatement();
			String q = "select * from student";
			ResultSet rs=stmt.executeQuery(q);
			while(rs.next()){
				System.out.print(rs.getString("name"));
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
