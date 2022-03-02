<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Usuarios</title>

<%@ include file="./commons/head.jsp"%>

</head>
<body id="listarcosas">

	<%@ include file="./commons/menu.jsp"%>

	<main>
		<h2 style="text-align: center; padding: 2vw 0vw 2vw 0vw;">
			<b>personas / populus / مردم / козацький / Menschen / pessoas </b>
		</h2>

		<!--  Implementación de mostrar todos elementos en DB 'cosas' -->
		<table id="tabla1" class="display"
			style="text-align: center; width: 100%;">

			<thead>
				<tr>
					<th>ID Usr.</th>
					<th>Username</th>
					<th>Email</th>
					<th>Tlf</th>
					<th>RUT</th>
					<th>Direccion</th>
					<th>Comuna</th>
					<th>Opciones</th>
				</tr>
			</thead>

			<tbody>
				<core:forEach var="c" items="${usuario}">
					<tr>
						<!-- Los double al almacenarse como atributos en un view se 
						almacenan como string, y el string por defecto muestra el 
						double con decimales. Por esta razón se debe formatear este
						double ('idusuario') a numeros simples para que no
						muestren decimales al mostrarse en el HTML -->
						<fmt:formatNumber value="${c.getIdusuario()}" type="number"
							minFractionDigits="0" maxFractionDigits="0" var="idusuarioint" />

						<td><core:out value="${idusuarioint}"></core:out></td>
						<td><core:out value="${c.getUname()}"></core:out></td>
						<td><core:out value="${c.getEmail()}"></core:out></td>
						<td><core:out value="${c.getTlf()}"></core:out></td>
						<td><core:out value="${c.getRun()}"></core:out></td>
						<td><core:out value="${c.getDireccion()}"></core:out></td>
						<td><core:out value="${c.getComuna()}"></core:out></td>
						<td><a href="Actualizar?id=${idusuarioint}"><button
									class="btn btn-primary" type="submit" disabled>
									Actualizar</button></a></td>

					</tr>
				</core:forEach>
			</tbody>
		</table>

	</main>

	<%@ include file="./commons/footer.jsp"%>

</body>
</html>