<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 5/31/2021
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>CREATE PRODUCT</h1>
<button>
    <a href="/products">
        Back to product list
    </a>
</button>
<form method="post">
    <input name="id" placeholder="Id">
    <input name="name" placeholder="Name">
    <input name="price" placeholder="Price">
    <button type="submit" value="Create">Create</button>
</form>
</body>
</html>
