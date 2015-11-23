<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 21/11/2015
  Time: 04:48 PM
--%>

<%@ page import="semaforo.Vehiculo" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
    <asset:stylesheet src="vehReqView.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="style3.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="columnas.css"/>
    <asset:stylesheet src="default.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <asset:stylesheet src="bootstrap-select.css"/>
    <asset:javascript src="bootstrap-select.js"/>
    <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<header>

    <div class="container">
        <h1 class="icon-semaforo">Semáforo</h1><!-- BARRA DE MENU (CONSOLIDADA) -->
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/')}">Inicio</a>
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
                <a href="${createLink(uri: '/ingresar')}">Login</a>
            </g:else>
        </nav>

    </div>
</header>

<br><br><br><br>
<div class="container">
    <div class="row-fluid">
        <div class="col-md-4">
            <h3>Datos del seguro</h3>
            <g:if test="${vehiculoInstance?.seguro?.empresa?.nombre}">
                <li class="fieldcontain">
                    <span class="property-label">Empresa: </span>
                    <span class="property-value" aria-labelledby="valor-label">${vehiculoInstance?.seguro?.empresa?.nombre}</span>
                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.seguro?.valor}">
                <li class="fieldcontain">
                    <span class="property-label">Valor: </span>
                    <span class="property-value" aria-labelledby="valor-label">${vehiculoInstance?.seguro?.valor}</span>
                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.valor}">
                <li class="fieldcontain">
                    <span id="valor-label" class="property-label">Valor Asegurado: </span>

                    <span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${vehiculoInstance}" field="valor"/></span>

                </li>
            </g:if>

            <br>
            <g:link class="btn btn-primary" controller="vehiculo" action="#" resource="${vehiculoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>


        </div>
        <div class="col-md-4">
            <h3>Datos del vehiculo</h3>
            <g:if test="${vehiculoInstance?.placa}">
                <li class="fieldcontain">
                    <span id="placa-label" class="property-label"><g:message code="vehiculo.placa.label" default="Placa: " /></span>

                    <span class="property-value" aria-labelledby="placa-label"><g:fieldValue bean="${vehiculoInstance}" field="placa"/></span>

                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.color}">
                <li class="fieldcontain">
                    <span id="color-label" class="property-label"><g:message code="vehiculo.color.label" default="Color: " /></span>

                    <span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${vehiculoInstance}" field="color"/></span>

                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.chasis}">
                <li class="fieldcontain">
                    <span id="chasis-label" class="property-label"><g:message code="vehiculo.chasis.label" default="Chasis: " /></span>

                    <span class="property-value" aria-labelledby="chasis-label"><g:fieldValue bean="${vehiculoInstance}" field="chasis"/></span>

                </li>
            </g:if>


            <g:if test="${vehiculoInstance?.motor}">
                <li class="fieldcontain">
                    <span id="motor-label" class="property-label"><g:message code="vehiculo.motor.label" default="Motor: " /></span>

                    <span class="property-value" aria-labelledby="motor-label"><g:fieldValue bean="${vehiculoInstance}" field="motor"/></span>

                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.seguro?.valorModelo?.guia?.tipo_vehiculo}">
                <li class="fieldcontain">
                    <span class="property-label">Tipo Vehiculo :</span>
                    <span class="property-value" aria-labelledby="motor-label">${vehiculoInstance?.seguro?.valorModelo?.guia?.tipo_vehiculo}</span>
                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.seguro?.valorModelo?.guia?.marca}">
                <li class="fieldcontain">
                    <span class="property-label">Marca :</span>
                    <span class="property-value" aria-labelledby="motor-label">${vehiculoInstance?.seguro?.valorModelo?.guia?.marca}</span>
                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.seguro?.valorModelo?.guia?.referencia1}">
                <li class="fieldcontain">
                    <span class="property-label">Referencia1 :</span>
                    <span class="property-value" aria-labelledby="motor-label">${vehiculoInstance?.seguro?.valorModelo?.guia?.referencia1}</span>
                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.seguro?.valorModelo?.guia?.referencia2}">
                <li class="fieldcontain">
                    <span class="property-label">Referencia2 :</span>
                    <span class="property-value" aria-labelledby="motor-label">${vehiculoInstance?.seguro?.valorModelo?.guia?.referencia2}</span>
                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.seguro?.valorModelo?.guia?.referencia3}">
                <li class="fieldcontain">
                    <span class="property-label">Referencia3 :</span>
                    <span class="property-value" aria-labelledby="motor-label">${vehiculoInstance?.seguro?.valorModelo?.guia?.referencia3}</span>
                </li>
            </g:if>

            <br>
            <g:link class="btn btn-primary" action="edit" resource="${vehiculoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>

        </div>
        <div class="col-md-4">
            <h3>Datos del Asegurado</h3>

            <g:if test="${vehiculoInstance?.cliente?.nombre}">
                <li class="fieldcontain">
                    <span id="cliente-label" class="property-label"><g:message code="vehiculo.cliente.label" default="Cliente: " /></span>
                    <span class="property-value" aria-labelledby="cliente-label">${vehiculoInstance?.cliente?.nombre}</span>
                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.cliente?.cedula}">
                <li class="fieldcontain">
                    <span id="cedula-label" class="property-label"><g:message code="cliente.cedula.label" default="Cedula: " /></span>
                    <span class="property-value" aria-labelledby="cedula-label">${vehiculoInstance?.cliente?.cedula}</span>
                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.cliente?.correo}">
                <li class="fieldcontain">
                    <span id="correo-label" class="property-label"><g:message code="cliente.correo.label" default="Correo: " /></span>
                    <span class="property-value" aria-labelledby="correo-label">${vehiculoInstance?.cliente?.correo}</span>

                </li>
            </g:if>

            <br>
            <g:link class="btn btn-primary" controller="cliente" action="edit" resource="${vehiculoInstance.cliente}"><g:message code="default.button.edit.label" default="Edit" /></g:link>

        </div>
    </div>
</div>

<div class="container">
    <h3>Cita de revision</h3>
</div>

</body>
</html>