<?php 
	require_once("../config.php");
	$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
	if ($conexion->connect_errno) {
		echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
		die;
	}else{
		$consulta = "select insc.nro_inscripcion, per.ayn, per.correo, fp.forma_pago, df.id_datos_fac, df.fecha_pago, df.nro_factura, df.cajero
					from inscripciones as insc
					left join personas as per on per.id_persona = insc.id_persona
					left join datos_facturacion as df on df.id_datos_fac = insc.id_datos_fac
					left join formas_pago as fp on fp.id_forma_pago = insc.id_forma_pago";
		$resultado = $conexion->query($consulta);
	}
 ?>
<html lang="es">
	<head>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<title>Gestion de Pagos</title>
		<meta charset="UTF-8">
	</head>
	<body>
		<header>
			<img src="images/teyet.png">
		</header>
		<div id="container" ng-controller="AcreditacionCtr as acreCtrl">
			
			<?php include_once("includes/menu.php"); ?>
			<div id="buscar">
				<label>Buscar</label>
				<input type="text" name="buscar" id="search">	
			</div>
			
			<table class="tabla_inscriptos">
				<th>Nro. Insc.</th>
				<th>Apellido y Nombres</th>
				<th>Forma de Pago</th>
				<th>Número de Recibo</th>
				<?php while($registro = $resultado->fetch_object()): ?>
					<tr class="registro" id="tabla_pagos">
						<td><?php echo $registro->nro_inscripcion; ?></td>
						<td class="ayn"><?php echo utf8_encode($registro->ayn); ?></td>
						<td><?php echo $registro->forma_pago; ?></td>
						<?php if( ! $registro->fecha_pago): ?>
							<td>
								<form action="../procesos/registrar_pago.php" method="POST">
									<input type="hidden" name="correo" value="<?php echo $registro->correo; ?>">
									<input type="hidden" name="id_datos_fac" value="<?php echo $registro->id_datos_fac; ?>">
									<input type="submit" value="pagar" id="pagar"></form>
							</td>
						<?php else: ?>
							<td title="Cobrado por <?php echo $registro->cajero; ?>">
							<?php if( ! $registro->nro_factura): ?>
								
									<form action="../procesos/registrar_numero_factura.php" method="POST">
										<input type="hidden" name="id_datos_fac" value="<?php echo $registro->id_datos_fac; ?>">
										<input type="text" name="nro_factura" id="nro_factura">
										<input type="submit" value="Guardar">
										
									</form>

								
							<?php else: ?>
								Nro. Fac. <?php echo $registro->nro_factura; ?>
							<?php endif; ?>
							<a class="btn_comp_pago" target="_BLANK" href="../procesos/crear/comprobante_pago.php?correo=<?php echo $registro->correo; ?>">Ver recibo</a>
							</td>
						<?php endif; ?>
					</tr>
				<?php endwhile; ?>
			</table>
		</div>
	</body>
</html>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script>
	//cuando se escriba algo en el campo buscar
	$("#search").on("keyup",function(){
		$(".ayn").each(function(){
			
			if( $(this).html().toLowerCase().indexOf(   $("#search").prop("value").toLowerCase()   ) < 0 ) {
				console.log($(this))
				$(this).parent().css("display","none");
			}else{
				$(this).parent().css("display","table-row");
			}
		})		
	})

	$("#pagar").on("click", function(e){
		if( ! confirm("Registrar pago?")){
			e.preventDefault();
			return false;
		}
	})
	
	

</script>