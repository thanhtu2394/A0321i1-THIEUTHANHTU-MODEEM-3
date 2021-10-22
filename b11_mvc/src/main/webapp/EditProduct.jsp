<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 20/10/2021
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/product?act=edit" method="post">
    <h1>MaSanPham</h1>
    <input type="text" name="MSP" value="${product.getMaSanPham()}">
    <h1>TenSanPham</h1>
    <input type="text" name="TSP" value="${product.getTenSanPham()}">
    <h1>Gia</h1>
    <input type="text" name="GIA" value="${product.getGia()}">
    <h1>XuatSu</h1>
    <input type="text" name="XUATSU"  value="${product.getXuatSu()}">
    <h1>HienTrang</h1>
    <input type="text" name="a" value="${product.getHienTrang()}">
    <select name="HT">
        <option value="true">True</option>
        <option value="false">False</option>
    </select>
    <input type="submit" >

</form>
</body>
</html>
