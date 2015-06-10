var app = angular.module('acreditacion', ['ui.bootstrap']);

app.controller('InscripcionCtr',['$scope','$http',function($scope,$http)
	{

		//Inicializar variables
		//********//
		$scope.verBoton=false;
		$scope.verFormulario=false;
		$scope.valido=true;
		$scope.envioValido=false;
		$scope.selectTipodePago=
			[
				{
					formadePago:"Pago en Evento",
					id:0
				},
				{
					formadePago:"Depósito Bancario",
					id:1
				},
				{
					formadePago:"Transferencia Bancaria",
					id:2
				},
				{
					formadePago:"Pago en Contaduria",
					id:3
				}
			];
		$scope.formaDePago=$scope.selectTipodePago[0];
		$scope.selectTipodeInscripcion=
			[
				{
					tipodeInscripcion:"Asistentes docentes nivel medio/terciario",
					id:0
				},
				{
					tipodeInscripcion:"Asistentes docentes UNNE",
					id:1
				},
				{
					tipodeInscripcion:"Asistentes en General",
					id:2
				},
				{
					tipodeInscripcion:"Asistentes estudiantes universitarios y/o terciarios",
					id:3
				},
				{
					tipodeInscripcion:"Autores miembros de Universidades de la RedUNCI",
					id:4
				},
				{
					tipodeInscripcion:"Otros autores",
					id:5
				}
			];

		$scope.selectCondIva=
			[
				{
					condIva:"Responsable inscripto",
					id:0
				},
				{
					condIva:"Consumidor Final",
					id:1
				},
				{
					condIva:"Exento",
					id:2
				},
				{
					condIva:"Monotributista",
					id:3
				},
				{
					condIva:"Desconocido",
					id:4
				}
			];
		$scope.formaDePago = $scope.selectTipodePago[0];
		$scope.tipoDeInscripcion = $scope.selectTipodeInscripcion[2];
		$scope.iva = $scope.selectCondIva[4];
		//********//
		getInscriptos();
 
		function getInscriptos(){  
			$http.get("../procesos/inscriptos.php").success(function(data){
				$scope.inscriptos = data;
			});
			$http.get("../procesos/get_universidades.php").success(function(data){
				$scope.universidades = data;
			});
			$http.get("../procesos/get_localidades.php").success(function(data){
				$scope.localidades = data;
			});
		}
		//Select
		$scope.onSelectIva = function ($item, $model, $label) {
		 $scope.iva=$label;
		};
		$scope.onSelectUniversidad = function ($item, $model, $label) {
		 $scope.universidad=$label;
		};
		$scope.onSelectPais = function ($item, $model, $label) {
		 $scope.pais=$label;
		};
		$scope.onSelectTrabajo = function ($item, $model, $label) {
		 $scope.lugarDeTrabajo=$label;
		};
		$scope.onSelectLocalidad = function ($item, $model, $label) {
		 $scope.localidad=$label;
		};

		$scope.form = function()
		{
			event.preventDefault();
			$scope.verFormulario = true;
			$scope.verBoton=false;
		}

		$scope.validarMail= function()
		{
			$scope.inscriptos.every(
			function(ins, index, array) 
			{
 				 if(ins.email==$scope.email)
 				 {
 				 	$scope.mailValido="error";
 				 	$scope.valido=false;
 				 	mensaje(ins);
 				 	return false;
 				 }else{
 				 	$scope.valido=true;
 				 	$scope.mailValido="";
 				 	return true;
 				 }			

			});	 
				
		}
		function mensaje(ins)
		{
			$scope.detalleRegistro="Registado por "+ins.detalle;
			return false;
		}
		$scope.enviar = function(){
			
			if($scope.valido==true){
			$http.post('../procesos/inscribir.php', 
			{
				email:$scope.email,
				nya:$scope.nya,
				pais:$scope.pais,
				universidad:$scope.universidad,
				lugarDeTrabajo:$scope.lugarDeTrabajo,
				formadePago:$scope.formaDePago.id,
				tipodeInscripcion:$scope.tipoDeInscripcion.id,
				dni:$scope.dni,
				nombreInst:$scope.nombreInst,
				localidad:$scope.localidad,
				domicilio:$scope.domicilio,
				tel:$scope.tel,
				iva:$scope.iva.id
			})
			.error(function(data, status, headers, config) {
				alert(data);})
			.success(function(data, status, headers, config){
				alert("Se inscribio correctamente, por favor diríjase a pago..");
				$scope.envioValido=true;
				window.location.reload();
			});
			;
		}else{
			alert("El mail ingresado ya se encuentra registrado");
		}
	}
	}]);
