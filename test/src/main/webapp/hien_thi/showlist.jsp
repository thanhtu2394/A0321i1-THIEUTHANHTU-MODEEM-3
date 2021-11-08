<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/11/2021
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet" href="/assert/css/base.css">
    <link rel="stylesheet" href="/assert/css/style.css">
    <style>
        .dislay{
            display: inline-block;
        }
    </style>
</head>
<body>
<p  id="c4"></p>
<div class="align-content-lg-center text-center text-danger">
    <h1>THÔNG TIN SẢN PHẨM</h1>
</div>
<form action="/produst" method="get">
    <input type="hidden" name="action" value="search">
    <div class="dislay">
        <h3>searchName</h3>
        <input type="text" name="findNam" >
    </div>

    <div class="dislay">

        <h3>searchPrice</h3>
        <input type="number" name="findPrice" >
    </div>
    <div class="dislay">
        <h3>searchColor</h3>
        <input type="text" name="findColor"  >
    </div>

    <div class="dislay">
        <h3>searchCearory</h3>
        <input type="text" name="findCearory" >
    </div>
    <button type="submit" style="background-color: blue" >SEARCH</button>
</form>


<%--<div class="dislay" >--%>
<%--    <form action="/rs" method="get">--%>
<%--        <h1>searchId</h1>--%>
<%--        <input type="hidden" name="action" value="searchId">--%>
<%--        <input type="number" name="findId">--%>
<%--        <button type="submit" > search</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--<div class="dislay">--%>
<%--    <form action="/rs" method="get">--%>
<%--        <h1>searchName</h1>--%>
<%--        <input type="hidden" name="action" value="searchName">--%>
<%--        <input type="number" name="findNam">--%>
<%--        <button type="submit" > search</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--<div class="dislay">--%>
<%--    <form action="/rs" method="get">--%>
<%--        <h1>searchPrice</h1>--%>
<%--        <input type="hidden" name="action" value="searchPrice">--%>
<%--        <input type="number" name="findNam">--%>
<%--        <button type="submit" > search</button>--%>
<%--    </form>--%>
<%--</div>--%>
<hr>
<table class="table table-success " id="c1">
    <thead>
    <tr>
        <th scope="col">Stt</th>
        <th scope="col">name</th>
        <th scope="col">price</th>
        <th scope="col">sl</th>
        <th scope="col">color</th>
        <th scope="col">catogory</th>
        <th scope="col">delete</th>
        <th scope="col">edit</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="produst" items="${produst}">
        <tr>
            <th scope="row">${produst.id}</th>
            <td>${produst.name}</td>
            <td>${produst.price}</td>
            <td>${produst.soluong}</td>
            <td>${produst.color}</td>
            <td>${produst.nameDanhMuc}</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal${produst.id}">
                    delete
                </button>
                <div class="modal fade" id="exampleModal${produst.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title text-danger" id="exampleModalLabel">THông Báo</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p class="alpha"> Bạn có muốn xóa ${produst.name} không</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>

                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal${produst.id}${produst.id}">
                                    Yes
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="exampleModal${produst.id}${produst.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title text-danger" id="exampleModalLabel1">THông báo</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body text-danger">
                                <p class="alpha"> BẠN ĐÃ XÓA THÀNH CÔNG ${produst.name} </p>
                            </div>
                            <div class="modal-footer">
                                <button onclick="window.location.href='/produst?action=delete&id=${produst.id}'"
                                        type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        >
                                    OK
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td>
                <button type="button" onclick="window.location.href='/produst?action=edit&id=${produst.id}'">Edit
                </button>
            </td>

        </tr>

    </c:forEach>
    </tbody>
</table>
<button type="button" onclick="window.location.href='/produst?action=create'" class="badge-light"><h3>Create</h3></button>

<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>

<script>
    $(document).ready(function () {
        $('#c1').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3 // sô row xuât hiện
        });
    });
</script>
<script type="text/javascript">
    var Msg ='<%=request.getAttribute("tb")%>';
    if (Msg != "null") {
        document.getElementById("#c4").innerHTML=alert("bạn tạo mới thành công")
    }
</script>

</body>
</html>
