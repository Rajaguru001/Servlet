<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER UPDATE</title>
<style>
 body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }

    form {
        background-color: #fff;
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[type="number"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button[type="submit"] {
        background-color: #4caf50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
    }

    button[type="submit"]:hover {
        background-color: #45a049;
    }</style>
</head>
<body>
<form action="EmployeeDetails" method="get">
<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
<table>
<tr><td>Name:</td>
<td><input type="text" name="name" placeholder="User Name" required></td>
</tr>
 <tr>
                <td>Password</td>
                <td><input type="password" name="password" placeholder="Password" required></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="email" placeholder="Email" required></td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><input type="number" name="phonenumber" placeholder="Phone Number" required min="10"></td>
            </tr>
            <tr>
            <td><input type="hidden" name="action" value="update">
            <input type="hidden" name="updateid" value="<%= request.getParameter("updateid") %>">
            <button type="submit" >Update</button></td>
            </tr>

</table>

</form>

</body>
</html>