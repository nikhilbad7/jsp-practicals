<html>
<body>
user name is: <%= request.getParameter("firstname") %> ${param.lastname }
<br/>
user country is: ${param.country}<br/>
user programming language is : ${ param.x }
<ul>
<%
String []langs= request.getParameterValues("y");

 for (String i:langs)
	 out.println("<li>"+ i + "</li>");
%>
</ul>
</body>
</html>