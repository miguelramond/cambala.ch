<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">
<head>
<title>cambala.ch</title>

<%@ include file="./commons/head.jsp"%>

</head>
<body id="home">

	<%@ include file="./commons/menu.jsp"%>

	<main>
		<div class="container-fluid">
			<header class="row justify-content-center">
				<div class="col-sm-12">
					<h1>
						un sitio de trueques <i><span id="demo"></span></i>
					</h1>
				</div>
				<div id="novedades" class="col-sm-12">
					<h2>Recién llegados:</h2>
				</div>
			</header>
			<div class="row justify-content-center">
				<div class="card col-sm-2">
					<a href="${pageContext.request.contextPath}/vercosa/1"> <img class="card-img-top"
						src="<core:url value="/res/img/pane/pane1.jpg"/>"
						alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Teléfono Snoopy</p>
						</div>
					</a>
				</div>
				<div class="card col-sm-2">
					<a href="${pageContext.request.contextPath}/vercosa/30"> <img class="card-img-top"
						src="<core:url value="/res/img/pane/pane2.jpg"/>"
						alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Refri Viejo, pero funciona</p>
						</div>
					</a>
				</div>
				<div class="card col-sm-2">
					<a href="${pageContext.request.contextPath}/vercosa/31"> <img class="card-img-top"
						src="<core:url value="/res/img/pane/pane3.jpg"/>"
						alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Macetero super normal</p>
						</div>
					</a>
				</div>
				<div class="card col-sm-2">
					<a href="${pageContext.request.contextPath}/vercosa/3"> <img class="card-img-top"
						src="<core:url value="/res/img/pane/pane4.jpg"/>"
						alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Reloj alarma vintage</p>
						</div>
					</a>
				</div>
				<div class="card col-sm-2">
					<a href="${pageContext.request.contextPath}/vercosa/2"> <img class="card-img-top"
						src="<core:url value="/res/img/pane/pane5.jpg"/>"
						alt="Card image cap">
						<div class="card-body">
							<p class="card-text">
								Corazón de <s>melón</s> neón
							</p>
						</div>
					</a>
				</div>
			</div>
		</div>
	</main>

	<%@ include file="./commons/footer.jsp"%>

	<script src="<core:url value="/res/js/main.js"/>"></script>
	<script src="<core:url value="/res/js/typewriter.js"/>"></script>
</body>
</html>