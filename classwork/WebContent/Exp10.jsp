<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
<title>User Details</title> 
</head> 
<body>
<h1>USER DETAILS </h1>
<% 
try {
/* Create string of connection url within specified format with machine name, 
port number and database name. Here machine name id localhost and database name 
is usermaster. */ 
//String connectionURL = "jdbc:mysql://localhost:3306/usermaster"; 
// declare a connection by using Connection interface 
//Connection connection = null; 
// Load JBBC driver "com.mysql.jdbc.Driver". 
Class.forName("com.mysql.jdbc.Driver");
/* Create a connection by using getConnection() method that takes parameters of 
string type connection url, user name and password to connect to database. */ 
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/userservlet","root","");
// check weather connection is established or not by isClosed() method 
Statement stmt=(Statement) con.createStatement();
String q = "select * from userdetails";
ResultSet rs=(ResultSet) stmt.executeQuery(q);
stmt = (Statement) con.createStatement();
rs= (ResultSet) stmt.executeQuery(q);
%>
<table border=1>
<tr>
	<th>Name</th>
	<th>Password</th>
	<th>Email</th>
	<th>Phone</th>
</tr> <%
while(rs.next()){
	String name = rs.getString("name");
	String password = rs.getString("password");
	String email = rs.getString("email");
	String phno = rs.getString("phone");
	out.print("<tr><td>"+name+"</td><td>"+password+"</td><td>"+email+"</td><td>"+phno+"</td></tr>");
	
}
%>
</table>
<br><hr>
<a href="exp10.html">Go Back?</a>
<%
con.close();
}
catch(Exception ex){
ex.printStackTrace();
}
%>

</body> 
</html>