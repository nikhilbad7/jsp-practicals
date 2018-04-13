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
// Load JBBC driver "com.mysql.jdbc.Driver". 
String bname = request.getParameter("name");
int bprice = Integer.parseInt(request.getParameter("price"));
int bquant = Integer.parseInt(request.getParameter("quant"));
int bamount = Integer.parseInt(request.getParameter("amt"));
Class.forName("com.mysql.jdbc.Driver");
/* Create a connection by using getConnection() method that takes parameters of 
string type connection url, user name and password to connect to database. */ 
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/books_catalogue","root","");
// check weather connection is established or not by isClosed() method 
Statement stmt=(Statement) con.createStatement();
String q = "insert into bookdetails values('"+bname+"','"+bprice+"','"+bquant+"','"+bamount+"')";
int rs=stmt.executeUpdate(q);
if(rs!=0){
	%>
    <script>
    alert("Books added Successfully");
    window.location("exp12addbooks.html");
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