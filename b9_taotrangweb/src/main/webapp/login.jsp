<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/10/2021
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .login {
            height:180px; width:230px;
            margin:0;
            padding:10px;
            border:1px #CCC solid;
        }
    </style>
</head>
<body>
<div class="login">
    <form method="get" action="/login">
        <input type="text" placeholder="usename" name="use">
        <br>
        <input type="password" placeholder="password" name="pass">
        <br>
        <input type="submit" style="background-color: blue">
    </form>
</div>
<h1><%=request.getAttribute("comment")%></h1>
<h1>${comment}</h1>


</body>
</html>
