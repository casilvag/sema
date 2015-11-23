<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 15/11/2015
  Time: 04:05 PM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="navBarAndLogin">
    <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<g:uploadForm action="cargar">
    Por favor cargue sus pólizas: <input type="file" name="csv" required="required"/>
    <button>Subir</button>
</g:uploadForm>
</body>
</html>