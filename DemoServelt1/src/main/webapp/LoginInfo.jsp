<%@page import="Empolyeedao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.chainsys.pojo.EmployeeForm"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Info</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

.container {
	width: 80%;
	margin: 20px auto;
}

table {
	width: 100%;
	border-collapse: collapse;
	border-radius: 5px;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #4CAF50;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}
</style>
</head>
<body>
		<form action="EmployeeDetails" method="get">
<input type="hidden" name="action" value="searchvalue">	
<input type="search" name="search">
<button type="submit">submit</button>
</form>
	<table>
		<tr>
			<th >Name</th>
			<th>Password</th>
			<th>email</th>
			<th>PhoneNumber</th>
			<th>Add/Delete</th>
		</tr>
		<%
			EmployeeDAO obj=new EmployeeDAO();
           ArrayList<EmployeeForm> val=obj.insert();
           int i=1;
       	for(EmployeeForm values1: val)
       	{
       		%>
		<tr>
			<td><%=i++ %></td>
			<td><%= values1.getName()%></td>
			<td><%=values1.getPassword()%></td>
			<td><%=values1.getEmail()%></td>
			<td><%=values1.getPhonenumber()%></td>
			<td>
			<form action="EmployeeDetails" method="get">
				 <input type="hidden" name="action" value="delete">
				 <input type="hidden" name="deleteid" value="<%=values1.getId()%>">
				 <button type="submit">Delete</button>	 
			</form>
			</td>
			<td>
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="updateid" value="<%=values1.getId() %>">
				<button type="submit" onClick="location.href= 'Updatepage.jsp?updateid=<%=values1.getId() %>'">update</button>
			
			</td>
 		</tr>
 



		<% } %>
	</table>


</body>
</html>

