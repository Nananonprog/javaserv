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

</head>
<body>
<%--<div class="chapter_one">--%>
<%--<header class="dashboard-header">--%>
<%--    <h1>Введение</h1>--%>
<%--</header>--%>
<%--<nav id="dashboard-sidebar">--%>
<%--    <ul>--%>
<%--        <li>--%>
<%--            <span class="logo">Logo</span>--%>
<%--            <button id="toggle-btn">--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#EFEFEF"><path d="m313-480 155 156q11 11 11.5 27.5T468-268q-11 11-28 11t-28-11L228-452q-6-6-8.5-13t-2.5-15q0-8 2.5-15t8.5-13l184-184q11-11 27.5-11.5T468-692q11 11 11 28t-11 28L313-480Zm264 0 155 156q11 11 11.5 27.5T732-268q-11 11-28 11t-28-11L492-452q-6-6-8.5-13t-2.5-15q0-8 2.5-15t8.5-13l184-184q11-11 27.5-11.5T732-692q11 11 11 28t-11 28L577-480Z"/></svg>--%>

<%--            </button>--%>
<%--        </li>--%>
<%--        <li class="active">--%>
<%--            <a href="/index.jsp">--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#EFEFEF"><path d="M240-200h120v-200q0-17 11.5-28.5T400-440h160q17 0 28.5 11.5T600-400v200h120v-360L480-740 240-560v360Zm-80 0v-360q0-19 8.5-36t23.5-28l240-180q21-16 48-16t48 16l240 180q15 11 23.5 28t8.5 36v360q0 33-23.5 56.5T720-120H560q-17 0-28.5-11.5T520-160v-200h-80v200q0 17-11.5 28.5T400-120H240q-33 0-56.5-23.5T160-200Zm320-270Z"/></svg>--%>
<%--                <span>Главная</span>--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <button class="dropdown-btn">--%>
<%--            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#EFEFEF"><path d="M160-240q-17 0-28.5-11.5T120-280q0-17 11.5-28.5T160-320h440q17 0 28.5 11.5T640-280q0 17-11.5 28.5T600-240H160Zm596-68L612-452q-12-12-12-28t12-28l144-144q11-11 28-11t28 11q11 11 11 28t-11 28L696-480l116 116q11 11 11 28t-11 28q-11 11-28 11t-28-11ZM160-440q-17 0-28.5-11.5T120-480q0-17 11.5-28.5T160-520h320q17 0 28.5 11.5T520-480q0 17-11.5 28.5T480-440H160Zm0-200q-17 0-28.5-11.5T120-680q0-17 11.5-28.5T160-720h440q17 0 28.5 11.5T640-680q0 17-11.5 28.5T600-640H160Z"/></svg>--%>
<%--                <span>Содержание</span>--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#EFEFEF"><path d="M459-381 314-526q-3-3-4.5-6.5T308-540q0-8 5.5-14t14.5-6h304q9 0 14.5 6t5.5 14q0 2-6 14L501-381q-5 5-10 7t-11 2q-6 0-11-2t-10-7Z"/></svg>--%>
<%--            </button>--%>
<%--            <ul class="sub-menu">--%>
<%--                <div>--%>
<%--                <li><a href="#">Тема 1</a></li>--%>
<%--                <li><a href="#">Тема 2</a></li>--%>
<%--                </div>--%>
<%--            </ul>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <a href="#">--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#EFEFEF"><path d="M320-280h80q17 0 28.5-11.5T440-320v-80q0-17-11.5-28.5T400-440h-80q-17 0-28.5 11.5T280-400v80q0 17 11.5 28.5T320-280Zm240 0h80q17 0 28.5-11.5T680-320v-80q0-17-11.5-28.5T640-440h-80q-17 0-28.5 11.5T520-400v80q0 17 11.5 28.5T560-280ZM320-520h80q17 0 28.5-11.5T440-560v-80q0-17-11.5-28.5T400-680h-80q-17 0-28.5 11.5T280-640v80q0 17 11.5 28.5T320-520Zm240 0h80q17 0 28.5-11.5T680-560v-80q0-17-11.5-28.5T640-680h-80q-17 0-28.5 11.5T520-640v80q0 17 11.5 28.5T560-520ZM200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v560q0 33-23.5 56.5T760-120H200Zm0-80h560v-560H200v560Zm0-560v560-560Z"/></svg>--%>
<%--                <span>Дополнительные материалы</span>--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <a href="#">--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#EFEFEF"><path d="M160-160q-33 0-56.5-23.5T80-240v-480q0-33 23.5-56.5T160-800h640q33 0 56.5 23.5T880-720v480q0 33-23.5 56.5T800-160H160Zm0-80h640v-400H160v400Zm187-200-76-76q-12-12-11.5-28t12.5-28q12-11 28-11.5t28 11.5l104 104q12 12 12 28t-12 28L328-308q-11 11-27.5 11.5T272-308q-11-11-11-28t11-28l75-76Zm173 160q-17 0-28.5-11.5T480-320q0-17 11.5-28.5T520-360h160q17 0 28.5 11.5T720-320q0 17-11.5 28.5T680-280H520Z"/></svg>--%>
<%--                <span>Что-то ещё...</span>--%>
<%--            </a>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--</nav>--%>
<%--<main>--%>
<%--    <div class="dashboard-container">--%>
<%--        <h2>Тема 1</h2>--%>
<%--        <p>Программист — это... "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>--%>
<%--    </div>--%>
<%--    <div class="dashboard-container">--%>
<%--        <h2>Тема 2</h2>--%>
<%--        <p>Знакомьтесь, Python! "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>--%>
<%--    </div>--%>
<%--    <div class="dashboard-container">--%>
<%--        <h2>Тема 3</h2>--%>
<%--        <p>Разомнемся ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>--%>
<%--&lt;%&ndash;        тут хотела кинуть ссылку на Roblox видео&ndash;%&gt;--%>
<%--    </div>--%>

<%--</main>--%>
<div class="btn">
    <span class="fas fa-bars"></span>
</div>
<nav class="sidebar">
    <div class="text">Меню</div>
    <ul>
        <li><a href="#">Главная</a></li>
        <li>
            <a href="#" class="feat-btn">Содержание
            <span class="fas fa-caret-down first"></span>
            </a>
            <ul class="feat-show">
                <li><a href="#">Тема 1</a></li>
                <li><a href="#">Тема 2</a></li>
            </ul>
        </li>
        <li><a href="#">Дополнительно</a></li>
        <li><a href="#">Компилятор</a></li>
        <li><a href="#">Выход</a></li>
    </ul>
</nav>
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
