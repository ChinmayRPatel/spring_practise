<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Employees Form</title>
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

        form {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        textarea,
        select {
            width: calc(100% - 10px);
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 5px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h2>New Employees</h2>
<form action="saveEmployee" method="post">
    First Name: <input type="text" name="firstName" value="${employee.firstName}" />${firstNameError}<br><br>
    Email: <input type="email" name="email" value="${employee.email}" />${emailError}<br><br>
    Password: <input type="password" name="password"><br><br>
    Age: <input type="text" name="age"><br><br>

    Gender:
    <label for="male">Male</label> <input type="radio" id="male" name="gender" value="male" ${employee.gender.equals("male")?"checked":""}/>
    <label for="female">Female</label> <input type="radio" id="female" name="gender" value="female" ${employee.gender.equals("female")?"checked":""}/> ${genderError}<br><br>

    Address: <br>
    <textarea rows="5" cols="50" name="address">${employee.address}</textarea><br><br>

    City:
    <select name="city">
        <option value="-1">---Select City----</option>
        <option value="ahmedabad" ${employee.city.equals("ahmedabad")?"selected":""}>Ahmedabad</option>
        <option value="surat" ${employee.city.equals("surat")?"selected":""}>Surat</option>
        <option value="baroda" ${employee.city.equals("baroda")?"selected":""}>Baroda</option>
    </select> ${cityError}<br><br>

    Hobby:
    <label for="cricket">Cricket</label> <input type="checkbox" id="cricket" name="hobby" value="cricket">
    <label for="whatsapp">Whatsapp</label> <input type="checkbox" id="whatsapp" name="hobby" value="whatsapp">
    <label for="instagram">Instagram</label> <input type="checkbox" id="instagram" name="hobby" value="instagram">
    <label for="pickleball">PickleBall</label> <input type="checkbox" id="pickleball" name="hobby" value="pickleball"><br><br>

    <input type="submit" value="Add Employee">
</form>

</body>
</html>
