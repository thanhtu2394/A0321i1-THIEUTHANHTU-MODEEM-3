<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 31/10/2021
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/rs" method="post">
    <input type="hidden" name="action" value="edit">
    <h1>ID</h1>
    <input type="number" name="id" value="${a.id}" readonly>
    <h1>Name</h1>
    <input type="text" name="name" value="${a.name}">
    <h1>briday</h1>
    <input type="text" name="briday" value="${a.briday}">
    <h1>gender</h1>
    <input type="radio" name="gender"  value="1" ${a.gender==true?"checked":""}>male
    <input type="radio" name="gender" value="0" ${a.gender==false?"checked":""} >female
    <h1>id_card</h1>
    <input type="text" name="id_card" value="${a.id_card}">
    <h1>phone</h1>
    <input type="text" name="phone" value="${a.phone}">
    <h1>email</h1>
    <input type="text" name="email" value="${a.email}">
    <h1>address</h1>
    <input type="text" name="address" value="${a.address}">
    <h1>loaikhach</h1>
    <input type="radio" name="loaikhach" value="1" ${a.type.id_type==1?"checked":""}> Diamond1
    <input type="radio" name="loaikhach" value="2" ${a.type.id_type==2?"checked":""}>Platinum1
    <input type="radio" name="loaikhach" value="3" ${a.type.id_type==3?"checked":""}>Gold1
    <input type="radio" name="loaikhach" value="4" ${a.type.id_type==4?"checked":""}>Silver1
    <input type="radio" name="loaikhach" value="5" ${a.type.id_type==5?"checked":""}>Member1
    <input type="submit" value="submit">
</form>

</body>
</html>
