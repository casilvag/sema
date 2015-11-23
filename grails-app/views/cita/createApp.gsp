<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 08/11/2015
  Time: 03:39 PM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>

<div id="create-cita" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
    <!-- ************form*************** -->
    <g:form url="[resource:citaInstance, action:'saveApp']" >
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