<?php
/*
	Datos necesarios:
	num_ins (numero de inscripcion)
	fecha 
	telefono 
*/

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
										  per.universidad, 
										  fp.forma_pago, 
										  ei.id_estado_insc, 
										  ci.condicion_iva, 
										  df.localidad, 
										  df.domicilio, 
										  df.telefono 
										  from inscripciones as insc 
										  left join personas as per on per.id_persona = insc.id_persona 
										  left join formas_pago as fp on fp.id_forma_pago = insc.id_forma_pago 
										  left join estados_inscripcion as ei on ei.id_estado_insc = insc.id_estado_insc 
										  left join datos_facturacion as df on df.id_datos_fac = insc.id_datos_fac 
										  left join condiciones_iva as ci on ci.id_cond_iva = df.condicion_iva 
										  order by insc.fecha_hora");

	while ($registro = $resultado->fetch_object()){
		$json[] = array("email"=>$registro->correo,
								"detalle"=>$registro->correo.",".$registro->ayn.", ".$registro->localidad,
								"universidad"=>$registro->universidad,
								"estado"=>$registro->id_estado_insc,
								"localidad"=>$registro->localidad,
								"ayn"=>$registro->ayn,
								"num_ins"=>$registro->nro_inscripcion,
								"fecha"=>date("d-m-Y H:i",$registro->fecha_hora),
								"telefono"=>$registro->telefono

								

								);
				
				
	}
	echo json_encode($json);
?>