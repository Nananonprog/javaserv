<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 09.10.2024
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Данные пользователя</h2>
<hr>
<ul>
    <li>ФИО: ${user.fullName}</li>
    <li>Email: ${user.email}</li>
    <li>Пароль: ${user.password}</li>
</ul>

</body>
</html>
