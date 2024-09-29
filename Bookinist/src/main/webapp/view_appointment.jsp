<%@ page import="com.entity.Reader" %>
<%@ page import="com.entity.Bukinist" %>
<%@ page import="com.dao.AppointmentDAO" %>
<%@ page import="java.awt.image.DataBuffer" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.dao.BukinistDao" %>
<%@ page import="com.entity.Appointment" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 29.09.2024
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
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
        <h2>Просмотр записи</h2>

        <table class="table">
            <tr>
                <th scope="col">ФИО</th>
                <th scope="col">Пол</th>
                <th scope="col">Возраст</th>
                <th scope="col">Дата записи</th>
                <th scope="col">Причина записи</th>
                <th scope="col">Имя специалиста</th>
                <th scope="col">Статус</th>
            </tr>
            <%
                Reader reader = (Reader) session.getAttribute("readerObj");
                AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                BukinistDao dao2 = new BukinistDao(DBConnect.getConn());
                List<Appointment> list = dao.getAllAppointmentsByLoginUser(reader.getId());
                for(Appointment appointment : list) {
                    Bukinist b = dao2.getDoctorsById(appointment.getId()); %>

            <tr>
                <td><%=appointment.getFullName()%></td>
                <td><%=appointment.getGender()%></td>
                <td><%=appointment.getAge()%></td>
                <td><%=appointment.getAppointDate()%></td>
                <td><%=appointment.getLect()%></td>
                <td><%=b.getFullName()%></td>
                <td>
                    <%
                        if("В ожидании".equals(appointment.getStatus())){ %>
                    <a href="#" class="btn btn-info">В ожидании</a>
                    <%
                        }else { %>
                        <%= appointment.getStatus() %>
                    <%
                        }
                    %>
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
