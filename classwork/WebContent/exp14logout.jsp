<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
	<head>
		<title>Home Page</title>
	</head>
	<body>
	<% String name = (String) session.getAttribute("username");
        
        String pass = (String) session.getAttribute("password");
	
        if( name != null && pass != null)
	{
		session.invalidate();
	%>
	
		<h1>You are Logged Out</h1>
		<a href="exp14login.html">Login Here</a>
		<%
	}
	else
	{
	%>
	<h1>You are not logged in . Please Login </h1>
		<a href="exp14login.html">Here</a>
		<%
		}
		%>
	</body>
</html>