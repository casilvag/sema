<%--
  Created by IntelliJ IDEA.
  User: Juan, David
  Date: 31/10/2015
  Time: 04:10 PM
--%>

<html>
<head>
    <meta name="layout" content="navBarAndLogin"/>

</head>
<body>
<g:if test="${session.cliente}">
    <h1>Tabla de usuarios:</h1>
    <h2>Con fines de verifiacion de la sesion</h2>
    <table class="table">
    <tr>
        <td><strong>N°</strong></td>
        <td><strong>Nombre</strong></td>
        <td><strong>Email</strong></td>

        <g:each in="${clientes}" var="user" status="i">
            <tr> <td>${i+1}</td>  <td>${user.nombre}</td>  <td>${user.correo}</td><tr>
        </g:each>
    </table>
</g:if>
<g:else>
    <div class="alert alert-danger" role="alert">
        <p>${flash.message}</p>
    <a class="btn btn-default" href="${createLink(uri: '/home')}">Volver</a>
</g:else>
</body>
</html>
