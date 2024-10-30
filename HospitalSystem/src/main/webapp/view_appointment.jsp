<%@ page import="com.entity.User" %>
<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.dao.DoctorDao" %>
<%@ page import="com.entity.Appointment" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Doctor" %><%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 25.09.2024
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="component/allcss.jsp"/>
</head>
<body>
<jsp:include page="component/navbar.jsp"/>
<c:if test="${empty userObj}">
    <c:redirect url="user_login.jsp"></c:redirect>
</c:if>
<div class="appointment">
    <div class="wrap">
        <h2>Просмотр назначения</h2>

        <table class="table">
            <tr>
                <th scope="col">ФИО</th>
                <th scope="col">Пол</th>
                <th scope="col">Возраст</th>
                <th scope="col">Дата назначения</th>
                <th scope="col">Диагноз</th>
                <th scope="col">Имя врача</th>
                <th scope="col">Статус</th>
            </tr>
            <%
                User user = (User) session.getAttribute("userObj");
                AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                List<Appointment> list = dao.getAllAppointmentsByLoginUser(user.getId());
                for (Appointment appointment : list) {
                    Doctor d = dao2.getDoctorsById(appointment.getDoctorId());
            %>
            <tr>
                <td><%= appointment.getFullName() %></td>
                <td><%= appointment.getGender() %></td>
                <td><%= appointment.getAge() %></td>
                <td><%= appointment.getAppointDate() %></td>
                <td><%= appointment.getDiseases() %></td>
                <td><%= d.getFullName() %></td>
                <td>
                    <% if ("В ожидании".equals(appointment.getStatus())) {
                    %>
                    <a href="#" class="btn btn-info">В ожидании</a>
                    <%
                    } else {%>
                    <%= appointment.getStatus() %>
                    <% }%>

                </td>
            </tr>
            <%
                }
            %>

        </table>
    </div>
</div>
</body>
</html>