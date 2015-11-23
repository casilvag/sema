<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 08/11/2015
  Time: 04:11 PM
--%>

<%@ page import="semaforo.Cita" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="indexApp"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="createApp"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="show-cita" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list cita">

        <g:if test="${citaInstance?.fecha}">
            <li class="fieldcontain">
                <span id="fecha-label" class="property-label"><g:message code="cita.fecha.label" default="Fecha" /></span>

                <span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${citaInstance?.fecha}" /></span>

            </li>
        </g:if>

        <g:if test="${citaInstance?.lugar}">
            <li class="fieldcontain">
                <span id="lugar-label" class="property-label"><g:message code="cita.lugar.label" default="Lugar" /></span>

                <span class="property-value" aria-labelledby="lugar-label"><g:fieldValue bean="${citaInstance}" field="lugar"/></span>

            </li>
        </g:if>


    </ol>
    <g:form url="[resource:citaInstance, action:'deleteApp']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="editApp" resource="${citaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:actionSubmit class="delete" action="deleteApp" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
