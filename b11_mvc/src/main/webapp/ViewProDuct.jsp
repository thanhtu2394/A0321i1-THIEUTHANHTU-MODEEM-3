<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/10/2021
  Time: 7:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px solid">
    <tr>
        <th>Stt</th>
        <th>MaSanPham</th>
        <th>TenSanPham</th>
        <th>Gia</th>
        <th>XuatSu</th>
        <th>HienTrang</th>
        <th>Edit</th>
        <th>Delete</th>

    </tr>
    <c:forEach var="product1" items="${product}" varStatus="loop">
        <tr>
        <th>${loop.count}</th>
        <th>${product1.getMaSanPham()}</th>
        <th>${product1.getTenSanPham()}</th>
        <th>${product1.getGia()}</th>
        <th>${product1.getXuatSu()}</th>
        <th>${product1.getHienTrang()?'con hang':'het hang'}</th>
        <th><a href="/product?act=edit&id=${product1.getMaSanPham()}">Edit</a></th>
        <th><a href="/product?act=delete&id=${product1.getMaSanPham()}">Delete</a></th>
        </tr>
    </c:forEach>


</table>
<h1 ><a href="/product?act=themmoi">THem moi</a></h1>
<form action="/product" method="get">
    <input type="text" name="tensanpham">
    <input type="hidden" name="act" value="find">
    <button type="submit">TimKiem</button>
</form>
<h1><a href="/product?act=hienthi">Hien thi toan bo</a></h1>

</body>
</html>
