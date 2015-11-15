
<%@ page import="semaforo.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cliente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'cliente.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'cliente.usuario.label', default: 'Usuario')}" />
					
						<g:sortableColumn property="correo" title="${message(code: 'cliente.correo.label', default: 'Correo')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'cliente.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'cliente.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'cliente.cedula.label', default: 'Cedula')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: clienteInstance, field: "usuario")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "correo")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "cedula")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clienteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
