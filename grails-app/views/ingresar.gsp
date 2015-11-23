<%--
  Created by IntelliJ IDEA.
  User: SAMUELLEONARDO
  Date: 6/11/2015
  Time: 2:29 AM
--%>

<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/carousel/# -->
<html lang="en">
<head>
    <title>Semáforo - Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="demo.css"/>
    <asset:stylesheet src="common.css"/>
    <asset:stylesheet src="style2.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="columnas.css"/>
    <asset:stylesheet src="responsiveslides.css"/>
    <asset:javascript src="responsiveslides.js"/>
    <asset:stylesheet src="animate.css"/>
    <asset:javascript src="wow.min.js"/>
    <asset:stylesheet src="default.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <asset:stylesheet src="loginStyle.css"/>

</head>

<body>

<header>
    <div class="container">

        <h1 class="icon-semaforo">Semáforo</h1>
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/home')}">Inicio</a>
            <a href="${createLink(uri: '/whoWeAre')}">¿Quienes Somos?</a>
            <a href="${createLink(uri: '/equipo')}">Equipo</a>
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
                <a ref=#>Login</a>
            </g:else>
        </nav>

    </div>
</header>
<br><br><br><br><br><br>
<g:form controller="cliente" action="login" class="form-4">

    <h6>Ingresar</h6>

    <g:if test="${request.message}">
        <div class="alert alert-danger" role="alert" id="nonReg">
            <div class="message" align="center" role="status">${request.message}</div>
        </div>
    </g:if>

    <p>
        <input type="text" name="correo" placeholder="Usuario o Email" required>
    </p>

    <p>

        <input type="password" name='password' placeholder="Contraseña" required>
    </p>

    <p>
        <input type="submit" name="submit" value="Iniciar Sesión">
    </p><br>

    <a href="${createLink(uri: '/')}">Volver</a>
</g:form>



    <br><br><br><br>
    <div class="container" id="foot">
        <h6 class="copy">Semáforo &copy; 2015</h6>
        <div class="sociales">
            <a class="icon-fb" href="#"></a>
            <a class="icon-twitter" href="#"></a>
            <a class="icon-gp" href="#"></a>
        </div>
    </div>

</body>
</html>