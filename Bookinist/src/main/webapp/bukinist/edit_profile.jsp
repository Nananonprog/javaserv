<%@ page import="com.dao.SpecialistDao" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.entity.Specialist" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 03.10.2024
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<h2>Редактирование профиля</h2>
<c:if test="${not empty errorMsg}">
    <p class="center text-danger">${errorMsg}</p>
    <c:remove var="errorMsg" scope="session"/>
</c:if>
<c:if test="${not empty succMsg}">
    <p class="center text-success">${succMsg}</p>
    <c:remove var="succMsg" scope="session" />
</c:if>
<section class="wrap">
<div class="row">
    <div class="col-md-4">
        <div class="card point-card">
            <div class="card-body">
                <form action="../bukChangePassword" method="post">
                    <div>
                        <label for="old">Введите старый пароль:</label>
                        <input type="password" name="oldPassword" class="form-control" id="old" required>
                    </div>
                    <div>
                        <label for="new">Введите новый пароль:</label>
                        <input type="password" name="newPassword" class="form-control" id="new" required>
                    </div>
                    <input type="hidden" name="rid" value="${bukObj.id}">
                    <button class="btn button">Изменить пароль</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="card point-card">
            <div class="card-body">
                <form action="../bukUpdateProfile" method="post">
                    <div class="mb-3">
                        <label for="full">Полное имя</label>
                        <input type="text" required name="full_name" class="form-control" id="full" value="${bukObj.fullName}">
                    </div>
                    <div class="mb-3">
                        <label for="dob">Дата рождения</label>
                        <input type="date" required name="dob" class="form-control" id="dob" value="${bukObj.dob}">
                    </div>
                    <div class="mb-3">
                        <label for="qualit">Должность</label>
                        <input type="text" required name="qualification" class="form-control" id="qualit" value="${bukObj.qualification}">
                    </div>
                    <div class="mb-3">
                        <label for="special">Специалист</label>
                        <select  name="spec" required class="form-control" id="special" >
                            <option value="">${bukObj.specialist}</option>
                                                            <%
                                                                SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
                                                                List<Specialist> list = dao.getAllSpecialist();
                                                                for (Specialist s : list) {
                                                            %>
                                                            <option><%= s.getSpecialistName() %></option>

                                                            <%

                                                                }
                                                            %>

                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="email">Email:</label>
                        <input type="email" required name="email" class="form-control" id="email" value="${bukObj.email}" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="tel">Телефон</label>
                        <input type="text" required name="mobno" class="form-control" id="tel" value="${bukObj.mobno}">
                    </div>
                    <input type="hidden" name="id" value="${bukObj.id}">

                    <button class="btn button">Обновить</button>
                </form>
            </div>
        </div>
    </div>

</div>

</section>
</body>
</html>
