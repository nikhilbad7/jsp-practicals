<!-- EXP5.jsp -->
<!DOCTYPE html>
<html>  
	<body> 
		<%! double getSI(double p, double r,double t)
				{
					return((p * r * t)/100);
				}
		%>
		<form action="EXP5.jsp">
			Enter Amount :<input type="text" name="p"  /><br/><br/>
			Enter Rate :<input type="text" name="r"  /><br/><br/>
			Enter Time :<input type="text" name="t" /><br/><br/>
			<input type="submit" value="Calculate" /> <br/><br/> <hr/>
		</form>
		
		<% 	try{
				String amount = request.getParameter("p");
				String rate = request.getParameter("r");
				String time = request.getParameter("t");
				if(amount != null && rate != null && time != null)
					{
						double p = Double.parseDouble(amount);
						double r = Double.parseDouble(rate);
						double t = Double.parseDouble(time);
						double result = getSI(p,r,t) ;
						out.println("Simple Interest is : "+result);
					}
				}
			catch(Exception e)
				{
					out.println("Something Went Wrong !");
				}
		%>
		
	</body>  
</html> 