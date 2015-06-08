var app = angular.module('acreditacion', []);

app.controller('AcreditacionCtr',function($scope,$http)
	{
		getInscriptos();
		function getInscriptos(){  
			$http.get("../procesos/inscriptos.php")
			.success(function(data){
				$scope.inscriptos = data;
			});
		}
	});

/*app.controller('TabsController', function () {
    this.tab = 1;

    this.selectTab = function (tab) {
      this.tab = tab;
    };

  });*/