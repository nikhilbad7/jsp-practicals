<!-- sales.jsp -->
<html>  
	<body> 
			<%! double salesComm(double totalSales)
				{
					double commissionRate=0.0;
					if(totalSales>=500)
						commissionRate=0.05;
					if(totalSales>=1000)
						commissionRate=0.1;
					if(totalSales>=1500)
						commissionRate=0.15;
					return(totalSales * commissionRate);
				}
			%>
		<p>
			<b>Note : </b>
			<hr/>
			<table border=1 width="250px">
				<tr>
					<td>Total Sales</td>
					<td>Commission Rate </td>
				</tr>
				<tr>
					<td>500 - 999 </td>
					<td>0.05 % </td>
				</tr>
				<tr>
					<td>1000-1499</td>
					<td>0.10 % </td>
				</tr>
				<tr>
					<td> >=1500 </td>
					<td>0.15 % </td>
				</tr>
			</table>
		</p>
		<hr/>
<form action="sales.jsp">
	Enter Sale: &nbsp; &nbsp;&nbsp;<input type="text" name="sales"  />
	<br/><br/>
<input type="submit" value="Calculate Sales Commission" />  <br/><br/><hr/>
</form> 
<% 	try{
		String param1 = request.getParameter("sales");
		if(param1 != null)
		{
			double sales = Double.parseDouble(param1);
			out.println("Total Sales Commission is : "+salesComm(sales));
		}
		}
	catch(Exception e)
	{
		out.println("Something Went Wrong !");
	}
%>
</body>  
</html> 