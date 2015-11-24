<!DOCTYPE html>
<html lang="en">
    <head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta charset="UTF-8">
		<link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
		<asset:stylesheet src="vehReqView.css"/>
		<asset:stylesheet src="bootstrap.min.css"/>
		<asset:stylesheet src="style3.css"/>
		<asset:stylesheet src="fontello.css"/>
		<asset:stylesheet src="estilos.css"/>
		<asset:stylesheet src="columnas.css"/>
		<asset:stylesheet src="default.css"/>
		<asset:stylesheet src="font-awesome.min.css"/>
        <asset:stylesheet src="bootstrap-select.css"/>
        <asset:javascript src="bootstrap-select.js"/>
		<asset:stylesheet src="tablas.css"/>
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
	<!--header-->

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
                    <a href="${createLink(uri: '/vehiculo/createRequest')}">Solicitar seguro</a>
                </g:if>
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



	<section id="mostrar">
		<br><br><br><br>
		<h2>Cotiza y compra seguro para tu vehículo</h2>
		<p>Llena el siguiente formulario de forma fácil y rápida</p>
		<br><br><br>
	</section>
		<div class="container" id="llenado">
			<table>
				<tr>
					<th>Tipo de vehículo</th>
					<td id="tipo_vehiculo"></td>
				</tr>
				<tr id="tr_marca" class="hidden">
					<th>Marca</th>
					<td id="marca"></td>
				</tr>
				<tr id="tr_referencia1" class="hidden">
					<th>Referencia 1</th>
					<td id="referencia1"></td>
				</tr>
				<tr id="tr_referencia2" class="hidden">
					<th>Referencia 2</th>
					<td id="referencia2"></td>
				</tr>
				<tr id="tr_referencia3" class="hidden">
					<th>Referencia 3</th>
					<td id="referencia3"></td>
				</tr>
				<tr id="tr_modelo" class="hidden">
					<th>Modelo</th>
					<td id="modelo"></td>
				</tr>
				<tr id="tr_valor" class="hidden">
					<th>Valor asegurado</th>
					<td id="valor"></td>
				</tr>
			</table>
		</div>

    	<br><br>
    	<div id="seguros" class="hidden"></div>

    	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.4/handlebars.min.js"></script>
    	<script id="seguros-template" type="text/x-handlebars-template">
    	{{#if this.length}}
		<div class="container">
			<table border=2 class="table" id="cotizacion">
				<tr>
					<th>Características</th>
					{{#each this}}
					<th>{{empresa}}</th>
					{{/each}}
				</tr>

				<tr>
					<td>Valor</td>
					{{#each this}}
					<td>{{formatMoney valor}}</td>
					{{/each}}
				</tr>
				<tr>
					<td>Cobertura total</td>
					{{#each this}}
					<td>{{formatMoney coberturaTotal}}</td>
					{{/each}}
				</tr>
				<tr>
					<td>Deducible total</td>
					{{#each this}}
					<td>{{deducibleTotal}}</td>
					{{/each}}
				</tr>
				<tr>
					<td>Cobertura parcial</td>
					{{#each this}}
					<td>{{formatMoney coberturaParcial}}</td>
					{{/each}}
				</tr>
				<tr>
					<td>Deducible parcial</td>
					{{#each this}}
					<td>{{deducibleParcial}}</td>
					{{/each}}
				</tr>
				<tr>
					<td>Deducible total</td>
					{{#each this}}
					<td>{{deducibleTotal}}</td>
					{{/each}}
				</tr>
				<tr>
					<td>Asistencia Jurídica</td>
					{{#each this}}
					{{#if abogado}}
					<td><img src="${request.contextPath}/assets/true.png"/></td>
					{{else}}
					<td><img src="${request.contextPath}/assets/false.png"/></td>
					{{/if}}
					{{/each}}
				</tr>
				<tr>
					<td>Vehículo de reemplazo</td>
					{{#each this}}
					{{#if vehiculoRemplazo}}
					<td><img src="${request.contextPath}/assets/true.png"/></td>
					{{else}}
					<td><img src="${request.contextPath}/assets/false.png"/></td>
					{{/if}}
					{{/each}}
				</tr>
				<tr>
					<td>Gastos de transporte</td>
					{{#each this}}
					{{#if gastosTransporte}}
					<td><img src="${request.contextPath}/assets/true.png"/></td>
					{{else}}
					<td><img src="${request.contextPath}/assets/false.png"/></td>
					{{/if}}
					{{/each}}
				</tr>
				<tr>
					<td>Grúa</td>
					{{#each this}}
					{{#if grua}}
					<td><img src="${request.contextPath}/assets/true.png"/></td>
					{{else}}
					<td><img src="${request.contextPath}/assets/false.png"/></td>
					{{/if}}
					{{/each}}
				</tr>
				<tr>
					<td>Chofer</td>
					{{#each this}}
					{{#if chofer}}
					<td><img src="${request.contextPath}/assets/true.png"/></td>
					{{else}}
					<td><img src="${request.contextPath}/assets/false.png"/></td>
					{{/if}}
					{{/each}}
				</tr>
				<tr>
					<td>Responsabilidad Civil</td>
					{{#each this}}
					<td>{{formatMoney responsabilidadCivil}}</td>
					{{/each}}
				</tr>
				<tr>
					<td></td>
					{{#each this}}
					<td><a class="btn btn-success" id="botonc" href="${request.contextPath}/vehiculo/crearVehiculo?segId={{id}}&valorModelo={{@root.valorModelo}}">Comprar</a></td>
					{{/each}}
				</tr>
			</table>


		</div>

		{{else}}
		<div class="container">No hay seguros disponibles para este vehículo</div>

		{{/if}}
		</script>
    	<script>
		Number.prototype.formatMoney = function(c, d, t){
			var n = this, 
			c = isNaN(c = Math.abs(c)) ? 2 : c, 
			d = d == undefined ? "." : d, 
			t = t == undefined ? "," : t, 
			s = n < 0 ? "-" : "", 
			i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "", 
			j = (j = i.length) > 3 ? j % 3 : 0;
			return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
		};
		Handlebars.registerHelper('formatMoney', function(num) {
			return "$ "+ num.formatMoney(0,".",",");
		});
		window.templateSeguros = Handlebars.compile($("#seguros-template").html());
		$.ajax({
			url : '${request.contextPath}/vehiculo/getTipoVehiculo',
			success : function(datos){
				var $tipo_vehiculo = $('<select class="form-control">');
				$tipo_vehiculo.append($('<option value="-1">').text('Seleccione tipo de vehículo'));

				datos.forEach(function(tipo){
					$tipo_vehiculo.append($('<option>').text(tipo));
				});

				$("#tipo_vehiculo").html($tipo_vehiculo);

				$tipo_vehiculo.change(function(){
					$("#tr_marca").addClass('hidden');
					$("#tr_referencia1").addClass('hidden');
					$("#tr_referencia2").addClass('hidden');	
					$("#tr_referencia3").addClass('hidden');
					$.ajax({
						url : '${request.contextPath}/vehiculo/getMarcas?tipo='+ $tipo_vehiculo.val(),
						success : function(datos){
							$("#tr_marca").removeClass();
							var $marca = $('<select class="form-control">');
							$marca.append($('<option value="-1">').text('Seleccione una marca'));

							datos.forEach(function(tipo){
								$marca.append($('<option>').text(tipo));
							});

							$("#marca").html($marca);

							$marca.change(function(){
								$("#tr_referencia1").addClass('hidden');
								$("#tr_referencia2").addClass('hidden');	
								$("#tr_referencia3").addClass('hidden');
								$.ajax({
									url : '${request.contextPath}/vehiculo/getReferencia1?marca='+ $marca.val(),
									success : function(datos){
										$("#tr_referencia1").removeClass();
										var $referencia1 = $('<select class="form-control">');
										$referencia1.append($('<option value="-1">').text('Seleccione una referencia'));

										datos.forEach(function(tipo){
											$referencia1.append($('<option>').text(tipo));
										});

										$("#referencia1").html($referencia1);

										$referencia1.change(function(){
											$("#tr_referencia2").addClass('hidden');	
											$("#tr_referencia3").addClass('hidden');
											$.ajax({
												url : '${request.contextPath}/vehiculo/getReferencia2?marca='+ $marca.val() + '&referencia1='+ $referencia1.val(),
												success : function(datos){
													$("#tr_referencia2").removeClass();
													var $referencia2 = $('<select class="form-control">');
													$referencia2.append($('<option value="-1">').text('Seleccione una referencia'));

													datos.forEach(function(tipo){
														$referencia2.append($('<option>').text(tipo));
													});

													$("#referencia2").html($referencia2);

													$referencia2.change(function(){
														$("#tr_referencia3").addClass('hidden');
														$.ajax({
															url : '${request.contextPath}/vehiculo/getReferencia3?marca='+ $marca.val() + '&referencia1='+ $referencia1.val() +'&referencia2='+ $referencia2.val(),
															success : function(datos){
																$("#tr_referencia3").removeClass();
																var $referencia3 = $('<select class="form-control">');
																$referencia3.append($('<option value="-1">').text('Seleccione una referencia'));

																datos.forEach(function(row){
																	$referencia3.append($('<option value="'+row.id+'">').text(row.referencia3));
																});

																$("#referencia3").html($referencia3);

																$referencia3.change(function(){
																	$.ajax({
																		url : '${request.contextPath}/vehiculo/getModelos?id='+ $referencia3.val(),
																		success : function(datos){
																			$("#tr_modelo").removeClass();
																			var $modelo = $('<select class="form-control">');
																			$modelo.append($('<option value="-1">').text('Seleccione el modelo de su vehículo'));

																			datos.forEach(function(row){
																				$modelo.append($('<option value="'+row.id+'" data-valor="'+ row.valor +'">').text(row.modelo));
																			});

																			$("#modelo").html($modelo);

																			$modelo.change(function(){
																				var id = $modelo.val();
																				var valor = $("option[value="+ id + "]").data('valor');
																				valor = " $ "+ parseInt(valor).formatMoney(0,'.',',');
																				$("#tr_valor").removeClass();
																				$("#valor").html(valor);
																				MostrarSeguros(id);
																			});
																		}
																	});
																});
															}
														});
													});
												}
											});
										});
									}
								});
							});
						}
					});
				});
			}
		});

		function MostrarSeguros(valorModelo){
			$.ajax({
				url : '${request.contextPath}/vehiculo/getSeguros?id='+ valorModelo,
				success : function(datos){
					datos.valorModelo = valorModelo;
					$("#seguros").removeClass();
					$("#seguros").html(templateSeguros(datos));
				}
			});
		}

		function ComprarSeguro(id){
			alert("Seguro: "+ id);
		}
    	</script>
	</body>
</html>