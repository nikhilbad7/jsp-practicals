<!-- EXP3.jsp-->
<!DOCTYPE html>
<html>  
	<body> 
		<%! int getFact(int num)
				{
					if(num==0)
						{return 1;}
					else
						{return(num * getFact(num-1));}
				}
 
		%>
		<form action="EXP3.jsp">
		Enter any Number :	<input type="text" name="num"/><br/><br/>
			<input type="submit" value="Calculate Factorial" />  <br/><br/><hr/>
		</form>
		
			<%	try{
				String n = request.getParameter("num");
				if(n != null)
					{
						int num = Integer.parseInt(n);
						out.println("Factorial of "+num+" is : "+getFact(num));
					}
					}
			catch(Exception e)
				{
					out.println("An Error has occured");
				}
			%>
		
	</body>  
</html> 