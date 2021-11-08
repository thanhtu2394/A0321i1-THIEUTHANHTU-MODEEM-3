<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/11/2021
  Time: 4:17 PM
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
<div class="align-content-lg-center text-center text-danger">
    <h1>THÊM MỚI SẢN PHẨM</h1>
</div>
<div class="container align-content-lg-center">
    <form action="/produst" method="post">
        <input type="hidden" name="action" value="create">
        <input type="hidden" name="thongbao" value=" ban them moi thanh cong">
        <div class="mb-3">
            <label for="disabledTextInput" class="form-label">tên sản phẩm</label>
            <input type="text" id="disabledTextInput" class="form-control" placeholder="tên sản phẩm" name="name" required>
        </div>
        <div class="mb-3">
            <label for="disabledTextInput1" class="form-label">giá</label>
            <input type="number" id="disabledTextInput1" class="form-control" placeholder="giá" name="gia" required min="10000000">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput2" class="form-label" >sô lương</label>
            <input type="number" id="disabledTextInput2" class="form-control" placeholder="sô lương" name="sl" required min="0">
        </div>
        <div class="mb-3">
            <label for="disabledTextInput3" class="form-label">màu</label>
            <select class="form-select" size="3" aria-label="size 3 select example" id="disabledTextInput3" name="color">
                <option selected>Open this select menu</option>
                <option value="xanh">xanh</option>
                <option value="do">do</option>
                <option value="tim">tim</option>
                <option value="vang">vang</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="disabledTextInput4" class="form-label">danh mục</label>
            <select class="form-select" size="3" aria-label="size 3 select example" id="disabledTextInput4" name="danhmuc">
                <option selected>Open this select menu</option>
                <option value="1">phone</option>
                <option value="2">tivi</option>
                <option value="3">lạnh</option>
                <option value="4">máy</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>


</body>
</html>
