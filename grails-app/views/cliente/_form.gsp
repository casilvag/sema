<%@ page import="semaforo.Cliente" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} required">
		<label for="nombre">
			<span class="error nombre"></span>
			<g:message code="cliente.nombre.label" default="Nombre" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="nombre" maxlength="50" required="" value="${clienteInstance?.nombre}"/>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'usuario', 'error')} required">
		<label for="usuario">
			<g:message code="cliente.usuario.label" default="Usuario" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="usuario" maxlength="50" required="" value="${clienteInstance?.usuario}"/>
		<span class="error usuario"></span>

	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'correo', 'error')} required">
		<label for="correo">
			<g:message code="cliente.correo.label" default="Correo" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="correo" maxlength="50" required="" value="${clienteInstance?.correo}"/>
		<span class="error correo"></span>

	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'password', 'error')} required">
		<label for="password">
			<g:message code="cliente.password.label" default="Password" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="password" required="" value="${clienteInstance?.password}"/>
		<span class="error password"></span>

	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'edad', 'error')} required">
		<label for="edad">
			<g:message code="cliente.edad.label" default="Edad" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="edad" type="number" min="18" value="${clienteInstance.edad}" required=""/>
		<span class="error edad"></span>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cedula', 'error')} required">
		<label for="cedula">
			<g:message code="cliente.cedula.label" default="Cedula" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="cedula" type="number" value="${clienteInstance.cedula}" required=""/>
		<span class="error cedula"></span>

	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'tarjetaCredito', 'error')} required">
		<label for="tarjetaCredito">
			<g:message code="cliente.tarjetaCredito.label" default="Tarjeta Credito" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="tarjetaCredito" maxlength="50" required="" value="${clienteInstance?.tarjetaCredito}"/>
		<span class="error tarjetaCredito"></span>
	</div>
</div>