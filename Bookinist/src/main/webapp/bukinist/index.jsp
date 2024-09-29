<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 28.09.2024
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../component/allcss.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>

<c:if test="${empty bukObj}">
    <c:redirect url="../buk_login.jsp"></c:redirect>
</c:if>
<section class="bukinist">
    <div class="wrap">
        <h2>Панель букиниста</h2>
        <div class="bukinist__block">
            <div class="bukinist__element">
                <h5>Сотрудник</h5>
                <h4>5</h4>
            </div>
            <div class="bukinist__element">
                <h5>Запись</h5>
                <h4>12</h4>
            </div>
        </div>
    </div>
</section>
</body>
</html>
