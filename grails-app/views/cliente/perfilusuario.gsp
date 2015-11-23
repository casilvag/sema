<%--
  Created by IntelliJ IDEA.
  User: David Alexander
  Date: 15/11/2015
  Time: 04:05 PM
--%>


<html lang="en">
<head>
    <title>Semáforo - Mi Perfil</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="demo.css"/>
    <asset:stylesheet src="common.css"/>
    <asset:stylesheet src="style2.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="columnas.css"/>
    <asset:stylesheet src="responsiveslides.css"/>
    <asset:javascript src="responsiveslides.js"/>
    <asset:stylesheet src="animate.css"/>
    <asset:javascript src="wow.min.js"/>
    <asset:stylesheet src="default.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>

    <!--[if IE]>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
            <![endif]-->
    <title>Bootstrap user profile template</title>
    <!-- BOOTSTRAP STYLE SHEET -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME STYLE SHEET FOR BEAUTIFUL ICONS -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <style type="text/css">
    .btn-social {
        color: white;
        opacity: 0.8;
    }
    .btn-social:hover {
        color: white;
        opacity: 1;
        text-decoration: none;
    }

    </style>
    <script>
        $(document).ready(function(){
            $("#slider-home").responsiveSlides({
                speed:300,
                nav: true,
                namespace: 'slid-btns',
                titleAnimation: 'bounceIn'
            });
        });
    </script>
</head>


<body>
<header>


    <div class="container">
        <h1 class="icon-semaforo">Semáforo</h1><!-- BARRA DE MENU (CONSOLIDADA) -->
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/')}">Inicio</a>
            <a href="${createLink(uri: '/whoWeAre')}">¿Quienes Somos?</a>
            <a href="${createLink(uri: '/equipo')}">Equipo</a>
            <g:if test="${session.cliente}" >
                <li><a href="#">${session.cliente.nombre}</a>
                    <ul>
                        <li><a href="">Mi perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="cliente" action ="logout">Salir</g:link></li>
                    </ul>
                </li>
            </g:if>

            <g:else>
                <a href="${createLink(uri: '/ingresar')}">Login</a>
            </g:else>


        </nav>

    </div>
</header>

<br><br><br><br><br><br>

</body>

</html>