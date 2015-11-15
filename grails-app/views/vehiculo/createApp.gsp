<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 02/11/2015
  Time: 11:26 AM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="indexApp"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>

    <div id="create-vehiculo" class="content scaffold-create" role="main">
        <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
        <!--  *********** formulario ***********   -->
        <g:form url="[resource:vehiculoInstance, action:'saveApp']">
            <fieldset class="form">
                <g:render template="formApp"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </g:form>
    </div>
</body>
</html>