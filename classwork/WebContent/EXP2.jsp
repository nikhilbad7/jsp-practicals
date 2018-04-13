<!--EXP2.jsp-->
<!DOCTYPE html>
<html>  
	<body>
		<form action="EXP2.jsp">
		Enter Your Name: &nbsp;&nbsp;&nbsp;	<input type="text" name="user"  /><br/><br/>
		Enter Your Number:	&nbsp;<input type="text" name="telephone"  /><br/><br/>
			<input type="submit" value="Print" />  <br/><br/><hr/>
		</form> 	
	
			<% 	try{
			String username = request.getParameter("user");
			String usernum = request.getParameter("telephone");
			if(username != null && usernum != null)
				{
					String name = username;
					long telnumber = Long.parseLong(usernum);
					out.println("Name :    "+name+" <br/> Telephone Number : "+telnumber);
				}
				}
			catch(Exception e)
				{
					out.println("Something Went Wrong ! Please try again.");
				}
			%>
		
	</body>  
</html> 