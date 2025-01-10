<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 07.01.2025
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
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
        .slideshow-container {
            position: relative;
            width: 200%;
            height: 100vh;
            max-width: 1000px;
            max-height: 900px;
            background: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
        }
        .mySlides {
            display: none;
            padding: 40px;
            color: #000000;
            font-size: 30px;
        }
        img {
            width: 90%;
            border-radius: 8px;
        }
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }
        .next {
            right: 0;
            background-color: #364F6B;
        }
        .prev {
            left: 0;
            background-color: #364F6B;
        }
        .prev:hover, .next:hover {
            background-color: #364F6B;
        }
        .section {
            display: flex;
            align-items: flex-start;
            justify-content: center;
        }
        .textglav {
            flex: 1;
            padding-right: 20px;
            text-align: center;
        }
        .textglav h4 {
            font-size: 74px;
            font-weight: bold;
            color: #3C526A;
        }
        .texttype1 {
            flex: 1;
            padding-right: 20px;
        }
        .texttype1 h2 {
            color: #3C526A;
            font-size: 30px;
            margin: 0;
            text-align: left;
        }
        .texttype1 p {
            font-size: 20px;
            color: #000000;
            text-align: left;
            font-family: Arial;
        }
        .image-container {
            flex: 1;
            text-align: center;
        }
        .image-container img {
            max-width: 100%;
            height: auto;
        }
        .block-scheme {
            max-width: 45%;
            max-height: 50vh;
        }
        .block-scheme h2 {
            font-weight: normal;
            font-size: 20px;
            margin: 0;
            text-align: left;
            color: #000000;
        }
        .flow-chart {
            text-align: center;
            width: 150px;
            margin: 20px auto;
        }
        .oval, .rectangle {
            padding: 10px;
            color: white;
            margin: 10px 0;
            display: inline-block;
        }
        .oval {
            background-color: #4ebfb2;
            border-radius: 25px;
            width: 100px;
        }
        .rectangle {
            background-color: #ff5f81;
            width: 110px;
        }
        .arrow {
            display: block;
            margin: -10px 0;
        }
        .code-example {
            max-width: 45%;
        }
        .code-example h2 {
            font-weight: normal;
            font-size: 20px;
            margin: 0;
            text-align: left;
            color: #000000;
        }
        .code-box {
            border: 1px solid #ff5f81;
            padding: 10px;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .comment {
            font-size: 14px;
            color: gray;
        }
        .highlight {
            color: #ff5f81;
        }
    </style>


</head>
<body>
<div class="slideshow-container">

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="textglav">
                <h4>Первая программа</h4>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <h3> Создадим вместе программу, которая поздоровается с Айтишуриком! </h3>
        <div class="section">
            <div class="texttype1">
                <h2> Как же мы это сделаем?</h2>
                <p> Мы будем использовать команду «<b>print</b>», которая выводит данные на экран. В нашем случае это будет фраза «Привет, Айтишурик!».</p>
            </div>
            <div class="image-container">
                <img src="../img/слайд2.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="block-scheme">
                <h2>Для начала представим, как это будет выглядеть в виде блок-схемы.</h2>
                <div>
                    <img src="../img/слайд3 блок схема.png" width="40%" height="390vh">
                </div>
            </div>

            <div class="code-example">
                <h2>А теперь выполним этот код в Google <span class="highlight">Colab</span>!</h2>
                <div>
                    <br>
                    <br>
                    <img src="../img/слайд3 код.png" width="50%" height="50%">
                    </br>
                    </br>
                </div>
            </div>
        </div>
    </div>

    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>

<script>
    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function showSlides(n) {
        let i;
        const slides = document.getElementsByClassName("mySlides");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slides[slideIndex - 1].style.display = "block";
    }
</script>


</body>
</html>
