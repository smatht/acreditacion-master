<?php
	require_once("../config.php");
	$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
	if ($conexion->connect_errno) {
		echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
		die;
	}

	$resultado = $conexion->query("SELECT DISTINCT LOWER( universidad ) as universidad FROM personas order by 1");

	while ($registro = $resultado->fetch_object()){
		$json[] = array("universidad"=>ucwords($registro->universidad));
	}
	echo json_encode($json);
?>