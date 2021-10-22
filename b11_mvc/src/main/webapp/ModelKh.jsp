<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" href="bootstrap413/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css"/>
</head>
<body>
<h1>Customers</h1>
<div class="container-fluid">
    <div class="row ">
        <div class="col-lg-12">
            <table border="1" id="tableStudent" class="table table-striped table-bordered">
                <thead>
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="ModelKh2" items="${modelkh1}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td>${ModelKh2.getId()}</td>
                        <td>${ModelKh2.getName()}</td>
                        <td>${ModelKh2.getEmail()}</td>
                        <td>${ModelKh2.getAddress()}</td>
                        <td><a href="/thanhtu?action=edit&id=${ModelKh2.getId()}">Edit</a></td>
                        <td ><a href="/thanhtu?action=delete&id=${ModelKh2.getId()}">Delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<h1><a href="/thanhtu?action=update">Thêm mới</a></h1>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tableStudent').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3
        } );
    } );
</script>
</body>
</html>