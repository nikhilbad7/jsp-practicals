<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
<title>Inserting Data</title> 
</head> 
<body>

<% 
try {
/* Create string of connection url within specified format with machine name, 
port number and database name. Here machine name id localhost and database name 
is usermaster. */ 
//String connectionURL = "jdbc:mysql://localhost:3306/usermaster"; 
// declare a connection by using Connection interface 
//Connection connection = null; 
// Load JDBC driver "com.mysql.jdbc.Driver". 
String name = request.getParameter("name");
int phno = Integer.parseInt(request.getParameter("phn"));
Class.forName("com.mysql.jdbc.Driver");
/* Create a connection by using getConnection() method that takes parameters of 
string type connection url, user name and password to connect to database. */ 
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/phone","root","");
// check weather connection is established or not by isClosed() method 
Statement stmt=con.createStatement();
String q = "insert into contacts values('"+name+"',"+phno+")";
int rs=stmt.executeUpdate(q);
if(rs!=0){
	%>
    <script>
    alert("Contact is Saved");
    window.location("exp13add.html");
    </script>
    <%
}
con.close();
}
catch(Exception ex){
ex.printStackTrace();
}
%>

</body> 
</html>