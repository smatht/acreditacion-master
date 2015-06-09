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
										  df.cuil,
										  df.institucion,
										  df.localidad, 
										  df.domicilio, 
										  df.telefono,
										  df.id_datos_fac,
										  df.fecha_pago
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
		
		//un bucle que se repite dos veces
		for ($i=1; $i <= 2; $i++) { 

			$pdf->Cell(60);
			$pdf->SetFont('Arial','',14);
			$pdf->Cell(70,10,'COMPROBANTE DE PAGO NRO: '.$registro->id_datos_fac,0,0,'C');

			$pdf->SetFont('Arial','',10);
			$pdf->Ln(20);
			$pdf->Cell(60);

			$pdf->Cell(60,7,'Fecha de Inscripcion: '.date('d/m/Y', $registro->fecha_hora),2,2,'L');
			$pdf->Cell(60,7,'Apellido y Nombre: '.$registro->ayn,2,2,'L');
			$pdf->Cell(60,7,'Correo Electronico: '.$registro->correo,2,2,'L');
			$pdf->rect(65,51,100,62);
			$pdf->rect(65,193,100,62);
			$pdf->Cell(60,7,'Recibo a Nombre de: ',2,2,'L');
			$pdf->SetFont('Arial','BI',11);
			$pdf->Cell(90,4,ucwords($registro->institucion),2,2,'C');
			$pdf->SetFont('Arial','',10);
			if($registro->cuil){
				$pdf->Cell(60,8,'CUIL/CUIT/DNI: '.$registro->cuil,2,2,'L');	
			}else{
				$pdf->Cell(60,8,'CUIL/CUIT/DNI: Sin Información',2,2,'L');
			}
			if($registro->localidad){
				$pdf->Cell(60,8,'Localidad: '.$registro->localidad,2,2,'L');	
			}else{
				$pdf->Cell(60,8,'Localidad: Sin Información',2,2,'L');
			}
			if($registro->forma_pago){
				$pdf->Cell(60,8,'Forma de Pago: '.$registro->forma_pago,2,2,'L');	
			}else{
				$pdf->Cell(60,8,'Forma de Pago: Sin Información',2,2,'L');
			}
			$pdf->Cell(60,8,'Fecha de Pago: '.date("d/m/Y - H:i:s",strtotime($registro->fecha_pago)),2,2,'L');
			$pdf->Cell(60,8,'Monto Abonado: $'.$monto.",00.-",2,2,'L');
			$pdf->Cell(60,10,'Numero de Recibo: _________________________',2,2,'L');
			$pdf->Ln(12);
			$pdf->Cell(90);
			$pdf->Cell(60,10,'Firma',2,1,'R');

			$pdf->Line(10,140,190,140);
			$pdf->Ln(18);
		}
		$pdf->Image('../../inscripcion/images/teyet2015.png' , 12, 5, 50 , 38,'PNG');
	    $pdf->Image('../../inscripcion/images/teyet2015.png' , 12, 150, 50 , 38,'PNG');
		$pdf->Output();
	}else{
		echo utf8_decode('La dirección de correo '.$_GET['correo'].' no se encuentra registrada o aun no pagó. '); die;		
	}
?>