<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 21.09.2024
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Signup Login Page</title>
    <jsp:include page="component/allcss.jsp"/>
</head>
<body>
<jsp:include page="component/navbar.jsp"/>

<div class="height">
    <section class="form">
        <h2>Регистрация читателя</h2>
        <c:if test="${not empty sucMsg}">
            <p class="center text-success">${sucMsg}</p>
            <c:remove var="sucMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty errorMsg}">
            <p class="center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
        </c:if>

        <form action="reader_register" method="post">
            <div>
                <label for="fio">ФИО:</label>
                <input type="text" name="fullname" class="form-control" id="fio" required>
            </div>
            <div>
                <label for="email-address">Email:</label>
                <input type="email" name="email" class="form-control" id="email-address" required>
            </div>
            <div>
                <label for="psw">Пароль:</label>
                <input type="password" name="password" class="form-control" id="psw" required>
            </div>

            <button class="btn button">Регистрация</button>

        </form>
    </section>
</div>
<jsp:include page="component/footer.jsp"/>

</body>
</html>
