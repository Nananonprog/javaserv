<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Student Signup Page</title>
    <jsp:include page="component/allcss.jsp"/>
</head>
<body>
<jsp:include page="component/navbar.jsp"/>

<div class="height">
    <section class="form">
        <h2>Регистрация преподавателя</h2>
        <c:if test="${not empty suc1Msg}">
            <p class="center text-success fs-3">${suc1Msg}</p>
            <c:remove var="suc1Msg" scope="session"/>
        </c:if>
        <c:if test="${not empty error1Msg}">
            <p class="center text-danger fs-3">${error1Msg}</p>
            <c:remove var="error1Msg" scope="session"/>
        </c:if>
        <form action="teacher_register" method="post">
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
<jsp:include page="component/footer.jsp" />
</body>
</html>