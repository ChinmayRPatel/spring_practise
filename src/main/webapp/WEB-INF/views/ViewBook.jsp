<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
    <h2>View Book</h2>
    Name : ${book.bookName }<Br>
    Author: ${book.authorName }
    <br><br>
    <a href="/listbooks">View All Books</a>
</body>
</html>