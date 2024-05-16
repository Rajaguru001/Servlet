<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.chainsys.pojo.BookingForm" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #f5f5f5;
    }
</style>
</head>
<body>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Mail</th>
            <th>PhoneNumber</th>
            <th>Gender</th>
        </tr>
        <% 
            ArrayList<BookingForm> values = (ArrayList<BookingForm>) request.getAttribute("bookings");
            for (BookingForm values1 : values) {
        %>
        <tr>
            <td><%= values1.getName() %></td>
            <td><%= values1.getEmail() %></td>
            <td><%= values1.getPhonenumber() %></td>
            <td><%= values1.getGender() %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
