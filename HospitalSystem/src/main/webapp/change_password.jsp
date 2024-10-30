<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 01.10.2024
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>Title</title>
    <jsp:include page="component/allcss.jsp" />
</head>
<body>
<jsp:include page="component/navbar.jsp" />

<c:if test="${empty userObj}">
    <c:redirect url="user_login.jsp"></c:redirect>
</c:if>
<div class="height">
    <section class="form">
        <h2>Изменение пароля</h2>
        <c:if test="${not empty errorMsg}">
            <p class="center text-danger fs-3">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
        </c:if>
        <c:if test="${not empty succMsg}">
            <p class="center text-danger fs-3">${succMsg}</p>
            <c:remove var="succMsg" scope="session" />
        </c:if>

        <form action="userChangePassword" method="post">
            <div>
                <label for="old">Введите старый пароль:</label>
                <input type="password" name="oldPassword" class="form-control" id="old" required>
            </div>
            <div>
                <label for="new">Введите новый пароль:</label>
                <input type="password" name="newPassword" class="form-control" id="new" required>
            </div>

            <input type="hidden" name="uid" value="${userObj.id}">

            <button class="btn button">Изменить пароль</button>
        </form>
    </section>
</div>
<jsp:include page="component/footer.jsp" />
</body>
</html>
