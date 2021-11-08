<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 31/10/2021
  Time: 5:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/rs" method="post">
    <input type="hidden" name="action" value="create">
    <h1>ID</h1>
    <input type="number" name="id">
    <h1>Name</h1>
    <input type="text" name="name">
    <h1>briday</h1>
    <input type="text" name="briday">
    <h1>gender</h1>
    <input type="radio" name="gender" value="1">male
    <input type="radio" name="gender" value="0">female
    <h1>id_card</h1>
    <input type="text" name="id_card">
    <h1>phone</h1>
    <input type="text" name="phone">
    <h1>email</h1>
    <input type="text" name="email">
    <h1>address</h1>
    <input type="text" name="address">
    <h1>loaikhach</h1>
    <input type="radio" name="loaikhach" value="1"> Diamond1
    <input type="radio" name="loaikhach" value="2">Platinum1
    <input type="radio" name="loaikhach" value="3">Gold1
    <input type="radio" name="loaikhach" value="4">Silver1
    <input type="radio" name="loaikhach" value="5">Member1
    <input type="submit" value="submit">
</form>


</body>
</html>
