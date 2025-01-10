<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 07.01.2025
  Time: 10:22
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
            color: #3C526A;
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
    </style>

</head>
<body>
<div class="slideshow-container">

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="textglav">
                <h4>Принятие решений</h4>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Вопросы и сравнения </h2>
                <br>
                <p> Каждый день ты принимаешь решения, исходя из ответов на вопросы. Например, таких: «На улице дождь?», «Я сделал уроки?», «Я похож на голубя?». Компьютер тоже решает, что делать дальше, на основе ответов на подобные вопросы </p>
                <p> Вопросы, которые задает себе компьютер, обычно подразумевают сравнение чего-то с чем-то. Например, больше ли одно число другого. Если это так, программа выполняет один блок кода, если нет – другой.</p>
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
                <h4> Булевы значения </h4>
                <p> На вопросы, которые задает компьютер, есть лишь два ответа: True («истина») и False («ложь»). Эти ответы называются булевыми значениями и всегда пишутся с прописной буквы. Булевы значения тоже можно хранить в переменных. </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд24.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Операторы значения </h2>
                <br>
                <p> Символы в табличке ниже используются для сравнения значений, – возможно, ты встречался с ними на уроках математики. Программисты называют их операторами сравнения. Также в коде можно использовать логические операторы and («и») и or («или»). </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд25.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="card">
            <div class="header">Советы от Айтишурика</div>
            <div class="sub-header">Знак «равно»</div>
            <div class="content">
                <p>В Python используется и одинарный знак «равно» (=), и двойной (==). Смысл у них разный. Одинарный знак позволяет присвоить переменной значение. Если ввести age = 10, то в переменной age сохранится значение 10. Двойной знак «равно» сравнивает два значения, как в этом примере.</p>
            </div>
        </div>
        <div class="image-section2">
            <img src="../img/слайд26.png" alt="Монстр">
        </div>
        <div class="image-section2">
            <img src="../img/it3.png" alt="Монстр">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> Коты и мячики </h4>
                <p> А теперь пример. Допустим, у тебя есть пять котов и три мячика. Выразим это с помощью переменных cats («коты») и balls («мячики»). Введи этот код в окне консоли. </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд27.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype3">
            <div class="text-containertype3">
                <div class="headertype3">Сравнения</div>
                <div class="texttype3">
                    Введи следующие строчки кода, чтобы сравнить значения двух переменных.
                    В конце каждой строки нажимай Enter, и Python сообщит, истинно это выражение (True) или ложно (False).
                </div>
                <img class="imagetype3" src="../img/слайд28_2.png" alt="Вторая картинка">
            </div>
            <div class="images-containertype3">
                <img class="image" src="../img/слайд28_1.png" alt="Первая картинка">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype3">
            <div class="text-containertype3">
                <div class="headertype3">Множественные сравнения</div>
                <div class="texttype3">
                    Операторы and и or позволяют объединять сравнения. При этом логическая операция and возвращает True,
                    только если оба сравнения возвращают True, а or — если True возвращает хотя бы одно из двух сравнений.
                </div>
                <img class="imagetype3" src="../img/слайд29_2.png" alt="Вторая картинка">
            </div>
            <div class="images-containertype3">
                <br> <br> <br>
                <img class="image" src="../img/слайд29_1.png" alt="Первая картинка">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <center>
            <div class="card2">
                <div class="header2">Обрати внимание!</div>
                <div class="sub-header2">Логические операции
                </div>
                <div class="content2">
                    <ul>
                        <li>Выражения, состоящие из переменных,
                            их значений и логических операторов,
                            всегда возвращают булево значение – True или False – и называются логическими операциями. Все наши операции с ананасами и зебрами – логические.</li>
                    </ul>
                </div>
            </div>
        </center>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Ветвление </h2>
                <br>
                <p> Компьютеру часто приходится решать, какую часть кода выполнять дальше: ведь большинство программ при разных условиях должны работать по-разному. Работа программы похожа на путешествие по дороге с развилками, когда от выбора направления зависит, в какое место ты попадешь. </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд25.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Условие </h2>
                <p> Условие – это логическая операция (сравнение, возвращающее True или False), которая помогает компьютеру выбрать дорогу, если он достиг развилки на пути выполнения кода. Ты каждый день решаешь, по какой дороге пойти, отвечая на вопрос «Сегодня выходной?». Если выходной, ты идешь в парк, а если нет, то в школу. В Python разные пути ведут к разным блокам кода. Блок может состоять из одной или нескольких команд, отделенных от остальной части кода отступами в 4 пробела. С помощью вопросов (условий) компьютер решает, какие блоки кода выполнять дальше.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд25.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype2">
            <div class="headertype2">Один путь </div>
            <div class="texttype2">
                Простейшее ветвление – это конструкция if («если»). У нее лишь один путь, и компьютер выберет его, если условие вернет True. Этот код спрашивает, холодно ли на улице. Если пользователь отвечает «да», программа советует надеть шапку. В любом другом случае (если условие возвращает False) сообщение «Не забудь надеть шапку» не появится на экране.
            </div>
            <img class="imagetype2" src="../img/слайд33.png" alt="PYTHON картинка">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype2">
            <div class="headertype2">Два пути</div>
            <div class="texttype2">
                Хочешь, чтобы программа выбрала один путь, если условие возвращает True, и другой, если False? Тогда нужна команда с двумя ветвлениями – конструкция if-else («если-иначе»). Этот код спрашивает, сделал ли ты домашнее задание. При ответе «да» компьютер разрешает поиграть в него, иначе говорит сделать домашнее задание. В каждом случае выводится свое сообщение
            </div>
            <img class="imagetype2" src="../img/слайд34.png" alt="PYTHON картинка">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype2">
            <div class="headertype2">Множество путей</div>
            <div class="texttype2">
                Когда нужно больше двух ветвлений, на помощь приходит конструкция elif (сокр. от else-if – «еще-если»). Этот код спрашивает, сколько у тебя денег: 100, 200 или 300 рублей. Затем он выбирает один из трех путей и выводит на экран подходящий совет.
            </div>
            <img class="imagetype2" src="../img/слайд35.png" alt="PYTHON картинка">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Как это работает? </h2>
                <p> Конструкция elif обязательно должна стоять после if и перед else. Здесь elif проверяет, есть ли у тебя 200 рублей, только если условие if возвращает False. В код можно добавить еще больше конструкций elif, проверяющих другие варианты.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд25.png" alt="Пример кода">
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
