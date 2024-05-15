<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
form{
	text-align:center;
	background-color:#FAEBD7;
}
  input[type=submit]{
                background-color:rgba(249, 0, 0, 0.925);
            opacity: 15;
            border: none;
            color: #fffbfb;
            padding: 10px 15px;
            text-decoration:none;
            margin: 4px 2px;
            cursor: pointer;
            }
 table{
 text-align:center;
 margin-left:35%;
            }

</style>
</head>
<body>
 
<form action="DemoServelt1"> 
  <table >
            <tr>
                <td> Name :</td> <td><input type="text" name="name" placeholder="User Name"  required></td>
            </tr>
            <tr>
                <td>Email :</td> <td><input type="email" name="email" placeholder="email"  required></td>
            </tr>
            <tr>
                <td>Phone Number :</td> <td><input type="number" name="phonenumber" placeholder="Phonenumber" value="phonenumber" pattern="[7-9]{1}[0-9]{9}"></td>
                </tr>
                <tr>
                    <td>Gender :</td> 
                    <td>
                        <input type="radio" name="Gender" required>Male
                        <input type="radio" name="Gender" required>Female
                    </td>
                </tr>
       </table> 
  <input type="submit" name="submit">
 </form>

</body>
</html>