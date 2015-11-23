<%@ page import="semaforo.Vendedor" %>


<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="vendedor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${vendedorInstance?.nombre}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="vendedor.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" maxlength="50" required="" value="${vendedorInstance?.usuario}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="vendedor.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correo" maxlength="50" required="" value="${vendedorInstance?.correo}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="vendedor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" pattern="${vendedorInstance.constraints.password.matches}" required="" value="${vendedorInstance?.password}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="vendedor.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" min="18" value="${vendedorInstance.edad}" required=""/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="vendedor.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" value="${vendedorInstance.cedula}" required=""/>

</div>
</div>

%{--<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'cita', 'error')} ">
	<label for="cita">
		<g:message code="vendedor.cita.label" default="Cita" />

	</label>
	<g:select name="cita" from="${semaforo.Cita.list()}" multiple="multiple" optionKey="id" size="5" value="${vendedorInstance?.cita*.id}" class="many-to-many"/>

</div>
</div>--}%

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="vendedor.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${semaforo.Empresa.list()}" optionKey="id" required="" value="${vendedorInstance?.empresa?.id}" class="many-to-one selectpicker form-control"/>

</div>
</div>