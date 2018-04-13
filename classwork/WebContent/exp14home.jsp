<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
	<head>
		<title>Home Page</title>
	</head>
	<body>
	<% String result="";
        String name = (String) session.getAttribute("username");
        
        String pass = (String) session.getAttribute("password");
	
        if( name != null && pass != null)
            
	{
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
String q="select result from  `userdetails` where name='"+name+"' and password='"+pass+"'";
ResultSet rs=stmt.executeQuery(q);

while(rs.next()){
	  result = "Your result is "+rs.getString("result");
	 
}

	%>
	
		<h1>ResultPage</h1>
		<h3><% out.println(result+"% ."); %> 
                    <br><a href="changepassword.html">Change Password</a><br>
		<a href="exp14logout.jsp">Logout</a>
		<%
	}

catch(Exception ex){
ex.printStackTrace();
}
}

	else
	{
	%>
	<h1>Permission is denied . Please Login </h1>
		<a href="exp14login.html">Here</a>
		<%
		}
		%>
	</body>
</html>