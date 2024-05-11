<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Product Details</title>
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

        p {
            margin: 10px 0;
            font-size: 16px;
        }
    </style>
</head>
<body>
<h2>Product Details</h2>
<p><strong>Product Name:</strong> ${product.productName}</p>
<p><strong>Price:</strong> ${product.price}</p>
<p><strong>Quantity:</strong> ${product.qty}</p>
<p><strong>Category:</strong> ${product.category}</p>
</body>
</html>
