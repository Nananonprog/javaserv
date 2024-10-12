<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 12.10.2024
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>Данные пользователя</h2>
    <hr>
<ul>
    <li>Никнейм: ${user.fullName}</li>
    <li>Команда: ${user.team}</li>
    <li>Email: ${user.email}</li>
    <li>Пароль: ${user.password}</li>
</ul>
</body>
</html>
