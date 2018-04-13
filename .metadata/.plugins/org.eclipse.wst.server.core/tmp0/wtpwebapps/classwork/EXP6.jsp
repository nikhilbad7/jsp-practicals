<!-- EXP6.jsp -->
<!DOCTYPE html>
<html>  
	<body> 
		<%! String solveQuad(double a, double b,double c)
				{
					double d = b * b - 4 * a * c;
					if(d>0)
						{
							double r1 = (-b + Math.sqrt(d))/(2*a);
							double r2 = (-b - Math.sqrt(d))/(2*a);
							return("Roots are Real  and unequal. First root is : "+r1+" & Second root is : "+r2);
						}
					else if(d==0)
						{
							double r1 = (-b + Math.sqrt(d))/(2*a);
							return("Roots are Real  and equal. Root is : "+r1);
						}
					else
						{
							return("Roots are imaginary. ");
						}
				}
		%>
		<form action="EXP6.jsp">
		<input type="text" name="a" placeholder="a" /><%=" x" %><sup>2</sup><%=" + " %>
		<input type="text" name="b" placeholder="b" /><%=" x + " %>
		<input type="text" name="c" placeholder="c"/><br/><br/>
		<input type="submit" value="Solve" />  <br/><hr/>
		</form>
				
		<% 	try{
				String p1 = request.getParameter("a");
				String p2 = request.getParameter("b");
				String p3 = request.getParameter("c");
				if(p1 != null && p2 != null && p3 != null)
					{
						double a = Double.parseDouble(p1);
						double b = Double.parseDouble(p2);
						double c = Double.parseDouble(p3);
						out.println(solveQuad(a,b,c));
					}
				}
			catch(Exception e)
				{
					out.println("Something Went Wrong !");
				}
		%>
		
	</body>  
</html> 