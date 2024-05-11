<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
			margin: 0;
			padding: 0;
		}

		form {
			width: 300px;
			margin: 50px auto;
			padding: 20px;
			background-color: #fff;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}

		label {
			display: block;
			margin-bottom: 10px;
		}

		input[type="text"] {
			width: calc(100% - 10px);
			padding: 8px;
			margin-bottom: 15px;
			border: 1px solid #ccc;
			border-radius: 5px;
			box-sizing: border-box;
		}

		input[type="submit"] {
			width: 100%;
			padding: 10px;
			background-color: #4CAF50;
			color: #fff;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}

		input[type="submit"]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
<%--<h1>Student Information Form</h1>--%>
<form action="calculateResult" method="post">
	<label for="name">Student Name :</label>
	<input type="text" id="name" name="StudentName" value="${student.studentName}" required/>${studentNameError}<br><br>

	<label for="age">Born Year :</label>
	<input type="text" id="grade" name="bornYear" value="${student.bornYear}" required/>${bornYearError}<br><br>

	<label for="grade">Percentage :</label>
	<input type="text" id="age" name="perc" value="${student.perc}" />${studentNameError}<br><br>${percError}<br><br>


	<input type="submit" value="Result">
</form>
</body>
</html>
