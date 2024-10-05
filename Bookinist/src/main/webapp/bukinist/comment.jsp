<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.entity.Appointment" %><%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 02.10.2024
  Time: 5:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="bukinist">
    <div class="wrap">
        <h2>Комментарий читателю</h2>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
            Appointment ap = dao.getAppointmentsById(id);
        %>
        <form action="../updateStatus" method="post" class="row">
            <div class="col-md-6">
                <label for="name">Имя читателя</label>
                <input type="text" readonly class="form-control" id="name" value="<%= ap.getFullName()%>">
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
                <label for="lect">Причина записи</label>
                <input type="text" readonly class="form-control" id="lect" value="<%=ap.getLect()%>">
            </div>
            <div class="col-md-12">
                <label for="comment">Комментарий</label>
                <textarea name="comm" required class="form-control" id="comment"></textarea>
            </div>

            <input type="hidden" name="id" value="<%=ap.getId()%>">
            <input type="hidden" name="bid" value="<%= ap.getBukinistId()%>">

            <div>
                <button class="btn but">Отправить</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
