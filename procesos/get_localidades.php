<?php
	require_once("../config.php");
	$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
	if ($conexion->connect_errno) {
		echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
		die;
	}

	$resultado = $conexion->query("SELECT DISTINCT LOWER( localidad ) as localidad FROM datos_facturacion order by 1");

	while ($registro = $resultado->fetch_object()){
		$json[] = array("localidad"=>ucwords($registro->localidad));
	}
	echo json_encode($json);
?>