<%@ page import="com.entity.Doctor" %>
<%@ page import="com.dao.DoctorDao" %>
<%@ page import="com.db.DBConnect" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../component/allcss.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp" />

<c:if test="${empty doctorObj}">
    <c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>

<section class="doctor">
    <div class="wrap">
        <h2>Панель врача</h2>
        <%
            Doctor d = (Doctor) session.getAttribute("doctorObj");
            DoctorDao dao = new DoctorDao(DBConnect.getConn());
        %>
        <div class="doctor__block">
            <div class="doctor__element">
                <h3>Врач</h3>
                <h4><%=dao.countDoctor()%></h4>
            </div>
            <div class="doctor__element">
                <h3>Назначение</h3>
                <h4><%=dao.countAppointmentDoctorId(d.getId())%></h4>
            </div>
        </div>
    </div>
</section>
</body>
</html>