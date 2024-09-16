<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 16.09.2024
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <jsp:include page="header.jsp" />
    <section>
        <form action="user.jsp" method="post">
            <p>
                Производитель: <br>
                <select name="manufacturer">
                    <option>Lenovo</option>
                    <option>Samsung</option>
                    <option>Asus</option>
                    <option>Acer</option>
                    <option>Apple</option>
                </select>
            </p>
            <p>Объем SSD: <br>
                <select name="SSD">
                    <option>120 Гб</option>
                    <option>240 Гб</option>
                    <option>500 Гб</option>
                    <option>1000 Гб</option>
                </select>
            </p>
            <p>
                Тип видеокарты: <br>
                <label for="GPU1">
                    <input type="radio" name="GPU" value="Дискретная" id="GPU1"> Дискретная
                </label>
                <label for="GPU2">
                    <input type="radio" name="GPU" value="Видеокарта" id="GPU2"> Встроенная
                </label>

            </p>
            <p>
                Модель процессора:<br>
                <select name="proc">
                    <optgroup label="Intel">
                        <option>Intel Celeron</option>
                        <option>Intel Pentium Silver</option>
                        <option>Intel Pentium Gold</option>
                        <option>Intel Core</option>
                        <option>Intel Xeon</option>
                    </optgroup>
                    <optgroup label="AMD">
                        <option>серия A</option>
                        <option>Ryzen</option>
                    </optgroup>
                </select>
            </p>
            <p>
                Операционная система <br>
                <label for="Windows">
                    <input type="radio" name="os" value="Windows" id="windows"> Windows <br>
                </label>
                <label for="IOS">
                    <input type="radio" name="os" value="IOS" id="IOS"> IOS <br>
                </label>
                <label for="Linux">
                    <input type="radio" name="os" value="Да" id="Linux"> Linux <br>
                </label>
            </p>
            <p>
                Тип матрицы: <br>
                <select name="matrix">
                    <option>ТN</option>
                    <option>VA</option>
                    <option>IPS</option>
                    <option>OLED</option>
                </select>
            </p>
            <p>
                Разрешение экрана: <br>
                <select name="resolution">
                    <option>320x200</option>
                    <option>640x480</option>
                    <option>800x600</option>
                    <option>1024x768</option>
                    <option>1280x1024</option>
                    <option>1600x1200</option>
                    <option>2560x1600</option>
                </select>
            </p>
        <p>Наличие сенсорного экрана: <br>
            <label for="yesscreen">
                <input type="radio" name="touchscreen" value="Да" id="yesscreen"> Да <br>
            </label>
            <label for="noscreen">
                <input type="radio" name="touchscreen" value="Нет" id="noscreen"> Нет <br>
            </label>
        </p>
            <p>Подсветка клавитауры: <br>
                <label for="yeslight">
                    <input type="radio" name="light" value="Есть" id="yeslight"> Есть <br>
                </label>
                <label for="nolight">
                    <input type="radio" name="light" value="Отсутствует" id="nolight"> Отсутствует <br>
                </label>
            </p>

        <p>
            <input type="submit" value="Подтвердить">
        </p>

        </form>
    </section>
    <jsp:include page="footer.jsp" />
</div>
</body>
</html>
