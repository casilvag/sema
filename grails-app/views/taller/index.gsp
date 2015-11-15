<%--
  Created by IntelliJ IDEA.
  User: David Alexander
  Date: 06/11/2015
  Time: 04:06 PM
--%>


<%@ page import="semaforo.Taller" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'taller.label', default: 'Taller')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-taller" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-taller" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="nombre" title="${message(code: 'taller.nombre.label', default: 'Nombre')}" />

            <g:sortableColumn property="usuario" title="${message(code: 'taller.usuario.label', default: 'Direccion')}" />

            <g:sortableColumn property="correo" title="${message(code: 'taller.correo.label', default: 'Especialidad')}" />


        </tr>
        </thead>
        <tbody>
        <g:each in="${tallerInstanceList}" status="i" var="tallerInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${tallerInstance.id}">${fieldValue(bean: tallerInstance, field: "nombre")}</g:link></td>

                <td>${fieldValue(bean: tallerInstance, field: "nombre")}</td>

                <td>${fieldValue(bean: tallerInstance, field: "direccion")}</td>

                <td>${fieldValue(bean: tallerInstance, field: "especialidad")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${tallerInstanceCount ?: 0}" />
    </div>
</div>
</body>
</html>
