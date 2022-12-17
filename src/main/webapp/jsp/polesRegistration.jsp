<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <link rel="stylesheet" href="../../resources/static/css/style_main.css">--%>
<%--    <link rel="stylesheet" href="../../resources/static/css/style_polesRegistration.css">--%>
    <link rel="stylesheet" href="css/style_main.css">
    <link rel="stylesheet" href="css/style_polesRegistration.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
    <title>Poles Registration</title>
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
<br><br><br><br>

<div class="top row">
    <div class="topic col-sm-10">Додавання палиць для лиж</div>
    <div class="button col-md-1"><button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                         data-bs-target="#myModal">
        Допомога
    </button>
    </div>
</div>
<div class="topic"><a></a></div>

</div>

<!-- The Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog ">
        <div class="modal-content">


            <!-- Modal body -->
            <div class="modal-body">
                <p>1. Введіть висоту </p>
                <p>2. Введіть ціну</p>
                <p>3. Оберіть фото</p>
                <p>4. Підтвердіть</p>
            </div>
        </div>
    </div>
</div>


<form:form method="POST" action="${contextPath}/polesSave" enctype="multipart/form-data">
    <div class="wrap row">
        <input type="number" name="height" placeholder="Висота" class="form-control, col-xl-2" autofocus="true">

        <input type="number" name="price" placeholder="Ціна" class="form-control, col-xl-2" autofocus="true">

        <input type="file" name="image" class="form-control, col-xl-3">

        <button class="btn btn-lg btn-primary btn-block, col-xl-3" type="submit">Підтвердити</button>
    </div>
</form:form>
</body>

</html>
