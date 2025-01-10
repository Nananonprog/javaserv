<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 28.10.2024
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programming Course / Chapter One</title>
    <jsp:include page="/component/design.jsp"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .link {
            text-decoration: none;
            color: #f0f0f0;
        }
        .flex-container{

            margin-left: 300px;
            width: 100%;
            height: auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .flex-box{
            width: 200px;
            height: 200px;
            background: linear-gradient(#364F6B, #3FC1C9);
            color:white;
            font-size: 20px;
            text-align: center;
            line-height: 200px;
            border-radius: 20px;
            margin: 20px;
        }

    </style>

</head>
<body>

<div class="btn">
    <span class="fas fa-bars"></span>
</div>
<nav class="sidebar">
    <div class="text">Меню</div>
    <ul>
        <li><a href="../index.jsp">Главная</a></li>
        <li>
            <a href="#" class="feat-btn">Содержание
            <span class="fas fa-caret-down first"></span>
            </a>
            <ul class="feat-show">
                <li><a href="chapter_two.jsp">Тема 1</a></li>
                <li><a href="chapter_three.jsp">Тема 2</a></li>
                <li><a href="chapter_four.jsp">Тема 3</a></li>
                <li><a href="chapter_six.jsp">Тема 4</a></li>
                <li><a href="chapter_seven.jsp">Тема 5</a></li>
            </ul>
        </li>
        <li><a href="test.jsp">Тест</a></li>
        <li><a href="compiler.jsp">Компилятор</a></li>
        <li><a href="main.jsp">Выход</a></li>
    </ul>
</nav>

<div class="flex-container">
    <div class="flex-box"><a class="link" href="chapter_two.jsp">Переменные</a></div>
    <div class="flex-box"><a class="link" href="chapter_three.jsp">Циклы</a></div>
    <div class="flex-box"><a class="link" href="chapter_four.jsp">Функции</a></div>
    <div class="flex-box"><a class="link" href="chapter_five.jsp">Принятие решений</a></div>
    <div class="flex-box"><a class="link" href="chapter_six.jsp">Модули</a></div>
    <div class="flex-box"><a class="link" href="chapter_seven.jsp">Первая программа</a></div>

</div>

<script>
    $('.btn').click(function (){
        $(this).toggleClass("click");
        $('.sidebar').toggleClass("show");
    });
    $('.feat-btn').click(function (){
        $('nav ul.feat-show').toggleClass("show");
        $('nav ul.first').toggleClass("rotate");
    });
    $('nav ul li').click(function (){
       $(this).addClass("active").siblings().removeClass("active");
    });
</script>
</body>
</html>
