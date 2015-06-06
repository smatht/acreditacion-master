<?php 
	require('make_cert/fpdf.php');

	$pdf = new FPDF();
	$pdf->AddPage();
	$pdf->SetFont('Arial','',12);
	$pdf->Cell(0,50,'¡Hola, Mundo!',1);
	
	$pdf->Cell(0,50,'¡Hola, Mundo!',1,1);
	
	$pdf->Output();
?>