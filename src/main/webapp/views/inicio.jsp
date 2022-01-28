<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <body id="home">
  
    <%@ include file="menu.jsp" %>
    
    <main>
      <div class="container-fluid">
          <header class="row justify-content-center">
            <div class="col-sm-12">
              <h1>un sitio de trueques <i><span id="demo"></span></i></h1>
            </div>
            <!-- Removido por prueba 
              <div id="intro" class="col-sm-12">
              <p>Somos un sitio de trueques, y nos gustan las curiosidades y lo inesperado.</p> 
            </div>
            -->
            <div id="novedades" class="col-sm-12">
                <h2>Recién llegados:</h2>
            </div>
          </header>
          <div class="row justify-content-center">
            <div class="card col-sm-2">
              <a href="bazaar.html">
                <img class="card-img-top" src="./assets/img/pane/pane1.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text">Teléfono Snoopy</p>
                </div> 
              </a>
            </div>
            <div class="card col-sm-2">
              <a href="bazaar.html">
                <img class="card-img-top" src="./assets/img/pane/pane2.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text">Refri Viejo, pero funciona</p>
                </div>
              </a>
            </div>
            <div class="card col-sm-2">
              <a href="bazaar.html">
                <img class="card-img-top" src="./assets/img/pane/pane3.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text">Macetero super normal</p>
                </div>
              </a>
            </div>
            <div class="card col-sm-2">
              <a href="bazaar.html">
                <img class="card-img-top" src="./assets/img/pane/pane4.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text">Reloj alarma vintage</p>
                </div>
              </a>
            </div>
            <div class="card col-sm-2">
              <a href="bazaar.html">
                <img class="card-img-top" src="./assets/img/pane/pane5.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text">Corazón de <s>melón</s> neón</p>
                </div>
              </a>
            </div>
          </div>
      </div>
    </main>
    
    <%@ include file="footer.jsp" %>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS, then jQuery plugins, then local -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js" crossorigin="anonymoous"></script>
    <script src="./assets/js/main.js"></script>
  </body>
</html>