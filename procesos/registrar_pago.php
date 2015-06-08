<?php 
	require_once("../config.php");
	$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
	if ($conexion->connect_errno) {
		echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
		die;
	}else{
		$id_datos_fac = $_POST['id_datos_fac'];
		$correo = $_POST['correo'];
		$consulta = "update datos_facturacion set fecha_pago = ".date("d-m-Y").", cajero = 'CAJERO_POR_DEFECTO' where id_datos_fac = ".$id_datos_fac;
		$conexion->query($consulta);
		header("Location: crear/comprobante_pago.php?correo=$correo");
	}

?>