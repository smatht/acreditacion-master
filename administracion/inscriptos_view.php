<html lang="es"  ng-app="Acreditacion">
	<head>
		
		<style>
			.tabla_inscriptos tr td{
				

			}
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

	$resultado = $conexion->query("select insc.nro_inscripcion, 
			insc.fecha_hora, 
			per.ayn, 
			per.correo, 
			fp.forma_pago, 
			ei.estado_insc, 
			ci.condicion_iva, 
			df.localidad, 
			df.domicilio, 
			df.telefono 
			from personas as per 
			left join inscripciones  as insc on per.id_persona = insc.id_persona 
			left join formas_pago as fp on fp.id_forma_pago = insc.id_forma_pago 
			left join estados_inscripcion as ei on ei.id_estado_insc = insc.id_estado_insc 
			left join datos_facturacion as df on df.id_datos_fac = insc.id_datos_fac 
			left join condiciones_iva as ci on ci.id_cond_iva = df.condicion_iva
			order by insc.fecha_hora desc");
?>
	<table class="tabla_inscriptos">
		<th>Nro. Insc.</th><th>Fecha/Hora</th><th>Apellido y Nombres</th><th>Correo</th><th>Telefono</th>
		<?php while ($registro = $resultado->fetch_object()) : ?>
		<tr>
			<td><?php echo $registro->nro_inscripcion; ?></td>
			<td><?php echo date("d-m-Y H:i",$registro->fecha_hora); ?></td>
			<td><?php echo $registro->ayn; ?></td>
			<td><?php echo $registro->correo; ?></td>
			<td><?php echo $registro->telefono; ?></td>
		</tr>
		<?php endwhile;  ?>
	</table>
</body>
    