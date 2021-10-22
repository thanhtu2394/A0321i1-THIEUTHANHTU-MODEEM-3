<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/10/2021
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/product?act=themmoi" method="post">
<h1>MaSanPham</h1>
<input type="text" name="MSP">
<h1>TenSanPham</h1>
<input type="text" name="TSP">
<h1>Gia</h1>
<input type="text" name="GIA">
<h1>XuatSu</h1>
<input type="text" name="XUATSU">
<h1>HienTrang</h1>
    <select name="HT">
        <option value="true">True</option>
        <option value="false">False</option>
    </select>
<input type="submit" >
</form>
</body>
</html>
