
<%@ page import="semaforo.Vendedor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendedor.label', default: 'Vendedor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vendedor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vendedor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'vendedor.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'vendedor.usuario.label', default: 'Usuario')}" />
					
						<g:sortableColumn property="correo" title="${message(code: 'vendedor.correo.label', default: 'Correo')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'vendedor.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'vendedor.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'vendedor.cedula.label', default: 'Cedula')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vendedorInstanceList}" status="i" var="vendedorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vendedorInstance.id}">${fieldValue(bean: vendedorInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: vendedorInstance, field: "usuario")}</td>
					
						<td>${fieldValue(bean: vendedorInstance, field: "correo")}</td>
					
						<td>${fieldValue(bean: vendedorInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: vendedorInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: vendedorInstance, field: "cedula")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vendedorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
