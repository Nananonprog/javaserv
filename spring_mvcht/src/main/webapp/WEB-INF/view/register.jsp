<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 12.10.2024
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Регистрация игрока</h1>
<p>${msg}</p>

<form action="createUser" method="post">
    <p>
        <label for="fio">Никнейм:</label>
        <input type="text" name="fullName" id="fio">
    </p>

    <p>
        <label for="team">Название игровой команды:</label>
        <input type="text" name="team" id="team">
    </p>
    <p>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email">
    </p>
    <p>
        <label for="password">Пароль:</label>
        <input type="password" name="password" id="password">
    </p>
    <p> Вам есть 18 лет? <br>
    <input type="radio" name="check" id="yes" value="yes">
    <label for="yes">Да</label> <br>
    <input type="radio" name="check" id="no" value="no">
    <label for="no">Нет</label><br>
    </p>

    <p>
        <button>Регистрация</button>
    </p>
    

</form>

</body>
</html>
