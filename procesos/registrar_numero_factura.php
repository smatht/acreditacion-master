<?php 
	require_once("../config.php");
	$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
	if ($conexion->connect_errno) {
		echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
		die;
	}else{
		$nro_factura = $_POST['nro_factura'];
		$id_datos_fac = $_POST['id_datos_fac'];
		$consulta = "update datos_facturacion set nro_factura = '$nro_factura' where id_datos_fac = $id_datos_fac";
		$conexion->query($consulta);
		
		header("Location: ../administracion/pagos_view.php");
	}

?>