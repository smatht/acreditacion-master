<!DOCTYPE HTML>
<html lang="es"  ng-app="Acreditacion">
  <head>
    <meta charset="utf-8"/>
    <style>
        .tabla_inscriptos tr td{
            border-bottom: 1px solid grey;
            font-size: 0.9em;
        }
        .tabla_inscriptos th{
            font-weight: bolder;
            font-size: 1em;
        }
        .center{
            text-align: center;
            margin:auto;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script src="js/angular.min.js"></script>

    <script src="js/script.js"></script>
    <title></title>
  </head>
  <body>
    <header>
    <img src="images/teyet.png">
    </header>
   <!--Contenedor-->
   <div id="container" ng-controller="FormularioCtrl">
    <!--Pestaña 1 activa por defecto
    <input id="tab-1" type="radio" name="tab-group" checked="checked" />
    <label for="tab-1">Inscripción</label>-->
    <!--Pestaña 2 inactiva por defecto-->
    <input id="tab-2" type="radio" name="tab-group" />
    <label for="tab-2">Acreditación</label>
    <!--Pestaña 3 inactiva por defecto-->
    <input id="tab-3" type="radio" name="tab-group" />
    <label for="tab-3">Informes</label>
    <!--Pestaña 4 inactiva por defecto-->
    <input id="tab-4" type="radio" name="tab-group" />
    <label for="tab-4">Otra cosa</label>
    <!--Contenido a mostrar/ocultar-->
    <div id="content">
     <!--Contenido de la Pestaña 1-->
     <div id="content-1">
      <!--<form class="contact_form" action="#" method="post">
    <ul>
        <li>
             <h2>Formulario de Inscripción</h2>
        </li>
        <li>
            <label for="name">Apellido:</label>
            <input type="text"  placeholder="Apellido" required />
        </li>
        <li>
            <label for="name">Nombre:</label>
            <input type="text"  placeholder="Nombre" required />
        </li>
        <li>
            <label for="name">Pais:</label>
            <select id="paisContacto" name="paisContacto">
            <option class="title" value="NULL"> -- Pais -- </option>
            <option value="19"> Alemania </option><option value="1"> Argentina </option><option value="2"> Australia </option><option value="33"> Austria </option><option value="34"> Bélgica </option><option value="32"> Bolivia </option><option value="3"> Brasil </option><option value="28"> Canada </option><option value="4"> Chile </option><option value="29"> China </option><option value="5"> Colombia </option><option value="6"> Costa Rica </option><option value="7"> Cuba </option><option value="23"> Dinamarca </option><option value="35"> Ecuador </option><option value="8"> España </option><option value="9"> Estados Unidos </option><option value="10"> Francia </option><option value="31"> Holanda </option><option value="25"> Inglaterra </option><option value="36"> Israel </option><option value="11"> Italia </option><option value="38"> Japón </option><option value="20"> Macau </option><option value="12"> México </option><option value="26"> Nigeria </option><option value="13"> Ninguno </option><option value="30"> Noruega </option><option value="24"> Otro </option><option value="37"> Pakistan </option><option value="14"> Paraguay </option><option value="15"> Perú </option><option value="21"> Polonia </option><option value="22"> Portugal </option><option value="39"> Puerto Rico </option><option value="16"> Reino Unido </option><option value="27"> Republica Checa </option><option value="40"> Republica Dominicana </option><option value="17"> Uruguay </option><option value="18"> Venezuela </option>         </select>

        </li>
        <li>
            <label for="name">Pais Universidad:</label>
            <select id="paisUniversidadContacto" name="paisUniversidadContacto" onchange="cambioPaisUniversidad()">
            <option class="title" value="NULL"> -- Pais universidad -- </option>
            <option value="19"> Alemania </option><option value="1"> Argentina </option><option value="2"> Australia </option><option value="33"> Austria </option><option value="34"> Bélgica </option><option value="32"> Bolivia </option><option value="3"> Brasil </option><option value="28"> Canada </option><option value="4"> Chile </option><option value="29"> China </option><option value="5"> Colombia </option><option value="6"> Costa Rica </option><option value="7"> Cuba </option><option value="23"> Dinamarca </option><option value="35"> Ecuador </option><option value="8"> España </option><option value="9"> Estados Unidos </option><option value="10"> Francia </option><option value="31"> Holanda </option><option value="25"> Inglaterra </option><option value="36"> Israel </option><option value="11"> Italia </option><option value="38"> Japón </option><option value="20"> Macau </option><option value="12"> México </option><option value="26"> Nigeria </option><option value="13"> Ninguno </option><option value="30"> Noruega </option><option value="24"> Otro </option><option value="37"> Pakistan </option><option value="14"> Paraguay </option><option value="15"> Perú </option><option value="21"> Polonia </option><option value="22"> Portugal </option><option value="39"> Puerto Rico </option><option value="16"> Reino Unido </option><option value="27"> Republica Checa </option><option value="40"> Republica Dominicana </option><option value="17"> Uruguay </option><option value="18"> Venezuela </option>         </select>
        </li>
        <li>
            <label for="name">Universidad:</label>
            <select id="universidadContacto" name="universidadContacto" onchange="cambioUniversidad()">
            <option class="title" value="NULL"> -- Universidad -- </option>
                      <option value="567">Abogado</option><option value="165">Alumno Postgrado UNLP</option><option value="406">Área Zoonosis - Municipalidad de Río Cuarto</option><option value="200">Aulaempresarial</option><option value="594">Centro Atomico Constituyentes</option><option value="553">Centro de Altos Estudios en Tecnologia Informatica</option><option value="401">Centro de Documentación e Información Educativa</option><option value="358">Centro de Ecología Aplicada del Litoral</option><option value="342">Centro de Estudios Parasitológicos y Vectores - CONICET - UNLP</option><option value="320">Centro de Innovación en Idioma Inglés</option><option value="540">Centro de Investigacion y Desarrollo de Tecnologias Aeronauticas, Fuerza Aerea</option><option value="546">Centro de Investigaciones en Laseres y  Aplicaciones</option><option value="428">Centro de Investigaciones Ópticas  - CONICET - CIC</option><option value="377">Centro de Salud 25</option><option value="433">Centro Internacional Franco-Argentino de Ciencias de Información y de Sistemas</option><option value="366">Centro Municipal de Zoonosis - Municipalidad de General Pueyrredón</option><option value="237">Centro Nacional Patagónico - CONICET</option><option value="636">Centro TecnolÃ³gico Comunitario Nono</option><option value="564">CIDESCO-DIGID- Ejercito Argentino</option><option value="649">Colegio Secundario Manuel Belgrano</option><option value="379">Comisión Administradora para el Fondo Especial de Salto Grande</option><option value="451">Comisión de Investigaciones Científicas de la Prov. de Bs. As.</option><option value="335">Comisión Nacional de Energía Atómica</option><option value="632">Consejo Interuniversitario Nacional</option><option value="113">Consejo Nacional de Investigaciones Científicas y Técnicas</option><option value="199">Consejo Superior de Educación Católica</option><option value="232">Consorcio de Universidades Nacionales UNCOMA-UNCPBA-UNLPampa-UNLP-UNPA-UNPSJB-UNS-UNSL</option><option value="370">Coordinación Nacional de Control de Vectores</option><option value="474">Dirección de Educación a Distancia y Aprendizaje Autónomo del Ejército</option><option value="393">Dirección de Recursos Naturales de Corrientes</option><option value="188">Dirección General de Planificación. Secretaría de Educación. Gov. Aut. de la Ciudad de Buenos Aires</option><option value="201">e-ABC</option><option value="456">Educación Tecnológica S.A.</option><option value="472">Empresa Conexión Educativa</option><option value="265">Epidata Consulting</option><option value="557">Escuela de Ciencia Y Tecnologia</option><option value="193">Escuela de Educación Media Nº 15 (Quilmes)</option><option value="609">Escuela Normal Dr. Jose B. Gorostiaga</option><option value="258">Escuela Secundaria Básica Nº 10 (Chacabuco)</option><option value="482">Escuela Superior Técnica - Instituto de Enseñanza Superior del Ejercito</option><option value="197">Escuela Técnica N°35 D.E. 18 Ing. Eduardo Latzina. Sec de Educación GCBA</option><option value="608">Escuela Tecnica NÂ°2</option><option value="190">Escuela Técnica Nº 2 Bernandino Rivadavia (San Luis)</option><option value="385">Estación Biológica de Corrientes - Museo Argentino de Ciencias Naturales</option><option value="610">Estudios Superiores NÂ°28 Olga Cossettini</option><option value="388">Facultad de Ciencias Naturales y Museo  (UNLP)</option><option value="458">Facultad Latinoamericana de Ciencias Sociales- Sede Argentina</option><option value="631">FundaciÃ³n Sadosky</option><option value="228">Fundación BICA</option><option value="261">Fundación Proydesa</option><option value="374">Global Health Program (WCS)</option><option value="597">Gobierno de la Provincia de San Luis</option><option value="617">Honorable Tribunal de Cuentas de la Provincia de Buenos Aires</option><option value="556">Hospital Italiano de Buenos Aires</option><option value="390">Hospital J. Muñiz</option><option value="354">Hospital P. Fiorito</option><option value="395">Hospital Sor María Ludovica</option><option value="225">Instituto Ballester</option><option value="156">Instituto Causay</option><option value="371">Instituto de Altos Estudios Espaciales Mario Gulich - CONAE - UNC</option><option value="369">Instituto de Biología Marina y Pesquera Almirante Storni </option><option value="413">Instituto de Educación Técnica y Formación Profesional</option><option value="220">Instituto de Enseñanza Superior del Ejército</option><option value="295">Instituto de Física Rosario - CONICET - UNR</option><option value="414">Instituto de Formación Docente Continua San Luis </option><option value="603">Instituto de Investigacion y Desarrollo Agroindustrial Horticola Semillero</option><option value="387">Instituto de Investigaciones Biotecnológicas-Instituto Tecnológico de Chascomús - CONICET - UNSAM</option><option value="311">Instituto de Investigaciones Científicas y Técnicas para la Defensa</option><option value="384">Instituto de Investigaciones en Ingeniería Genética y Biología Molecular - CONICET - UBA</option><option value="418">Instituto de Nivel Terciario de Villa Angela</option><option value="391">Instituto Educativo Huellas</option><option value="484">Instituto Fátima</option><option value="448">Instituto Internacional de Planeamiento de la Educación - UNESCO</option><option value="360">Instituto Malbrán</option><option value="257">Instituto Modelo De Estudios Superiores Almafuerte</option><option value="245">Instituto Multidisciplinario de Historia y Ciencias Humanas - CONICET</option><option value="460">Instituto Nacional de Administración Pública</option><option value="348">Instituto Nacional de Investigación y Desarrollo Pesquero</option><option value="381">Instituto Nacional de Parasitología Dr. M. Fatala Chabén</option><option value="481">Instituto Nacional de Tecnología Agropecuaria</option><option value="204">Instituto Nacional Superior del Profesorado Técnico</option><option value="607">Instituto San Ignacio de Loyola</option><option value="365">Instituto San Isidro Labrador</option><option value="640">Instituto Superior "San JosÃ©"</option><option value="648">Instituto Superior de Formacion Docente "Dr. Juan Pujol"</option><option value="473">Instituto Superior de Formación Docente Reneé Trettel de Fabián </option><option value="435">Instituto Superior de Formación Docente N° 801</option><option value="449">Instituto Superior de Formación Docente Nº 142 "Fray Mamerto Esquiú"</option><option value="223">Instituto Superior de Formación Docente Nº 17</option><option value="552">Instituto Superior de Ingenieria de Software Tandil</option><option value="319">Instituto Superior de Profesorado Nº 3 "Eduardo Lafferriere"</option><option value="226">Instituto Superior del Profesorado "Joaquín V. Gonzalez"</option><option value="459">Instituto Superior Tecnológico Nº 9-019</option><option value="150">Instituto Tecnológico de Buenos Aires</option><option value="230">Instituto Universitario Aeronáutico</option><option value="558">Instituto Universitario de la Policia Federal Argentina</option><option value="465">Instituto Universitario Escuela Argentina de Negocios.</option><option value="425">INTEL Software Argentina, Software and Services Group</option><option value="478">INVAP SE</option><option value="378">Jardín de Infantes Municipal ¨Hugo Stunz¨</option><option value="362">Laboratoriio DIAP (Diagnóstico en Animales Pequeños)</option><option value="357">Ministerio de Producción de Jujuy</option><option value="373">Museo Argentino de Ciencias Naturales</option><option value="233">Organización de los Estados Americanos</option><option value="492">Otra</option><option value="601">Poder Judicial de Neuquen</option><option value="256">Pontificia Universidad Católica Argentina</option><option value="359">Prog. Control Hidatidosis de Tierra del Fuego</option><option value="386">Programa de detección de Enfermedades de Colon</option><option value="566">SINIPEC Argentina</option><option value="588">UCEMA</option><option value="462">Unidad Académica Río Gallegos (UNPA)</option><option value="142">Universidad Abierta Interamericana</option><option value="598">Universidad Adventista del Plata</option><option value="263">Universidad Argentina de la Empresa</option><option value="445">Universidad Argentina John F. Kennedy</option><option value="605">Universidad Atonoma de Yucatan</option><option value="606">Universidad Atonoma de Yucatan</option><option value="538">Universidad Austral</option><option value="242">Universidad Autónoma de Entre Ríos</option><option value="544">Universidad Blas Pascal</option><option value="243">Universidad CAECE</option><option value="602">Universidad CatÃ³lica de CÃ³rdoba</option><option value="547">Universidad Catlolica de La Plata,Extension Rosario               </option><option value="551">Universidad Catolica Argentina, Rosario</option><option value="543">Universidad Catolica de Cuyo</option><option value="234">Universidad Católica de Salta</option><option value="461">Universidad Católica de Santa Fe</option><option value="411">Universidad Católica de Santiago del Estero</option><option value="467">Universidad de Belgrano</option><option value="31">Universidad de Buenos Aires</option><option value="446">Universidad de Flores</option><option value="241">Universidad de Mendoza</option><option value="205">Universidad de Morón</option><option value="42">Universidad de Palermo</option><option value="545">Universidad del Aconcagua</option><option value="440">Universidad del Ejército</option><option value="589">Universidad del Salvador</option><option value="212">Universidad Empresarial Siglo21</option><option value="264">Universidad Fasta</option><option value="555">Universidad Gaston Dachary</option><option value="375">Universidad Juan Agustín Maza</option><option value="591">Universidad Nacional Arturo Jauretche</option><option value="198">Universidad Nacional de Catamarca</option><option value="262">Universidad Nacional de Chilecito</option><option value="412">Universidad Nacional de Concepción del Uruguay</option><option value="52">Universidad Nacional de Córdoba</option><option value="194">Universidad Nacional de Cuyo</option><option value="122">Universidad Nacional de Entre Ríos </option><option value="318">Universidad Nacional de Formosa</option><option value="174">Universidad Nacional de General Sarmiento</option><option value="53">Universidad Nacional de Jujuy</option><option value="124">Universidad Nacional de La Matanza</option><option value="54">Universidad Nacional de La Pampa</option><option value="55">Universidad Nacional de la Patagonia Austral</option><option value="25">Universidad Nacional de la Patagonia San Juan Bosco</option><option value="560">Universidad Nacional de la Patagonia San Juan Bosco</option><option value="56">Universidad Nacional de La Plata</option><option value="57">Universidad Nacional de La Rioja</option><option value="409">Universidad Nacional de Lanús</option><option value="407">Universidad Nacional de Lomas de Zamora</option><option value="153">Universidad Nacional de Luján</option><option value="139">Universidad Nacional de Mar del Plata</option><option value="313">Universidad Nacional de Misiones</option><option value="191">Universidad Nacional de Quilmes</option><option value="58">Universidad Nacional de Río Cuarto</option><option value="469">Universidad Nacional de Rio Negro</option><option value="59">Universidad Nacional de Rosario</option><option value="60">Universidad Nacional de Salta</option><option value="62">Universidad Nacional de San Juan</option><option value="63">Universidad Nacional de San Luis</option><option value="227">Universidad Nacional de San Martín</option><option value="167">Universidad Nacional de Santiago del Estero</option><option value="568">Universidad Nacional de Tierra del Fuego</option><option value="600">Universidad Nacional de Tres de Febrero</option><option value="345">Universidad Nacional de Tucumán</option><option value="175">Universidad Nacional de Villa María</option><option value="50">Universidad Nacional del Centro de la Provincia de Buenos Aires</option><option value="599">Universidad Nacional del Chaco Austral</option><option value="64">Universidad Nacional del Comahue</option><option value="169">Universidad Nacional del Litoral</option><option value="65">Universidad Nacional del Nordeste</option><option value="410">Universidad Nacional del Noroeste de la Provincia de Buenos Aires</option><option value="67">Universidad Nacional del Sur</option><option value="475">Universidad Nacional Tres de Febrero</option><option value="109">Universidad Tecnológica Nacional</option><option value="457">Universidad Torcuato Di Tella</option><option value="192">Universidad Virtual de Quilmes</option><option value="447">UTN Facultad Regional Avellaneda</option><option value="178">UTN Facultad Regional Bahía Blanca</option><option value="219">UTN Facultad Regional Buenos Aires</option><option value="218">UTN Facultad Regional Concepción del Uruguay</option><option value="252">UTN Facultad Regional Concordia</option><option value="168">UTN Facultad Regional Córdoba</option><option value="203">UTN Facultad Regional General Pacheco</option><option value="283">UTN Facultad Regional Haedo</option><option value="596">UTN Facultad Regional La Plata</option><option value="202">UTN Facultad Regional Mendoza</option><option value="211">UTN Facultad Regional Parana</option><option value="173">UTN Facultad Regional Resistencia</option><option value="324">UTN Facultad Regional Rosario</option><option value="328">UTN Facultad Regional San Francisco</option><option value="290">UTN Facultad Regional San Nicolás</option><option value="110">UTN Facultad Regional Santa Fe</option><option value="244">UTN Facultad Regional Tucumán</option><option value="613">UTN Facultad Regional Villa MarÃ­a</option><option value="111">UTN Facultad Río Grande</option><option value="450">UTN Mar del Plata</option><option value="429">Vehículos Espaciales de Nueva Generación S. A.</option></select>
        </li>
        <li>
            <label for="name">Lugar de Trabajo:</label>
            <input type="text"  placeholder="Lugar de Trabajo" required />
        </li>
        <li>
            <label for="payment">Forma de Pago:</label>
            <select id="myList">
               <option value="1">Pago en Evento
               <option value="2">Depósito Bancario
               <option value="3">Transferencia Bancaria
             </select>
        </li>
        <li>
            <label for="type">Tipo de Inscripción:</label>
                <select id="listaInscripcion">
                   <option value="4"> Asistentes docentes nivel medio/terciario
                   <option value="5"> Asistentes docentes UNNE
                   <option value="6"> Asistentes en General
                   <option value="7"> Asistentes estudiantes universitarios y/o terciarios
                   <option value="8"> Autores miembros de Universidades de la RedUNCI
                   <option value="9"> Otros autores
                </select>
        </li>
        <li>
            <label for="email">Correo de Contacto:</label>
            <input type="email" name="email" placeholder="email@ejemplo.com" required />
        </li>
        <li>
             <h3>Datos de facturación</h3>
        </li>
        <li>
            <label for="dni">CUIT/CUIL/DNI:</label>
            <input type="text" name="dni" placeholder=""/>
        </li>
        <li>
            <label for="nombreInst">Apellido y Nombre / Institución:</label>
            <input type="text" name="nombreInst" placeholder=""/>
        </li>
        <li>
            <label for="localidad">Localidad:</label>
            <input type="text" name="localidad" placeholder=""/>
        </li>
        <li>
            <label for="domicilio">Domicilio:</label>
            <input type="text" name="domicilio" placeholder=""/>
        </li>
        <li>
            <label for="tel">Teléfono:</label>
            <input type="text" name="tel" placeholder=""/>
        </li>
        <li>
            <label for="iva">Condición de IVA:</label>
            <input type="text" name="iva" placeholder=""/>
        </li>

        <li id="boton">
          <button class="submit" type="submit">Enviar</button>
        </li>
    </ul>
</form> -->

     </div>
     <!--Contenido de la Pestaña 2-->
     <div id="content-2">
        <?php 
            require_once("config.php");
            $conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
            if ($conexion->connect_errno) {
                echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
                die;
            }

            $consulta = "select per.ayn, per.correo from inscripciones as insc
                        left join personas as per on per.id_persona = insc.id_persona";
            
            $resultado = $conexion->query($consulta);
            ?>
            <table class="tabla_inscriptos center">
            <th>Apellido y Nombre</th><th>Accion</th>


            <?php while ($registro = $resultado->fetch_object()) : ?>
                    
                        <tr>
                            <td><?php echo $registro->ayn; ?></td>
                            <td><a target="_BLANK" href="make_cert/diplomas/<?php echo     strtolower(str_replace(array(' ','/'),'_',$registro->ayn.'('.$registro->correo.').pdf'))           ;?>" >Ver</a></td>
                            
                            
                        </tr>
            <?php endwhile; ?>
            </table>

        
     </div>
     <!--Contenido de la Pestaña 3-->
     <div id="content-3">
        <?php 
                require_once("config.php");
                $conexion = mysqli_connect($config_servidor_bd,$config_usuario,$config_clave,$config_bd_name);
                if ($conexion->connect_errno) {
                    echo "Fallo al contenctar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
                    die;
                }

                $resultado = $conexion->query("select insc.nro_inscripcion, 
                                                insc.fecha_hora, 
                                                per.ayn, 
                                                per.correo, 
                                                fp.forma_pago, 
                                                ei.estado_insc, 
                                                ci.condicion_iva, 
                                                df.localidad, 
                                                df.domicilio, 
                                                df.telefono 
                                                from personas as per 
                                                left join inscripciones  as insc on per.id_persona = insc.id_persona 
                                                left join formas_pago as fp on fp.id_forma_pago = insc.id_forma_pago 
                                                left join estados_inscripcion as ei on ei.id_estado_insc = insc.id_estado_insc 
                                                left join datos_facturacion as df on df.id_datos_fac = insc.id_datos_fac 
                                                left join condiciones_iva as ci on ci.id_cond_iva = df.condicion_iva
                                                order by insc.fecha_hora desc");
                                                ?>
                <table class="tabla_inscriptos">
                <th>Nro. Insc.</th><th>Fecha/Hora</th><th>Apellido y Nombres</th><th>Correo</th><th>Telefono</th>

            <?php while ($registro = $resultado->fetch_object()) : ?>
                    
                        <tr>
                            <td><?php echo $registro->nro_inscripcion; ?></td>
                            <td><?php echo date("d-m-Y H:i",$registro->fecha_hora); ?></td>
                            <td><?php echo $registro->ayn; ?></td>
                            <td><?php echo $registro->correo; ?></td>
                            <td><?php echo $registro->telefono; ?></td>
                            
                        </tr>
            <?php endwhile;  ?>
            </table>
    
     </div>
     <div id="content-4">
        

     </div>
    </div>
   </div>
  </body>
</html>
