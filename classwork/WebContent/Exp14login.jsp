<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
<title>Validating Users</title> 
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

Class.forName("com.mysql.jdbc.Driver");
/* Create a connection by using getConnection() method that takes parameters of 
string type connection url, user name and password to connect to database. */ 
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/registerlogin","root","");

// check weather connection is established or not by isClosed() method 
Statement stmt=(Statement) con.createStatement();
String name=request.getParameter("name");
String password=request.getParameter("pass");
String namenew="",passwordnew="";
String q="select * from  `userdetails` where name='"+name+"' and password='"+password+"'";
ResultSet rs=stmt.executeQuery(q);
while(rs.next()){
	  namenew = rs.getString("name");
	 
	  passwordnew = rs.getString("password");
	 
}
if((namenew.equals(request.getParameter("name")))&&(passwordnew.equals(request.getParameter("pass")))){
	session.setAttribute("username",namenew);
	session.setAttribute("password",passwordnew);
	%>
        <a href="exp14home.jsp"> Go to home</a>
	<%
}
else{
	%>
        <a href="exp14login.html"> Login Here</a>
	<script>
	
	alert("Please insert valid email and password");
	
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