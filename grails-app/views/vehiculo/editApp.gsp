<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 03/11/2015
  Time: 01:04 AM
--%>

<%@ page import="semaforo.Vehiculo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="navBarAndLogin">
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="indexApp"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li><g:link class="create" action="createApp"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="edit-vehiculo" class="content scaffold-edit" role="main">
        <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${vehiculoInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${vehiculoInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource:vehiculoInstance, action:'updateApp']" method="PUT" >
            <g:hiddenField name="version" value="${vehiculoInstance?.version}" />
            <fieldset class="form">
                <g:render template="formApp"/>
            </fieldset>
            <fieldset class="buttons">
                <g:actionSubmit class="save" action="updateApp" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            </fieldset>
        </g:form>
    </div>
    </body>
</html>