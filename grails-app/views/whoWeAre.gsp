<%--
  Created by IntelliJ IDEA.
  User: SAMUELLEONARDO
  Date: 7/11/2015
  Time: 5:41 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/carousel/# -->
<html lang="en">
<head>
    <title>Semáforo - Quienes Somos?</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="main.js"/>
    <asset:stylesheet src="sliderSection.css"/>
    <asset:stylesheet src="demo.css"/>
    <asset:stylesheet src="common.css"/>
    <asset:stylesheet src="style2.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="columnas.css"/>
    <asset:stylesheet src="sBG.css"/>
    <asset:stylesheet src="slideBG.css"/>
    <asset:stylesheet src="normalize.css"/>
</head>


<body>
<header>
    <div class="container" id="contenedor">

        <h1 class="icon-semaforo">Semáforo</h1>
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/home')}">Inicio</a>
            <a href="">¿Quienes Somos?</a>
            <a ref="${createLink(uri: '/equipo')}">Equipo</a>
            <g:if test="${session.cliente}" >
                <li><a href="#">${session.cliente.nombre}</a>
                    <ul>
                        <li><a href="">Mi perfil</a></li>
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

<ul class="cb-slideshow">
    <li><span>1</span><div><h3>Misión</h3></div></li>
    <li><span>Image 02</span><div><h3>Visión</h3></div></li>
    <li><span>Image 03</span><div><h3>Cómo Trabamos</h3></div></li>
    <li><span>Image 04</span><div><h3>Contacto</h3></div></li>
    <li><span>Image 05</span><div><h3>Otro campo</h3></div></li>
    <li><span>Image 06</span><div><h3>ultima chachara</h3></div></li>
</ul>


</body>
</html>