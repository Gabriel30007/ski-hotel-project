<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>checkout</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style_checkout.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top navbarstyle p-0">
    <div class="container-fluid">
        <a class="navbar-brand" href="/main_page">
            <img src="img/logo.png" alt="Avatar Logo" style="width:130px; ">
        </a>
        <button class="navbar-toggler fw-bolder fs-3 font-Source-Serif-Pro" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            МЕНЮ
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item price_button mx-auto">
                    <a class="nav-link" href="#">Ціна</a>
                </li>
                <li class="nav-item location_button mx-auto">
                    <a class="nav-link active" href="/location">Локація</a>
                </li>
                <li class="nav-item abonement_button mx-auto">
                    <a class="nav-link" href="/hotel-registration">Абонемент</a>
                </li>
                <li class="nav-item dropdown more_dropdown mx-auto pb-lg-0 pb-2">
                    <a class="nav-link dropdown-toggle " href="#" role="button" data-bs-toggle="dropdown">Dropdown</a>
                    <ul class="dropdown-menu dropdown-menu-end text-center text-lg-start">
                        <li><a class="dropdown-item" href="/boots-registration">Boots add</a></li>
                        <li><a class="dropdown-item" href="/poles-registration">Poles add</a></li>
                        <li><a class="dropdown-item" href="/skiing-registration">Skiing add</a></li>
                        <li><a class="dropdown-item" href="/bootsBuy">Boots buy</a></li>
                        <li><a class="dropdown-item" href="/polesBuy">Poles buy</a></li>
                        <li><a class="dropdown-item" href="/skiingBuy">Skiing buy</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<section class="h-100" style="margin-top: 75px;">
    <div class="container h-100 py-5">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-10">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3 class="fw-normal mb-0 text-black">Корзина</h3>
                </div>
                <!-- ПОЧАТОК КАРТКИ З ТОВАРОМ -->
            <c:if test="${not empty bucket}">
                <c:forEach items="${bucket}" var="currentBucketObj">
                    <c:if test="${not empty currentBucketObj.poles}" >
                        <c:set var = "obj" scope = "session" value = "${currentBucketObj.poles}"/>
                    </c:if>
                    <c:if test="${not empty currentBucketObj.boots}">
                        <c:set var = "obj" scope = "session" value = "${currentBucketObj.boots}"/>
                    </c:if>
                    <c:if test="${not empty currentBucketObj.skiing}">
                        <c:set var = "obj" scope = "session" value = "${currentBucketObj.skiing}"/>
                    </c:if>
                <div class="card rounded-3 mb-4">
                    <div class="card-body p-4">
                        <div class="row d-flex justify-content-between align-items-center">
                            <div class="col-md-2 col-lg-2 col-xl-2">
                                    <img class="card-img-top" src="data:image/jpg;base64, ${obj.encodedImage}" alt="..."/>
                            </div>
                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <p class="lead fw-normal mb-2">title</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                <button class="btn btn-link px-2"
                                        onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                    <i class="fs-5 bi bi-dash-lg"></i>
                                </button>
                                <input min="0" name="quantity" value="2" type="number"
                                       class="form-control form-control-sm" />
                                <button class="btn btn-link px-2"
                                        onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                    <i class="fs-5 bi bi-plus-lg"></i>
                                </button>
                            </div>
                            <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                <h5 class="mb-0">100₴</h5>
                            </div>
                            <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                <a href="#!" class="text-danger"><i class="fs-5 bi bi-trash-fill"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- КІНЕЦЬ КАРТКИ З ТОВАРОМ -->
                </c:forEach>
            </c:if>
                <div class="card mb-4">
                    <div class="card-body d-flex flex-row">
                        <div class="form-outline flex-fill">
                            <input type="text" id="abonement_input" class="form-control form-control-lg" />
                            <label class="form-label" for="abonement_input">Абонемент</label>
                        </div>
                        <button type="button"
                                class="btn btn-outline-warning btn-lg ms-3 align-self-start">Підтвердити</button>
                    </div>
                </div>

                <div class="card mb-4">
                    <div class="card-body p-4">
                        <p class="mb-0 me-2 d-flex justify-content-between align-items-center">
                            <span class="text-muted">Загальна вартість:</span>
                            <span class="lead fw-normal">150₴</span>
                        </p>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body d-grid col-12">
                        <button type="button" class="btn btn-warning btn-block btn-lg">Оплатити</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>

</html>
