<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 07.01.2025
  Time: 10:13
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
            font-size: 20px;
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
            margin-left: 10px;
        }
        .texttype1 h2 {
            color: #30466b;
            font-size: 30px;
            margin: 0;
            text-align: left;
        }
        .texttype1 h4 {
            color: #ff5f81;
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
        .text-section {
            max-width: 45%;
        }
        .text-section h2 {
            font-weight: bold;
            font-size: 24px;
        }
        .text-section p {
            margin: 10px 0;
            font-size: 18px;
            text-align: left;
            margin-right: 60px;
        }
        .image-section {
            max-width: 30%;
            max-height: 30%;
            border: 2px solid #30466b;
            padding: 5px;
            box-sizing: border-box;
        }
        .image-section img {
            display: block;
            margin: 0 auto 10px auto;
            width: 90px;
        }
        .image-section p {
            text-align: center;
            margin: 0;
            font-size: 18px;
        }

        .card {
            border: 6px solid #31c0c9;
            background-color: white;
            max-width: 400px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-left: 10px;
        }

        .header {
            background-color: #31c0c9;
            color: white;
            padding: 5px;
            font-weight: bold;
            font-size: 1em;
            text-align: left;
            margin-bottom: 10px;
            border-radius: 5px;
        }

        .sub-header {
            color: #31c0c9;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: left;
        }

        .content {
            color: black;
            font-size: 0.8em;
            text-align: left
        }

        .image-section2 img {
            width: 200px;
            margin-left: 100px;
        }
        .card2 {
            border: 6px solid #ff4081;
            background-color: white;
            max-width: 500px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .header2 {
            background-color: #ff4081;
            color: white;
            padding: 10px;
            font-weight: bold;
            font-size: 1.2em;
            text-align: left;
            margin-bottom: 10px;
            border-radius: 5px;
        }
        .sub-header2 {
            color: #ff4081;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: left;
        }
        .content2 {
            color: black;
            font-size: 0.8em;
            text-align: left
        }
        .containertype2 {
            max-width: 600px;
            padding: 20px;
            text-align: left;
        }

        .headertype2 {
            color: #ff4081;
            font-weight: bold;
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .texttype2 {
            color: #333;
            font-size: 1em;
            margin-bottom: 20px;
            font-size: 18px;
        }

        .imagetype2 {
            max-width: 100%;
            height: auto;
        }
        .containertype3 {
            max-width: 800px;
            padding: 20px;
            display: flex;
        }

        .text-containertype3 {
            flex: 1;
            margin-right: 20px;
        }

        .headertype3 {
            color: #ff4081;
            font-weight: bold;
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .texttype3 {
            color: #333;
            font-size: 1em;
            margin-bottom: 10px;
            font-size: 18px;
        }

        .images-containertype3 {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            max-width: 300px;
            max-height: 200px;
        }

        .imagetype3 {
            width: 100%;
            max-width: 300px;
            height: auto;
            margin-bottom: 10px;
        }
        .contenttype4 {
            display: flex;
            gap: 40px;
        }

        .columntype4 {
            max-width: 400px;
        }

        .headertype4 {
            color: #30466b;
            font-weight: bold;
            font-size: 1.5em;
            margin-bottom: 20px;
        }

        .texttype4 {
            color: #333;
            font-size: 1em;
            margin-bottom: 20px;
        }

        .imagetype4 {
            width: 100%;
            height: auto;
        }

        .image-containertype4 {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>

</head>
<body>

<div class="slideshow-container">

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="textglav">
                <h4>Функции</h4>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Как пользоваться функцией </h2>
                <p> Вспомним, что функция – это выполняющий конкретную задачу код, который работает как программа в программе. Использование функции в коде называется вызовом.</p>
                <p> Чтобы вызвать функцию, надо ввести ее имя и поставить скобки, внутри которых поместить аргументы, необходимые для работы функции. Аргументы – это что-то вроде переменных, принадлежащих функции. Они позволяют передавать данные между разными частями кода.
                    Если у функции нет аргументов, скобки оставляют пустыми.
                </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд23.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype2">
            <div class="headertype2">Встроенные функции</div>
            <div class="texttype2">
                В Python есть встроенные функции для выполнения разных полезных задач: от ввода информации и вывода сообщений на экран до преобразования данных из одного типа в другой. Некоторыми встроенными функциями ты уже пользовался, например print() и str(), другими еще нет. Посмотри на эти примеры и попробуй ввести их в окне консоли.
            </div>
            <img class="imagetype2" src="../img/слайд56.png" alt="PYTHON картинка">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Противоположные функции input() и print()</h2>
                <p> Функция input() позволяет вводить данные с клавиатуры, а функция print() выводит результат работы кода на экран, например сообщение или результат математической операции.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд23.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="contenttype4">
            <div class="columntype4">
                <div class="headertype4">Функция max()</div>
                <div class="texttype4">
                    Функция max()</a> находит наибольшее число среди всех аргументов, которые ей передают, то есть указывают внутри скобок через запятую.
                </div>
                <div class="image-containertype4">
                    <img class="image" src="../img/слайд58_1.png" alt="Первая картинка">
                </div>
            </div>
            <div class="columntype4">
                <div class="headertype4">Функция min()</div>
                <div class="texttype4">
                    Функция min()</a> противоположна max()</a>. Она выбирает из аргументов в скобках наименьшее число. Поэкспериментируй с этими функциями самостоятельно.
                </div>
                <div class="image-containertype4">
                    <img class="image" src="../img/слайд58_2.png" alt="Вторая картинка">
                </div>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Другой способ вызова </h2>
                <p> У всех известных тебе типов данных – целых чисел, строк и списков – есть собственные функции. Чтобы их вызвать, нужно ввести сами данные или имя переменной, в которой они хранятся, через точку написать имя функции и поставить скобки. Попробуй набрать эти примеры в окне консоли.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд23.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> Функция upper()</h4>
                <p>Функция upper() («повысить») превращает все строчные буквы в имеющейся строке в прописные.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд60.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="contenttype4">
            <div class="columntype4">
                <div class="headertype4">Функция replace()</div>
                <div class="texttype4">
                    Заменяет слово «весело» на смайлик. Этой функции нужны два аргумента: текст, который ты хочешь заменить, и строка, которую надо поставить на его место. Функция возвращает новую строку.
                </div>
                <div class="image-containertype4">
                    <img class="image" src="../img/слайд61_1.png" alt="Первая картинка">
                </div>
            </div>
            <div class="columntype4">
                <div class="headertype4">Функция reverse()</div>
                <div class="texttype4">
                    Функцию изменяет порядок элементов в списке на обратный. Элементы списка countdown («обратный счет»), так что вместо [1,2,3] получается [3,2,1].
                </div>
                <div class="image-containertype4">
                    <img class="image" src="../img/слайд61_2.png" alt="Вторая картинка">
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
