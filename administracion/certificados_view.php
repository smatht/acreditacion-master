<!DOCTYPE HTML>
<html lang="es"  ng-app="acreditacion">
	<head>
		<meta charset="utf-8" />
		<style>
			
			.tabla_inscriptos tr td{
				border-bottom: 1px solid grey;
				font-size: 0.9em;
				background-color: white;
				color: black;
				margin: 0px;
			}
			.tabla_inscriptos th{
				font-weight: bolder;
				font-size: 1em;
			}
			.center{
				text-align: center;
				margin:auto;
			}
		</style>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<script src="js/angular.min.js"></script>
		<script src="js/app.js"></script>
		<title>Certificados</title>
	</head>
	 <body> 
		<header>
			<img src="images/teyet.png">
		</header>
		
		<div ng-controller="AcreditacionCtr as acreCtrl">
			<input type="text" ng-model="acreCtrl.filtro" />
			<table class="tabla_inscriptos center">
				<th>Apellido y Nombre</th><th>Accion</th>
				<tr ng-repeat="insc in acreCtrl.inscriptos | filter:acreCtrl.filtro">
				<td>{{insc.ayn}} ({{insc.email}})</td>
				<td><a target="_BLANK" href="../procesos/crear.php?nombre={{insc.ayn}}&correo={{insc.email}}">Ver</a></td>
				<!-- <td ng-if="!acreCtrl.coincidencia(insc.ayn)">{{insc.ayn}} ({{insc.email}})</td>
				<td ng-if="!acreCtrl.coincidencia(insc.ayn)"><a target="_BLANK" href="../procesos/crear.php?nombre=<?php echo strtolower(str_replace(array(' ','/'),'_',$registro->ayn)); ?>&correo=<?php echo $registro->correo; ?>" >Ver</a></td> -->
				</tr>
				
			</table>
		</div>
		<script type="text/javascript">
		
		</script>
</body>