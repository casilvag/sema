<%@ page import="semaforo.Vehiculo" %>



<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'seguro', 'error')} ">
	<label for="seguro">
		<g:message code="vehiculo.seguro.label" default="Seguro" />
		
	</label>
	<g:select id="seguro" name="seguro.id" from="${semaforo.Seguro.list()}" optionKey="id" value="${vehiculoInstance?.seguro?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'placa', 'error')} required">
	<label for="placa">
		<g:message code="vehiculo.placa.label" default="Placa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placa" required="" value="${vehiculoInstance?.placa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'modelo', 'error')} required">
	<label for="modelo">
		<g:message code="vehiculo.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="modelo" type="number" value="${vehiculoInstance.modelo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="vehiculo.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${vehiculoInstance?.color}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'marca', 'error')} required">
	<label for="marca">
		<g:message code="vehiculo.marca.label" default="Marca" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marca" required="" value="${vehiculoInstance?.marca}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="vehiculo.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${semaforo.Cliente.list()}" optionKey="id" required="" value="${vehiculoInstance?.cliente?.id}" class="many-to-one"/>

</div>

