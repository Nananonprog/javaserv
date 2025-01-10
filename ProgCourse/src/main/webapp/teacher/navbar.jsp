<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main">
  <div class="wrap">
    <ul class="menu">
      <li class="logo"><a href="index.jsp">Главная</a></li>
      <c:if test="${empty teachObj}">
        <li><a href="#">О проекте</a></li>
        <li><a href="/teacher_login.jsp">Преподаватель</a></li>
        <li><a href="/student_login.jsp">Ученик</a></li>
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
      </c:if>

      <c:if test="${not empty teachObj}">
        <li><a href="programming/main.jsp">Программирование</a></li>
        <li><a href="#">Робототехника</a></li>
        <li><a href="#">Учебные материалы</a></li>
        <li><a href="#">Тесты</a></li>


        <li>
          <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
<%--                ${teachObj.full_name}--%>
              Лучший преподаватель
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="../teachLogout">Выход</a></li>
            </ul>
          </div>
        </li>
      </c:if>
    </ul>
  </div>
</div>
