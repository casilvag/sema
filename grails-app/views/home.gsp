<%--
  Created by IntelliJ IDEA.
  User: SAMUELLEONARDO
  Date: 1/11/2015
  Time: 8:36 PM
--%>

<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/carousel/# -->
<html lang="en">
<head>
    <title>Semáforo - Inicio</title>
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
                        <li><a href="/Semaforo/cliente/perfilusuario">Mi perfil</a></li>
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



<g:if test="${session.rol == "clienteApp"}">
<!--SENTENCIAS PARA CUANDO EL CLIENTE SE REGISTRA-->

    <style type="text/css">
    body {
        background: url("https://bullbearanalytics.com/wp-content/uploads/2014/09/bba-city-background-optimized.jpg");
        background-repeat:no-repeat;
        -webkit-background-size:cover;
        -moz-background-size:cover;
        -o-background-size:cover;
        background-size:cover;
        background-position:center;
        background-attachment: fixed;
    }
    </style>
    <br><br><br><br>
    <section id="mostrar">
        <h2>Cotiza por el seguro de tu vehículo!</h2>
        <p> Si te interesa algún seguro para tu vehículo, puedes comprarlo</p>
        <p> y nosotros registraremos tu vehículo a tu cuenta</p>
    </section>

    <div class="container">

        <section>

            <ul class="ch-grid">
                <li>
                    <div class="ch-item ch-img-4" id="circle4">
                        <div class="ch-info">
                            <h3>Cotización</h3>
                            <p>Cotiza y compra seguro para tu vehículo!<g:link controller="vehiculo" action ="createRequest">Cotizar</g:link></p>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
    </div>



</g:if>
<g:else>
<!--SI NINGUN ROL ESTA LOG IN-->
    <div class="slider"> <!--BANNER HOME-->
        <ul class="rslides" id="slider-home">
            <li>
                <img src="http://hdwallpapersfit.com/wp-content/uploads/2015/04/City-street-of-Chicago-in-USA-skyscrapers-Wallpaper-Background.jpg" alt="">
                <div class="caption">
                    <h3 class="wow">Regístrate en Semáforo!</h3>
                    <p class="wow">¿No tienes cuenta?... Crea una, registra y afilia tu vehículo de forma rápida</p>
                    <p class="wow">Consulta el estado de tu vehículo en el taller, te notificaremos cuando puedas pasar a recogerlo!</p>
                </div>
            </li>
            <li>
                <img src="http://7-themes.com/data_images/out/21/6839236-traffic-light.jpg" alt="">
                <div class="caption">
                    <h3 class="wow">Ofrece tus de seguros de vehículo!</h3>
                    <p class="wow">Regístrate y da a conocer tu portafolio de seguros de vehículo</p>
                    <p class="wow">Consulta rápidamente las solicitudes de afilicación por parte de los clientes registrados a semáforo!</p>
                </div>
            </li>
            <li>
                <img src="http://vefego.com/i/city-street-hd-wallpaper-resolution-ymi7va.jpg" alt="">
                <div class="caption">
                    <h3 class="wow">Registra tu Taller y haz crecer tu negocio!</h3>
                    <p class="wow">La oportunidad que estabas esperando para ofrecer tus servicios de reparación y mantenimiento de vehículos</p>
                    <p class="wow">Lleva un mejor control de los vehículos que entran a tu taller!</p>
                </div>
            </li>
        </ul>
    </div><!--FIN DEL BANNER SLIDER-->


    <section id="mostrar">
        <h2>¿No tienes cuenta en Semáforo?...</h2>
        <p> Regístrate fácil y rápido!</p>
    </section>

    <div class="container">

        <section>

            <ul class="ch-grid">
                <li>
                    <div class="ch-item ch-img-1" id="circle1">
                        <div class="ch-info">
                            <h3>Cliente</h3>
                            <p>Obtén beneficios para tí y tu vehículo!<g:link controller="cliente" action ="register">Regístrate</g:link></p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="ch-item ch-img-2" id="circle2">
                        <div class="ch-info">
                            <h3>Vendedor</h3>
                            <p>Crea tu cuenta y ofrece tus servicios!<g:link controller="vendedor" action="register">Regístrate</g:link></p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="ch-item ch-img-3" id="circle3">
                        <div class="ch-info">
                            <h3>Taller</h3>
                            <p>Haz crecer tu negocio con más clientes!<a ref="">Próximamente</a></p>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
    </div>
    <!--SECCION INFORMACION-->
    <div class="container">
        <div class="main row">
            <article class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                <p>
                <h3>Importancia de un Seguro de Vehículo</h3>

                Cuando se maneja un automóvil se está expuesto a todo tipo de accidentes
                y de situaciones que pueden ser lesivas para la seguridad de las personas.
                Con motivo de garantizar una reparación mínima en el caso de que exista un
                accidente, la ley establece que aquellos que tengan un vehículo a su cargo
                deban tener un seguro básico que cubra los gastos ocasionados en esas circunstancias.
                De esta manera, por ejemplo, si un auto choca a otro, la aseguradora del automóvil
                cuyo dueño es responsable deberá pagar al dueño del auto chocado la suma que cubra todos
                los gastos ocasionados. Este tipo de obligación tiene como fin que el hecho de manejar
                un auto tenga algún margen de seguridad, teniendo en cuenta que los accidentes en este
                sentido pueden ser numerosos.
            </p>
            </article>

            <aside class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                <p>
                <h3>Semáforo</h3>

                Creando una cuenta en Semáforo, adquieres beneficios como registrar los vehículos de los cuales
                eres propietario.  Puedes mirar las distintas ofertas de seguros de acuerdo a las características
                de tu vehículo, seleccionando la que se acomode más a tus necesidades.<br>
            </p>
            </aside>
        </div>

    </div>

    <!--SECCION DE SERVICIOS-->
    <div class="container">
        <section class="servicios">
            <hgroup class="titulos-wrap">
                <h2 class="titulo wow bounceIn" data-wow-delay="0.3s">Nuestros Servicios</h2>
                <h4 class="subtitulo wow bounceIn" data-wow-delay="0.6s">Lo que tenemos para ti :)</h4>
            </hgroup>
            <div class="container">
                <article class="item">
                    <div class="icon">
                        <span class="fa fa-globe fa-4x wow flip" data-wow-delay="0.1s"></span>
                    </div>
                    <section>
                        <h3>Servicio Web</h3>
                        <p>Entra desde cualquier lugar, en cualquier momento... toda la información a tu alcance</p>
                    </section>
                </article>
                <article class="item">
                    <div class="icon">
                        <span class="fa fa-cog fa-4x wow flip" data-wow-delay="0.4s"></span>
                    </div>
                    <section>
                        <h3>Automatización</h3>
                        <p>Tan solo debes ingresar los datos de tu vehículo y automáticamente generaremos el valor de tu seguro...</p>
                    </section>
                </article>
                <article class="item">
                    <div class="icon">
                        <span class="fa fa-picture-o fa-4x wow flip" data-wow-delay="0.7s"></span>
                    </div>
                    <section>
                        <h3>Interfaz Amigable</h3>
                        <p>Lo ponemos de tal forma que puedas seguir las instrucciones fácilmente, se acabaron los formularios aburridos y complicados!</p>
                    </section>
                </article>
            </div>
        </section>
    </div>
</g:else>







<div class="container">
    <section id="mostrar1">
        <h2>¿No tienes Vehículo aún?...</h2>
        <p>Puedes consultar la página "tucarro.com"...  Cotiza y compra tu vehículo para que lo puedas registrar y así
            puedas disfrutar de nuestros servicios...</p>
        <a href="http://www.tucarro.com.co/" target="_blank">Quiero mi Vehículo!!</a>
    </section>
</div>



<footer>
    <div class="container">

        <div class="sociales">
            <a class="icon-fb" href="https://www.facebook.com/SemaforoWeb/" target="_blank"></a>
            <a class="icon-twitter" href="#"></a>
            <a class="icon-gp" href="#"></a>
        </div>
        <p class="copy">Semáforo &copy; 2015</p>
    </div>
</footer>


<!-- /container -->

</body>

<script>
    new WOW().init();
</script>
</html>
