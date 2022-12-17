<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>location</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro&display=swap" rel="stylesheet">
<%--    <link rel="stylesheet" href="../../resources/static/css/style_location.css">--%>
    <link rel="stylesheet" href="css/style_location.css">
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
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
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
                    <a class="nav-link dropdown-toggle " href="#" role="button" data-bs-toggle="dropdown">Меню</a>
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
<div class="container-fluid">
    <div class="row pt-5 title">
        <div class="col d-flex flex-column justify-content-center align-items-center pt-5">
            <h2 class="location-heading pt-5 fw-bolder">Як до нас дістатись</h2>
            <div class="underline">
                <div class="big-underline"></div>
                <div class="small-underline"></div>
            </div>
            <h3 class="sub-heading">PEAKS</h3>
        </div>
    </div>
    <div class="row d-flex flex-column justify-content-center align-items-center">
        <div class="col col-lg-8">
            <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d21208.114927360068!2d24.387415378570548!3d48.3602476067503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473718741045db5d%3A0xaa146186b1d727d2!2sVODA%20club!5e0!3m2!1suk!2sua!4v1669884752523!5m2!1suk!2sua"
                    width="100%" height="500px" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade" name="mapframe"></iframe>
            <div>
                <p class="navigator pt-3 fw-bolder">Навігатор</p>
                <form method="get" action="https://www.google.com/maps" target="mapframe">
                    <button onclick="getLocation()" class="custom-btn btn-6"><span>Отримати координати</span></button>
                    <input name="saddr" type="text" id="saddr" class="custom-btn btn-6">
                    <input name="output" type="hidden" value="embed" class="custom-btn btn-6">
                    <input name="daddr" type="hidden" id="daddr" value="VODA club, узбережжя великого озера Молодості, Поляниця, Івано-Франківська область, 78593">
                    <button type="submit" name="Submit" class="custom-btn btn-6" value="Submit"><span>Побудувати маршрут</span></button>
                </form>
            </div>
            <script>
                var x = document.getElementById("saddr");
                function getLocation() {
                    if (navigator.geolocation) {
                        navigator.geolocation.getCurrentPosition(showPosition, showError);
                    } else {
                        x.value = "Geolocation is not supported by this browser.";
                    }
                }
                function showPosition(position) {
                    x.value = position.coords.latitude +
                        ", " + position.coords.longitude;
                }

                function showError(error) {
                    switch (error.code) {
                        case error.PERMISSION_DENIED:
                            x.value = "User denied the request for Geolocation."
                            break;
                        case error.POSITION_UNAVAILABLE:
                            x.value = "Location information is unavailable."
                            break;
                        case error.TIMEOUT:
                            x.value = "The request to get user location timed out."
                            break;
                        case error.UNKNOWN_ERROR:
                            x.value = "An unknown error occurred."
                            break;
                    }
                }
            </script>
        </div>
    </div>
</div>
</body>

</html>
