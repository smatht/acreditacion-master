<?php 
	require_once('fpdf.php');
 	require_once('fpdi.php');
 	require_once('../config.php');
	

 	$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
	if ($conexion->connect_errno) {
		echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
		die;
	}

	$resultado = $conexion->query("select insc.nro_inscripcion, 
									insc.fecha_hora, 
									per.ayn, per.correo, 
									fp.forma_pago, 
									ei.estado_insc, 
									ci.condicion_iva, 
									df.localidad, 
									df.domicilio, 
									df.telefono 
									from inscripciones as insc 
									left join personas as per on per.id_persona = insc.id_persona 
									left join formas_pago as fp on fp.id_forma_pago = insc.id_forma_pago 
									left join estados_inscripcion as ei on ei.id_estado_insc = insc.id_estado_insc 
									left join datos_facturacion as df on df.id_datos_fac = insc.id_datos_fac 
									left join condiciones_iva as ci on ci.id_cond_iva = df.condicion_iva");
	$cantidad = 0;
	while($registro = $resultado->fetch_object()){
		// initiate FPDI
		$pdf = new FPDI();
		// add a page
		$pdf->AddPage();
		// set the sourcefile
		$pdf->setSourceFile('modelo.pdf');
		// import page 1
		$tplIdx = $pdf->importPage(1);
		// use the imported page and place it at point 10,10 with a width of 100 mm
		$pdf->useTemplate($tplIdx,null,null,null,null,true);
		
		$texto_cabecera = "por haber cumplido la asistencia al evento sarasa...";
		$nombre = $registro->ayn;
		
		
		$nombre = strtoupper($nombre);
		$nom_count = strlen($nombre);
		
		//formula para cuadrar el nombre en el certificado dependiendo su longitud
		if($nom_count>50)
			$x = 55;
		else{
			$nombre_espacio = 60;
		if($nom_count<23)
			$nombre_espacio = 72;
			$x= $nombre_espacio + (22-$nom_count);
		}

		/* Texto de Cabecera */
		$pdf->SetFont('Arial','i', 14);
		$pdf->SetTextColor(0,0,0);
		$pdf->SetXY(65, 47);
		$pdf->Write(0, $texto_cabecera);

		/* NOMBRE DE LA PERSONA */
		$pdf->SetFont('Arial','B', 30);
		$pdf->SetTextColor(0,0,0);
		$pdf->SetXY($x, 90);
		$pdf->Write(0, $nombre);
		
		$nombre_archivo = strtolower('diplomas/'.str_replace(array(' ','/'),'_',$registro->ayn.'('.$registro->correo.').pdf'));
		$pdf->Output($nombre_archivo,'F');
		$cantidad++;
	}
	echo "Cantidad de certificados generados: ".$cantidad;
?>