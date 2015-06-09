<html lang="es"  ng-app="acreditacion">
	<head>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<script src="js/angular.min.js"></script>
		<script src="js/app.js"></script>
		<title>Inscriptos</title>
		<meta charset="utf-8">
	</head>
	<body>
		<header>
			<img src="images/teyet.png">
		</header>
		<div id="container" ng-controller="AcreditacionCtr as acreCtrl">
			<?php include_once("includes/menu.php"); ?>
			<div id="buscar" class="form-group form-inline">
			<div class="input-group">
				<div class="input-group-addon"><span class="glyphicon glyphicon-search"></span></div>

				<input name="search" class="form-control" type="text" ng-model="filtro" autofocus />
			</div>
			</div>
			<table class="tabla_inscriptos">
				<th>Nro. Insc.</th>
				<th>Fecha/Hora</th>
				<th>Apellido y Nombres</th>
				<th>Correo</th>
				<th>Telefono</th>
				<tr ng-repeat="insc in inscriptos | filter: filtro">
					<td>{{ insc.num_ins }}</td>
					<td>{{ insc.fecha }}</td>
					<td>{{ insc.ayn }}</td>
					<td>{{ insc.email }}</td>
					<td>{{ insc.telefono }}</td>
				</tr>
			</table>
		</div>
	</body>
</html>