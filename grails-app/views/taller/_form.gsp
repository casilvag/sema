<%@ page import="semaforo.Taller" %>

<div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: tallerInstance, field: 'nombre', 'error')} required">
        <label for="nombre">
            <g:message code="taller.nombre.label" default="Nombre" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="form-control" name="nombre" maxlength="50" required="" value="${tallerInstance?.nombre}"/>

    </div>
</div>

<div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: tallerInstance, field: 'direccion', 'error')} required">
        <label for="direccion">
            <g:message code="taller.direccion.label" default="Direccion" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="form-control" name="direccion" maxlength="50" required="" value="${tallerInstance?.direccion}"/>

    </div>
</div>

<div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: tallerInstance, field: 'especialidad', 'error')} required">
        <label for="especialidad">
            <g:message code="taller.especialidad.label" default="Especialidad" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="form-control" name="especialidad" maxlength="50" required="" value="${tallerInstance?.especialidad}"/>

    </div>
</div>
