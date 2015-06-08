<?php 
	require_once("../config.php");
	//obtengo la conexion a la base
	$conexion = obtener_conexion($config_servidor_bd, $config_usuario, $config_clave, $config_bd_name);
	//cambio los nombres de las columnas
	renombrar_columnas($conexion);
	//elimina los datos duplicados
	//eliminar_duplicados($conexion);
	//intento adaptar el tipo de iva escrito a uno existente en la base
	adaptar_tipo_iva($conexion);
	//quito todos los acentos
	quitar_acentos($conexion);
	//elimino todos los datos de prueba que puedan estar almacenados
	eliminar_datos_prueba($conexion);
	//rellenar campos vacios
	rellenar_vacios($conexion);

	//variable que contabiliza la cantidad de registros adaptados correctamente
	$cant = 0;

	//obtengo todos los datos de la tabla original
	$consulta = "select * from original";

	$resultados = $conexion->query($consulta);

	//mientras tenga registros por leer, distribuyo sus datos en las tablas correspondientes
	while($registro = $resultados->fetch_array()){
			
		/*variable que controla si el ocurrió un error al intentar 
		adaptar el registro a la nueva estructura*/
		$error = "";

		/* ADAPTACION DE DATOS A LA TABLA DE PERSONAS */
		$consulta = "insert into personas values (null,'".$registro['nombre']."','".$registro['correo']."','Sin informacion','".$registro['universidad']."')";
		
		//si la consulta se ejecuto con exito, obtengo el id insertado
		if( $conexion->query($consulta)){
			$id_persona = $conexion->insert_id;
		}else{
			$error .= " - Ins. Personas ";
			echo "Nombre: ".$registro['nombre']."<br>";
			echo "Correo: ".$registro['correo']."<br>";
			echo "Universidad: ".$registro['universidad']."<br>";
			
		} 

		/* ADAPTACION DE DATOS A LA TABLA DE DATOS FACTURACION */	
		$cond_iva = $registro['facturacion_condicion_iva'];
		$consulta = "insert into datos_facturacion values (null,'".$registro['nombre']."','".$registro['facturacion_localidad']."','".$registro['facturacion_domicilio']."','".$registro['facturacion_telefono']."',$cond_iva,'".$registro['facturacion_cuil']."',null,null,null)";
		//si la consulta se ejecuto con exito, obtengo el id insertado
		if( $conexion->query($consulta)){
			$id_datos_facturacion = $conexion->insert_id;
		}else{
			$error .= " - Ins. Facturacion ";
			echo "Localidad: ".$registro['facturacion_localidad']."<br>";
			echo "Domicilio: ".$registro['facturacion_domicilio']."<br>";
			echo "telefono: ".$registro['facturacion_telefono']."<br>";
			echo "Condicion IVA: ".$cond_iva."<br>";
			echo "CUIL: ".$registro['facturacion_cuil']."<br>";

		} 
		
		/* ADAPTACION DE DATOS A LA TABLA DE INSCRIPCIONES */
		
		//Campo fecha_hora
		$partes_fecha = explode('/',$registro['fecha_inscripcion']);
		$fecha_hora =  mktime(0,0,0,$partes_fecha[1],$partes_fecha[0],$partes_fecha[2]); 
		
		/*se genera un codigo por cada tipo de inscripcion posible en el archivo de excel 
		  (se corresponden con los valores asociados de la BD) */
		$consulta = "select id_tipo_insc from tipos_inscripcion where LOWER(tipo_inscripcion) = '".strtolower($registro['tipo_inscripcion'])."';";
		$resultado = $conexion->query($consulta);
		$id_tipo_insc = $resultado->fetch_object()->id_tipo_insc;
		
		/*se genera un codigo por cada tipo de forma de pago posible en el archivo de excel 
		  (se corresponden con los valores asociados de la BD) */
		$consulta = "select id_forma_pago from formas_pago where LOWER(forma_pago) = '".strtolower($registro['forma_pago'])."';";
		$resultado = $conexion->query($consulta);
		$id_forma_pago = $resultado->fetch_object()->id_forma_pago;
		//numero de inscripcion generado por el sistema anterior
		$nro_inscripcion = $registro['nro_inscripcion'];
		
		//registro de la inscripcion
		$consulta = "insert into inscripciones values ($id_persona,$nro_inscripcion, $id_tipo_insc,$id_forma_pago,0,$id_datos_facturacion,$fecha_hora)";
		if( ! $conexion->query($consulta)){
			$error .= " - Ins. Inscripciones ";
			echo "id_persona: ".$id_persona."<br>";
			echo "Nro. Inscripcion: ".$nro_inscripcion."<br>";
			echo "Tipo Inscripcion: ".$id_tipo_insc."<br>";
			echo "Forma de Pago: ".$id_forma_pago."<br>";
			echo "Id Datos Fac: ".$id_datos_facturacion."<br>";
			echo "Fecha Hora: ".$fecha_hora."<br>";
		} 
		
		
		//resultado al usuario...
		if(strlen($error) == 0){
			echo "<span style='color: #1FBF00'>".$registro['nombre']." (".$registro['correo'].") adaptado con exito. </span><br>";
			$cant++;
		}else{
			echo "<span style='color: red'>".$registro['nombre']." (".$registro['correo'].") no pudo ser adaptado. $error</span><br>";
		} 
		
	}
	echo $cant." registros adaptados."; 


	//sentencias con intentos de mejoras...

	/* Apellido y nombres con mayusculas iniciales y el resto minusculas */
	$consulta = "select * from personas";
	if( $resultado = $conexion->query($consulta)){
		while($registro = $resultado->fetch_array()){
			$conexion->query("update personas set ayn = '".ucwords(strtolower($registro['ayn']))."' where ayn = '".$registro['ayn']."'" );
		}
	}else{
		$error = TRUE;
	} 




	/* ======================================================================================================================= */




	function obtener_conexion($config_servidor_bd, $config_usuario, $config_clave, $config_bd_name){
		$conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
		if ($conexion->connect_errno) {
			echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
			die;
		}
		return $conexion;
	}

	function renombrar_columnas($conexion){
		$conexion->query("alter table original change `COL 1` nro_inscripcion int(6);");
		$conexion->query("alter table original change `COL 2` nombre varchar(75);");
		$conexion->query("alter table original change `COL 3` universidad varchar(75);");
		$conexion->query("alter table original change `COL 4` fecha_inscripcion varchar(75);");
		$conexion->query("alter table original change `COL 5` forma_pago varchar(75);");
		$conexion->query("alter table original change `COL 6` tipo_inscripcion varchar(75);");
		$conexion->query("alter table original change `COL 7` precio varchar(75);");
		$conexion->query("alter table original change `COL 8` correo varchar(75);");
		$conexion->query("alter table original change `COL 9` facturacion_cuil varchar(75);");
		$conexion->query("alter table original change `COL 10` facturacion_institucion varchar(75);");
		$conexion->query("alter table original change `COL 11` facturacion_localidad varchar(75);");
		$conexion->query("alter table original change `COL 12` facturacion_domicilio varchar(75);");
		$conexion->query("alter table original change `COL 13` facturacion_telefono varchar(75);");
		$conexion->query("alter table original change `COL 14` facturacion_condicion_iva varchar(75);");
	}

	function adaptar_tipo_iva($conexion){
		//responsable Inscripto
		$conexion->query("update original set facturacion_condicion_iva = 0 where facturacion_condicion_iva like '%esp%'");
		//Exento
		$conexion->query("update original set facturacion_condicion_iva = 2 where facturacion_condicion_iva like '%ent%' or facturacion_condicion_iva like '%xen%' or facturacion_condicion_iva like '%xce%';");
		//Consumidor Final
		$conexion->query("update original set facturacion_condicion_iva = 1 where facturacion_condicion_iva like '%inal%' or facturacion_condicion_iva like '%cons%' or facturacion_condicion_iva like '%fina%';");
		//Monotributista
		$conexion->query("update original set facturacion_condicion_iva = 3 where facturacion_condicion_iva like '%onot%' or facturacion_condicion_iva like '%buto%' or facturacion_condicion_iva like '%ibut%';");
		//Desconocido
		$conexion->query("update original set facturacion_condicion_iva = 4 where facturacion_condicion_iva not in (0,1,2,3) or facturacion_condicion_iva like '%formac%';");
		$conexion->query("update original set facturacion_condicion_iva = 4 where facturacion_condicion_iva not in ('0','1','2','3','4');");
	}

	function rellenar_vacios($conexion){
		$conexion->query("update original set universidad = 'Sin informacion' where universidad = '' or universidad is null");
		$conexion->query("update original set facturacion_cuil = 'Sin informacion' where facturacion_cuil = '' or facturacion_cuil is null");
		$conexion->query("update original set facturacion_institucion = 'Sin informacion' where facturacion_institucion = '' or facturacion_institucion is null");
		$conexion->query("update original set facturacion_localidad = 'Sin informacion' where facturacion_localidad = '' or facturacion_localidad is null");
		$conexion->query("update original set facturacion_domicilio = 'Sin informacion' where facturacion_domicilio = '' or facturacion_domicilio is null");
		$conexion->query("update original set facturacion_telefono = 'Sin informacion' where facturacion_telefono = '' or facturacion_telefono is null");
		$conexion->query("update original set facturacion_condicion_iva = 'Sin informacion' where facturacion_condicion_iva = '' or facturacion_condicion_iva is null");
	}

	function quitar_acentos($conexion){
		//campo nombre
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'á',  'a' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'é',  'e' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'í',  'i' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'ó',  'o' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'ú',  'u' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'Á',  'A' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'É',  'E' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'Í',  'I' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'Ó',  'O' )");
		$conexion->query("UPDATE original SET nombre = REPLACE( nombre,  'Ú',  'U' )");

		//campo universidad
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'á',  'a' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'é',  'e' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'í',  'i' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'ó',  'o' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'ú',  'u' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'Á',  'A' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'É',  'E' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'Í',  'I' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'Ó',  'O' )");
		$conexion->query("UPDATE original SET universidad = REPLACE( universidad,  'Ú',  'U' )");
		
		//forma de pago
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'á',  'a' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'é',  'e' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'í',  'i' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'ó',  'o' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'ú',  'u' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'Á',  'A' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'É',  'E' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'Í',  'I' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'Ó',  'O' )");
		$conexion->query("UPDATE original SET forma_pago = REPLACE( forma_pago,  'Ú',  'U' )");
		

		//tipo inscripcion
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'á',  'a' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'é',  'e' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'í',  'i' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'ó',  'o' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'ú',  'u' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'Á',  'A' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'É',  'E' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'Í',  'I' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'Ó',  'O' )");
		$conexion->query("UPDATE original SET tipo_inscripcion = REPLACE( tipo_inscripcion,  'Ú',  'U' )");
		/* ===================================================================================================================================*/
	}

	function eliminar_datos_prueba($conexion){
		$consulta = "DELETE FROM inscripciones";
		if($conexion->query($consulta) ){
			echo "<span style='color:red; font-weight: bolder'>Datos de inscripciones borrados!</span><br>";
		}
		$consulta = "DELETE FROM datos_facturacion";
		if($conexion->query($consulta) ){
			echo "<span style='color:red; font-weight: bolder'>Datos de facturacion borrados!</span><br>";
		}


		
		$consulta = "DELETE FROM personas";
		if($conexion->query($consulta) ){
			echo "<span style='color:red; font-weight: bolder'>Datos de personas borrados!</span><br>";
		}
	}

	function eliminar_duplicados($conexion){
		//obtengo todos los correos duplicados
		$consulta = "select distinct count(*) as cant, correo from original group by correo having cant > 1 order by cant desc";
		$duplicados = $conexion->query($consulta);
		while($correo = @$duplicados->fetch_object()->correo){
			//por cada mail duplicado, recupero todos sus datos
			
			//recupero el nombre
			$consulta = "select nombre from original where correo = '$correo' and nombre is not null and nombre <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$nombre = $resultado->fetch_object()->nombre;
			//recupero la universidad
			$consulta = "select universidad from original where correo = '$correo' and universidad is not null and universidad <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$universidad = $resultado->fetch_object()->universidad;
			//recupero el ultimo numero de inscripcion
			$consulta = "select max(nro_inscripcion) as ultimo from original where correo = '$correo' limit 0,1";
			$resultado = $conexion->query($consulta);
			$nro_inscripcion = @$resultado->fetch_object()->nro_inscripcion;
			//recupero la ultima fecha de inscripcion
			$consulta = "select max(fecha_inscripcion) as fecha from original where correo = '$correo' and fecha_inscripcion is not null and universidad <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$fecha_inscripcion = $resultado->fetch_object()->fecha;
			//recupero la ultima forma pago
			$consulta = "select forma_pago from original where correo = '$correo' and forma_pago is not null and forma_pago <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$forma_pago = $resultado->fetch_object()->forma_pago;
			//recupero el ultimo tipo de inscripcion
			$consulta = "select max(nro_inscripcion), tipo_inscripcion from original where correo = '$correo' and tipo_inscripcion is not null and tipo_inscripcion <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$tipo_inscripcion = $resultado->fetch_object()->tipo_inscripcion;
			//recupero el ultimo tipo de inscripcion y su precio
			$consulta = "select max(nro_inscripcion), tipo_inscripcion, precio from original where correo = '$correo' and tipo_inscripcion is not null and tipo_inscripcion <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$tipo_inscripcion = $resultado->fetch_object()->tipo_inscripcion;
			$precio = @$resultado->fetch_object()->precio;
			//recupero el ultimo cuil para facturacion
			$consulta = "select facturacion_cuil from original where correo = '$correo' and facturacion_cuil is not null and facturacion_cuil <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$cuil = $resultado->fetch_object()->facturacion_cuil;
			//recupero la ultima institucion para facturacion
			$consulta = "select facturacion_institucion from original where correo = '$correo' and facturacion_institucion is not null and facturacion_institucion <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$institucion = $resultado->fetch_object()->facturacion_institucion;
			//recupero la ultima localidad para facturacion
			$consulta = "select facturacion_localidad from original where correo = '$correo' and facturacion_localidad is not null and facturacion_localidad <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$localidad = $resultado->fetch_object()->facturacion_localidad;
			//recupero la ultima domicilio para facturacion
			$consulta = "select facturacion_domicilio from original where correo = '$correo' and facturacion_domicilio is not null and facturacion_domicilio <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$domicilio = $resultado->fetch_object()->facturacion_domicilio;
			//recupero la ultima telefono para facturacion
			$consulta = "select facturacion_telefono from original where correo = '$correo' and facturacion_telefono is not null and facturacion_telefono <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$telefono = $resultado->fetch_object()->facturacion_telefono;
			//recupero la ultima condicion_iva para facturacion
			$consulta = "select facturacion_condicion_iva from original where correo = '$correo' and facturacion_condicion_iva is not null and facturacion_condicion_iva <> '' limit 0,1";
			$resultado = $conexion->query($consulta);
			$condicion_iva = $resultado->fetch_object()->facturacion_condicion_iva;

			/*una vez que recupere todos los datos, elimino todos los registros 
			  duplicados, y despues lo inserto de nuevo con el ultimo nro_inscripcion */
			$consulta = "delete from original where correo = '$correo'";
			$conexion->query($consulta);
			$consulta = "insert into original values ($nro_inscripcion,'$nombre','$universidad','$fecha_inscripcion','$forma_pago','$tipo_inscripcion','$precio','$correo','$cuil','$institucion','$localidad','$domicilio','$telefono','$condicion_iva')";
			$conexion->query($consulta);
		}

	}



?>