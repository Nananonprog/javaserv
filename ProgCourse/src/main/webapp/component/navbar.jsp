<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 15.10.2024
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main">
    <div class="wrap">
        <ul class="menu">
            <li class="logo"><a href="index.jsp">Главная</a></li>
            <li><a href="#">О проекте</a></li>
            <li><a href="#">Преподаватель</a></li>
            <li><a href="#">Ученик</a></li>

            <li>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Курсы
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Программирование</a></li>
                        <li><a class="dropdown-item" href="#">Робототехника</a></li>
                    </ul>
                </div>
            </li>

        </ul>
    </div>
