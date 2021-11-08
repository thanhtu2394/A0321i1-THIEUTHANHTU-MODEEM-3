<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 31/10/2021
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap413/css/bootstrap.min.css" />
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css" />
    <style>
        .dislay{
            display: inline-block;
        }
    </style>
</head>
<body>
<div class="dislay" >
    <form action="/rs" method="get">
        <h1>searchId</h1>
        <input type="hidden" name="action" value="searchId">
        <input type="number" name="findId">
        <button type="submit" > search</button>
    </form>
</div>
<div class="dislay">
    <form action="/service" method="get">
        <h1>searchName</h1>
        <input type="hidden" name="action" value="searchName">
        <input type="number" name="findNam">
        <button type="submit" > search</button>
    </form>
</div>
<hr>
<table class="table" border="1px solid" >
    <tr>
        <th scope="col">stt</th>
        <th scope="col">id</th>
        <th scope="col">name</th>
        <th scope="col">area</th>
        <th scope="col">cost</th>
        <th scope="col">people</th>
        <th scope="col">kieuthue</th>
        <th scope="col">loaithue</th>
        <th scope="col">phong</th>
        <th scope="col">mota</th>
        <th scope="col">be boi</th>
        <th scope="col">so tang</th>
    </tr>
    <c:forEach var="service1" items="${service}" varStatus="loop">
        <tr>
            <th scope="row">${loop.count}</th>
            <td>${service1.id}</td>
            <td>${service1.name}</td>
            <td>${service1.area}</td>
            <td>${service1.cost}</td>
            <td>${service1.people}</td>
            <td>${service1.renType_.rent_type_name}</td>
            <td>${service1.service_type.service_type_name}</td>
            <td>${service1.standard_room}</td>
            <td>${service1.description}</td>
            <td>${service1.pool_area}</td>
            <td>${service1.number_of_floors}</td>
        </tr>
    </c:forEach>
</table>
<button type="button" onclick="window.location.href='/service?action=create'">Create</button>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tableStudent').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 4 // sô row xuât hiện
        } );
    } );
</script>
</body>
</html>

