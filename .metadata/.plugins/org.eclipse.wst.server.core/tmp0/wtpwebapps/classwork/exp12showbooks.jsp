<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
<title>SHOW BOOKS</title> 
</head> 
<body>
<h1>BOOKS CATALOGUE </h1>
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
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/books_catalogue","root","");
// check weather connection is established or not by isClosed() method 
Statement stmt=(Statement) con.createStatement();
String q = "select * from bookdetails";
ResultSet rs=(ResultSet) stmt.executeQuery(q);
stmt = (Statement) con.createStatement();
rs= (ResultSet) stmt.executeQuery(q);
%>
<table border=1>
<tr>
	<th>BOOK NAME</th>
	<th>BOOK PRICE</th>
	<th>BOOK QUANTITY</th>
	<th>BOOK AMOUNT</th>
</tr> <%
while(rs.next()){
	String bname = rs.getString("bookname");
	int bprice = Integer.parseInt(rs.getString("bookprice"));
	int bquant = Integer.parseInt(rs.getString("bookquantity"));
	int bamount = Integer.parseInt(rs.getString("bookamount"));
	out.print("<tr><td>"+bname+"</td><td>"+bprice+"</td><td>"+bquant+"</td><td>"+bamount+"</td></tr>");
	
}
%>
</table><br><br><hr/>
<a href="exp12addbooks.html">Want to add more?</a>
<%
con.close();
}
catch(Exception ex){
ex.printStackTrace();
}
%>

</body> 
</html>