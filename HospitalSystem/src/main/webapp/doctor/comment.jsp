<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.entity.Appointment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 30.09.2024
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../component/allcss.jsp"/>
</head>
<body>
<c:if test="${empty doctorObj}">
    <c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<jsp:include page="navbar.jsp"/>
<div class="comment">
    <div class="wrap">
        <h2>Комментарий пациенту</h2>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
            Appointment ap =  dao.getAppointmentById(id);
        %>
        <form action="../updateStatus" method="post" class="row">
            <div class="col-md-6">
                <label for="name">Имя пациента</label>
                <input type="text" readonly class="form-control" id="name" value="<%=ap.getFullName()%>">
            </div>
            <div class="col-md-6">
                <label for="age">Возраст</label>
                <input type="text" readonly class="form-control" id="age" value="<%=ap.getAge()%>">

            </div>
            <div class="col-md-6">
                <label for="phone">Телефон</label>
                <input type="text" readonly class="form-control" id="phone" value="<%=ap.getPhone()%>">
            </div>
            <div class="col-md-6">
                <label for="diseases">Назначение</label>
                <input type="text" readonly class="form-control" id="diseases" value="<%=ap.getDiseases()%>">
            </div>
            <div class="col-md-12">
                <label for="comment">Комментарий</label>
                <textarea name="comm" required class="form-control" id="comment"></textarea>
            </div>
            <input type="hidden" name="id" value="<%=ap.getId()%>">
            <input type="hidden" name="did" value="<%=ap.getDoctorId()%>">
            <div>
                <button class="btn but">Отправить</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
