<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 22.09.2024
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Панель хозяина лавки</title>
    <jsp:include page="../component/allcss.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>

<c:if test="${empty adminObj}">
    <c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>

<section class="admin">
    <div class="wrap">
        <h2>Панель администратора</h2>
        <c:if test="${not empty errorMsg}">
            <p class="center text-danger fs-3">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
        </c:if>
        <c:if test="${not empty succMsg}">
            <p class="center text-success fs-3">${succMsg}</p>
            <c:remove var="succMsg" scope="session" />
        </c:if>
        <div class="admin__block">
            <div class="admin__element">
                <img src="../img/book.png" alt="">
                <p>Лекции</p>
            </div>
            <div class="admin__element">
                <img src="../img/reading.png" alt="">
                <p>Читатели</p>
            </div>
            <div class="admin__element" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <img src="../img/w_1.png" alt="">
                <p>Сотрудники</p>
            </div>
        </div>
    </div>
    <!-- Button trigger modal -->
<%--    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">--%>
<%--        Launch demo modal--%>
<%--    </button>--%>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Добавить букиниста</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="../addSpecialist" method="post">
                        <div class="form-group">
                            <label for="spec">Введите имя специалиста</label>
                            <input type="text" name="specName" class="form-control" id="spec">
                        </div>
                        <div class="text-center mt-3">
                            <button class="btn btn-info">Добавить</button>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
