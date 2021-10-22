<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/10/2021
  Time: 11:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>edit</h1>
<form action="/thanhtu?action=edit&id=${modelkh.getId()}" method="post">
    <p>Name</p>
    <input type="text" name="name1" value="${modelkh.getName()}">
    <input type="submit" name="cập nhâp">
</form>

</body>
</html>
