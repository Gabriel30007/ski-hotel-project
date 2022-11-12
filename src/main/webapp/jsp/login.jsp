<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
<%--	<link rel="stylesheet" href="../resources/static/css/style.css">--%>
	 <link rel="stylesheet" href="css/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
			crossorigin="anonymous"></script>
</head>

<body>
<canvas id="canvas"></canvas>
<div class="row w-100" style="padding-top: 175px;">
	<div class="col-lg-6 m-auto introducing p-5">
		<h1>Допоможемо підібрати хороше спорядження</h1>
		<h5>
			Широкий вибір лиж відомих брендів. Продаж та прокат: палки, маски, шоломи, лижне спорядження.
		</h5>
		<h5>
			Дорослий і дитячий лижний одяг: куртки, штани, фліси, шарфи, рукавиці.
		</h5>
		<h5>
			Працівники підберуть оптимально необхідний Вам інвентар для комфортного катання.
		</h5>

	</div>
	<div class="col-lg-5 d-flex">
		<div class="form-wrapper is-active">
			<button type="button" class="switcher switcher-login">
				Login
				<span class="underline"></span>
			</button>
			<form method="POST" action="${contextPath}/login" class="form form-login">
				<fieldset>
					<legend>Please, enter your email and password for login.</legend>
					<div class="input-block">
						<label for="login-email">E-mail</label>
						<input id="login-email" class="email" type="email" name="email" required>
					</div>
					<div class="input-block">
						<label for="login-password">Password</label>
						<input id="login-password" class="password" name="password" type="password" required>
					</div>

				</fieldset>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<button type="submit" class="btn-login">Login</button>
				<a href="${contextPath}/registration"></a>
			</form>
		</div>

		<div class="form-wrapper">
			<button type="button" class="switcher switcher-signup">
				Sign Up
				<span class="underline"></span>
			</button>
			<form method="POST" action="${contextPath}/registration" class="form form-signup">
				<fieldset>
					<legend>Please, enter your email, password and password confirmation for sign up.
					</legend>
					<div class="input-block">
						<label for="signup-email">E-mail</label>
						<input id="signup-email" type="email" name="email" required>
					</div>
					<div class="input-block">
						<label for="signup-firstname-confirm">first name</label>
						<input id="signup-firstname-confirm" type="text" name="firstName" required>
					</div>
					<div class="input-block">
						<label for="signup-lastName-confirm">last name</label>
						<input id="signup-lastName-confirm" type="text" name="lastName" required>
					</div>
					<div class="input-block">
						<label for="signup-password">Password</label>
						<input id="signup-password" type="password" name="password" required>
					</div>

				</fieldset>
				<button type="submit" class="btn-signup">Continue</button>

			</form>
		</div>
	</div>
</div>
<%--<script src="../resources/static/js/a.js"></script>--%>
 <script src="js/a.js"></script>
</body>

</html>