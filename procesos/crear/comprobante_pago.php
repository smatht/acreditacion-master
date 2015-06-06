<?php 
	require('make_cert/fpdf.php');
	require_once("../../config.php");

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
										  ti.precio_insc_temp,
										  ti.precio_insc_tard,
										  df.localidad, 
										  df.domicilio, 
										  df.telefono 
										  from inscripciones as insc 
										  left join personas as per on per.id_persona = insc.id_persona 
										  left join formas_pago as fp on fp.id_forma_pago = insc.id_forma_pago 
										  LEFT JOIN tipos_inscripcion AS ti ON ti.id_tipo_insc = insc.id_tipo_insc
										  left join datos_facturacion as df on df.id_datos_fac = insc.id_datos_fac 
										  where per.correo='".$_GET["correo"]."' 
										  AND df.fecha_pago IS NOT NULL 
										  AND df.cajero IS NOT NULL ") or die('Problemas!!'.mysqli_error());



	if($registro = $resultado->fetch_object()){
		//*****	CALCULAMOS EL MONTO 
		$fechalimite = strtotime ('7 June 2015');

		$monto=$registro->precio_insc_temp;

		if($registro->fecha_hora > $fechalimite){
			$monto=$registro->precio_insc_tard;
		}
		//***********


		$pdf = new FPDF();
		$pdf->AddPage();
		$pdf->SetFont('Arial','',14);
		//un bucle que se repite dos veces
		for ($i=1; $i <= 2; $i++) { 

			$pdf->Cell(60);

			$pdf->Cell(60,10,'COMPROBANTE DE PAGO',0,0,'C');

			$pdf->SetFont('Arial','',12);
			$pdf->Ln(20);
			$pdf->Cell(60);

			$pdf->Cell(60,10,'Fecha de Inscripcion: '.date('d/m/Y', $registro->fecha_hora),2,2,'L');
			$pdf->Cell(60,10,'Apellido y Nombre: '.$registro->ayn,2,2,'L');
			$pdf->Cell(60,10,'Correo Electronico: '.$registro->correo,2,2,'L');
			$pdf->Cell(60,10,'Institucion: '.$registro->universidad,2,2,'L');
			$pdf->Cell(60,10,'Localidad: '.$registro->localidad,2,2,'L');
			$pdf->Cell(60,10,'Forma de Pago: '.$registro->forma_pago,2,2,'L');
			$pdf->Cell(60,10,'Monto Abonado: $'.$monto,2,2,'L');
			$pdf->Ln(30);
			$pdf->Cell(90);
			$pdf->Cell(60,10,'Firma',2,1,'R');

			$pdf->Line(10,140,190,140);
			$pdf->Ln(5);
		}
		$pdf->Image('../../inscripcion/images/teyet2015.png' , 12, 5, 50 , 38,'PNG');
	    $pdf->Image('../../inscripcion/images/teyet2015.png' , 12, 150, 50 , 38,'PNG');
		$pdf->Output();
	}else{
		echo utf8_decode('La dirección de correo '.$_GET['correo'].' no se encuentra registrada o aun no pagó. '); die;		
	}
?>