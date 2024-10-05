<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 03.10.2024
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <jsp:include page="component/allcss.jsp"/>

</head>
<body>
<jsp:include page="component/navbar.jsp"/>

<c:if test="${empty readerObj}">
    <c:redirect url="reader_login.jsp"></c:redirect>
</c:if>

<div class="height">
    <section class="form">
        <h2>Изменение пароля</h2>
        <c:if test="${not empty errorMsg}">
            <p class="center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty succMsg}">
            <p class="center text-success">${succMsg}</p>
            <c:remove var="succMsg" scope="session" />
        </c:if>
        <form action="readerChangePassword" method="post">
            <div>
                <label for="old">Введите старый пароль:</label>
                <input type="password" name="oldPassword" class="form-control" id="old" required>
            </div>
            <div>
                <label for="new">Введите новый пароль:</label>
                <input type="password" name="newPassword" class="form-control" id="new" required>
            </div>
            <input type="hidden" name="rid" value="${readerObj.id}">
            <button class="btn button">Изменить пароль</button>
        </form>
    </section>
</div>
<jsp:include page="component/footer.jsp"/>

</body>
</html>
