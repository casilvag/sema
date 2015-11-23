<%--
  Created by IntelliJ IDEA.
  User: SAMUELLEONARDO
  Date: 1/11/2015
  Time: 8:36 PM
--%>

<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/carousel/# -->
<html lang="en">
<head>
  <title>Semáforo - Equipo</title>
  <meta charset="UTF-8">
  <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
  <asset:stylesheet src="bootstrap.min.css"/>
  <asset:stylesheet src="demo.css"/>
  <asset:stylesheet src="common.css"/>
  <asset:stylesheet src="style3.css"/>
  <asset:stylesheet src="fontello.css"/>
  <asset:stylesheet src="estilos.css"/>
  <asset:stylesheet src="columnas.css"/>
  <asset:stylesheet src="default.css"/>
  <asset:stylesheet src="equipoComplementos.css"/>
  <asset:stylesheet src="font-awesome.min.css"/>

</head>


<body>

<header>
  <div class="container">

    <h1 class="icon-semaforo">Semáforo</h1>
    <input type="checkbox" id="menu-bar">
    <label class="icon-menu" for="menu-bar"></label>

    <nav class="menu">
      <a href="${createLink(uri: '/')}">Inicio</a>
      <a href="${createLink(uri: '/whoWeAre')}">¿Quienes Somos?</a>
      <a href="${createLink(uri: '/equipo')}">Equipo</a>
      <g:if test="${session.cliente}" >
        <li><a href="#">${session.cliente.nombre}</a>
          <ul>
            <li><a href="/Semaforo/cliente/perfilusuario">Mi perfil</a></li>
            <li><a href="">Configuración</a></li>
            <li><g:link controller="cliente" action ="logout">Salir</g:link></li>
          </ul>
        </li>
      </g:if>

      <g:else>
        <a href="${createLink(uri: '/ingresar')}">Login</a>
      </g:else>
    </nav>

    
  </div>
</header>
<br><br><br>
<section id="mostrar">
  <h2>Equipo</h2>
  <p>Nuestro Equipo de Desarrollo de Semáforo, puedes encontrarlos en redes sociales...</p>
  <p>Tan solo debes parar el puntero sobre el área de la foto deseada... ¿Apuestos verdad? :)</p>
</section>

<div class="container">

  <section>

    <ul class="ch-grid">
      <li>
        <div class="ch-item">
          <div class="ch-info">
            <h3>Samuel Pérez Gaitán</h3>
            <p>Desarrollo Html, CSS <a href="https://www.facebook.com/samusstinkguitar" target="_blank">Contacto en Facebook</a></p>
          </div>
          <div class="ch-thumb ch-img-1"></div>
        </div>
      </li>
      <li>
        <div class="ch-item">
          <div class="ch-info">
            <h3>David Rubio Barón</h3>
            <p>Desarrollo - Testing, Html, CSS<a href="https://www.facebook.com/Davalexer9304" target="_blank">Contacto en Facebook</a></p>
          </div>
          <div class="ch-thumb ch-img-2"></div>
        </div>
      </li>
      <li>
        <div class="ch-item">
          <div class="ch-info">
            <h3>Cesar Silva Guevara</h3>
            <p>Desarrollo - Consultas Vehículos<a href="https://www.facebook.com/Cesar.A.10" target="_blank">Contacto en Facebook</a></p>
          </div>
          <div class="ch-thumb ch-img-3"></div>
        </div>
      </li>
      <li>
        <div class="ch-item">
          <div class="ch-info">
            <h3>Sergio Esteban Gabalán</h3>
            <p>Desarrollo - Cargo<a href="https://co.linkedin.com/in/seresgavillar" target="_blank">Contacto en LinkedIn</a></p>
          </div>
          <div class="ch-thumb ch-img-4"></div>
        </div>
      </li>
      <li>
        <div class="ch-item">
          <div class="ch-info">
            <h3>Juan Pablo Arias</h3>
            <p>Desarrollo - Cargo<a href="https://www.facebook.com/juanpablo.arias.50" target="_blank">Contacto en Facebook</a></p>
          </div>
          <div class="ch-thumb ch-img-5"></div>
        </div>
      </li>
    </ul>

  </section>
</div>

<footer>
  <div class="container">
    <p class="copy">Semáforo &copy; 2015</p>
    <div class="sociales">
      <a class="icon-fb" href="https://www.facebook.com/SemaforoWeb/" target="_blank"></a>
      <a class="icon-twitter" href="#"></a>
      <a class="icon-gp" href="#"></a>
    </div>
  </div>
</footer>




</body>
</html>