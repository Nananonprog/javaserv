<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 28.10.2024
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programming course</title>
    <jsp:include page="/component/allcss.jsp"/>

</head>
<body>


<div class="programming">
<%--    <div class="wrap">--%>
<div class="container">
    <h1 class="heading">Курс</h1>
    <div class="box-container">
        <div class="box">
            <img src="/img/robot.png" alt="">
            <h3>Введение</h3>
            <p>Знакомство с понятием "программирование". Язык "Python".</p>
            <a href="chapter_one.jsp" class="btn">Клик</a>
        </div>
        <div class="box">
            <img src="/img/robot.png" alt="">
            <h3>Основы Python</h3>
            <p>Познай искусство программирования на базе "змеиного языка"</p>
            <a href="chapter_two.jsp" class="btn">Клик</a>
        </div>
        <div class="box">
            <img src="/img/robot.png" alt="">
            <h3>Игропрактика</h3>
            <p>Хочешь попробовать себя в роли разработчика ? Давай же начнем!</p>
            <a href="#" class="btn">Клик</a>
        </div>
    </div>
</div>
<%--</div>--%>
</div>
</body>
</html>
