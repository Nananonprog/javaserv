<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 11.09.2024
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main">
    <div class="wrap">
        <ul class="menu">
            <li class="logo"><a href="index.jsp">Главная</a></li>


            <c:if test="${empty userObj}">
            <li><a href="admin_login.jsp">Администратор</a></li>
            <li><a href="doctor_login.jsp">Врач</a></li>
            <li><a href="user_appointment.jsp">Назначение</a></li>
            <li><a href="user_login.jsp">Пациент</a></li>
            </c:if>

            <c:if test="${not empty userObj}">
                <li><a href="user_appointment.jsp">Назначение</a></li>
                <li><a href="view_appointment.jsp">Просмотр назначения</a></li>
                <li>
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            ${userObj.name}
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="../change_password.jsp">Изменить пароль</a></li>
                            <li><a class="dropdown-item" href="../userLogout">Выход</a></li>
                        </ul>
                    </div>
                </li>

            </c:if>
        </ul>
    </div>
</div>
