<!-- EXP4.jsp-->
<!DOCTYPE html>
<html>  
	<body>
		<form action="EXP4.jsp">
			Enter first No.&nbsp; &nbsp;&nbsp;&nbsp;<input type="text" name="num1"  /><br/><br/>
			Enter second No.<input type="text" name="num2"  /><br/><br/>
			<input type="submit" value="ADD" /> <br/><br/> <hr/>
		</form>
					
			<%	try{
				String x = request.getParameter("num1");
				String y = request.getParameter("num2");
				if(x != null && y != null)
					{
						double num1 = Double.parseDouble(x);
						double num2 = Double.parseDouble(y);
						double result = num1 + num2 ;
						out.println("Sum of "+num1+" & "+num2+" is : "+result);
					}
				}
			catch(Exception e)
				{
					out.println("Something Went Wrong !");
				}
			%>
			
	</body>  
</html> 