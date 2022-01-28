<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>cambala.ch · Publicar</title>
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
  <form class="needs-validation" novalidate>
    <div class="form-row justify-content-center">
      <div class="col-md-8 mb-3">
        <label for="validationCustom01">¿Que quieres cambiar?</label>
        <input type="text" class="form-control" id="validationCustom01" placeholder="Ej: Radio vintage a baterías" required>
        <div class="valid-feedback">
          Excelente!
        </div>
        <div class="invalid-feedback">
          Importante decirnos que estas cambiando
        </div>
      </div>
    </div>
    <div class="form-row justify-content-center">
      <div class="col-md-4 mb-3">
        <label for="validationCustom03">Comuna</label>
        <input type="text" class="form-control" id="validationCustom03" placeholder="Ej: Chimbarongo" required>
        <div class="invalid-feedback">
          ¡Importante indicarnos en que comuna estás!
        </div>
      </div>
      <div class="col-md-4 mb-3">
        <label for="validationCustom04">Región</label>
        <input type="text" class="form-control" id="validationCustom04" placeholder="Ej: Metropolitana" required>
        <div class="invalid-feedback">
          No te olvides de ingresar la región donde vives
        </div>
      </div>
    </div>
    <div class="form-row justify-content-center">
      <div class="custom-file col-md-8 mb-3">
        <input type="file" class="custom-file-input" id="customFile" required>
        <label class="custom-file-label" for="customFile">Adjunta una foto</label>
        <div class="invalid-feedback">
          Compartenos una foto de lo que quieres cambiar.
        </div>
      </div>
    </div>
    <div class="form-row justify-content-center mt-1">
      <div class="form col-md-8">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
          <label class="form-check-label" for="invalidCheck">
            Acepto los términos y condiciones
          </label>
          <div class="invalid-feedback">
            Debes aceptar esto ^
          </div>
        </div>
      </div>
    </div>
    <div class="form-row justify-content-center mt-1">
      <button class="btn btn-primary col-md-2" type="submit">Publicar</button>
      <a id="login" class="btn btn-primary" href="ListarCapacitaciones" role="button">Listar Capacitaciones</a>
    </div>
  </form>
</main>

<%@ include file="footer.jsp" %>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS, then jQuery plugins, then local -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js" crossorigin="anonymoous"></script>
    <!-- jQuery validator plugin REMOVIDO    <script src="./assets/js/validator.js"></script>
    -->

    <script src="assets/js/main.js"></script>
</body>
</html>