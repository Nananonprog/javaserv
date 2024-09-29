<%@ page import="com.entity.Bukinist" %>
<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="com.db.DBConnect" %>
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
<c:if test="${empty bukObj}">
    <c:redirect url="../buk_login.jsp"></c:redirect>
</c:if>
<jsp:include page="navbar.jsp"/>
<div class="bukinist">
    <div class="wrap">
        <h2>Просмотр записи</h2>
        <c:if test="${not empty errorMsg}">
            <p class="center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty succMsg}">
            <p class="center text-success">${succMsg}</p>
            <c:remove var="succMsg" scope="session"/>
        </c:if>

        <table class="table">
            <tr>
                <th scope="col">ФИО</th>
                <th scope="col">Пол</th>
                <th scope="col">Возраст</th>
                <th scope="col">Дата записи</th>
                <th scope="col">Email</th>
                <th scope="col">Телефон</th>
                <th scope="col">Причина записи</th>
                <th scope="col">Статус</th>
                <th scope="col">Действие</th>
            </tr>
            <%
                Bukinist buk = (Bukinist) session.getAttribute("bukObj");
                AppointmentDAO dao =  new AppointmentDAO(DBConnect.getConn());
                List<Appointment> list = dao.getAllAppointmentsByBukinistLogin(buk.getId());
                for(Appointment app : list){
            %>
            <tr>
                <td><%=app.getFullName()%></td>
                <td><%=app.getGender()%></td>
                <td><%=app.getAge()%></td>
                <td><%=app.getAppointDate()%></td>
                <td><%=app.getEmail()%></td>
                <td><%=app.getPhone()%></td>
                <td><%=app.getLect()%></td>
                <td><%=app.getStatus()%></td>
                <td>
                    <a href="comment.jsp?id=<%=app.getId() %>" class="btn btn-sm btn-info">Комментарий</a>
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
