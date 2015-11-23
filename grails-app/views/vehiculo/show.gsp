
<%@ page import="semaforo.Vehiculo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vehiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
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
					
						<span class="property-value" aria-labelledby="seguro-label"><g:link controller="seguro" action="show" id="${vehiculoInstance?.seguro?.id}">${vehiculoInstance?.seguro?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculoInstance?.placa}">
				<li class="fieldcontain">
					<span id="placa-label" class="property-label"><g:message code="vehiculo.placa.label" default="Placa" /></span>
					
						<span class="property-value" aria-labelledby="placa-label"><g:fieldValue bean="${vehiculoInstance}" field="placa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculoInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="vehiculo.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${vehiculoInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculoInstance?.chasis}">
				<li class="fieldcontain">
					<span id="chasis-label" class="property-label"><g:message code="vehiculo.chasis.label" default="Chasis" /></span>
					
						<span class="property-value" aria-labelledby="chasis-label"><g:fieldValue bean="${vehiculoInstance}" field="chasis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculoInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="vehiculo.cliente.label" default="Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cliente-label"><g:link controller="cliente" action="show" id="${vehiculoInstance?.cliente?.id}">${vehiculoInstance?.cliente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculoInstance?.coberturaParcial}">
				<li class="fieldcontain">
					<span id="coberturaParcial-label" class="property-label"><g:message code="vehiculo.coberturaParcial.label" default="Cobertura Parcial" /></span>
					
						<span class="property-value" aria-labelledby="coberturaParcial-label"><g:fieldValue bean="${vehiculoInstance}" field="coberturaParcial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculoInstance?.coberturaTotal}">
				<li class="fieldcontain">
					<span id="coberturaTotal-label" class="property-label"><g:message code="vehiculo.coberturaTotal.label" default="Cobertura Total" /></span>
					
						<span class="property-value" aria-labelledby="coberturaTotal-label"><g:fieldValue bean="${vehiculoInstance}" field="coberturaTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculoInstance?.motor}">
				<li class="fieldcontain">
					<span id="motor-label" class="property-label"><g:message code="vehiculo.motor.label" default="Motor" /></span>
					
						<span class="property-value" aria-labelledby="motor-label"><g:fieldValue bean="${vehiculoInstance}" field="motor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculoInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="vehiculo.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${vehiculoInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vehiculoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vehiculoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
