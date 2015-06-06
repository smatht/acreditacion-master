var app = angular.module('acreditacion', []);

app.controller('AcreditacionCtr',function($scope,$http)
	{
		$scope.filtro;
		// this.inscriptos = [
		// {
		// 	ayn: "Marangolo Alessandra Luana",
		// 	email:"ale.marangolo@gmail.com"

		// },
		// {
		// 	ayn: "Alonso Alejandra",
		// 	email:"alto02@hotmail.com"

		// },
		// {
		// 	ayn: "Sanchez Alvarez Milagros Samanta",
		// 	email:"alvarezmilagros@gmail.com"

		// },
		// {
		// 	ayn: "Belcastro Ángela",
		// 	email:"angelab@ing.unp.edu.ar"

		// },
		// {
		// 	ayn: "Silva Augusto",
		// 	email:"augustosilva5949@hotmail.com"

		// },
		// {
		// 	ayn: "Castro Chans Beatriz",
		// 	email:"beatriz.castrochans@comunidad.unne.edu.ar"

		// },
		// {
		// 	ayn: "Ana Maria Benitez",
		// 	email:"Benitezprofesorado@gmail.com"

		// },
		// {
		// 	ayn: "Gómez Codutti Ana Elisa",
		// 	email:"anacodutti@live.com.ar"

		// }
		// ];
		
		// this.coincidencia = function (nom) {
		// 	console.log(nom);
		// 	return nom.toLowerCase().search(this.filtro);
		// };
		getInscriptos();
 
		function getInscriptos(){  
			$http.get("../procesos/inscriptos.php").success(function(data){
				
				$scope.inscriptos = data;
			});
		}
	});

app.controller('TabsController', function () {
    this.tab = 1;

    this.selectTab = function (tab) {
      this.tab = tab;
    };

  });