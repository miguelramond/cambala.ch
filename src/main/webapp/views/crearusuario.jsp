<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Usuario</title>

<%@ include file="./commons/head.jsp"%>

</head>
<body id="actualizarusuario">

	<%@ include file="./commons/menu.jsp"%>

	<h2 style="text-align: center; padding: 1vw 0vw 1vw 0vw;">
		<b>Actualizar un Usuario</b>
	</h2>

	<form:form method="POST" class="needs-validation"
		action="${pageContext.request.contextPath}/crearusuario"
		modelAttribute="usuario" novalidate="novalidate">
		<div class="form-row justify-content-center">
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="uname">Nombre Usuario</form:label>
				<form:input type="text" class="form-control" id="validationCustom03"
					placeholder="Username único al usuario"
					path="uname" required="required" />
				<div class="invalid-feedback">¡Importante saber tu nombre de usuario!</div>
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="psw">Contraseña</form:label>
				<form:input type="text" class="form-control" id="validationCustom03"
					placeholder="Elige una contraseña." path="psw"
					required="required" />
				<div class="invalid-feedback">¡Este campo es obligatorio!</div>
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="email">Email</form:label>
				<form:input type="text" class="form-control" id="validationCustom03"
					placeholder="123@cambala.ch"
					path="email" required="required" />
				<div class="invalid-feedback">¡Importante saber tu correo electrónico!</div>
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom04" path="tlf">Telefono</form:label>
				<form:input type="tlf" class="form-control" id="validationCustom04"
					placeholder="Formato: +56912345678" path="tlf"
					required="required" />
				<div class="invalid-feedback">Favor ingresar tu número de teléfono</div>
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom04" path="run">RUT Usuario</form:label>
				<form:input type="text" class="form-control" id="validationCustom04"
					placeholder="Todo junto, solo numeros. Ej: 123456789"
					path="run" required="required" />
				<div class="invalid-feedback">Favor ingresar el RUT del
					usuario</div>
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom04" path="direccion">Direccion</form:label>
				<form:input type="text" class="form-control" id="validationCustom04"
					placeholder="Calle 123"
					path="direccion" required="required" />
				<div class="invalid-feedback">Favor ingresar tu direccion de residencia</div>
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom04" path="comuna">Comuna</form:label>
				<form:input type="text" class="form-control" id="validationCustom04"
					placeholder="Puchuncaví"
					path="comuna" required="required" />
				<div class="invalid-feedback">Favor ingresar tu comuna de residencia
					</div>
			</div>
		</div>


		<div class="form-row justify-content-center mt-1">
			<button class="btn btn-primary col-md-2" type="submit">Actualizar</button>
		</div>

	</form:form>

	<%@ include file="./commons/footer.jsp"%>

</body>

</html>