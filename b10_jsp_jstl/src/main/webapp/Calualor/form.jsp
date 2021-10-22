<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 22/10/2021
  Time: 9:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form  action="/calualor" method="post">
        <span><label for="c1">First operand: </label></span> <input id="c1" type="text" name="firstNumber">
        <span><label for="c3">Operator: </label> </span>
        <select name="action" id="c3">
            <option value="operator" selected>Operator</option>
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <span><label for="c2">Second operand: </label> </span> <input id="c2" type="text" name="secondNumber">
        <input type="submit" id="submit" value="Calculate">
</form>

</body>
</html>
