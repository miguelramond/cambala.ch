<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-light">
	<img id="logo" src="<core:url value="/res/img/index2.png"/>" alt="avatar"><a
		class="navbar-brand" href="./">cambala.ch</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="./mercado">Mercado</a></li>
			<li class="nav-item"><a class="nav-link" href="./nosotros">Qué somos</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="./contacto">Contacto</a>
			</li>
		</ul>
		<a id="publish" class="btn btn-primary" href="./publicar" role="button">
			Publicar </a> 

		<div class="btn-group">
			<a id="login" class="btn btn-primary" href="./login" role="button"><img
				class="avatar" src="<core:url value="/res/img/avatar.png"/>"
				alt="avatar"> Login </a>
			<button type="button"
				class="btn btn-primary dropdown-toggle dropdown-toggle-split"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>
			</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="./logout">Logout</a>
				<sec:authorize access="hasAuthority('1')"> <a class="dropdown-item" href="./admin">Admin</a>
				</sec:authorize>
				<sec:authorize access="hasAuthority('1', '2')"> <a class="dropdown-item" href="./panelusuario">Admin</a>
				</sec:authorize>
			</div>
		</div>
	</div>
</nav>
