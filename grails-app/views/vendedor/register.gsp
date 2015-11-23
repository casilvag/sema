<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="loginStyle.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="bootstrap-select.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <asset:javascript src="bootstrap-select.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <g:set var="entityName" value="${message(code: 'vendedor.label', default: 'Vendedor')}"/>
    <title>Regístrate en Semáforo como Vendedor</title>
</head>

<body>
<header>
    <div class="container">
        <h1 class="icon-semaforo">Semáforo</h1>
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>
        <nav class="menu">
            <a href="${createLink(uri: '/')}">Inicio</a>
            <a href="${createLink(uri: '/whoWeAre')}">¿Quiénes Somos?</a>
            <a href="${createLink(uri: '/equipo')}">Equipo</a>
            <g:if test="${session.vendedor}">
                <li><a href="#">${session.vendedor.nombre}</a>
                    <ul>
                        <li><a href="">Mi Perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="vendedor" action="logout">Salir</g:link> </li>
                    </ul>
                </li>
            </g:if>
            <g:else>
                <a href="${createLink(uri: '/ingresar')}">Login</a>
            </g:else>
        </nav>
    </div>
</header>

<div id="create-vendedor" class="content scaffold-create" role="main">
    <g:if test="${session.vendedor}">
        <g:if test="${flash.message}">
            <div class="alert alert-danger" role="alert">
                <div class="message" role="status">${flash.message}</div>
            </div>
        </g:if>
    </g:if>
    <g:else>
        <br><br><br><br><br><br>

        <div class="container">
            <h3 class="form-4">Formulario Creación cuenta de Vendedor</h3>
            <g:form url="[resource:vendedorInstance, action:'registerLogin']" class="form-4">
                <g:render template="form"/>
                <br>
                <g:submitButton class="form-4" id="regButton" name="create" value="Registrarse"/>
                <a class="btn btn-default" href="${createLink(uri: '/')}">Volver</a>
            </g:form>
        </div>
    </g:else>
    <g:hasErrors bean="${vendedorInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${vendedorInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
</div>

<footer>
    <br><br><br><br>
    <div class="container">
        <p class="copy">Semáforo &copy; 2015</p>
        <div class="sociales">
            <a class="icon-fb" href="#"></a>
            <a class="icon-twitter" href="#"></a>
            <a class="icon-gp" href="#"></a>
        </div>
    </div>
</footer>
<script>
    <g:hasErrors bean="${vendedorInstance}">
    <g:eachError bean="${vendedorInstance}" var="error">
    document.querySelector(".error.${error.field}").innerHTML = '<g:message error="${error}"/>';
    </g:eachError>
    </g:hasErrors>
</script>
</body>
</html>