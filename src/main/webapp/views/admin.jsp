<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Admin</title>

<%@ include file="./commons/head.jsp"%>

</head>
<body id="login">

	<%@ include file="./commons/menu.jsp"%>

	<div class="row justify-content-center mt-1">
		<div class="col-sm-4">
			<h2>Panel admin</h2>
		</div>
	</div>
	<div class="row justify-content-center mt-1">
			<a id="listarcosas" class="btn btn-primary" href="./listarcosas" role="button">Listar
				Cosas</a>
	</div>
	<div class="row justify-content-center mt-1">
			<a id="listarusuarios" class="btn btn-primary" href="./listarusuario" role="button">Listar
				Usuarios</a>
	</div>
	<%@ include file="./commons/footer.jsp"%>

</body>

</html>