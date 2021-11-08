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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="/assert/css/base.css">
    <link rel="stylesheet" href="/assert/css/style.css">
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
    <form action="/rs" method="get">
        <h1>searchName</h1>
        <input type="hidden" name="action" value="searchName">
        <input type="number" name="findNam">
        <button type="submit" > search</button>
    </form>
</div>
<hr>
<table class="table" border="1px solid" id="c1"  >
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
            <td>${cutomer.gender?"male":"female"}</td>
            <td>${cutomer.id_card}</td>
            <td>${cutomer.phone}</td>
            <td>${cutomer.email}</td>
            <td>${cutomer.address}</td>
            <td>${cutomer.type.name_type}</td>
<%--            <td><button type="button" onclick="delete1(${cutomer.id})">delete</button></td>--%>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" >
                delete
            </button>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">hello</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p class="alpha"> muon xoa khong</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1" >
                                    ok
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel1">hello</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p class="alpha"> ban da xoa thanh cong</p>
                            </div>
                            <div class="modal-footer">
                                <button onclick="window.location.href='/rs?action=delete&id=${cutomer.id}'" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1" >
                                    ok
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </td>

            <td><button type="button" onclick="window.location.href='/rs?action=edit&id=${cutomer.id}'">Edit</button></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<button type="button" onclick="window.location.href='/rs?action=create'">Create</button>

<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
<script>
    $(document).ready(function() {
        $('#c1').dataTable( {
            "dom": 'lrtip',
"lengthChange": false,
"pageLength": 5 ,
} );
} );
</script>
<%--<script>--%>
<%--    function delete1(id) {--%>
<%--        var mesega=confirm("ban co muon xoa khong")--%>
<%--        if (mesega==true){--%>
<%--            window.location.href="/rs?action=delete&id="+id;--%>
<%--            alert("ban da xoa thanh cong")--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>

</body>
</html>

