<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">

</head>
<body>

        <h2>New Product</h2>
        <form action="saveproduct" method="post">
            Product Name : <input type="text" name="productName"><br><br>
            Price : <input type="text" name="price"> <br><br>
            Qty : <input type="text" name="qty"> <br><br>
            Category : <input type="text" name="category"><br><br>
            <input type="submit" value="Add Product">
        </form>
</body>
</html>