<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style>
 .thankyoubox {
            border: 1.2px solid #ddd; 
            border-radius: 30px; 
            box-shadow: 10px 10px 20px rgba(0, 0, 0, 0.1);
            margin-left: 420px;
            padding: 0px 20px 20px 20px;
            height: 500px; 
            max-width: 400px;
            background-color: #f9f9f9;
            text-align: center;
        }

        h1 {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #eb4343;
            color: rgb(240, 240, 234);
            box-shadow: 0px 0px 0px 20px #eb4343;;
            padding: 20px;
            margin-bottom: 100px; 
            border-radius: 9px;
        }

        h2 {
            text-align: center;
            padding-bottom: 10px;
        }

        .rating {
            unicode-bidi: bidi-override;
            direction: rtl;
            text-align: center;
        }

        .rating > span {
            display: inline-block;
            position: relative;
            width: 2rem;
            font-size: 40px;
            color: #040404; 
            cursor: pointer; 
        }

        .rating > span:hover:before,
        .rating > span:hover ~ span:before {
            content: "\2605";
            color: #dea024;
            position: absolute;
        }
        .rating>span:hover::after{
            color: #f31505;
        }
        .instalogo{
           margin-top: 30px;
           display: flex;
           flex-direction: row;
           margin-left:38% ;
        }
        .logotxt{
            font-size: xx-small;
            gap: 20px;
            padding-right: 10px;
        }
        input[type=submit] {
    background-color: rgba(249, 0, 0, 0.925);
    border: none;
    color: #fef9f9;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
    margin-left: 70%;
    margin-top: 20px;
}

input[type=submit]:hover {
    background-color: rgba(249, 0, 0, 0.7);
}
.table{
    margin-bottom: 40px;
    margin-left: 50px;
}
td{
    padding:5px;
        
    }
</style>
</head>
<body style="background-image: url(thankyoubg2.jpg);">
<div class="thankyoubox">
    <h1>Flight Booking </h1>
  <form action="FlightBooking" method="get">
    <table class="table">
        <tr>
            <td> Name </td> <td><input type="text" name="Name" placeholder="User Name" required></td>
        </tr>
        <tr>
            <td>Email </td> <td><input type="email" name="email" placeholder="email" required></td>
        </tr>
        <tr>
            <td>Phone Number </td> <td><input type="number" name="Phonenumber" placeholder="Phonenumber" required min="10"></td>
            </tr>
            <tr>
                <td>Gender </td> 
                <td>
                    <input type="radio" name="Gender" value="male" required>Male
                    <input type="radio" name="Gender" value="female" required>Female
                </td>
            </tr>
           
          
            <tr><td>
                <label for="TICKET">Date Of Booking :</label>
               <td> <input type="date" id="TICKET" name="TICKET" style="margin-left: 15%" min="2024-05-10" max="2024-05-27"></td>  </td>
               </tr> 
             
               <tr>
                <td>Class</td>
                <td>
                    <select>
                        <option>Economy</option>
                        <option>Business</option>
                    </select>
                </td>
            </tr>  
            <tr>
                     <td><input type="submit" value="submit" style="text-align: center;" ></td>
            </tr> 
        
    </table>  
     </form>
</div>
</body>
</html>