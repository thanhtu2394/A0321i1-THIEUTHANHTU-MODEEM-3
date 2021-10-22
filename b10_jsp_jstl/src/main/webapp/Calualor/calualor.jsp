<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/6/2021
  Time: 6:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Result:</h1>
<c:if test='${a!=""}'>
    ${a}
</c:if>
<c:if test='${a==""}'>
    <span>${firstNumber}</span>
    <span>${actionr}</span>
    <span>${secondNumber}</span>
    <span> = </span>
    <span>${result}</span>
</c:if>
</body>
</html>