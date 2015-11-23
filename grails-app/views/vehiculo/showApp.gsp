<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 02/11/2015
  Time: 11:49 AM
--%>

<%@ page import="semaforo.Vehiculo" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="indexApp"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li><g:link class="create" action="createApp"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>

    <div id="show-vehiculo" class="content scaffold-show" role="main">
        <h1><g:message code="default.show.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ol class="property-list vehiculo">

            <g:if test="${vehiculoInstance?.seguro}">
                <li class="fieldcontain">
                    <span id="seguro-label" class="property-label"><g:message code="vehiculo.seguro.label" default="Seguro" /></span>

                    <span class="property-value" aria-labelledby="seguro-label"><g:link controller="seguro" action="showApp" id="${vehiculoInstance?.seguro?.id}">${vehiculoInstance?.seguro?.encodeAsHTML()}</g:link></span>

                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.placa}">
                <li class="fieldcontain">
                    <span id="placa-label" class="property-label"><g:message code="vehiculo.placa.label" default="Placa" /></span>

                    <span class="property-value" aria-labelledby="placa-label"><g:fieldValue bean="${vehiculoInstance}" field="placa"/></span>

                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.modelo}">
                <li class="fieldcontain">
                    <span id="modelo-label" class="property-label"><g:message code="vehiculo.modelo.label" default="Modelo" /></span>

                    <span class="property-value" aria-labelledby="modelo-label"><g:fieldValue bean="${vehiculoInstance}" field="modelo"/></span>

                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.color}">
                <li class="fieldcontain">
                    <span id="color-label" class="property-label"><g:message code="vehiculo.color.label" default="Color" /></span>

                    <span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${vehiculoInstance}" field="color"/></span>

                </li>
            </g:if>

            <g:if test="${vehiculoInstance?.marca}">
                <li class="fieldcontain">
                    <span id="marca-label" class="property-label"><g:message code="vehiculo.marca.label" default="Marca" /></span>

                    <span class="property-value" aria-labelledby="marca-label"><g:fieldValue bean="${vehiculoInstance}" field="marca"/></span>

                </li>
            </g:if>

        </ol>
        <g:form url="[resource:vehiculoInstance, action:'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="editApp" resource="${vehiculoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete" action="deleteApp" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </fieldset>
        </g:form>
    </div>

</body>
</html>