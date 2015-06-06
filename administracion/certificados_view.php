<!DOCTYPE HTML>
<html lang="es"  ng-app="acreditacion">
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<script src="js/angular.min.js"></script>
		<script src="js/app.js"></script>
		<title>Certificados</title>
	</head>
	<body> 
		<header>
			<img src="images/teyet.png">
		</header>
		<div id="container">
			<?php include_once("includes/menu.php"); ?>
			<div ng-controller="AcreditacionCtr as acreCtrl">
				<div id="buscar">
					<label>Buscar</Label>
					<input type="text" ng-model="acreCtrl.filtro" />
				</div>
				<table class="tabla_inscriptos">
					<th>Apellido y Nombre</th><th>Accion</th>
					<tr ng-repeat="insc in inscriptos | filter:acreCtrl.filtro">
					<td>{{insc.ayn}} ({{insc.email}})</td>
					<td><a target="_BLANK" href="../procesos/crear.php?nombre={{insc.ayn}}&correo={{insc.email}}">Ver</a></td>
					<!-- <td ng-if="!acreCtrl.coincidencia(insc.ayn)">{{insc.ayn}} ({{insc.email}})</td>
					<td ng-if="!acreCtrl.coincidencia(insc.ayn)"><a target="_BLANK" href="../procesos/crear.php?nombre=<?php echo strtolower(str_replace(array(' ','/'),'_',$registro->ayn)); ?>&correo=<?php echo $registro->correo; ?>" >Ver</a></td> -->
					</tr>
					
				</table>
			</div>
		</div>
	</body>
</html>