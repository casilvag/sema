<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 03/11/2015
  Time: 03:56 AM
--%>

<%@ page import="semaforo.Vehiculo" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="create" action="createApp"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="list-vehiculo" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table>
            <thead>
            <tr>

                <th><g:message code="vehiculo.seguro.label" default="Seguro" /></th>

                <g:sortableColumn property="placa" title="${message(code: 'vehiculo.placa.label', default: 'Placa')}" />

                <g:sortableColumn property="modelo" title="${message(code: 'vehiculo.modelo.label', default: 'Modelo')}" />

                <g:sortableColumn property="color" title="${message(code: 'vehiculo.color.label', default: 'Color')}" />

                <g:sortableColumn property="marca" title="${message(code: 'vehiculo.marca.label', default: 'Marca')}" />
                
                <td>Editar</td>


            </tr>
            </thead>
            <tbody>
            <g:each in="${vehiculoInstanceList}" status="i" var="vehiculoInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="showApp" id="${vehiculoInstance.id}">${fieldValue(bean: vehiculoInstance, field: "seguro")}</g:link></td>

                    <td>${fieldValue(bean: vehiculoInstance, field: "placa")}</td>

                    <td>${fieldValue(bean: vehiculoInstance, field: "modelo")}</td>

                    <td>${fieldValue(bean: vehiculoInstance, field: "color")}</td>

                    <td>${fieldValue(bean: vehiculoInstance, field: "marca")}</td>

                    <td><g:link action="showApp" id="${vehiculoInstance.id}"> <asset:image src="skin/database_edit.png" alt="Grails"/></g:link></td>

                </tr>
            </g:each>
            </tbody>
        </table>
        <div class="pagination">
            <g:paginate total="${vehiculoInstanceCount ?: 0}" />
        </div>
    </div>
<g:link action="indexApp" controller="cita">solcitar cita de revision</g:link>
</body>
</html>