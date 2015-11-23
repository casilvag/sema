<%@ page import="semaforo.Cita" %>



<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fecha', 'error')} required">
    <label for="fecha">
        <g:message code="cita.fecha.label" default="Fecha" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="fecha" precision="day"  value="${citaInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'lugar', 'error')} required">
    <label for="lugar">
        <g:message code="cita.lugar.label" default="Lugar" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="lugar" required="" value="${citaInstance?.lugar}"/>

</div>

<div class="hidden">
    <div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'cliente', 'error')} required">
        <label for="cliente">
            <g:message code="cita.cliente.label" default="Cliente" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="cliente" name="cliente.id" from="${semaforo.Cliente.get(session.cliente.id)}" optionKey="id" required="" value="${citaInstance?.cliente?.id}" class="many-to-one"/>

    </div>
</div>
