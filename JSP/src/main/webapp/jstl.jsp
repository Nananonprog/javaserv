<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 11.09.2024
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p><c:out value="${'<b>Пример</b>'}" escapeXml="true" /> </p>
<p><c:out value="${'<b>Пример</b>'}" escapeXml="false" /> </p>

<p>
    Предпочитаемый язык: <c:out value="${param.lang}"/>
</p>

<p>
    <a href="<c:out value="${pageContext.request.requestURI}"/>?lang=Русский">Выбрать</a>
</p>

<c:set var="name" scope="application" value="Виктор Макаров"/>
<a href="display.jsp">Показать пользователя</a>
<p>Перед удалением переменной: <c:out value="${name}"/> </p>
<c:remove var="name"/>
<p>После удаления переменной: <c:out value="${name}"/> </p>

<c:set var="age" value="25" />
<c:if test="${age >=18}">
    <c:out value="Добро пожаловать на сайт" />
</c:if>
</body>
</html>
