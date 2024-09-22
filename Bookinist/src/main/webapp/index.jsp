<%@ page import="java.sql.Connection" %>
<%@ page import="com.db.DBConnect" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="component/allcss.jsp"/>
</head>
<body>
<jsp:include page="component/navbar.jsp"/>


<div id="carouselExampleCaptions" class="carousel slide">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/img_1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Уют</h5>
                <p>Читайте ваши любимые книги в комфорте.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="img/img_2.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Познавательно</h5>
                <p>Присоединяйтесь к обсуждению литературы на читательских встречах.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="img/drinkingcoffee.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Вкусно</h5>
                <p>Выпейте насыщенный кофе с ароматной выпечкой.</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<section class="advantages">
    <div class="wrap">
        <h2>Хорошее место. Хорошая компания</h2>
        <div class="advantages__block">
            <div class="advantages__element-left">
                <div>
                    <h4>Место для встреч</h4>
                    <p>Лавка букиниста располагается в центре города и предлагает уютнейшую обстановку для проведения деловых и дружеских встреч</p>
                </div>
                <div>
                    <h4>Это бесплатно</h4>
                    <p>Приходите в любой день недели с 8 до 22. Кошелек можно не брать!</p>
                </div>
                <div>
                    <h4>Интересные мероприятия</h4>
                    <p>У нас часто проводят лекции знаменитые личности! Послушайте кумира в хорошем месте, предварительно записавшись по телефону!</p>
                </div>
                <div>
                <h4>А с кофе ещё лучше!</h4>
                <p>В лавке находится небольшая кофейня с большим выбором. Закажите горячие и прохладительные напитки с выпечкой и сладостями.</p>
                </div>
            </div>

            <div class="advantages__element-right">
                <img src="img/bookshelf.jpg" alt="">
            </div>
        </div>
    </div>
</section>
<section class="team">
  <div class="wrap">
      <h2>Расписание лекций</h2>
      <div class="team__block">
          <div class="team__element">
              <img src="img/l1.jpg" alt="">
              <h3>"Наука и религия"</h3>
              <p>Дата: 17.10 в 18:00</p>
          </div>
          <div class="team__element">
              <img src="img/l1.jpg" alt="">
              <h3>"Социология"</h3>
              <p>Дата: 20.11 в 17:00</p>
          </div>
          <div class="team__element">
              <img src="img/l1.jpg" alt="">
              <h3>"НЛО?"</h3>
              <p>Дата: 27.11 в 19:30</p>
          </div>
      </div>
  </div>
</section>

<jsp:include page="component/footer.jsp"/>
</body>
</html>