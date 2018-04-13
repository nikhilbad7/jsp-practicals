<!-- EXP.jsp -->
<html>  
	<body> 
		<%! double calcIT(double income)
			{
				double tax;
				if(income <= 50000)
				{
					tax = 0.01;
				}
				else if(income <= 75000)
				{
					tax = 0.02;
				}
				else if(income <= 100000)
				{
					tax = 0.03;
				}
				else if (income <= 250000)
				{
					tax = 0.04;
				}
				else if (income <= 500000)
				{
					tax = 0.05;
				}
				else
				{
					tax = 0.06;
				}
				return(tax * income);
			}
		%>
		<form action="EXP7.jsp">
		Enter Income: &nbsp;<input type="text" name="income"  /><br/><br/>
			<input type="submit" value="Solve" />  <br/><hr/>
		</form>
		
		<% 	try
			{
				String p1 = request.getParameter("income");
				if(p1 != null)
				{
					double income = Double.parseDouble(p1);
					out.println("Your total income tax is : "+calcIT(income));
				}
			}
			catch(Exception e)
			{
				out.println("Something Went Wrong !");
			}
		%>
		
	</body>  
</html> 