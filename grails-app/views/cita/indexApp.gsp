<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 08/11/2015
  Time: 06:38 PM
--%>

<%@ page import="semaforo.Cita" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="createApp"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-cita" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="fecha" title="${message(code: 'cita.fecha.label', default: 'Fecha')}" />

            <g:sortableColumn property="lugar" title="${message(code: 'cita.lugar.label', default: 'Lugar')}" />


        </tr>
        </thead>
        <tbody>
        <g:each in="${citaInstanceList}" status="i" var="citaInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="showApp" id="${citaInstance.id}">${fieldValue(bean: citaInstance, field: "fecha")}</g:link></td>

                <td>${fieldValue(bean: citaInstance, field: "lugar")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${citaInstanceCount ?: 0}" />
    </div>
</div>
</body>
</html>