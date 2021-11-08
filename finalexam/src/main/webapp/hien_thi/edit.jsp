<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/11/2021
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

</head>
<body>
<div class="align-content-lg-center text-center text-danger">
    <h1>SỬA THÔNG TIN BỆNH ÁN</h1>
</div>
<div class="container align-content-lg-center">
    <form action="/sanpham" method="post">
        <input type="hidden" name="action" value="edit">
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">MÃ BỆNH ÁN</label>
            <input type="number" id="disabledTextInput" value="${benhnhan.idBenhAn}" class="form-control"  name="idba" readonly>
        </div>
        <div class="mb-3">
            <label for="disabledTextInput7" class="form-label">MÃ BỆNH NHÂN</label>
            <input type="number" id="disabledTextInput7"  value="${benhnhan.idBenhNhan}" class="form-control"  name="idbn" readonly>
        </div>
        <div class="mb-3">
            <label for="disabledTextInput1" class="form-label">TÊN BỆNH NHÂN</label>
            <input type="text" id="disabledTextInput1" value="${benhnhan.nameBenhNhan}" class="form-control"  name="name" pattern="^[a-zA-Z]+$" >
        </div>
        <div class="mb-3">
            <label for="disabledTextInput2" class="form-label" >NGÀY NHẬP VIỆN</label>
            <input type="date" id="disabledTextInput2" value="${benhnhan.ngayNhapVien}" class="form-control"  name="ngaynhapvien" >
        </div>
        <div class="mb-3">
            <label for="disabledTextInput9" class="form-label" >NGÀY RA VIỆN</label>
            <input type="date" id="disabledTextInput9" value="${benhnhan.ngayRaVien}" class="form-control"  name="ngayravien" >
        </div>
        <div class="mb-3">
            <label for="disabledTextInput98" class="form-label" >LÝ DO</label>
                <input type="text" id="disabledTextInput98" value="${benhnhan.lyDo}" class="form-control"  name="lydo" >
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="submit" class="btn btn-primary" ONCLICK="window.location.href='/sanpham'">TRỞ VỀ TRANG CHỦ</button>
    </form>
</div>
</body>
<script>
    function con() {
        var a=confirm("bạn có muôn về trang chủ ")


    }
</script>
</html>

