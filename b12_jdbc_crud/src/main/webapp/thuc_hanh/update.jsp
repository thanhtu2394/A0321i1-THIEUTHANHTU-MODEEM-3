<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/10/2021
  Time: 5:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user" method="post">
    <h1>id</h1>
    <input type="hidden" name="action" value="create">
    <input type="number" required name="id">
    <h1>name</h1>
    <input type="text" required name="name">
    <h1>email</h1>
    <input type="text" required name="email">
    <h1>counttry</h1>
    <input type="text" required name="country">
    <input type="submit" value="send">
</form>

</body>
</html>
