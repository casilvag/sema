<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 30/10/2015
  Time: 02:51 PM
--%>

<!DOCTYPE html>
<html lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">

    <title>Semáforo</title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="theme.css"/>
    <asset:javascript src="jquery.min.js" />
    <g:layoutHead/>

</head>
<!-- NAVBAR
================================================== -->
<body>
    <nav class="navbar navbar-collapse collapse in" aria-expanded="true">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span style="background: #005599" class="icon-bar"></span>
                    <span style="background: #005599" class="icon-bar"></span>
                    <span style="background: #005599" class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${createLink(uri: '/home')}">Proyecto Semáforo</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="${createLink(uri: '/somos')}">Quienes somos?</a></li>
                    <li><a href="${createLink(uri: '/equipo')}">Equipo</a></li>
                </ul>
                <g:if test="${session.cliente}" >
                    <ul class="nav navbar-nav pull-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> ${session.cliente.nombre} <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Perfil</a></li>
                                <li><a href="#">Configuración</a></li>
                                <li><g:link controller="cliente" action ="logout">Logout</g:link></li>
                            </ul>
                        </li>
                    </ul>

                </g:if>
                <g:else>
                    <g:form controller="cliente" action="login" class="navbar-form navbar-right">
                        <div class="form-group">
                            <input type="text" placeholder="Email" class="form-control form-fixer" name="correo">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Contraseña" class="form-control form-fixer" name="password">
                        </div>
                        <button type="submit" class="btn btn-success">Sign in</button>
                    </g:form>
                </g:else>
            </div><!--/.navbar-collapse -->
        </div>
    </nav>
    <div class="container" role="main">

        <g:layoutBody/>

        <hr>
        <footer>
            <p>&copy; Universidad Nacional de Colombia, 2015</p>
        </footer>
    </div>

<asset:javascript src="bootstrap.min.js"/>
</body></html>