<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 07.01.2025
  Time: 10:31
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
            font-size: 1.5em;
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
            max-width: 50%;
            max-height: 50%;
        }
    </style>

</head>
<body>
<div class="slideshow-container">

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="textglav">
                <h4>Модули</h4>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Встроенные модули</h2>
                <p> Модуль – это блок готового кода, который решает типовую задачу. Включив в программу модули, ты сможешь сосредоточиться на более интересных задачах. К тому же модулями пользуется много людей, и потому баги в них встречаются редко.</p>
                <p> В комплекте с Python идет множество модулей. Все вместе они называются стандартной библиотекой. Вот несколько любопытных модулей, которые могут тебе пригодиться.</p>
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
                <div class="headertype4">statistics</div>
                <div class="texttype4">
                    Модуль statistics («статистика») поможет найти среднее значение или выяснить, какое число чаще всего встречается в списке. С его помощью можно, например, узнать средний балл среди игроков.
                </div>
                <div class="image-containertype4">
                    <img class="image" src="../img/слайд64_1.png" alt="Первая картинка">
                </div>
            </div>
            <div class="columntype4">
                <div class="headertype4">random</div>
                <div class="texttype4">
                    Этот модуль хорош, если в код нужно добавить элемент случайности.
                </div>
                <div class="image-containertype4">
                    <br> <br>
                    <img class="image" src="../img/слайд64_2.png" alt="Вторая картинка">
                </div>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="contenttype4">
            <div class="columntype4">
                <div class="headertype4">socket</div>
                <div class="texttype4">
                    Модуль socket («разъем») позволяет программам общаться по сети или через интернет. Его можно использовать при создании онлайн-игры.
                </div>
                <div class="image-containertype4">
                    <img class="image" src="../img/слайд65_1.png" alt="Первая картинка">
                </div>
            </div>
            <div class="columntype4">
                <div class="headertype4">webbrowser</div>
                <div class="texttype4">
                    Этот модуль позволяет управлять веб-браузером, открывая интернет-страницы прямо из твоего кода.
                </div>
                <div class="image-containertype4">
                    <br> <br>
                    <img class="image" src="../img/слайд65_2.png" alt="Вторая картинка">
                </div>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype3">
            <div class="text-containertype3">
                <div class="headertype3">datetime</div>
                <div class="texttype3">
                    Модуль datetime («дата-время») предназначен для работы с датами. С его помощью ты сможешь узнать сегодняшнюю дату и выяснить, сколько дней осталось ждать какого-то события.
                </div>
                <img class="imagetype3" src="../img/слайд66_1.png" alt="Вторая картинка">
            </div>
            <div class="images-containertype3">
                <img class="image" src="../img/слайд66_2.png" alt="Первая картинка">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Использование модуля</h2>
                <p> Для начала модуль нужно загрузить в программу с помощью команды import. Сделать это можно разными способами, в зависимости от того, как именно ты хочешь его использовать.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд23.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype2">
            <div class="headertype2">import...</div>
            <div class="texttype2">
                Ключевое слово import открывает доступ ко всему содержимому модуля, однако название модуля придется писать перед вызовом каждой принадлежащей ему функции. Этот код загружает все функции модуля webbrowser и открывает сайт Google Colab с помощью функции open() («открыть»).
            </div>
            <img class="imagetype2" src="../img/слайд68.png" alt="PYTHON картинка">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype2">
            <div class="headertype2">from... import...</div>
            <div class="texttype2">
                Если тебе нужна лишь часть модуля, ключевое слово from («из») позволит загрузить только ее. При этом названия функций можно вводить как обычно.
                Вот пример загрузки из модуля random функции choice(), которая выбирает случайный элемент из списка.
            </div>
            <img class="imagetype2" src="../img/слайд69.png" alt="PYTHON картинка">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> from... import... as...</h4>
                <p> Иногда нужно изменить имя загружаемого модуля или функции – например, потому что такое имя уже существует или оно плохо запоминается. Для этого служит ключевое слово as («как»). После него нужно написать новое имя. Вот пример, в котором функция time() («время»), возвращающая текущее время,
                    загружается под именем time_now() («текущее время»). Результат работы программы – количество секунд, прошедших с 1 января 1970 года (даты, от которой ведет отсчет времени большинство компьютеров).
                </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд70.png" alt="Пример кода">
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
