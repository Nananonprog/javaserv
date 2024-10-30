<%@ page import="com.dao.SpecialistDao" %>
<%@ page import="com.entity.Specialist" %>
<%@ page import="java.util.List" %>
<%@ page import="com.db.DBConnect" %><%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 01.10.2024
  Time: 22:00
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
<jsp:include page="navbar.jsp" />

<c:if test="${empty doctorObj}">
    <c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<section class="wrap">
    <h2>Редактирование профиля</h2>
    <c:if test="${not empty errorMsg}">
        <p class="center text-danger fs-3">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session" />
    </c:if>
    <c:if test="${not empty succMsg}">
        <p class="center text-danger fs-3">${succMsg}</p>
        <c:remove var="succMsg" scope="session" />
    </c:if>
    <div class="row">
        <div class="col-md-4">
            <div class="card point-card">
                <div class="card-body">
                    <form action="../doctChangePassword" method="post">
                        <div>
                            <label for="old">Введите старый пароль:</label>
                            <input type="password" name="oldPassword" class="form-control" id="old" required>
                        </div>
                        <div>
                            <label for="new">Введите новый пароль:</label>
                            <input type="password" name="newPassword" class="form-control" id="new" required>
                        </div>

                        <input type="hidden" name="did" value="${doctorObj.id}">

                        <button class="btn button">Изменить пароль</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card point-card">
                <div class="card-body">
                    <form action="../doctorUpdateProfile" method="post">
                        <div class="mb-3">
                            <label for="full">Полное имя</label>
                            <input type="text" required name="full_name" class="form-control" id="full" value="${doctorObj.fullName}">
                        </div>
                        <div class="mb-3">
                            <label for="dob">Дата рождения</label>
                            <input type="date" required name="dob" class="form-control" id="dob" value="${doctorObj.dob}">
                        </div>
                        <div class="mb-3">
                            <label for="qualit">Квалификация</label>
                            <input type="text" required name="qualification" class="form-control" id="qualit" value="${doctorObj.qualification}">
                        </div>
                        <div class="mb-3">
                            <label for="special">Специалист</label>
                            <select name="spec" required class="form-control" id="special">
                                <option value="">${doctorObj.specialist}</option>
                                                    <%
                                                        SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
                                                        List<Specialist> list = dao.getAllSpecialist();
                                                        for (Specialist s : list) {
                                                    %>
                                                    <option><%= s.getSpecialistName() %></option>
                                                    <%
                                                        }
                                                    %>

<%--                                                                    <%--%>
                                <%--                                        SpecialistDao dao = new SpecialistDao(DBConnect.getConn());--%>
                                <%--                                        List<Specialist> list = dao.getAllSpecialist();--%>
                                <%--                                        for (Specialist s : list) {--%>
                                <%--                                    %>--%>
                                <%--                                    <option><%= s.getSpecialistName() %>--%>
                                <%--                                    </option>--%>
                                <%--                                    &lt;%&ndash;                    <option><%= "Ренат" %></option>&ndash;%&gt;--%>
                                <%--                                    <%--%>
                                <%--                                        }--%>
                                <%--                                    %>--%>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="email">Email</label>
                            <input type="email" required name="email" class="form-control" id="email" value="${doctorObj.email}" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="tel">Телефон</label>
                            <input type="text" required name="mobno" class="form-control" id="tel" value="${doctorObj.mobNo}">
                        </div>
                        <input type="hidden" name="id" value="${doctorObj.id}">

                        <button class="btn btn-info">Обновить</button>
                    </form>
                </div>
            </div>
        </div>

        </div>
    </div>

</section>


</body>
</html>
