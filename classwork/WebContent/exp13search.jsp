<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
<title>SEARCH RESULTS</title> 
</head> 
<body>
<h1>SEARCH RESULTS </h1>
<% 
try {
/* Create string of connection url within specified format with machine name, 
port number and database name. Here machine name id localhost and database name 
is usermaster. */ 
//String connectionURL = "jdbc:mysql://localhost:3306/usermaster"; 
// declare a connection by using Connection interface 
//Connection connection = null; 
// Load JBBC driver "com.mysql.jdbc.Driver". 
String name = request.getParameter("name");
String choiceselect="";
String choice= request.getParameter("sort");
 if(choice.equals("SORT BY NAME(ASC)")){
	choiceselect="ASC";
}
else if(choice.equals("SORT BY NAME(DESC)")){

	choiceselect="DESC";
}


Class.forName("com.mysql.jdbc.Driver");


/* Create a connection by using getConnection() method that takes parameters of 
string type connection url, user name and password to connect to database. */ 
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/phone","root","");
// check weather connection is established or not by isClosed() method 
Statement stmt=con.createStatement();
String q = "select * from contacts where name like '%"+name+"%'  order by name "+choiceselect;
System.out.println(q);
ResultSet rs=stmt.executeQuery(q);
%>

<table border=1 width=300px>
<tr>
	<th>NAME</th>
	<th>PHONE NO.</th>

</tr> <%
while(rs.next()){
	String resultname = rs.getString("name");
	String num = rs.getString("phone");
	out.print("<tr><td align='center'>"+resultname+"</td><td align='center'>"+num+"</td></tr>");
	
}
%>
</table><br><br><hr/>
<a href="exp13add.html">Want to add more contacts?</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="exp13.html">Search any other Number?</a>
<%
con.close();
}
catch(Exception ex){
ex.printStackTrace();
}
%>

</body> 
</html>