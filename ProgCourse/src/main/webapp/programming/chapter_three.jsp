<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 07.01.2025
  Time: 9:28
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
        <h4>Циклы</h4>
      </div>
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="section">
      <div class="texttype1">
        <h2> Для чего он нужен? </h2>
        <p> Компьютеры умеют, не жалуясь, выполнять утомительную работу. О программистах такого не скажешь, зато они могут поручать однообразные задачи компьютеру, создавая для этого циклы. Цикл выполняет один и тот же блок кода снова и снова.</p>
        <p> Цикл – это код, который выполняется повторно. Так что его не нужно каждый раз вводить заново.</p>
        <p> В Python есть несколько типов цикла. Рассмотрим два из них.</p>
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
        <h4> Цикл for </h4>
        <p> Если ты знаешь, сколько раз программе нужно выполнить блок кода, тебе подойдет цикл for («для»).
          Скарлетт написала код, который десять раз выводит на экран «Это письмо от Скарлетт О ‘ Хара!», чтобы потом распечатать этот текст и отправить с письмом. Попробуй запустить ее программу в окне консоли. (Введи строки кода и нажми Enter, сотри пробелы, которые добавятся автоматически, и снова нажми Enter).</p>
      </div>
      <div class="image-container">
        <br> <br>
        <img src="../img/слайд39.png" alt="Пример кода">
      </div>
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="card">
      <div class="header">Советы от Айтишурика</div>
      <div class="sub-header">Знак экранирования (\)</div>
      <div class="content">
        <p>Фамилия 0 \’ Хара записана в коде через знак «обратный слеш» Он указывает на то, что идущий следом апостроф не нужно считать закрывающей кавычкой. Обратный слеш называют знаком экранирования. Сам он не выводится на экран, а лишь поясняет, как программе воспринимать следующий символ.</p>
      </div>
    </div>
    <div class="image-section2">
      <img src="../img/it3.png" alt="Монстр">
    </div>

  </div>

  <div class="mySlides" style="display: block;">
    <div class="containertype2">
      <div class="headertype2">Переменная цикла</div>
      <div class="texttype2">
        Переменная цикла отслеживает, сколько проходов уже сделано. Сначала она равна первому числу из списка, заданного командой range(1,11) («диапазон»). На втором проходе в переменную цикла попадает второе число из списка и т. д. Когда программа переберет все числа в диапазоне от 1 до 10, цикл завершится.
      </div>
      <img class="imagetype2" src="../img/слайд41.png" alt="PYTHON картинка">
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="card">
      <div class="header">Советы от Айтишурика</div>
      <div class="sub-header">Функция range()</div>
      <div class="content">
        <p>В Python функция range() хранит в себе список чисел, который начинается с первого указанного в скобках числа и заканчивается числом, на единицу меньшим второго. Поэтому range(1 ,4) – это 1,2 и 3, но не 4. В программе Скарлетт команда range(1 ,11) соответствует такому списку: 1,2, 3,4,5,6,7,8,9,10.</p>
      </div>
    </div>
    <div class="image-section2">
      <img src="../img/it3.png" alt="Монстр">
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="contenttype4">
      <div class="columntype4">
        <div class="headertype4">Цикл while</div>
        <div class="texttype4">
          А что если ты не знаешь, сколько раз программе нужно повторить блок кода? Может, стоит заглянуть в хрустальный шар и увидеть будущее? Нет, просто воспользуйся циклом while («пока»).
        </div>
        <div class="image-containertype4">
          <img class="image" src="../img/слайд41.png" alt="Первая картинка">
        </div>
      </div>
      <div class="columntype4">
        <div class="headertype4">Условия цикла.</div>
        <div class="texttype4">
          У цикла while нет переменной, которая перебирает все значения, зато у него есть условие – логическая операция, возвращающая True или False. Работа цикла while похожа на работу билетного контролера. Если у тебя есть билет (True), он тебя пропустит в зал, а если нет (False), то ты не сможешь войти. В нашем случае если условие цикла не вернет True, программа не сможет войти в цикл!
        </div>
        <div class="image-containertype4">
          <img class="image" src="../img/слайд41.png" alt="Вторая картинка">
        </div>
      </div>
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="containertype2">
      <div class="headertype2">Башня из стаканчиков </div>
      <div class="texttype2">
        Айтишурик написал программу, которая считает количество стаканчиков в пирамиде. Изучи код и постарайся разобраться, как он работает.
      </div>
      <img class="imagetype2" src="../img/слайд44.png" alt="PYTHON картинка">
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="section">
      <div class="texttype1">
        <h2> Как это работает?</h2>
        <p> В коде Айтишурика условием цикла служит логическая операция answer == 'да'. Если она возвращает True, значит, пользователь хочет добавить бегемота. Тогда в теле цикла количество стаканчиков увеличивается на 1 и на экран выводится вопрос, нужно ли добавить еще одного стаканчик. Если пользователь отвечает «да», условие цикла возвращает True, и цикл повторяется. А если «нет», условие возвращает False, и программа выходит из цикла.</p>
      </div>
      <div class="image-container">
        <br> <br>
        <img src="../img/слайд45.png" alt="Пример кода">
      </div>
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="section">
      <div class="texttype1">
        <h2> Бесконечный цикл </h2>
        <p> Иногда бывает необходимо, чтобы цикл повторялся все время, пока работает программа. Такой цикл называется бесконечным. Во многих видеоиграх используется бесконечный основной цикл. </p>
      </div>
      <div class="image-container">
        <br> <br>
        <img src="../img/слайд45.png" alt="Пример кода">
      </div>
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="section">
      <div class="texttype1">
        <h4> Вход в бесконечность </h4>
        <p> Чтобы цикл стал бесконечным, сделай его условием постоянное булево значение True. Поскольку оно никогда не изменится, цикл никогда не завершится. Запусти этот код. Условие всегда будет возвращать True, а значит, цикл будет выводить одно и то же сообщение, пока ты не выйдешь из программы.</p>
      </div>
      <div class="image-container">
        <br> <br>
        <img src="../img/слайд47.png" alt="Пример кода">
      </div>
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="section">
      <div class="texttype1">
        <h4> Выход из бесконечности </h4>
        <p> Бесконечный цикл можно создать специально. Например, эта программа только и делает, что спрашивает пользователя, наелся ли он. Если тот, наелся, введет «да», программа предложит ещё одну порцию, и выйдет из цикла с помощью команды break («отмена»).</p>
      </div>
      <div class="image-container">
        <br> <br>
        <img src="../img/слайд48.png" alt="Пример кода">
      </div>
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="card">
      <div class="header">Советы от Айтишурика</div>
      <div class="sub-header">Выход из цикла
      </div>
      <div class="content">
        <p>Если ты не хочешь, чтобы цикл while
          получился бесконечным, убедись,
          что в его теле есть что-то, благодаря
          чему условие цикла может вернуть
          False. Но не волнуйся: если ты
          случайно создал бесконечный цикл,
          его можно остановить, нажав
          одновременно клавиши CTRL и С.
          Возможно, это сочетание клавиш
          понадобится нажать несколько раз.
        </p>
      </div>
    </div>
    <div class="image-section2">
      <img src="../img/слайд49.png" alt="Монстр">
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="section">
      <div class="texttype1">
        <h2> Цикл внутри цикла </h2>
        <p> Может ли один цикл находиться в теле другого цикла? Да! Такой вложенный цикл похож на матрешку, куклы которой вставляются одна в другую. Получается, что внутренний цикл запускается внутри внешнего цикла.</p>
      </div>
      <div class="image-container">
        <br> <br>
        <img src="../img/it2.png" alt="Пример кода">
      </div>
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="card">
      <div class="header">Советы от Айтишурика</div>
      <div class="sub-header">Отступы в теле цикла</div>
      <div class="content">
        <p>Строки кода, составляющие тело цикла, нужно вводить с отступом в 4 пробела, иначе Python выдаст ошибку и программа не запустится. А если цикл вложен в другой, тело внутреннего цикла должно идти с отступом еще в 4 пробела. Обычно Google Colab ставит отступы автоматически, но ты все равно не забывай проверять количество пробелов в начале каждой строки.</p>
      </div>
    </div>
    <div class="image-section2">
      <img src="../img/it3.png" alt="Монстр">
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="containertype2">
      <div class="headertype2">Цикл в цикле</div>
      <div class="texttype2">
        Скарлетт переделала свой код про письмо так, чтобы программа трижды выводила на экран «не читай, не читай, секрет!». Поскольку в этой фразе две фразы «не читай», Скарлетт решила использовать вложенный цикл.
      </div>
      <img class="imagetype2" src="../img/слайд52.png" alt="PYTHON картинка">
    </div>
  </div>

  <div class="mySlides" style="display: block;">
    <div class="section">
      <div class="texttype1">
        <h4> Как это работает?</h4>
        <p> Внутренний цикл for находится в теле внешнего цикла for, и на каждый проход внешнего цикла приходится два прохода внутреннего. Это значит, что код внешнего цикла запустится 3 раза, а внутреннего – 6 раз.</p>
      </div>
      <div class="image-container">
        <br> <br>
        <img src="../img/слайд53.png" alt="Пример кода">
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
