<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/10/2021
  Time: 8:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${sum12==5}">alo</c:if>
<p>alo xing cuoc son dep xinh</p>
<span>mia</span>
<span><%=request.getAttribute("sum12")%></span>

</body>
</html>
