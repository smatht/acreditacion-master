<?php 
	require_once('make_cert/fpdf.php');
 	require_once('make_cert/fpdi.php');
 	require_once('../config.php');
 	
	// initiate FPDI
	$pdf = new FPDI();
	// add a page
	$pdf->AddPage();
	// set the sourcefile
	$pdf->setSourceFile('make_cert/modelo.pdf');
	// import page 1
	$tplIdx = $pdf->importPage(1);
	// use the imported page and place it at point 10,10 with a width of 100 mm
	$pdf->useTemplate($tplIdx,null,null,null,null,true);
	
	$texto_cabecera = "por haber cumplido la asistencia al evento sarasa...";
	$nombre = $_GET['nombre'];
	
	$nombre = mb_strtoupper($nombre);
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
	$pdf->Write(0, str_replace(array("_","/")," ",utf8_decode($nombre)));
	
	$nombre_archivo = strtolower('diplomas/'.str_replace(array(' ','/'),'_',$_GET['nombre'].'('.$_GET['correo'].').pdf'));
	$pdf->Output($nombre_archivo,'I');
	
	
	
?>