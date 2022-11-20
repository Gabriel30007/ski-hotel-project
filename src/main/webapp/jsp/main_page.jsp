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
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro&display=swap" rel="stylesheet">
<%--    <link rel="stylesheet" href="../resources/static/css/style_main.css">--%>
     <link rel="stylesheet" href="css/style_main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>

<body>
<canvas id="canvas"></canvas>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top navbarstyle p-0">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
<%--            <img src="../resources/static/img/logo.png" alt="Avatar Logo" style="width:130px; ">--%>
             <img src="img/logo.png" alt="Avatar Logo" style="width:130px; ">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item price_button mx-auto">
                    <a class="nav-link active" href="#">Ціна</a>
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
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<%--<script src="../resources/static/js/a.js"></script>--%>
 <script src="js/a.js"></script>
</body>

</html>