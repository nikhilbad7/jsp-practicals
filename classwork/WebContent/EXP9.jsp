<!-- EXP9.jsp -->
<!DOCTYPE html>
<html>  
	<body> 
		<%! boolean checkPrime(long num)
			{
				for(int i=2;i<num;i++)
					{
						if(num %i == 0)
							{
								return(false);
							}
					}
				return(true);
			}
		%> 
		
		<% 	try{
				String p1 = request.getParameter("num");
				if(p1 != null)
					{
						long num = Long.parseLong(p1);
						boolean result = checkPrime(num);
						if(result)
							out.println(num+" is a Prime number .");
						else
							out.println(num+" is not a Prime number .");
					}
				}
			catch(Exception e)
				{
					out.println("Something Went Wrong !");
				}
		%>
		
	</body>  
</html> 