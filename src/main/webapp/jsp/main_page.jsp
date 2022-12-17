<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html lang="en">
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro&display=swap" rel="stylesheet">
<%--    <link rel="stylesheet" href="../../resources/static/css/style_main.css">--%>
     <link rel="stylesheet" href="css/style_main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top navbarstyle p-0">
    <div class="container-fluid">
        <a class="navbar-brand" href="/main_page">
<%--            <img src="../../resources/static/img/logo.png" alt="Avatar Logo" style="width:130px; ">--%>
             <img src="img/logo.png" alt="Avatar Logo" style="width:130px; ">
        </a>
        <button class="navbar-toggler fw-bolder fs-3 font-Source-Serif-Pro" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            МЕНЮ
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item location_button mx-auto">
                    <a class="nav-link active" href="/location">Локація</a>
                </li>
                <li class="nav-item abonement_button mx-auto">
                    <a class="nav-link" href="/hotel-registration">Абонемент</a>
                </li>
                <li class="nav-item dropdown more_dropdown mx-auto pb-lg-0 pb-2">
                    <a class="nav-link dropdown-toggle " href="#" role="button" data-bs-toggle="dropdown">Dropdown</a>
                    <ul class="dropdown-menu dropdown-menu-end text-center text-lg-start">
                        <li><a class="dropdown-item" href="/boots-registration">boots add</a></li>
                        <li><a class="dropdown-item" href="/poles-registration">poles add</a></li>
                        <li><a class="dropdown-item" href="/skiing-registration">Skiing</a></li>
                        <li><a class="dropdown-item" href="/bootsBuy">Boots buy</a></li>
                        <li><a class="dropdown-item" href="/polesBuy">Poles buy</a></li>
                        <li><a class="dropdown-item" href="/skiingBuy">Skiing buy</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!--header -->
<header class="header">

    <div class="banner">
        <h1 class="banner-heading">Ласкаво просимо до PEAKS</h1>
        <p class="banner-paragraph">Зроби своє життя насиченішим</p>
        <a href="#rooms">
            <button class="banner-button">Наші номера</button>
        </a>
    </div>
</header>
<!--end of header -->

<!-- About Us-->
<section class="about-us">
    <div class="about-us-content">
        <h1 class="about-us-heading">Про нас</h1>
        <div class="underline">
            <div class="big-underline"></div>
            <div class="small-underline"></div>
        </div>

        <h3 class="sub-heading">PEAKS</h3>
        <p class="about-us-paragraph">У нашому готелі Ви зможете чудово відпочити, а також у Вас є можливість взяти
            лижі та інше спорядження у прокат, оформити абонемент на спуск з гори. У готелі також є сауна та спа. В
            ресторані вишукана їжа від найкращих поварів Львівщини.
        </p>

    </div>
    <figcaption class="about-us-images">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp0WfSV9kAberL_Xny_S55oR35CfSDW6HVOw&usqp=CAU"
             class="image image-1" />
        <img src="https://poradnuk.com.ua/image/statti/kraini-svitu/europe/france/hirskolyzhni-kurorty-frantsiyi.webp"
             class="image image-2" />
        <img src="https://i0.wp.com/s-vodogray.com.ua/wp-content/uploads/2021/04/1.jpg?fit=800%2C531&ssl=1"
             class="image image-3" />
        <img src="https://biz.liga.net/images/general/2021/02/26/thumbnail-tw-20210226193452-8991.jpg?v=1614363960"
             class="image image-4" />
    </figcaption>

</section>
<!-- end of About Us -->

<!--Rooms-->
<section class="rooms" id="rooms">
    <div class="common-header">
        <h1 class="common-heading">Номери в PEAKS</h1>
        <div class="underline">
            <div class="small-underline"></div>
            <div class="big-underline"></div>
        </div>
    </div>
    <div class="rooms-cards-wrapper">
        <div class="room-card">
            <img src="https://images.unsplash.com/photo-1541123356219-284ebe98ae3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                 class="room-img">
            <div class="room-card-content">
                <h4 class="room-card-heading">Одномісний номер</h4>
                <p class="room-card-paragraph">проживання + спортивні майданчики - з передплатою</p>
                <p class="room-price">$99.00</p>

            </div>
        </div>
        <div class="room-card">
            <img src="https://images.unsplash.com/photo-1508253578933-20b529302151?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                 class="room-img">
            <div class="room-card-content">
                <h4 class="room-card-heading">Двомісний номер</h4>
                <p class="room-card-paragraph">проживання + SPA + спортивні майданчики - з передплатою</p>
                <p class="room-price">$199.00</p>

            </div>
        </div>
        <div class="room-card">
            <img src="https://images.unsplash.com/photo-1547253159-4a1d0d3ca86c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                 class="room-img">
            <div class="room-card-content">
                <h4 class="room-card-heading">Люкс</h4>
                <p class="room-card-paragraph">проживання + SPA + спортивні майданчики </p>
                <p class="room-price">$299.00</p>

            </div>
        </div>
        <div class="room-card">
            <img src="https://images.unsplash.com/photo-1491955478222-69ae25414368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
                 class="room-img">
            <div class="room-card-content">
                <h4 class="room-card-heading">VIP</h4>
                <p class="room-card-paragraph">Все включено</p>
                <p class="room-price">$399.00</p>

            </div>
        </div>
    </div>



</section>
<!-- customers -->
<section class="customers">
    <div class="common-header">
        <h1 class="common-heading">Наші Відвідувачі</h1>
        <div class="underline">
            <div class="small-underline"></div>
            <div class="big-underline"></div>
        </div>
    </div>

    <p class="customers-paragraph">Поротягом 2 років, у нашому готелі зупинялось близько двадцяти тисяч гостей, яких
        Ми з радістю обслуговуємо та надаємо все, чого вони бажають.</p>

    <div class="customers-card-wrapper">
        <div class="customer-card">
            <div class="customer-image-wrapper">
                <img src="https://images.unsplash.com/photo-1484399172022-72a90b12e3c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                     class="customer-image">
            </div>
            <div class="customer-info">
                <h3 class="customer-fullname">Катерина Дорян</h3>
                <p class="customer-paragraph-1">Щасливий Відвідувач</p>
                <p class="customer-paragraph-2">"Peaks - це завжди неперевершені враження і крутий відпочинок. Цього
                    разу відвідали Гуцул Ленд. Вхідний квиток для
                    дорослого 250 грн.
                    Тут ми оглянули старовинні помешкання, невеликий зоопарк, старовинну церкву. В одній з хатинок
                    пригощали гарячим чаєм.
                    "</p>
            </div>
        </div>
        <div class="customer-card">
            <div class="customer-image-wrapper">
                <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                     class="customer-image">
            </div>
            <div class="customer-info">
                <h3 class="customer-fullname">Моніка Белуччі</h3>
                <p class="customer-paragraph-1">Щасливий Відвідувач</p>
                <p class="customer-paragraph-2">"Безліч трас для катання, аренда снаряддя, до 11:00 не так багато
                    люду. Є місце для самостійного навчання також можна
                    взяти інструктора. Є рівнева парковка для авто 20 грн./година . Купа кафешек, але, наприклад,
                    щоб випити склянку какао,
                    треба 80 грн."</p>
            </div>
        </div>
    </div>
</section>
<!-- end of customers -->

<div class="creator-part">
    <div class="copyright-text">
        <p>Copyright &copy; 2022. PEAKS. All Rights Reserved</p>
    </div>
</div>


<script src="js/a.js"></script>
</body>

</html>