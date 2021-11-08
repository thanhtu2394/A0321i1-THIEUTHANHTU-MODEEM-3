<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/10/2021
  Time: 6:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/user1?action=create">Add New User</a>
    </h2>
</center>
<caption><h2>List of Users</h2></caption>
    <table border="1 solid" >
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/user1?action=edit&id=${user.id}">Edit</a>
                </td>
                <td>
                    <a href="/user1?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
<form action="/user1" method="get">
    <input type="hidden" name="action" value="search">
    <input type="text" name="country">
    <input type="submit">
</form>
<h1 ><a href="/user1?action=sapxep">Sapxep</a></h1>
</body>
</html>