<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Reporte</title>
</head>
<body>
	<form action="reporte.php" method="GET">
		<input type="date" name="fecha_desde">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="date" name="hasta">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="Filtrar">
	</form>

<?php 
	require_once("../config.php");
	$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
	if ($conexion->connect_errno) {
		echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
		die;
	}



	if(isset($_GET['desde'])){
		$desde = strtotime(str_replace("-","/",$_GET['fecha_desde']));
	}else{
		$desde = 0;
	}
	if(isset($_GET['hasta'])){
		$hasta = strtotime(str_replace("-","/",$_GET['hasta']));
	}else{
		$hasta = time();
	}

	$consulta = "select insc.nro_inscripcion, 
						insc.fecha_hora, 
						per.ayn, 
						per.universidad, 
						fp.forma_pago, 
						ti.tipo_inscripcion, 
						df.cuil, 
						ci.condicion_iva, 
						df.domicilio, 
						df.institucion, 
						df.telefono 
				from inscripciones as insc 
				left join personas as per on per.id_persona = insc.id_persona 
				left join datos_facturacion as df on df.id_datos_fac = insc.id_datos_fac 
				left join condiciones_iva as ci on ci.id_cond_iva = df.condicion_iva 
				left join formas_pago as fp on fp.id_forma_pago = insc.id_forma_pago 
				left join tipos_inscripcion as ti on ti.id_tipo_insc = insc.id_tipo_insc
				where insc.fecha_hora between ".$desde." and ".$hasta;
				//echo $consulta; die;
	$resultado = $conexion->query($consulta); ?>
	<span class="cantidad"></span>
	<table border="1">
	<tr>
		<td>Nro. Insc.</td>
		<td>Fecha Insc.</td>	
		<td>Apellido y Nombre</td>
		<td>Universidad</td>
		<td>Forma Pago</td>
		<td>Tipo Insc.</td>
		<td>Cuil</td>
		<td>Cond. IVA</td>
		<td>Domicilio</td>
		<td>Institucion Fact.</td>
		<td>Tel&eacute;fono</td>
	</tr>
	<?php $cantidad = 0 ?>
	<?php while($registro = $resultado->fetch_object()): ?>
		<?php $cantidad++; ?>
		<tr>
			<td><?php echo $registro->nro_inscripcion; ?></td>
			<td><?php echo date("Y-m-d H:i:s", $registro->fecha_hora); ?></td>
			<td><?php echo $registro->ayn; ?></td>
			<td><?php echo $registro->universidad; ?></td>
			<td><?php echo $registro->forma_pago; ?></td>
			<td><?php echo $registro->tipo_inscripcion; ?></td>
			<td><?php echo $registro->cuil; ?></td>
			<td><?php echo $registro->condicion_iva; ?></td>
			<td><?php echo $registro->domicilio; ?></td>
			<td><?php echo $registro->institucion; ?></td>
			<td><?php echo $registro->telefono; ?></td>

		</tr>


	<?php endwhile; ?>
	</table>	
</body>
</html>
<?php if(isset($cantidad)){ echo $cantidad.' inscriptos.';} ?>