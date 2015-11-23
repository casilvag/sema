<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 08/11/2015
  Time: 06:51 PM
--%>

<%@ page import="semaforo.Cita" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="indexApp"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="createApp"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="edit-cita" class="content scaffold-edit" role="main">
    <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${citaInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${citaInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource:citaInstance, action:'updateApp']" method="PUT" >
        <g:hiddenField name="version" value="${citaInstance?.version}" />
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