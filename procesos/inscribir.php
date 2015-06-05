<?php 
	$postdata = file_get_contents("php://input");
	$datos = json_decode($postdata);
	

	

	//establezco la conexion a la base
	if( ! $conexion = mysqli_connect('localhost','root','','teyet')){
		$archivo = fopen("error.txt",'w+');
		fwrite($archivo,"Error al intentar conectar con la base de datos: ".$conexion->connect_error);
	}
	//armo la consulta de insercion
	$consulta = "insert into personas values (null,'$datos->nya','$datos->email','$datos->lugarDeTrabajo','$datos->universidad');";
	if( ! $conexion->query($consulta)){
		$archivo = fopen("error.txt",'w+');
		fwrite($archivo,"Error al ejecutar la consulta de insercion a la tabla Personas: ".$conexion->error);
		die;
	}else{
		//obtengo el id_persona autogenerado
		$id_persona = $conexion->insert_id;
	}



	//$conexion = mysqli_connect('localhost','root','','teyet');

	//obtengo el ultimo numero de inscripcion registrado y le sumo uno
	$consulta = "select max(nro_inscripcion) as ultimo from inscripciones";
	if( ! $resultado = $conexion->query($consulta)){
		$archivo = fopen("error.txt",'w+');
		fwrite($archivo,"Error al obtener el ultimo nro_inscripcion de la tabla de inscripciones: ".$conexion->error);
		die;
	}else{
		//obtengo el id_persona autogenerado y le sumo uno
		$nro_inscripcion = $resultado->fetch_object()->ultimo + 1;
	}

	$id_tipo_insc = $datos->tipodeInscripcion;
	$id_forma_pago = $datos->formadePago;

	
	/* Inserto la informacion en la tabla de datos de facturacion */
	$consulta = "insert into datos_facturacion values (null,'$datos->localidad','$datos->domicilio','$datos->telefono',$datos->iva);";
	if( ! $conexion->query($consulta)){
		$archivo = fopen("error.txt",'w+');
		fwrite($archivo,"Error al insertar un registro en la tabla de datos de facturacion: ".$conexion->error);
		die;
	}else{
		//obtengo el id_persona autogenerado y le sumo uno
		$id_datos_fac = $conexion->insert_id;
	}


	//inserto los datos en el registro de inscripciones
	//obtengo el ultimo numero de inscripcion registrado y le sumo uno
	$consulta = "insert into inscripciones values ($id_persona,$nro_inscripcion,$id_tipo_insc,$id_forma_pago,0,$id_datos_fac,".time().",null);";
	if( ! $resultado = $conexion->query($consulta)){
		$archivo = fopen("error.txt",'w+');
		fwrite($archivo,"Error al guardar un registro en la tabla Inscripciones: ".$conexion->error);
		echo json_encode(array("resultado"=>FALSE));
	}else{
		echo json_encode(array("resultado"=>TRUE));
	}
	



?>