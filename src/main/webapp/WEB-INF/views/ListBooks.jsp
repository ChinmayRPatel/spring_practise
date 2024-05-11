<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Books Table</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>

<table>
    <tr>
        <th>BookId</th>
        <th>BookName</th>
        <th>AuthorName</th>
    </tr>

    <c:forEach items="${books}" var="b">
        <tr>
            <td>${b.id}</td>
            <td>${b.bookName}</td>
            <td>${b.authorName}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
