<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 22/10/2021
  Time: 7:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/tudien" method="post">
    <label for="c1">VIETNAM DICTIONARY </label><br/>
    <input type="text" name="td"  placeholder="English" id="c1"/><br/>
    <input type = "submit"  value = "Search"/>
</form>
<h1 class="text-danger">Result :${result}</h1>

</body>
</html>
