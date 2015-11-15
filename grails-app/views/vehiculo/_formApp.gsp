<%@ page import="semaforo.Vehiculo" %>


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

<div class="hidden">
    <div class="fieldcontain ${hasErrors(bean: vehiculoInstance, field: 'cliente', 'error')} required">
        <label for="cliente">
            <g:message code="vehiculo.cliente.label" default="Cliente" />
        </label>
        <g:select id="cliente" name="cliente.id" from="${semaforo.Cliente.get(session.cliente.id)}" optionKey="id" required="" value="${vehiculoInstance?.cliente?.id}" class="many-to-one"/>
    </div>
</div>