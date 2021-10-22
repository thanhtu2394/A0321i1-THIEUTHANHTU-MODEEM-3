<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/10/2021
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/thanhtu?action=update" method="post">
    <p>ID</p>
    <input type="text" name="id">
    <p>Name</p>
    <input type="text" name="name">
    <p>Email</p>
    <input type="text" name="email">
    <p>Address</p>
    <input type="text" name="address">
    <input type="submit" name="thêm mới">
</form>

</body>
</html>
