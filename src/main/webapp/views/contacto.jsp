<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Contacto</title>

<%@ include file="./commons/head.jsp"%>

</head>
<body id="contacto">

	<%@ include file="./commons/menu.jsp"%>

	<main>
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<h2>¿Buscas algo?</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-6 text-center">
					<form action="#">
						<div class="form-group">
							<input type="text" class="form-control" id="InputName"
								placeholder="Nombre" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="InputEmail"
								placeholder="Correo Electrónico" required>
						</div>
						<div class="form-group">
							<textarea class="form-control" id="FormControlTextarea1" rows="3"
								placeholder="Mensaje" required></textarea>
						</div>
						<button class="btn btn-primary" type="submit">Submit form</button>
					</form>
				</div>
			</div>
		</div>
	</main>

	<%@ include file="./commons/footer.jsp"%>
	
	<script src="<core:url value="/res/js/main.js"/>"></script>

</body>
</html>