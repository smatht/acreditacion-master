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
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<title>Gestion de Pagos</title>
		<meta charset="UTF-8">
	</head>
	<body>
		<header>
			<img src="images/teyet.png">
		</header>
		<div id="container">
			
			<?php include_once("includes/menu.php"); ?>
			
			<div id="buscar" class="form-group form-inline">
			<div class="input-group">
				<div class="input-group-addon"><span class="glyphicon glyphicon-search"></span>
				</div>
				<input name="buscar"  id="search" class="form-control" type="text" autofocus />
			</div>
			</div>
			
			<table class="tabla_inscriptos">
				<th>Nro. Insc.</th>
				<th>Apellido y Nombres</th>
				<th>Forma de Pago</th>
				<th>Pago</th>
				<th>Nro. Recibo</th>
				<th>Ver PDF</th>
				<?php while($registro = $resultado->fetch_object()): ?>
					<tr class="registro" id="tabla_pagos">
						<td><?php echo $registro->nro_inscripcion; ?></td>
						<td class="ayn"><?php echo utf8_encode($registro->ayn); ?></td>
						<td><?php echo $registro->forma_pago; ?></td>
						<td>
						<?php if( ! $registro->fecha_pago): ?>
							<a class="btn btn-primary" id="pagar" target="_BLANK" href="../procesos/registrar_pago.php?correo=<?php echo $registro->correo; ?>&id_datos_fac=<?php echo $registro->id_datos_fac; ?>">Registrar Pago</a>
							</td>
							<td></td>
							<td></td>
						<?php else: ?>
							<span class="badge" style="background-color: #468847"><span class="glyphicon glyphicon glyphicon-ok" aria-hidden="true"></span></span>
							</td>
							<td title="Cobrado por <?php echo $registro->cajero;?>">
							<?php if( ! $registro->nro_factura): ?>
								<form action="../procesos/registrar_numero_factura.php" method="POST">
									<input type="hidden" name="id_datos_fac" value="<?php echo $registro->id_datos_fac; ?>">
									<input type="text" name="nro_factura" id="nro_factura">
									<input type="submit" value="Guardar">
								</form>
							<?php else: ?>
								Nro. <?php echo $registro->nro_factura; ?>
							<?php endif; ?>
							</td>
							<td>
								<a class="btn btn-success" target="_BLANK" href="../procesos/crear/comprobante_pago.php?correo=<?php echo $registro->correo; ?>">Ver recibo</a>
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

	$(" a#pagar ").on("click", function(e){
		if( ! confirm("Registrar pago?")){
			e.preventDefault();
			return false;
		}else{
			setTimeout(function(){location.reload();},3000);
		}

	})

	
	

</script>