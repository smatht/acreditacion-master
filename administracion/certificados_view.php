<!DOCTYPE HTML>
<html lang="es"  ng-app="Acreditacion">
	<head>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<script src="js/angular.min.js"></script>
		<script src="js/script.js"></script>
		<title>Certificados</title>
	</head>
	<body>
		<header>
			<img src="images/teyet.png">
		</header>
		<?php include_once("includes/menu.php"); ?>
		<?php 
			require_once("../config.php");
			$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
			if ($conexion->connect_errno) {
				echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
			die;
			}

			$consulta = "select per.ayn, per.correo from inscripciones as insc left join personas as per on per.id_persona = insc.id_persona";

			$resultado = $conexion->query($consulta);
		?>
		<table class="tabla_inscriptos center">
			<th>Apellido y Nombre</th><th>Accion</th>
			<?php while ($registro = $resultado->fetch_object()) : ?>
			<tr>
			<td><?php echo $registro->ayn; ?></td>
			<td><a target="_BLANK" href="../procesos/crear/certificado_asistencia.php?nombre=<?php echo strtolower(str_replace(array(' ','/'),'_',$registro->ayn)); ?>&correo=<?php echo $registro->correo; ?>" >Ver</a></td>
			</tr>
			<?php endwhile; ?>
		</table>
</body>