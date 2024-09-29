<%@ page import="com.dao.BukinistDao" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.entity.Bukinist" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 29.09.2024
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="component/allcss.jsp"/>

</head>
<body>
<jsp:include page="component/navbar.jsp"/>

<div class="appointment">
    <div class="wrap">
        <h2>Панель записи</h2>
        <c:if test="${not empty errorMsg}">
            <p class="center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty succMsg}">
            <p class="center text-success">${succMsg}</p>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
        <form action="addAppointment" method="post" class="row g-3">

            <input type="hidden" name="readerid" value="${readerObj.id}">

            <div class="col-md-6">
                <label for="fio" class="form-label">ФИО:</label>
                <input type="text" name="fullname" class="form-control" id="fio" required>
            </div>
            <div class="col-md-6" >
                <label for="gender" class="form-label">Пол:</label>
                <select name="gender" class="form-control" id="gender" required>
                    <option value="male">Мужской</option>
                    <option value="female">Женский</option>
                </select>
            </div>
            <div class="col-md-6">
                <label for="age" class="form-label">Возраст:</label>
                <input type="number" name="age" class="form-control" id="age" required>
            </div>
            <div class="col-md-6">
                <label for="date" class="form-label">Дата консультации:</label>
                <input type="date" name="appoint_date" class="form-control" id="date" required>
            </div>
            <div class="col-md-6">
                <label for="email" class="form-label">Email:</label>
                <input type="email" name="email" class="form-control" id="email" required>
            </div>
            <div class="col-md-6">
                <label for="tel" class="form-label">Телефон:</label>
                <input type="text" name="number" class="form-control" id="tel" required>
            </div>
            <div class="col-md-6">
                <label for="lect" class="form-label">Причина записи:</label>
                <input type="text" name="lect" class="form-control" id="lect" required>
            </div>
            <div class="col-md-6">
            <label for="bukinist" class="form-label">Букинист:</label>
            <select name="buk" class="form-control" id="bukinist" required>
                <option value="">-- Выбор специалиста --</option>
                <%
                    BukinistDao dao = new BukinistDao(DBConnect.getConn());
                    List<Bukinist> list = dao.getAllBukinists();
                    for(Bukinist buk : list) {%>

                <option value="<%= buk.getId() %>"><%= buk.getFullName()%> (<%=buk.getSpecialist() %>)</option>

                <%

                }
                %>
            </select>
            </div>
            <div class="col-md-12">
                <label for="hobby" class="form-label">Интересы в литературе и не только:</label>
                <textarea name="hobby" class="form-control" id="hobby" required></textarea>
            </div>

            <c:if test="${empty readerObj}">
                <a href="reader_login.jsp" class="btn btn-info">Отправить</a>
            </c:if>
            <c:if test="${not empty readerObj}">
                <button class="btn btn-info">Отправить</button>
            </c:if>



        </form>
    </div>
</div>

</body>
</html>
