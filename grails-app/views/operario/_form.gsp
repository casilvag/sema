<%@ page import="semaforo.Operario" %>



<div class="fieldcontain ${hasErrors(bean: operarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="operario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${operarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="operario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" maxlength="50" required="" value="${operarioInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operarioInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="operario.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correo" maxlength="50" required="" value="${operarioInstance?.correo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="operario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" pattern="${operarioInstance.constraints.password.matches}" required="" value="${operarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operarioInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="operario.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" min="18" value="${operarioInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: operarioInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="operario.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" value="${operarioInstance.cedula}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: operarioInstance, field: 'especialidad', 'error')} required">
	<label for="especialidad">
		<g:message code="operario.especialidad.label" default="Especialidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="especialidad" required="" value="${operarioInstance?.especialidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operarioInstance, field: 'taller', 'error')} required">
	<label for="taller">
		<g:message code="operario.taller.label" default="Taller" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="taller" name="taller.id" from="${semaforo.Taller.list()}" optionKey="id" required="" value="${operarioInstance?.taller?.id}" class="many-to-one"/>

</div>

