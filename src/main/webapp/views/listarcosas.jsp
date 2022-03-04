<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">
<head>
<title>cambala.ch · Cosas</title>

<%@ include file="./commons/head.jsp"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body id="listarcosas">

	<%@ include file="./commons/menu.jsp"%>

	<main>
		<h2 style="text-align: center; padding: 2vw 0vw 2vw 0vw;">
			<b>cosas / things / چیزها / речі / dinge / もの / coisas</b>
		</h2>

		<!--  Implementación de mostrar todos elementos en DB 'cosas' -->
		<table id="tabla1" class="display"
			style="text-align: center; width: 100%;">

			<thead>
				<tr>
					<th>ID Cosa</th>
					<th>Nombre</th>
					<th>ID Usuario</th>
					<th>Region</th>
					<th>Comuna</th>
					<th>Ver Edit. Borrar</th>
				</tr>
			</thead>

			<tbody>
				<core:forEach var="c" items="${cosas}">
					<tr>
						<!-- Los double al almacenarse como atributos en un view se 
						almacenan como string, y el string por defecto muestra el 
						double con decimales. Por esta razón se deben formatear estos
						double ('idcosa' & 'idusuario') a numeros simples para que no
						muestren decimales al mostrarse en el HTML-->
						<fmt:formatNumber value="${c.getIdcosa()}" type="number"
							minFractionDigits="0" maxFractionDigits="0" var="idcosaint" />
						<fmt:formatNumber value="${c.getIdusuario()}" type="number"
							minFractionDigits="0" maxFractionDigits="0" var="idusuarioint" />
							
						<td><core:out value="${idcosaint}"></core:out></td>
						<td><core:out value="${c.getNombre()}"></core:out></td>
						<td><core:out value="${idusuarioint}"></core:out></td>
						<td><core:out value="${c.getRegion()}"></core:out></td>
						<td><core:out value="${c.getComuna()}"></core:out></td>
						<td><a href="${pageContext.request.contextPath}/vercosa/<core:out value='${idcosaint}'/>"><button
									class="btn btn-primary" type="submit" >
									<i class="fa fa-eye"></i></button></a>
						<a href="${pageContext.request.contextPath}/editarcosa/<core:out value='${idcosaint}'/>"><button
									class="btn btn-success" type="submit" >
									<i class="fa fa-edit"></i></button></a>
						<a href="${pageContext.request.contextPath}/eliminarcosa/<core:out value='${idcosaint}'/>"><button
									class="btn btn-danger" type="submit" >
									<i class="fa fa-trash"></i></button></a>
						</td>	

					</tr>
				</core:forEach>
			</tbody>
		</table>

	</main>

	<%@ include file="./commons/footer.jsp"%>

</body>
</html>