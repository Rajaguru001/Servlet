<%@page import="Empolyeedao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.chainsys.pojo.EmployeeForm"%>
	<%
	String value2=(String)session.getAttribute("name");
	if(value2 == null){
		response.sendRedirect("EmpolyeeLoginPage.jsp");
		return;
	}

	%>


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

.delete-button {
	background-color: #ff4444; /* Red */
	color: white;
	border: none;
	border-radius: 3px;
	padding: 8px 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.delete-button:hover {
	background-color: #cc0000;
}

.update-button {
	background-color: #4286f4; /* Blue */
	color: white;
	border: none;
	border-radius: 3px;
	padding: 8px 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.update-button:hover {
	background-color: #005cbf;
}

input[type="search"] {
	padding: 6px 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 3px;
	padding: 8px 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

</style>
</head>
<body>
		<form action="EmployeeDetails" method="get">
<input type="hidden" name="action" value="searchvalue">	
<input type="search" name="search" value="search">
<button type="submit" onClick="location.href= 'search.jsp">submit</button>
</form>

<form action="Logout" method="get">
<button type="submit" name="logout" vaule="logout">LOGOUT</button>
</form>

	<table>
	
		<tr>
			<th>s/no</th>
			<th><form "EmployeeDetails" method="get">
			<input type="hidden" name="action" value="ascending">
			<input type="hidden" name="ascending" value="ascending">
			<button type="sumbit">sort</button>
			</form>
			</th>
			<th>Name</th>
			<th>Password</th>
			<th>email</th>
			<th>PhoneNumber</th>
			<th>Add</th>
			<th>delete</th>
		</tr>
		<%
			
			EmployeeDAO obj=new EmployeeDAO();
           ArrayList<EmployeeForm> val=(ArrayList<EmployeeForm>)request.getAttribute("log");
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
	<p>Thankyouuuuuu<%=value2%></p>


</body>
</html>

