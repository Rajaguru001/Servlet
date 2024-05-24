<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    
    .container {
        width: 400px;
        margin: 100px auto;
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    h1 {
        text-align: center;
        color: #333;
    }
    
    table {
        width: 100%;
    }
    
    td {
        padding: 10px;
        text-align: left;
    }
    
    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    
    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 10px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
<h1>Login Page</h1>
</head>
<body>
<div class="container">
    <form action="EmployeeDetails" method="post">
        <table>
            <tr>
                <td>Name</td>
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
        </table>
        <input type="submit" value="Submit">
    </form>
</div>
</body>
</html>