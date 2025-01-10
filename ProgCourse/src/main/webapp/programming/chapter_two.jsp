<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 06.01.2025
  Time: 23:01
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
    </style>

</head>
<body>

<div class="slideshow-container">

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="textglav">
                <h4>Переменные</h4>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="text-section">
                <h2>Что такое переменная и как её создать?</h2>
                <p>Переменная – это именованное место для хранения данных, которые можно изменять.</p>
                <p>У переменной должно быть имя. Подумай, что в ней будет храниться и какое слово или
                    словосочетание лучше всего напомнит тебе об этом. Напиши имя латиницей, поставь знак
                    «равно» и укажи данные, которые ты хочешь сохранить. Это называется «присвоить значение переменной».</p>
            </div>

            <div class="image-section">
                <br>
                <img src=../img/слайд4.png width="80%" height="80%">
                <p>Переменная похожа на ящик с табличкой. Ты можешь положить в него данные и, когда они понадобятся, найти их по названию ящика.</p>
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="card">
            <div class="header">Советы от Айтишурика</div>
            <div class="sub-header">Имена переменных</div>
            <div class="content">
                <p>Переменным нужно давать понятные имена, чтобы программу было легче читать. Например, переменную для учета
                    жизней игрока лучше назвать <strong>lives_remaining</strong> («оставшиеся жизни»), а не просто
                    <strong>lives</strong> («жизни») или сокращенно <strong>lr</strong>. Имена могут содержать цифры,
                    латинские буквы и знак подчеркивания, однако в начале всегда должна стоять буква. Следуй этим правилам,
                    и все будет в порядке.
                </p>
            </div>
        </div>
        <div class="image-section2">
            <img src="../img/it1.png" alt="Монстр">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <center>
            <div class="card2">
                <div class="header2">Обрати внимание!</div>
                <div class="sub-header2">Как можно и как нельзя</div>
                <div class="content2">
                    <ul>
                        <li>Имя переменной должно начинаться с латинской буквы.</li>
                        <li>Имя может состоять из цифр и латинских букв.</li>
                        <li>Не используй символы вроде -, /, # или @.</li>
                        <li>Не ставь пробелы.</li>
                        <li>Пробел можно заменить подчеркиванием (_).</li>
                        <li>Регистр букв имеет значение. Python будет считать Score и score двумя разными переменными.</li>
                        <li>Не называй переменные так же, как ключевые слова Python, например print.</li>
                    </ul>
                </div>
            </div>
        </center>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> Рассмотрим на примере</h4>
                <br>
                <p> <b>1 Присвой значение</b> </p>
                <p>Чтобы создать переменную age («возраст») и присвоить ей значение, введи в окне консоли эту строку кода.</p>
                <p><b>2 Выведи значение на экран</b> </p>
                <p>Добавь эту строку кода. Нажми Ctrl+Enter и посмотри, что получится.</p>
                </p>
            </div>
            <div class="image-container">
                <img src="../img/слайд8.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Рассмотрим на примере</h2>
                <br>
                <p> В программировании используются два типа чисел: целые и вещественные. </p>
                <p> <b> Вещественные числа </b> – это десятичные дроби, которые записываются через точку. </p>
                <p> <b> Целые числа </b> хороши для подсчета чего- либо, а <b> вещественные </b> – д ля измерений.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд9.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Операции с числами </h2>
                <br>
                <p> В переменных можно не только хранить числа, но и производить с ними математические операции: складывать, вычитать, умножать, делить и т. д.</p>
                <p> <b> Обрати внимание: </b>  </p>
                <p> В Python математические символы (называемые операторами) «плюс» и «минус» имеют привычный вид, а «умножить» и «разделить» отличаются от используемых в школе. </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд10.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <h2>Разберем некоторые примеры работы с числами</h2>
        <div class="section">
            <div class="texttype1">
                <h2>1 Реши пример</h2>
                <p>Введи этот код в окне консоли. В нем используются две переменные: x хранит число, а y — произведение двух чисел. Нажми ENTER, чтобы получить ответ.</p>
            </div>
            <div class="image-container">
                <img src="../img/код.jpg" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> 2 Измени значение переменной </h4>
                <br>
                <p> Чтобы изменить значение переменной, нужно ввести после знака «равно» другое число. Присвой переменной х значение 10 и снова выведи на экран значение у с помощью команды print(). Как ты думаешь, что получится? </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд12.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> 3 Обнови значение </h4>
                <br>
                <p> Чтобы получить правильный ответ, значение у нужно обновить. Для этого добавь в код эту строчку. Теперь после изменения х переменная у примет новое значение. </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд13.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Работа со строками </h2>
                <br>
                <p> <b> Строками программисты называют данные, состоящие из букв, пробелов и других знаков. </b></p>
                <p> Строки используются почти в каждой программе. Это могут быть слова, предложения или просто набор символов –тех, которые можно ввести с клавиатуры, и даже тех, которые ввести нельзя.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд14.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> Строковые переменные </h4>
                <br>
                <p> Строки можно хранить в переменных. Введи этот код в окне консоли: он помещает строку ' Айтишурик' в переменную name («имя»), а затем выводит ее на экран. Строки всегда нужно брать в кавычки – двойные или одинарные. </p>
            </div>
            <div class="image-container">
                <img src="../img/слайд15.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> Склеивание строк </h4>
                <br>
                <p> Значения переменных часто объединяют для получения новых значений. Результат объединения (склейки) двух строк можно поместить в новую переменную. Попробуй ввести в окне консоли этот код. </p>
            </div>
            <div class="image-container">
                <img src="../img/слайд16.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="card">
            <div class="header">Советы от Айтишурика</div>
            <div class="sub-header">Длина строки</div>
            <div class="content">
                <p>Для подсчета количества символов в строке (включая пробелы) есть удобная команда len() (сокр. от length – «длина»). По сути, len() – это так называемая функция (ты будешь часто пользоваться функциями, работая над проектами из этой книги).</p>
                <p>Чтобы узнать длину строки 'Привет, Айтишурик', введи этот код после объявления переменной message («сообщение») и нажми Enter.</p>
            </div>
        </div>
        <div class="image-section2">
            <img src="../img/слайд17.png" alt="Монстр">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h2> Списки </h2>
                <br>
                <p> Сохранить сразу несколько данных (особенно если важен их порядок) поможет список. </p>
                <p> Список – это набор элементов, хранящихся в определенном порядке.</p>
                <p>Каждому его элементу Python присваивает индекс (номер, означающий позицию в списке). Содержимое списка можно изменять как угодно и когда угодно.</p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд14.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> Не много ли переменных? </h4>
                <br>
                <p> Представь, что ты пишешь программу для многопользовательской игры и хочешь сохранить в ней ники игроков двух команд. Можно создать для каждого ника по переменной, примерно так... </p>
            </div>
            <div class="image-container">
                <br> <br>
                <img src="../img/слайд19.png" alt="Пример кода">
            </div>
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="containertype2">
            <div class="headertype2">Создай список</div>
            <div class="texttype2">
                ...но что если в каждой команде окажется шесть игроков? Тебе будет нелегко уследить за таким количеством переменных. Гораздо проще создать список. Для этого укажи элементы, которые в нем будут храниться, внутри квадратных скобок.
            </div>
            <img class="imagetype2" src="../img/слайд20.png" alt="PYTHON картинка">
        </div>
    </div>

    <div class="mySlides" style="display: block;">
        <div class="section">
            <div class="texttype1">
                <h4> Получи элемент из списка
                </h4>
                <p> Когда данные хранятся в виде списка, работать с ними просто. Чтобы получить значение элемента, введи имя списка и укажи в квадратных скобках позицию элемента. </p>
                <p>Внимание: Python считает элементы с 0, а не с 1. </p>
                <p>Попробуй получить из списка имена разных игроков. Ник первого игрока в первой команде имеет индекс [0], ник последнего во второй команде  – индекс [2].</p>
                </p>
            </div>
            <div class="image-container">
                <img src="../img/слайд21.png" alt="Пример кода">
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
