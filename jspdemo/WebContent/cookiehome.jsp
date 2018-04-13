<html>
<body>
<h3> Training Portal </h3>
<%
String favlang= "java";
Cookie[] thecookies = request.getCookies();
if(thecookies!=null){
	for(Cookie temp:thecookies){
		if("myappcookie".equals(temp.getName())){
			favlang=temp.getValue();
			break;
		}
	}
}
%>

<h4> New Books for <%= favlang %></h4>
<ul>
<li>
Blah Blah Blah
</li>
</ul>
<br/>
<br/>
<h4> New Reports for <%= favlang %></h4>
<ul>
<li>
Blah Blah Blah
</li>
</ul>
<br/><br/>
<h4> New Jobs for <%= favlang %></h4>
<ul>
<li>
Blah Blah Blah
</li>
</ul>
<br/><br/>
<a href="cookies-form.html">Personalize this page</a>
</body>
</html>