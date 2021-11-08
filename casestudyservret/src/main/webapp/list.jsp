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
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Stt</th>
        <th scope="col">ID</th>
        <th scope="col">NAME</th>
        <th scope="col">NGAYSINH</th>
        <th scope="col">GIOITINH</th>
        <th scope="col">CMND</th>
        <th scope="col">PHONE</th>
        <th scope="col">EMAIL</th>
        <th scope="col">DIACHI</th>
        <th scope="col">TYPE</th>
        <th scope="col">DELETE</th>
        <th scope="col">EDIT</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach var="cutomer" items="${customerList}" varStatus="loop">
    <tr>
        <th scope="row">${loop.count}</th>
        <td>${cutomer.id}</td>
        <td>${cutomer.name}</td>
        <td>${cutomer.briday}</td>
        <td>${cutomer.gender}</td>
        <td>${cutomer.id_card}</td>
        <td>${cutomer.phone}</td>
        <td>${cutomer.email}</td>
        <td>${cutomer.address}</td>
        <td>${cutomer.type.name_type}</td>
        <td>DELETE</td>
        <td>EDIT</td>
    </tr>
    </c:forEach>
    </tbody>
</table>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tableStudent').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5 // sô row xuât hiện
        } );
    } );
</script>
</body>
</html>
