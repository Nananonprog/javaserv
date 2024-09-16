<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <title>JSP - Hello World</title>
    <jsp:include page="component/allcss.jsp" />
</head>
<body>
<jsp:include page="component/navbar.jsp" />

<h1>Hello World!</h1>

<div id="carouselExampleIndicators" class="carousel slide">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/slide_1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="img/slide_2.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="img/slide_3.jpg" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>

    <section class="advantages">
    <div class="wrap">
        <h2>Медицинский центр с высокоточным оборудованием</h2>
        <div class="advantages__block">
            <div class="advantages__element-left">
                <div>
                    <h4>Высокая точность</h4>
                    <p>В лаборатории анализаторы последнего поколения с функциями Rerun и Reflex. В кабинете УЗИ аппарат с детализацией  X-insight и технологией Auto EF</p>
                </div>
                <div>
                    <h4>Анализы за 3 часа</h4>
                    <p>Собственная лаборатория выполнит анализы пока вы будете на приеме и УЗИ. Комплекс обследований всего за 2 часа. Доплата за срочность всего 500 ₽</p>
                </div>
                <div>
                    <h4>Анализы за 3 часа</h4>
                    <p>Собственная лаборатория выполнит анализы пока вы будете на приеме и УЗИ. Комплекс обследований всего за 2 часа. Доплата за срочность всего 500 ₽</p>
                </div>
                <div>
                    <h4>Анализы за 3 часа</h4>
                    <p>Собственная лаборатория выполнит анализы пока вы будете на приеме и УЗИ. Комплекс обследований всего за 2 часа. Доплата за срочность всего 500 ₽</p>
                </div>

            </div>
            <div class="advantages__element-right">
                <img src="img/advantages.jpg" alt="">
            </div>
        </div>
    </div>
    </section>
</div>
</body>
</html>