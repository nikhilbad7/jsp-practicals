<html>
	<body>
	<%@ page import="java.sql.*" %> 
	<%@ page import="java.io.*" %> 
		<%
		try{
		    Class.forName("com.mysql.jdbc.Driver");

		            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web_student_tracker","root",""); 
		            Statement stmt=con.createStatement();//
		            String q="select * from student";
		            ResultSet rs=stmt.executeQuery(q);
		            %>
		            <table border=1>
		            <tr><th>ID</th>
		            <th>Firstname</th>
		            <th>Lastname</th>
		            <th>Email</th>
		            </tr>
		            <%
		            while(rs.next()){
		            	%>
		            	<tr><td><% rs.getString("id"); %></td>
		            	<td><% rs.getString("first_name"); %></td>
		            	<td><% rs.getString("last_name"); %></td>
		            	<td><% rs.getString("email"); %></td>
		            	</tr>
		            	<%
		            	}
		            	%>
		            	</table>
		            <%
		            con.close();
	    }
		catch(Exception ex){ 
		    System.out.println(ex);
		}
		%>
	</body>
</html>