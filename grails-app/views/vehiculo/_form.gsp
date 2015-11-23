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
	<g:textField name="placa" pattern="${vehiculoInstance.constraints.placa.matches}" required="" value="${vehiculoInstance?.placa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="vehiculo.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${vehiculoInstance?.color}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'chasis', 'error')} required">
	<label for="chasis">
		<g:message code="vehiculo.chasis.label" default="Chasis" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="chasis" required="" value="${vehiculoInstance?.chasis}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="vehiculo.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${semaforo.Cliente.list()}" optionKey="id" required="" value="${vehiculoInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'coberturaParcial', 'error')} required">
	<label for="coberturaParcial">
		<g:message code="vehiculo.coberturaParcial.label" default="Cobertura Parcial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="coberturaParcial" value="${fieldValue(bean: vehiculoInstance, field: 'coberturaParcial')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'coberturaTotal', 'error')} required">
	<label for="coberturaTotal">
		<g:message code="vehiculo.coberturaTotal.label" default="Cobertura Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="coberturaTotal" value="${fieldValue(bean: vehiculoInstance, field: 'coberturaTotal')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'motor', 'error')} required">
	<label for="motor">
		<g:message code="vehiculo.motor.label" default="Motor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motor" required="" value="${vehiculoInstance?.motor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="vehiculo.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: vehiculoInstance, field: 'valor')}" required=""/>

</div>

