<!DOCTYPE HTML>
<html lang="es" ng-app="acreditacion">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<title>Sistema de acreditación</title>
	</head>
	<body>
		<header>
		<img src="images/teyet.png">
		</header>
	 <!--Contenedor-->
	 <div id="container" ng-controller="InscripcionCtr">
		 <!--Contenido de la Pestaña 1-->
		 <div id="content-1">
			<form class="contact_form" action="#" onsubmit="return false;">
		<ul ng-hiden="envioValido">
				<li>
						 <h2>Formulario de Inscripción</h2>
				</li>
				<li>
						<label for="email">Correo de Contacto:</label>
						<input type="email"  ng-class="mailValido" ng-model="email" ng-change="validarMail()" placeholder="Email" required>
				 </li>
				 <span ng-hide="valido">
				 	<p>{{detalleRegistro}}</p>
				</span>
				</br>
					<li>
		<label for="name">Nombre y Apellido:</label>
		<input type="text" ng-model="nya" placeholder="Nombre y Apellido" required />
</li>
<li>
		<label for="name">Establecimiento:</label>
		<input type="text" ng-model="universidad" placeholder="Universidad" typeahead="u as u.universidad for u in datos | filter:$viewValue | limitTo:5"
typeahead-min-length='3' typeahead-on-select='onSelectUniversidad($item, $model, $label)' required>
<li>
		<label for="name">Lugar de Trabajo:</label>
		<input type="text"  ng-model="lugarDeTrabajo" placeholder="Lugar de Trabajo (opcional)" required />
</li>
<li>
		<label for="payment">Forma de Pago:</label>
		<select ng-model="formaDePago" ng-options="fPago.formadePago for fPago in selectTipodePago" required>
			<option value="">-- Elegir Forma de Pago --</option>
		</select>
</li>
<li>
		<label for="type">Tipo de Inscripción:</label>
				<select id="listaInscripcion" ng-model="tipoDeInscripcion" ng-options="inscrip.tipodeInscripcion for inscrip in selectTipodeInscripcion" required>
					<option value="">-- Elegir tipo de Inscripción --</option>
				</select>
</li>
        <li>
             <h3>Datos de facturación</h3>
        </li>
        <li>
            <label for="dni">CUIT/CUIL/DNI:</label>
            <input type="text" ng-model="dni" name="dni" placeholder="" required/>
        </li>
        <li>
            <label for="nombreInst">Apellido y Nombre / Institución:</label>
            <input type="text" ng-model="nombreInst" name="nombreInst" placeholder="" required/>
        </li>
        <li>
            <label for="localidad">Localidad:</label>
            <input type="text" ng-model="localidad" typeahead="u as u.localidad for u in datos | filter:$viewValue | limitTo:5"
typeahead-min-length='3' typeahead-on-select='onSelectLocalidad($item, $model, $label)' required autocomplete=none>
        </li>
        <li>
            <label for="domicilio">Domicilio:</label>
            <input type="text" ng-model="domicilio" name="domicilio" placeholder="" required/>
        </li>
        <li>
            <label for="tel">Teléfono:</label>
            <input type="text"  ng-model="tel" name="tel" placeholder="" required/>
        </li>
        <li>
            <label for="iva">Condición de IVA:</label>
            <select ng-model="iva" ng-options="iva.condIva for iva in selectCondIva" required>
            <option value="">-- Elegir tipo de Inscripción --</option>
            </select>
        </li>
<li id="boton">
					<button class="submit" ng-click="enviar()" type="submit">Enviar</button>
</li>
</ul>
<span ng-show="envioValido">
	<p>
		Se inscribio correctamente. Pase a la seccion de pago.
	</p>
</span>
</form>
</div>
</div>
	 <script src="js/lib/angular.min.js"></script>
	 <script src="js/lib/ui-bootstrap-tpls-0.9.0.js"></script>
	 <script src="js/app.js"></script>
	</body>
</html>
