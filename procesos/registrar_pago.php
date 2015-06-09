<?php 
	require_once("../config.php");
	$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
	if ($conexion->connect_errno) {
		echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
		die;
	}else{
		$id_datos_fac = $_GET['id_datos_fac'];
		$correo = $_GET['correo'];
		$consulta = "update datos_facturacion set fecha_pago = '".date("Y-m-d H:i:s")."', cajero = 'CAJERO_DEFECTO' where id_datos_fac = ".$id_datos_fac;
		//echo $consulta; die;
		$conexion->query($consulta);
		header("Location: crear/comprobante_pago.php?correo=$correo");
	}

?>