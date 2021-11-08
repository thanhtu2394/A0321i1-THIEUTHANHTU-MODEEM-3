<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/11/2021
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/service" method="post">
    <input type="hidden" name="action" value="create">
    <h1>ID</h1>
    <input type="number" name="id">
    <h1>Name</h1>
    <input type="text" name="name">
    <h1>area</h1>
    <input type="number" name="area">
    <h1>cost</h1>
    <input type="number" name="cost">
    <h1>people</h1>
    <input type="number" name="people">
    <h1>kieuthue</h1>
    <input type="radio" name="kieuthue" value="1"> thoe h
    <input type="radio" name="kieuthue" value="2">theo ngay
    <input type="radio" name="kieuthue" value="3">theo thang
    <input type="radio" name="kieuthue" value="4"> theo nam
    <h1>loaithue</h1>
    <input type="radio" name="loaithue" value="1"> Villa
    <input type="radio" name="loaithue" value="2">Room
    <input type="radio" name="loaithue" value="3">House
    <h1>phong</h1>
    <input type="radio" name="phong" value="vip1"> vip1
    <input type="radio" name="phong" value="vip2">vip2
    <input type="radio" name="phong" value="vip3">vip3
    <h1>mota</h1>
    <input type="text" name="mota">
    <h1>beboi</h1>
    <input type="number" name="beboi">
    <h1>sotang</h1>
    <input type="number" name="sotang">
    <button type="submit" >submit</button>
</form>

</body>
</html>
