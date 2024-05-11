<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="iso-8859-1" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <h2>New Employees</h2>
    <form action="saveEmployee" method="post">
        First Name :-<input type="text" name="firstName" value="${employee.firstName}" />${firstNameError}<br><br>
        Email :- <input type="email" name="email" value="${employee.email}" />${emailError}<br><br>
        Password :- <input type="password" name="password"><br><br>
        Age :- <input type="text" name="age"><br><br>

        Gender : Male <input type="Radio" name="gender" value="male" ${employee.gender.equals("male")?"cheched":""}/>
                 Female <input type="Radio" name="gender" value="female" ${employee.gender.equals("female")?"checked":""}/>${genderError}<br><br>
        Address :
        <textarea rows="15" cols="10" name="address" >${employee.address}</textarea>
        <Br> <br>
        City:<select name="city">
                <option value="-1">---Select City----</option>
                <option value="ahmedabad"  ${employee.city.equals("ahmedabad")?"selected":""}>Ahmedabad</option>
                <option value="surat" ${employee.city.equals("surat")?"selected":""}>Surat</option>
                <option value="baroda" ${employee.city.equals("baroda")?"selected":""}>Baroda</option>
        </select> ${cityError}
        <br> <br>
        Hobby: Cricket: <input type="checkbox"
            name="hobby" value="ckt"> Whatsapp: <input type="checkbox"
            name="hobby" value="wp"> Instagram: <input type="checkbox"
            name="hobby" value="ig"> PickleBall: <input type="checkbox"
            name="hobby" value="pBall"><br>
        <br> <input type="submit" value="Add Employee" />
    </form>


    </form>

</body>
</html>

