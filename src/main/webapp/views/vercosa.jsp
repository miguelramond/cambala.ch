<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Cosa</title>

<%@ include file="./commons/head.jsp"%>

</head>
<body id="actualizarusuario">

	<%@ include file="./commons/menu.jsp"%>

	<form:form method="GET" class="needs-validation"
		action="${pageContext.request.contextPath}/panelusuario"
		modelAttribute="cosa" novalidate="novalidate">
		<div class="form-row justify-content-center">
			<div class="col-md-4 mb-3">
				<img style="margin-left: 3vw;" width="250" height="250"
					src="${pageContext.request.contextPath}/foto/${cosa.idcosa}" />
			</div>
		</div>
		<div class="form-row justify-content-center">

			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="nombre">Nombre</form:label>
				<form:input path="nombre" type="text" class="form-control"
					id="validationCustom03" name="idusuario" readonly="true" />
			</div>
						<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="region">Región</form:label>
				<form:input path="region" type="text"
					class="form-control" id="validationCustom03" name="psw"
					readonly="true" />
			</div>
			<div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="comuna">Comuna</form:label>
				<form:input path="comuna" type="text" class="form-control"
					id="validationCustom03" name="email" readonly="true" />
			</div>
		</div>
		<div class="form-row justify-content-center">
			<div class="col-md-8 mb-3">
				<form:label for="validationCustom03" path="descripcion">Descripción</form:label>
				<form:textarea path="descripcion" type="text" class="form-control"
					id="validationCustom03" name="idusuario" readonly="true" />
			</div>
		</div>
		<div class="form-row justify-content-center">
			<!-- <div class="col-md-4 mb-3">
				<form:label for="validationCustom03" path="idusuario">ID Publicador</form:label>
				<form:input path="idusuario" type="text" class="form-control"
					id="validationCustom03" name="uname" readonly="true" />
			</div> -->

		</div>
		
		<div class="form-row justify-content-center mt-1">
			<button class="btn btn-primary col-md-2" type="submit">Volver</button>
		</div>
		
	</form:form>

	<%@ include file="./commons/footer.jsp"%>

</body>

</html>