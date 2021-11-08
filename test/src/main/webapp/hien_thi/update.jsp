<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/11/2021
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class="container align-content-lg-center">
    <form action="/produst" method="post">
        <input type="hidden" name="action" value="edit">
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">id sản phẩm</label>
            <input type="text" id="disabledTextInput" value="${produst.id}" class="form-control" placeholder="tên sản phẩm" name="id" readonly>
        </div>
        <div class="mb-3">
            <label for="disabledTextInput7" class="form-label">tên sản phẩm</label>
            <input type="text" id="disabledTextInput7"  value="${produst.name}" class="form-control" placeholder="tên sản phẩm" name="name" required>
        </div>
        <div class="mb-3">
            <label for="disabledTextInput1" class="form-label">giá</label>
            <input type="number" id="disabledTextInput1" value="${produst.price}" class="form-control" placeholder="giá" name="gia" required min="10000000">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput2" class="form-label" >sô lương</label>
            <input type="number" id="disabledTextInput2" value="${produst.soluong}" class="form-control" placeholder="sô lương" name="sl" required min="0">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput3" class="form-label">màu</label>
            <select class="form-select" size="3" aria-label="size 3 select example" id="disabledTextInput3" name="color">
                <option value="xanh" ${produst.color=="xanh"?"selected":""}>xanh</option>
                <option value="do" ${produst.color=="do"?"selected":""}>do</option>
                <option value="tim" ${produst.color=="tim"?"selected":""}>tim</option>
                <option value="vang" ${produst.color=="vang"?"selected":""}>vang</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="disabledTextInput4" class="form-label">danh mục</label>
            <select class="form-select" size="3" aria-label="size 3 select example" id="disabledTextInput4" name="danhmuc">
                <option value="1" ${produst.idDanhMuc==1?"selected":""}>phone</option>
                <option value="2" ${produst.idDanhMuc==2?"selected":""}>tivi</option>
                <option value="3" ${produst.idDanhMuc==3?"selected":""}>lạnh</option>
                <option value="4" ${produst.idDanhMuc==4?"selected":""}>máy</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
