<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

.container {
    width: 300px;
    margin: 0 auto;
    padding-top: 50px;
}

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
}

form table {
    width: 100%;
}

form table tr td {
    padding: 10px 0;
}

form input[type="text"],
form input[type="password"],
form input[type="email"],
form input[type="number"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

form input[type="text"]:focus,
form input[type="password"]:focus,
form input[type="email"]:focus,
form input[type="number"]:focus {
    outline: none;
    border-color: #66afe9;
    box-shadow: 0 0 5px #66afe9;
}

form input[type="submit"] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

form input[type="submit"]:hover {
    background-color: #45a049;
}

.error {
    color: red;
    font-size: 14px;
}
h1{
font-family: Arial, sans-serif;
text-align:center;

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