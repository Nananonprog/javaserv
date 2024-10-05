<%@ page import="com.reader.servlet.AppointmentServlet" %>
<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.entity.Bukinist" %>
<%@ page import="com.dao.BukinistDao" %>
<%@ page import="com.entity.Appointment" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../component/allcss.jsp"/>
</head>
<body>
<%--<c:if test="${empty bukObj}">--%>
<%--    <c:redirect url="../buk_login.jsp"></c:redirect>--%>
<%--</c:if>--%>
<%--<jsp:include page="navbar.jsp"/>--%>
<div class="bukinist">
    <div class="patient">
        <h2>Данные пациента</h2>
<%--        <c:if test="${not empty errorMsg}">--%>
<%--        <p class="center text-danger">${errorMsg}</p>--%>
<%--            <c:remove var="errorMsg" scope="session"/>--%>
<%--        </c:if>--%>
<%--        <c:if test="${not empty succMsg}">--%>
<%--        <p class="center text-success">${succMsg}</p>--%>
<%--            <c:remove var="succMsg" scope="session"/>--%>
<%--        </c:if>--%>

        <table class="table">
            <tr>
                <th scope="col">ФИО</th>
                <th scope="col">Пол</th>
                <th scope="col">Возраст</th>
                <th scope="col">Дата записи</th>
                <th scope="col">Email</th>
                <th scope="col">Телефон</th>
                <th scope="col">Причина записи</th>
                <th scope="col">Имя врача</th>
                <th scope="col">Хобби</th>
                <th scope="col">Статус</th>
            </tr>
            <%
                AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                BukinistDao dao2 = new BukinistDao(DBConnect.getConn());
                List<Appointment> list = dao.getAllAppointment();
                for(Appointment appointment : list){
                    Bukinist b = dao2.getDoctorsById(appointment.getBukinistId());
                    %>
            <tr>
                <td><%= appointment.getFullName()%></td>
                <td><%= appointment.getGender()%></td>
                <td><%= appointment.getAge()%></td>
                <td><%= appointment.getAppointDate()%></td>
                <td><%= appointment.getEmail()%></td>
                <td><%= appointment.getPhone()%></td>
                <td><%= appointment.getLect()%></td>
                <td><%= b.getFullName()%></td>
                <td><%= appointment.getHobby()%></td>
                <td><%= appointment.getStatus()%></td>
            </tr>
            <%
                }
            %>

        </table>
    </div>
</div>
</body>
</html>