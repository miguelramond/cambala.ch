<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="asesorias_model.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!doctype html>
<html lang="en">
  <head>
    <title>cambala.ch</title>
    <link rel="shortcut icon" type="image/jpg" href="./assets/img/favicon.jpg"/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Local CSS File-->
    <link rel="stylesheet" href="./assets/css/style.css" type="text/css">
  </head>
  <body id="publica">
  
        <%@ include file="menu.jsp" %>
        
        <main>
            <h1 style="text-align:center;" ><b>Productos en venta</b></h1>
            <table  id="tabla1" class="display" style= "text-align: center; width: 100%;">
              <thead>
              <tr>
                  <th>ID Cosa</th><th>¿Que es?</th><th>Descripcion</th><th>ID Usuario</th>
              </tr>
              </thead>
              <tbody>
              
           		<c:forEach var="c" items="${cosas}">
           		
           		<tr>
	           		<td><c:out value="${c.getId()}"></c:out></td>
	           		<td><c:out value="${c.getNombre()}"></c:out></td>
	      		    <td><c:out value="${c.getDesc()}"></c:out></td>
	      		    <td><c:out value="${c.getUsuario()}"></c:out></td>
      			</tr>
           		</c:forEach>

               </tbody>
          </table>
</main>
   
<%@ include file="footer.jsp" %>
        
          <!-- Optional JavaScript -->
          <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="assets/js/typeahead.bundle.js"></script>
    <script src="./assets/js/jquery.dataTables.min.js"></script>
    <script src="./assets/js/main.js" ></script>
  </body>
</html>
 

    