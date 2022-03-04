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
		action="${pageContext.request.contextPath}/actualizar"
		modelAttribute="usuario" novalidate="novalidate">
		<div class="form-row justify-content-center">
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="idusuario">ID del Usuario a Actualizar</form:label>
				<form:input path="idusuario" type="text" class="form-control"
					id="validationCustom03" value="${u.getIdusuario()}"
					name="idusuario" readonly="true" />
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="tipousuario">Tipo Usuario</form:label>
				<form:input path="tipousuario" type="text" class="form-control"
					id="validationCustom03" value="${u.getTipousuario()}"
					name="idusuario" readonly="true" />
			</div>
		</div>
		<div class="form-row justify-content-center">
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="uname">Nombre de Usuario</form:label>
				<form:input path="uname" type="text" class="form-control"
					id="validationCustom03" value="${u.getUname()}" name="uname" />
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="psw">Nueva Contraseña</form:label>
				<form:input path="psw" value="***" type="text" class="form-control"
					id="validationCustom03" name="psw" />
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="email">Email</form:label>
				<form:input path="email" type="text" class="form-control"
					id="validationCustom03" value="${u.getEmail()}" name="email" />
			</div>
		</div>
		<div class="form-row justify-content-center">


			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="tlf">Tlf</form:label>
				<form:input path="tlf" type="text" class="form-control"
					id="validationCustom03" value="${u.getTlf()}" name="tlf" />
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="run">RUT</form:label>
				<form:input path="run" type="text" class="form-control"
					id="validationCustom03" value="${u.getRun()}" name="run" />
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="direccion">Direccion</form:label>
				<form:input path="direccion" type="text" class="form-control"
					id="validationCustom03" value="${u.getDireccion()}"
					name="direccion" />
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="comuna">Comuna</form:label>
				<form:input path="comuna" type="text" class="form-control"
					id="validationCustom03" value="${u.getComuna()}" name="comuna" />
			</div>
		</div>

		<div class="form-row justify-content-center mt-1">
			<button class="btn btn-primary col-md-2" type="submit">Actualizar</button>
		</div>

	</form:form>

	<%@ include file="./commons/footer.jsp"%>

</body>

</html>