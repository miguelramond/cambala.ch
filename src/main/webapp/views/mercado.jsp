<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Mercado</title>
<link rel="shortcut icon" type="image/jpg"
	href="<core:url value="/res/img/favicon.jpg"/>"/>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- Slider CSS Styles-->
<link rel="stylesheet" href="<core:url value="/res/css/jTinder.css"/>" type="text/css">
<!-- Local CSS File-->
<link rel="stylesheet" href="<core:url value="/res/css/style.css"/>">
</head>
<body id="mercado">

	<%@ include file="./commons/menu.jsp"%>

	<main>
		<!-- Padding container -->
		<div class="wrap">
			<!-- start jtinder container -->
			<div id="tinderslide">
				<ul>
					<li class="pane1">
						<div class="img"></div>
						<div>Telefono vintage</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane2">
						<div class="img"></div>
						<div>Refri decorativo</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane3">
						<div class="img"></div>
						<div>Regalo por que perturba a mi señora</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane4">
						<div class="img"></div>
						<div>Reloj años 70s</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane5">
						<div class="img"></div>
						<div>Regalo corazón de neon</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane6">
						<div class="img"></div>
						<div>El lunchbox de tu infancia</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane7">
						<div class="img"></div>
						<div>Lamparitas hermosas</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane8">
						<div class="img"></div>
						<div>Ventilador vintage, funciona perfecto</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane9">
						<div class="img"></div>
						<div>Parlantes (Perrito no incluido)</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane10">
						<div class="img"></div>
						<div>Figuritas Astronautas - Coleccionables!</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
					<li class="pane11">
						<div class="img"></div>
						<div>Patines, poco uso</div>
						<div class="like"></div>
						<div class="dislike"></div>
					</li>
				</ul>
			</div>
			<!-- end jtinder container -->
		</div>
		<!-- end padding container -->

		<!-- jTinder trigger by buttons
    <div class="actions">
        <a href="#" class="like"><i>Ofertar Ahora</i></a>
    </div> -->

		<a id="ofertar" class="btn btn-warning" href="#" role="button"
			onclick="colorize()"> Ofertar! </a>

		<!-- jTinder status text
    <div id="status"></div> -->
	</main>

	<%@ include file="./commons/footer.jsp"%>

	<script type="text/javascript"
		src="<core:url value="/res/js/swipe/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<core:url value="/res/js/swipe/jquery.transform2d.js"/>"></script>
	<script type="text/javascript"
		src="<core:url value="/res/js/swipe/jquery.jTinder.js"/>"></script>
	<script src="<core:url value="/res/js/swipe/swipe.js"/>"></script>
</body>
</html>