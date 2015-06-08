<!DOCTYPE HTML>
<html lang="es"  ng-app="acreditacion">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
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

		<div ng-controller="AcreditacionCtr">
			
			<span ng-include="includes/campo_busqueda.html"></span>
			
			<table class="tabla_inscriptos">
				<th>Apellido y Nombre</th><th>Accion</th>
				<tr ng-repeat="insc in inscriptos | filter:filtro">
					<td>{{ insc.ayn }} ({{ insc.email }})</td>
					<td><a target="_BLANK" href="../procesos/crear.php?nombre={{insc.ayn}}&correo={{insc.email}}">Ver</a></td>
				</tr>
			</table>

		</div>

	</div>

</body>
</html>