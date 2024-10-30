<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Main title</title>
    <jsp:include page="component/allcss.jsp" />
</head>
<body>
    <jsp:include page="component/navbar.jsp" />

    <div id="carouselExampleFade" class="carousel slide carousel-fade">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/cor1.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/snakeboy.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/boypr.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <section class="advantages">
        <div class="wrap">
            <h2>Ваш первый путеводитель в удивительный мир технологий!</h2>
            <div class="advantages__block">
                <div class="advantages__element-left">
                    <div>
                        <h4>Сложные темы простым языком</h4>
                        <p>На начальном этапе ты получишь самое главное по теории, и ни на йоту больше!</p>
                    </div>
                    <div>
                        <h4>Больше практики, игропрактики!</h4>
                        <p>Попробуй применить свои знания на практике! Попробуй себя в роли разработчика!</p>
                    </div>
                    <div>
                        <h4>Выбери сторону!</h4>
                        <p>Интерактивный учебник предлагает тебе выбор направления. Выбирай, кем хочешь стать: Супер программистом или юным инженером-конструктором роботов ?</p>
                    </div>
                    <div>
                        <h4>Это бесплатно</h4>
                        <p>Проект выполнен инициативными ребятами с целью завлечь юных будущих специалистов!</p>
                    </div>
                </div>
                    <div class="advantages__element-right">
                        <img src="img/monstr.jpg" alt="">
                    </div>
                </div>
            </div>
    </section>
<jsp:include page="component/footer.jsp"/>

</body>
</html>