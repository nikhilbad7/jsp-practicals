<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<body>
		<c:forEach var="temp" items="${studentlist }">
		${temp} <br/>
		</c:forEach>
	</body>
</html>