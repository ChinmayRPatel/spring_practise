<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            margin-top: 50px;
            color: #333;
        }

        .employee-details {
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
<h2>View Employee</h2>
<div class="employee-details">
    First Name: ${employee.firstName }<br>
    Gender: ${employee.gender }<br>
    Hobby: ${employee.hobby }<br>
</div>
</body>
</html>
