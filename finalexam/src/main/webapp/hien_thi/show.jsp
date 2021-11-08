<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/11/2021
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="/assert/css/base.css">
    <link rel="stylesheet" href="/assert/css/style.css">
</head>
<body>
<div class="align-content-lg-center text-center text-danger">
    <h1>DANH SÁCH BÊNH ÁN</h1>
</div>
<hr>
<table class="table table-success " id="tableStudent">
    <thead>
    <tr>
        <th scope="col">STT</th>
        <th scope="col">MÃ BỆNH ÁN</th>
        <th scope="col">MÃ BỆNH NHÂN</th>
        <th scope="col">TÊN BỆNH NHÂN</th>
        <th scope="col">NGÀY NHẬP VIỆN</th>
        <th scope="col">NGÀY RA VIỆN</th>
        <th scope="col">LÝ DO</th>
        <th scope="col">delete</th>
        <th scope="col">edit</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="benhnhan" items="${benhnhan}" varStatus="loop">
        <tr>
            <th scope="row">${loop.count}</th>
            <td>${benhnhan.idBenhAn}</td>
            <td>${benhnhan.idBenhNhan}</td>
            <td>${benhnhan.nameBenhNhan}</td>
            <td>${benhnhan.ngayNhapVien}</td>
            <td>${benhnhan.ngayRaVien}</td>
            <td>${benhnhan.lyDo}</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal${benhnhan.idBenhNhan}">
                    delete
                </button>
                <div class="modal fade" id="exampleModal${benhnhan.idBenhNhan}" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title text-danger" id="exampleModalLabel">THông Báo</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p class="alpha"> Bạn có muốn xóa BA-${benhnhan.idBenhAn} không</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>

                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal${benhnhan.idBenhNhan}${benhnhan.idBenhNhan}">
                                    Yes
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="exampleModal${benhnhan.idBenhNhan}${benhnhan.idBenhNhan}" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title text-danger" id="exampleModalLabel1">THông báo</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body text-danger">
                                <p class="alpha"> BẠN ĐÃ XÓA THÀNH CÔNG BA-${benhnhan.idBenhAn}} </p>
                            </div>
                            <div class="modal-footer">
                                <button onclick="window.location.href='/sanpham?action=delete&id=${benhnhan.idBenhNhan}'"
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
                <button type="button" onclick="window.location.href='/sanpham?action=edit&id=${benhnhan.idBenhNhan}'">Edit
                </button>
            </td>

        </tr>

    </c:forEach>
    </tbody>
</table>

<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
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

