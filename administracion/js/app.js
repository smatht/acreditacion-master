var app = angular.module('acreditacion', []);


app.controller('AcreditacionCtr',function($scope,$http,$location)
	{

		getInscriptos();
		function getInscriptos(){  
			$http.get("../procesos/inscriptos.php")
			.success(function(data){
				$scope.inscriptos = data;
			});
		}
	});

