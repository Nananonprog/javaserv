<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 21.09.2024
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Reader Login Page</title>
    <jsp:include page="component/allcss.jsp"/>
</head>
<body>
<jsp:include page="component/navbar.jsp"/>

<div class="height">
    <section class="form">
        <h2>Авторизация читателя</h2>
        <c:if test="${not empty errorMsg}">
            <p class="center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty succMsg}">
            <p class="center text-success">${succMsg}</p>
            <c:remove var="succMsg" scope="session" />
        </c:if>
        <form action="readerLogin" method="post">
            <div>
                <label for="email-address">Email:</label>
                <input type="email" name="email" class="form-control" id="email-address" required>
            </div>
            <div>
                <label for="psw">Пароль:</label>
                <input type="password" name="password" class="form-control" id="psw" required>
            </div>

            <button class="btn button">Авторизация</button>
            <p class="center">Первый раз у нас? <a href="signup.jsp" class="text-decoration-none">Создать аккаунт</a></p>
        </form>
    </section>
</div>
<jsp:include page="component/footer.jsp"/>

</body>
</html>