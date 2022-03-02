<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Login</title>

<%@ include file="./commons/head.jsp"%>

</head>
<body id="login">

	<%@ include file="./commons/menu.jsp"%>

	<%
	String error = (String) request.getAttribute("error");
	if (error != null && error.equals("true")) {
		out.println("<h3 class='alert alert-danger'> Error de Autenticación </h3>");
	}
	%>


	<form action="${pageContext.request.contextPath}/login"
		class="form-signin"
		style="padding-top: 1vw; max-width: 330px; margin: 0 auto;"
		method="post">

		<h1 class="h3 mb-3 font-weight-normal" style="text-align: center;">¡Bienvenido!</h1>

		<label for="uname" class="sr-only">Nombre de Usuario</label> <input
			type="name" id="inputUsername" class="form-control"
			placeholder="Nombre Usuario" name="uname" required="" autofocus="">

		<label for="psw" class="sr-only">Contraseña</label> <input
			type="password" id="inputPassword" class="form-control"
			placeholder="Contraseña" name="psw" style="margin-top: 1vw;">

		<button class="btn btn-lg btn-primary btn-block"
			style="margin-top: 1vw;" type="submit">Ingresar</button>

	</form>


	<%@ include file="./commons/footer.jsp"%>

	<!--  <form action="${pageContext.request.contextPath}/login"
		style="padding-top: 1vw;" method="post">
		<div class="form-row justify-content-center">
			<div class="col-md-6 mb-3">
				<label for="uname"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="uname">

				<div class="col-md-6 mb-3">
					<label for="psw"><b>Password</b></label> <input type="password"
						placeholder="Enter Password" name="psw">
				</div>

				<div class="col-md-2 mb-3">
					<button type="submit">Login</button>
				</div>

				 AGREGAR FUNCIONALIDAD DESPUES
				<label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label> 

				<div class="col-md-4 mb-3" style="background-color: #f1f1f1">
					<button type="button" class="cancelbtn">Cancel</button> 
					<span class="psw">Forgot <a href="#">password?</a></span>
				</div>

			</div>
		</div>
	</form>  -->

	<script src="<core:url value="/res/js/main.js"/>"></script>

</body>

</html>