<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<body>
	<h2>Student Table demo</h2>
	<hr>
	<br>
	<table border=1>
	<tr>
	<th>FirstName</th>
	<th>LastName</th>
	<th>Email</th></tr>
		<c:forEach var="temp" items="${studentslist}">
		<tr>
		<td>${temp.firstName}</td>
		<td>${temp.lastName}</td>
		<td>${temp.email}</td>
		</tr>
		</c:forEach>
		</table>
	</body>
</html>