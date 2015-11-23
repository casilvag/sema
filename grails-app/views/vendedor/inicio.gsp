<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <title>Inicio Vendedor</title>
</head>

<body>
    <g:if test="${session.vendedor}">
        <h1>Tabla de vendedores:</h1>
        <h2>con fines de verificación de la sesión</h2>
        <table class="table">
            <tr>
                <td><strong>N°</strong></td>
                <td><strong>Nombre</strong></td>
                <td><strong>Email</strong></td>
                <g:each in="${vendedores}" var="user" status="i">
                    <tr>
                        <td>${i+1}</td>
                        <td>${user.nombre}</td>
                        <td>${user.correo}</td>
                    </tr>
                </g:each>
            </tr>
        </table>
    </g:if>
    <g:else>
        <div class="alert alert-danger" role="alert">
            <p>${flash.message}</p>
            <a class="btn btn-default" href="${createLink(uri: '/home')}">Volver</a>
        </div>
    </g:else>
</body>
</html>