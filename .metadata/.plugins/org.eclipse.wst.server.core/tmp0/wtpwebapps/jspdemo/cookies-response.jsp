<html>
<%
String lang = request.getParameter("fav");

Cookie thecookie= new Cookie("myappcookie",lang);

thecookie.setMaxAge(60*60*24*365);

response.addCookie(thecookie);
%>
<body>
 thanks we set your favorite language to : ${param.fav }
 <br/><br/>
 <a href="cookiehome.jsp">Return to home page</a>
</body>
</html>