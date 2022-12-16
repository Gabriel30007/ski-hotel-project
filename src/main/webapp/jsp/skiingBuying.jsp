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
    <title>ski</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro&display=swap" rel="stylesheet">
<%--    <link rel="stylesheet" href="../../resources/static/css/style_BuyingPages.css">--%>
    <link rel="stylesheet" href="css/style_BuyingPages.css">
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
                <li class="nav-item price_button mx-auto">
                    <a class="nav-link" href="#">Ціна</a>
                </li>
                <li class="nav-item location_button mx-auto">
                    <a class="nav-link" href="#">Локація</a>
                </li>
                <li class="nav-item abonement_button mx-auto">
                    <a class="nav-link" href="#">Абонемент</a>
                </li>
                <li class="nav-item dropdown more_dropdown mx-auto pb-lg-0 pb-2">
                    <a class="nav-link dropdown-toggle " href="#" role="button"
                       data-bs-toggle="dropdown">Dropdown</a>
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
<header class="bg-dark py-5">
    <div class="container px-4 px-lg-5 my-5 pt-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Лижі</h1>
            <p class="lead fw-normal text-white-50 mb-0 fs-3">Найкращий вибір тільки у нас</p>
        </div>
    </div>
</header>
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <c:if test="${not empty skiing}">
                <c:forEach items="${skiing}" var="currentSkiing">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="data:image/jpg;base64, ${currentSkiing.encodedImage}" alt="..."/>
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="card-title fw-bolder fs-3">${currentSkiing.price}</h5>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-1 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <form:form action="${contextPath}/SkiingToBucket" method="POST" enctype="multipart/form-data">
                                        <input type="hidden" value="${currentSkiing.id}"
                                               class="form-control" name="skiingId">
                                        <input class="btn btn-outline-secondary mt-auto fs-5"  type="submit" value="Submit" />
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
        </div>
    </div>
</section>
<div class="creator-part">
    <div class="copyright-text">
        <p>Copyright &copy; 2022. PEAKS. All Rights Reserved</p>
    </div>
</div>
</body>

</html>
