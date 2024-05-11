<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">

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
