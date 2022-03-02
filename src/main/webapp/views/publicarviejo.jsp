<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Publicar</title>

<%@ include file="./commons/head.jsp"%>

</head>
<body id="publica">

	<%@ include file="./commons/menu.jsp"%>

	<main>
		<form:form method="POST" class="needs-validation" action="${pageContext.request.contextPath}/publicar"
			enctype="multipart/form-data" modelAttribute="cosas"
			novalidate="novalidate">
			<div class="form-row justify-content-center">
				<div class="col-md-8 mb-3">
					<form:label for="validationCustom01" path="nombre">¿Que quieres cambiar?</form:label>
					<form:input path="nombre" type="text" class="form-control"
						id="validationCustom01" placeholder="Ej: Radio vintage a baterías"
						required="required" />
					<div class="valid-feedback">Excelente!</div>
					<div class="invalid-feedback">Importante decirnos que estas
						cambiando</div>
				</div>
			</div>
			<div class="form-row justify-content-center">
				<div class="col-md-8 mb-3">
					<form:label for="exampleFormControlTextarea1" path="descripcion">Cuéntanos un poco
						de lo que estas cambiando</form:label>
					<form:textarea class="form-control"
						id="exampleFormControlTextarea1" path="descripcion" rows="3"
						placeholder="De colección, me lo regaló mi abuelita, (...)"
						required="required"></form:textarea>
					<div class="valid-feedback">Excelente!</div>
					<div class="invalid-feedback">Importante decirnos que estas
						cambiando</div>
				</div>
			</div>
			<div class="form-row justify-content-center">
				<div class="col-md-4 mb-3">
					<form:label for="validationCustom04" path="region">Región</form:label>
					<form:input type="text" class="form-control"
						id="validationCustom04" path="region"
						placeholder="Ej: Metropolitana" required="required" />
					<div class="invalid-feedback">No te olvides de ingresar la
						región donde vives</div>
				</div>
				<div class="col-md-4 mb-3">
					<form:label for="validationCustom03" path="comuna">Comuna</form:label>
					<form:input type="text" class="form-control"
						id="validationCustom03" path="comuna"
						placeholder="Ej: Chimbarongo" required="required" />
					<div class="invalid-feedback">¡Importante indicarnos en que
						comuna estás!</div>
				</div>
			</div>

			<div class="form-row justify-content-center">
				<div class="custom-file col-md-8 mb-3">
					<form:input path="file_data" type="file" class="custom-file-input"
						size="50" id="customFile" required="required" name="file_data"
						accept="image/*" />
					<form:label path="file_data" class="custom-file-label"
						for="customFile" >Adunta una foto.. (Max: 20MB)</form:label>
					<div class="invalid-feedback">Compartenos una foto de lo que
						quieres cambiar.</div>
				</div> 
			</div>

			 <div class="form-row justify-content-center mt-1">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="invalidCheck" required> <label
						class="form-check-label" for="invalidCheck"> Acepto los
						términos y condiciones </label>
					<div class="invalid-feedback">Debes aceptar esto ^</div>
				</div>
			</div>
			<div class="form-row justify-content-center mt-1">
				<button class="btn btn-primary col-md-2" type="submit">Publicar</button>
			</div>
		</form:form>
	</main>
	
	<%@ include file="./commons/footer.jsp"%>

	<script src="https://cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.min.js"></script>
	<script src="<core:url value="/res/js/publicar.js"/>"></script>
	
</body>
</html>