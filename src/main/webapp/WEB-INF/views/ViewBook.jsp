<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Book</title>
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

        .book-details {
            margin-top: 20px;
            font-size: 18px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h2>View Book</h2>
<div class="book-details">
    Name: ${book.bookName }<br>
    Author: ${book.authorName }
</div>
<br><br>
<a href="/listbooks">View All Books</a>
</body>
</html>
