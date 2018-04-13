<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
<title>SHOW CONTACTS</title> 
</head> 
<body>
<h1>CONTACTS </h1>
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
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/phone","root","");
// check weather connection is established or not by isClosed() method 
Statement stmt=con.createStatement();
String q = "select * from contacts";
ResultSet rs=stmt.executeQuery(q);
%>
<table border=1 width=250px>
<tr>
	<th>NAME</th>
	<th>PHONE NO.</th>
</tr> <%
while(rs.next()){
	String name = rs.getString("name");
	String num = rs.getString("phone");
	out.print("<tr><td>"+name+"</td><td>"+num+"</td></tr>");
	
}
%>
</table><br><br><hr/>
<a href="exp13add.html">Want to add more contacts?</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="exp13.html">Search any Number?</a>
<%
con.close();
}
catch(Exception ex){
ex.printStackTrace();
}
%>

</body> 
</html>