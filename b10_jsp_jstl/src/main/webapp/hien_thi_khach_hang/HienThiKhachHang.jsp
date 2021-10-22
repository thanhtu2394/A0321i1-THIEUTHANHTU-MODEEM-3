<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 22/10/2021
  Time: 8:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px solid">
    <tr>
        <th>ten</th>
        <th>ngaysinh</th>
        <th>namsinh</th>
        <th>img</th>
    </tr>
    <c:forEach var="khachhang" items="${khachhangList}">
        <tr>
            <th>${khachhang.getTen()}</th>
            <th>${khachhang.getNgaySinh()}</th>
            <th>${khachhang.getDiaChi()}</th>
            <th><img width="50px" height="50px" src="${khachhang.getImg()}" alt="abc"></th>
        </tr>
    </c:forEach>
</table>

</body>
</html>
