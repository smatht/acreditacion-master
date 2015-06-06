-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2015 a las 00:43:53
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
USE teyet;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `teyet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condiciones_iva`
--

CREATE TABLE IF NOT EXISTS `condiciones_iva` (
  `id_cond_iva` int(2) NOT NULL AUTO_INCREMENT,
  `condicion_iva` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cond_iva`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `condiciones_iva`
--

INSERT INTO `condiciones_iva` (`id_cond_iva`, `condicion_iva`) VALUES
(1, 'Desconocido'),
(2, 'Responsable Inscripto'),
(3, 'Consumidor Final'),
(4, 'Exento'),
(5, 'Monotributista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_facturacion`
--

CREATE TABLE IF NOT EXISTS `datos_facturacion` (
  `id_datos_fac` int(5) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(50) NOT NULL,
  `domicilio` varchar(150) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `condicion_iva` int(2) NOT NULL,
  PRIMARY KEY (`id_datos_fac`),
  KEY `condicion_iva` (`condicion_iva`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4271 ;

--
-- Volcado de datos para la tabla `datos_facturacion`
--

INSERT INTO `datos_facturacion` (`id_datos_fac`, `localidad`, `domicilio`, `telefono`, `condicion_iva`) VALUES
(4187, 'ituzaingo', 'buenos aires y apipe', 'Sin informacion', 1),
(4188, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4189, 'Corrientes', 'Estados Unidos 549', '3794260418', 1),
(4190, 'Resistencia', 'French 414', 'Sin informacion', 1),
(4191, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4192, 'Ciudad del Este', 'Barrio San Jose , km 4 1/2', '973155301', 1),
(4193, 'ItuzaingÃ³', 'Buenos Aires 2230', '03786-15495893', 4),
(4194, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4195, 'Ituzaingo, Corrientes', 'calle 13 casa 49', '3786610282', 3),
(4196, 'ituzaingo', 'Posadas y pellegrini 163', '3786416105', 1),
(4197, 'Ciudad del Este, Paraguay', 'Avda. Las Guaranias casi Mburucuya', '5,95973E+11', 1),
(4198, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4199, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4200, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4201, 'Comodoro Rivadavia', 'KM 4', '2974307420', 1),
(4202, 'Presidencia Roque Saenz PeÃ±a', 'barrio 130 viv Mz 79 Pc 6', '4436940', 1),
(4203, 'Ituzaingo corrientes', 'san martin 2087', '3,78616E+11', 1),
(4204, 'Cordoba', 'Martin Gil 5014', '5,49351E+12', 3),
(4205, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4206, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4207, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4208, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4209, 'Corrientes', 'Gdor. Lopez 60', '379-4431014', 4),
(4210, 'ItuzaingÃ³', 'Calle 22 casa 5 Barrio San MartÃ­n', '03786-421381', 1),
(4211, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4212, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4213, 'Carreiros', 'Av. Italia Km 8', '81577726', 1),
(4214, 'Resistencia', 'French 414', '362-4432928', 4),
(4215, 'Salta', 'Avenida Bolivia 5150', 'Sin informacion', 4),
(4216, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4217, 'CORRIENTES', 'Sin informacion', 'Sin informacion', 1),
(4218, 'Salta Capital', 'Avenida Bolivia 5150', '4255547', 4),
(4219, 'Santiago del Estero (Capital)', 'San Juan NÂº1330 B: Primera Junta', '(0385) 421-8341', 1),
(4220, 'Ituzaingo Corrientes', 'Pago Largo y Urquiza Barrio Itati', '3786494681', 4),
(4221, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4222, 'ItuzaingÃ³ Corrientes', 'Barrio Gral San MartÃ­n, Calle 4 Casa 8', '3786615021', 1),
(4223, 'CÃ³rdoba capital', 'Calle de Los Latinos 8555', 'Sin informacion', 1),
(4224, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4225, 'Corrientes', 'Av Sarmiento 1971', 'Sin informacion', 1),
(4226, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4227, 'Ituzaingo - Corrientes', 'BÂ° 180 Casa 110', '03786-15614940', 1),
(4228, 'San Justo', 'Florencio Varela 1903', '44808900 INT 8630 Santiago Igarza', 4),
(4229, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4230, 'Corrientes', 'Lavalle 50', '0379 443-6360', 4),
(4231, 'Resistencia', 'CÃ³rdoba 801', '0362-4438821', 1),
(4232, 'Loreto', 'Moreno 158', '3845420839', 1),
(4233, 'CORRIENTES', '9 de Julio 687', '3782521692', 1),
(4234, 'Cuidad del Este - Paraguay', 'Ciudad del Este', '59573611636', 1),
(4235, 'Corrientes Capital', '120 Viviendas Mz J Casa 3 Barrio Santa MarÃ­a', '3794630713', 4),
(4236, 'Viedma', 'Belgrano 526', '02920-428969', 4),
(4237, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4238, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4239, 'Corrientes', 'Barrio 3 de abril 215 viviendas manzana C Casa 193', '3794353594', 1),
(4240, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4241, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4),
(4242, 'ItuzaingÃ³ Corrientes', 'Francisco LÃ³pez 2047', '3786411190', 1),
(4243, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4244, 'Corrientes Capital', 'Gutemberg 3295', '3794080258', 4),
(4245, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4246, 'San Justo, Buenos Aires', 'Florencio Varela 1903', '4480-8900', 1),
(4247, 'Salta Capital', 'Av Bolivia 5.150', '0387-4255328', 4),
(4248, 'Corrientes', 'Belgrano 1358 dpto L', '3794253229', 2),
(4249, 'Corrientes', 'Nuestra SeÃ±ora de la AsunciÃ³n 2782', '3,79155E+11', 5),
(4250, 'capital', '160 viv. maz E. casa 149', '3794828694', 1),
(4251, 'Mar de Ajo', 'Diag. Rivadavia 515', '2.257.420.338', 4),
(4252, 'Mar del Plata', 'Juan B. Justo 4302', '0223 4816600 int 181', 1),
(4253, 'Argentina', 'Gobernador Gallino 399', '3794 259524', 1),
(4254, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4255, 'Corrientes', 'San martin 2730', '379-472-6465', 1),
(4256, 'ItuzaingÃ³', 'San Luis y Laprida', '03786 425421', 1),
(4257, 'Presidencia Roque Saenz PeÃ±a', 'calle 1 entre 2 y 4', '3644- 509817', 1),
(4258, 'ItuzaingÃ³', 'Posadas 1953 dpto 2', '3786-497761', 1),
(4259, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4260, 'Corrientes Capital', 'Pasaje Ocanto 31', '3794555014', 4),
(4261, 'RÃ­o Gallegos', 'Lisandro de la Torre 1070', '54-2966-442317', 4),
(4262, 'Santiago del Estero', 'BÂ° Las Americas-Fernadez-Sgo del Estero', '3855913903', 1),
(4263, 'Central', 'Silvano Mosqueira 004 c/ Alberto Shenonni', '5,95982E+11', 1),
(4264, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4265, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4266, 'Corrientes Capital', 'RÃ­o Limay 2798', '3794409611', 4),
(4267, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4268, 'Sin informacion', 'Sin informacion', 'Sin informacion', 1),
(4269, 'Santa Fe', 'Sin informacion', 'Sin informacion', 1),
(4270, 'Central', 'Silvano Mosqueira 004 c/ Alberto Shenonni', '5,95982E+11', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_inscripcion`
--

CREATE TABLE IF NOT EXISTS `estados_inscripcion` (
  `id_estado_insc` int(2) NOT NULL,
  `estado_insc` varchar(50) NOT NULL,
  PRIMARY KEY (`id_estado_insc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados_inscripcion`
--

INSERT INTO `estados_inscripcion` (`id_estado_insc`, `estado_insc`) VALUES
(0, 'Registrado (aun no pago)'),
(1, 'Registrado (ya pago)'),
(2, 'Registrado (ya pago y retiro certificado)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formas_pago`
--

CREATE TABLE IF NOT EXISTS `formas_pago` (
  `id_forma_pago` int(2) NOT NULL,
  `forma_pago` varchar(50) NOT NULL,
  PRIMARY KEY (`id_forma_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formas_pago`
--

INSERT INTO `formas_pago` (`id_forma_pago`, `forma_pago`) VALUES
(0, 'Pago en Evento'),
(1, 'Deposito Bancario'),
(2, 'Transferencia Bancaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE IF NOT EXISTS `inscripciones` (
  `id_persona` int(5) NOT NULL,
  `nro_inscripcion` int(6) NOT NULL,
  `id_tipo_insc` int(2) NOT NULL,
  `id_forma_pago` int(2) NOT NULL,
  `id_estado_insc` int(2) NOT NULL,
  `id_datos_fac` int(5) DEFAULT NULL,
  `fecha_hora` varchar(15) NOT NULL,
  `nro_factura` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `id_tipo_insc` (`id_tipo_insc`),
  KEY `id_forma_pago` (`id_forma_pago`),
  KEY `id_estado_insc` (`id_estado_insc`),
  KEY `id_datos_fac` (`id_datos_fac`),
  KEY `nro_inscripcion` (`nro_inscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id_persona`, `nro_inscripcion`, `id_tipo_insc`, `id_forma_pago`, `id_estado_insc`, `id_datos_fac`, `fecha_hora`, `nro_factura`) VALUES
(4575, 6313, 5, 0, 0, 4187, '1431900000', NULL),
(4576, 6337, 5, 0, 0, 4188, '1431986400', NULL),
(4577, 6346, 5, 0, 0, 4189, '1432072800', NULL),
(4578, 6397, 5, 1, 0, 4190, '1432245600', NULL),
(4579, 6350, 5, 0, 0, 4191, '1432159200', NULL),
(4580, 6394, 1, 0, 0, 4192, '1432245600', NULL),
(4581, 6409, 5, 0, 0, 4193, '1432504800', NULL),
(4582, 6305, 5, 2, 0, 4194, '1431727200', NULL),
(4583, 6315, 5, 0, 0, 4195, '1431900000', NULL),
(4584, 6317, 5, 0, 0, 4196, '1431900000', NULL),
(4585, 6395, 1, 0, 0, 4197, '1432245600', NULL),
(4586, 6333, 5, 0, 0, 4198, '1431986400', NULL),
(4587, 6390, 5, 1, 0, 4199, '1432159200', NULL),
(4588, 6392, 1, 0, 0, 4200, '1432245600', NULL),
(4589, 6396, 0, 2, 0, 4201, '1432245600', NULL),
(4590, 6306, 5, 1, 0, 4202, '1431727200', NULL),
(4591, 6342, 5, 0, 0, 4203, '1432072800', NULL),
(4592, 6328, 0, 0, 0, 4204, '1431986400', NULL),
(4593, 6388, 5, 0, 0, 4205, '1432159200', NULL),
(4594, 6385, 5, 0, 0, 4206, '1432159200', NULL),
(4595, 6344, 5, 0, 0, 4207, '1432072800', NULL),
(4596, 6304, 5, 0, 0, 4208, '1431640800', NULL),
(4597, 6404, 0, 2, 0, 4209, '1432418400', NULL),
(4598, 6312, 5, 0, 0, 4210, '1431900000', NULL),
(4599, 6381, 5, 0, 0, 4211, '1432159200', NULL),
(4600, 6366, 5, 0, 0, 4212, '1432159200', NULL),
(4601, 6408, 1, 0, 0, 4213, '1432504800', NULL),
(4602, 6418, 0, 2, 0, 4214, '1432591200', NULL),
(4603, 6331, 0, 1, 0, 4215, '1431986400', NULL),
(4604, 6322, 5, 1, 0, 4216, '1431900000', NULL),
(4605, 6389, 0, 2, 0, 4217, '1432159200', NULL),
(4606, 6324, 0, 1, 0, 4218, '1431986400', NULL),
(4607, 6334, 5, 0, 0, 4219, '1431986400', NULL),
(4608, 6410, 5, 0, 0, 4220, '1432504800', NULL),
(4609, 6379, 5, 0, 0, 4221, '1432159200', NULL),
(4610, 6335, 5, 1, 0, 4222, '1431986400', NULL),
(4611, 6323, 1, 0, 0, 4223, '1431900000', NULL),
(4612, 6400, 5, 0, 0, 4224, '1432332000', NULL),
(4613, 6401, 1, 0, 0, 4225, '1432332000', NULL),
(4614, 6332, 5, 0, 0, 4226, '1431986400', NULL),
(4615, 6321, 5, 1, 0, 4227, '1431900000', NULL),
(4616, 6402, 0, 2, 0, 4228, '1432332000', NULL),
(4617, 6407, 5, 0, 0, 4229, '1432504800', NULL),
(4618, 6386, 1, 0, 0, 4230, '1432159200', NULL),
(4619, 6308, 4, 2, 0, 4231, '1431900000', NULL),
(4620, 6398, 5, 0, 0, 4232, '1432245600', NULL),
(4621, 6338, 5, 1, 0, 4233, '1431986400', NULL),
(4622, 6387, 1, 0, 0, 4234, '1432159200', NULL),
(4623, 6414, 5, 0, 0, 4235, '1432504800', NULL),
(4624, 6405, 0, 2, 0, 4236, '1432418400', NULL),
(4625, 6329, 5, 0, 0, 4237, '1431986400', NULL),
(4626, 6310, 5, 0, 0, 4238, '1431900000', NULL),
(4627, 6406, 5, 0, 0, 4239, '1432418400', NULL),
(4628, 6403, 5, 0, 0, 4240, '1432418400', NULL),
(4629, 6307, 0, 2, 0, 4241, '1431813600', NULL),
(4630, 6330, 5, 1, 0, 4242, '1431986400', NULL),
(4631, 6314, 5, 1, 0, 4243, '1431900000', NULL),
(4632, 6411, 5, 0, 0, 4244, '1432504800', NULL),
(4633, 6399, 4, 2, 0, 4245, '1432332000', NULL),
(4634, 6415, 0, 2, 0, 4246, '1432504800', NULL),
(4635, 6343, 0, 1, 0, 4247, '1432072800', NULL),
(4636, 6327, 4, 2, 0, 4248, '1431986400', NULL),
(4637, 6380, 4, 0, 0, 4249, '1432159200', NULL),
(4638, 6416, 4, 2, 0, 4250, '1432504800', NULL),
(4639, 6391, 2, 0, 0, 4251, '1432159200', NULL),
(4640, 6318, 0, 2, 0, 4252, '1431900000', NULL),
(4641, 6319, 5, 0, 0, 4253, '1431900000', NULL),
(4642, 6349, 5, 0, 0, 4254, '1432159200', NULL),
(4643, 6417, 4, 2, 0, 4255, '1432591200', NULL),
(4644, 6320, 5, 0, 0, 4256, '1431900000', NULL),
(4645, 6303, 5, 1, 0, 4257, '1431640800', NULL),
(4646, 6345, 5, 2, 0, 4258, '1432072800', NULL),
(4647, 6326, 5, 2, 0, 4259, '1431986400', NULL),
(4648, 6412, 5, 0, 0, 4260, '1432504800', NULL),
(4649, 6325, 2, 0, 0, 4261, '1431986400', NULL),
(4650, 6393, 5, 0, 0, 4262, '1432245600', NULL),
(4651, 6309, 4, 0, 0, 4263, '1431900000', NULL),
(4652, 6348, 5, 0, 0, 4264, '1432159200', NULL),
(4653, 6336, 5, 0, 0, 4265, '1431986400', NULL),
(4654, 6413, 5, 0, 0, 4266, '1432504800', NULL),
(4655, 6347, 5, 0, 0, 4267, '1432159200', NULL),
(4656, 6316, 5, 1, 0, 4268, '1431900000', NULL),
(4657, 6384, 0, 2, 0, 4269, '1432159200', NULL),
(4658, 6311, 5, 0, 0, 4270, '1431900000', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `original`
--

CREATE TABLE IF NOT EXISTS `original` (
  `nro_inscripcion` int(6) DEFAULT NULL,
  `nombre` varchar(75) DEFAULT NULL,
  `universidad` varchar(75) DEFAULT NULL,
  `fecha_inscripcion` varchar(75) DEFAULT NULL,
  `forma_pago` varchar(75) DEFAULT NULL,
  `tipo_inscripcion` varchar(75) DEFAULT NULL,
  `precio` varchar(75) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `facturacion_cuil` varchar(75) DEFAULT NULL,
  `facturacion_institucion` varchar(75) DEFAULT NULL,
  `facturacion_localidad` varchar(75) DEFAULT NULL,
  `facturacion_domicilio` varchar(75) DEFAULT NULL,
  `facturacion_telefono` varchar(75) DEFAULT NULL,
  `facturacion_condicion_iva` varchar(75) DEFAULT NULL,
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `original`
--

INSERT INTO `original` (`nro_inscripcion`, `nombre`, `universidad`, `fecha_inscripcion`, `forma_pago`, `tipo_inscripcion`, `precio`, `correo`, `facturacion_cuil`, `facturacion_institucion`, `facturacion_localidad`, `facturacion_domicilio`, `facturacion_telefono`, `facturacion_condicion_iva`) VALUES
(6313, 'Aballay Soria Marcelo Humberto', 'UNSJ', '18/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'marceg_scout86@live.com', '32328061', 'Instituto superior de formacion docente ituzaingo', 'ituzaingo', 'buenos aires y apipe', 'Sin informacion', '1'),
(6337, 'Abdala G.', 'UNSL', '19/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'claugonza93@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6346, 'Acevedo Cecilia', 'UTN-FRM', '20/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'cecibel7@hotmail.com.ar', '34207471', 'Aguirre Trangoni Cecilia', 'Corrientes', 'Estados Unidos 549', '3794260418', '1'),
(6397, 'Aciar Gabriela', 'UNSJ', '22/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'profe.july@gmail.com', '24.798.788', 'UTN', 'Resistencia', 'French 414', 'Sin informacion', '1'),
(6350, 'Aciar Silvana', 'UNSJ', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'Romysilva15@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6394, 'Acosta Blanco Viviana E.', 'UNE', '22/05/2015', 'Pago en Evento', 'Otros autores', '480.0', 'vivimonis_@hotmail.com', '4881005', 'Acosta Blanco Viviana Elizabeth', 'Ciudad del Este', 'Barrio San Jose , km 4 1/2', '973155301', '1'),
(6409, 'Agüero Andrea Leonor', 'UNLAR', '25/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'nati-rom3@live.com', '32899750', 'Romero Natalia Andrea; Instituto Superior de FormaciÃ³n Docente de ituzaing', 'ItuzaingÃ³', 'Buenos Aires 2230', '03786-15495893', '4'),
(6305, 'Alderette Claudia', 'UNLaM', '16/05/2015', 'Transferencia Bancaria', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'entelequia_22@hotmail.com', '29657916', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6315, 'Alonso Alejandra', 'UBA', '18/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'alto02@hotmail.com', '23615624', 'Toledo Graciela Alejandra I.S.F.D Ituzaingo', 'Ituzaingo, Corrientes', 'calle 13 casa 49', '3786610282', '3'),
(6317, 'Ana Maria Benitez', 'UNaM', '18/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'BenÃ­tezprofesorado@gmail.com', '37709342', 'Instituto de formaciÃ³n docente de ituzaingo', 'ituzaingo', 'Posadas y pellegrini 163', '3786416105', '1'),
(6395, 'Anaya Víctor', 'UPV', '22/05/2015', 'Pago en Evento', 'Otros autores', '480.0', 'victor.obrist@gmail.com', '2.312.484', 'Victor Udo Obrist Bertrand', 'Ciudad del Este, Paraguay', 'Avda. Las Guaranias casi Mburucuya', '5,95973E+11', '1'),
(6333, 'Arias Mayra', 'UNSE', '19/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'm4y.007@hotmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6390, 'Bachman Noemi', 'UNNE', '21/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'griseldarojas33@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6392, 'Barrios Juan', 'UNE', '22/05/2015', 'Pago en Evento', 'Otros autores', '480.0', 'juanbaravaos@gmail,com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6396, 'Belcastro Ángela', 'UNPSJB', '22/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'angelab@ing.unp.edu.ar', '16757474', 'Belcastro Angela', 'Comodoro Rivadavia', 'KM 4', '2974307420', '1'),
(6306, 'Benitez Andrea Eliana', 'OTRA', '16/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'andrebenitez17@gmail.com', '27-38968361-8', 'Benitez Andrea Eliana instituto Don Orione', 'Presidencia Roque Saenz PeÃ±a', 'barrio 130 viv Mz 79 Pc 6', '4436940', '1'),
(6342, 'Benitez karina Elizabeth', '', '20/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'karinaelizabethbenitez@gmail.com', '30438694', 'ISFD ituzaingo', 'Ituzaingo corrientes', 'san martin 2087', '3,78616E+11', '1'),
(6328, 'Britos Jose Daniel', 'UNC', '19/05/2015', 'Pago en Evento', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'dbritos@gmail.com', '20104467564', 'Britos Jose Daniel UNC', 'Cordoba', 'Martin Gil 5014', '5,49351E+12', '3'),
(6388, 'Bustamante Paola Beatriz', 'UNSE', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'pao.b.bust@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6385, 'Bustamante Víctor Sebastián', 'UNSE', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'sebastianbustamante06@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6344, 'Butiler Daiana Yanet', 'UNSE', '20/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'yanethe20dyb@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6304, 'Carreras Mariano Francisco', 'UNSE', '15/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'marianocarreras90@hotmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6404, 'Castro Chans Beatriz', 'UNNE', '24/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'beatriz.castrochans@comunidad.unne.edu.ar', '27-17968004-7', 'Beatriz Castro Chans', 'Corrientes', 'Gdor. Lopez 60', '379-4431014', '4'),
(6312, 'Castro Gutierrez Eveling Gloria', 'UNSA', '18/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'yayaeve@gmail.com', '18.419.399', 'Instituto de FormaciÃ³n Docente de ItuzaingÃ³', 'ItuzaingÃ³', 'Calle 22 casa 5 Barrio San MartÃ­n', '03786-421381', '1'),
(6381, 'Cavallotti Gina Giuliana', 'UNSE', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'cavallotti_gina@hotmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6366, 'Cejas Dahia Fabiana', 'UNSE', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'fabiana.dfc@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6408, 'Chapero Laura', 'UTN-FRRe', '25/05/2015', 'Pago en Evento', 'Otros autores', '480.0', 'cdavidlaura@gmail.com', '29484517', 'Universidad Federal de Rio Grande', 'Carreiros', 'Av. Italia Km 8', '81577726', '1'),
(6418, 'Dalfaro Nidia', 'UTN-FRRe', '26/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'ndalfaro@frre.utn.edu.ar', '30-54667116-6', 'Facultad Regional Resistencia-UTN', 'Resistencia', 'French 414', '362-4432928', '4'),
(6331, 'Espinoza Cecilia Natalia', 'UNSa', '19/05/2015', 'Depósito Bancario', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'cecilianespi@gmail.com', 'CUIT 30-58676257-1', 'Universidad Nacional de Salta + en el cuerpo de la factura mi nombre comple', 'Salta', 'Avenida Bolivia 5150', 'Sin informacion', '4'),
(6322, 'Esquivel Jessica Vetiana', 'OTRA', '18/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'jessicavesquivel@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6389, 'Ferraro María de los Angeles', 'UNNE', '21/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'MAFFERRARO@HOTMAIL..COM', '27247129397', 'FERRARO MARIA DE LOS ANGELES', 'CORRIENTES', 'Sin informacion', 'Sin informacion', '1'),
(6324, 'Franco Zanek', 'UNSa', '19/05/2015', 'Depósito Bancario', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'francozanek@hotmail.com', '30-58676257-1', 'Universidad Nacional de Salta', 'Salta Capital', 'Avenida Bolivia 5150', '4255547', '4'),
(6334, 'Gallardo Cynthia Noemi', 'UNSE', '19/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'gallardoc_9@hotmail.com', '31905176', 'Gallardo Cynthia Noemi', 'Santiago del Estero (Capital)', 'San Juan NÂº1330 B: Primera Junta', '(0385) 421-8341', '1'),
(6410, 'Gómez Adrian', 'HIBA', '25/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'gomez_jime18@hotmail.com', '38715951', 'GOMEZ JIMENA ANTONIA Instituto Superior de FormaciÃ³n Docente de Ituzaingo', 'Ituzaingo Corrientes', 'Pago Largo y Urquiza Barrio Itati', '3786494681', '4'),
(6379, 'Gomez Maria Silvina', 'UNSE', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'kiaki_16@hotmail. com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6335, 'Gomez Rocio Dahiana', 'OTRA', '19/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'rociiogomeez@gmail.com', '37393016', 'GÃ³mez RocÃ­o Dahiana - Instituto Superior de Formacion Docente de Ituzaing', 'ItuzaingÃ³ Corrientes', 'Barrio Gral San MartÃ­n, Calle 4 Casa 8', '3786615021', '1'),
(6323, 'Gómez Sandra M', 'OTRA', '18/05/2015', 'Pago en Evento', 'Otros autores', '480.0', 'sgomezvinuales@gmail.com', 'Sin informacion', 'Universidad Siglo 21', 'CÃ³rdoba capital', 'Calle de Los Latinos 8555', 'Sin informacion', '1'),
(6400, 'Gómez Codutti Ana Elisa', 'UNNE', '23/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'anacodutti@live.com.ar', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6401, 'Gonzalez Jorge', 'I-27', '23/05/2015', 'Pago en Evento', 'Otros autores', '480.0', 'jorgeariel1974@gmail.com', '23742547', 'Instituto Superior San JosÃ© I-27', 'Corrientes', 'Av Sarmiento 1971', 'Sin informacion', '1'),
(6332, 'Guzmán María Josefina', 'UNSE', '19/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'joshyslim@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6321, 'helaman griselsa', 'OTRA', '18/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'grish1486@gmail.com', '32106362', 'helman griselda ISFD Ituzaingo Corrientes', 'Ituzaingo - Corrientes', 'BÂ° 180 Casa 110', '03786-15614940', '1'),
(6402, 'Ierache Jorge', 'UNLaM', '23/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'jierache@yahoo.com.ar', '30646228685', 'Universidad Nacional de la Matanza', 'San Justo', 'Florencio Varela 1903', '44808900 INT 8630 Santiago Igarza', '4'),
(6407, 'Igarzabal Cano María Victoria', 'OTRA', '25/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'mavigarzabal@yahoo.com.ar', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6386, 'Irrazábal Emanuel', 'UNNE', '21/05/2015', 'Pago en Evento', 'Otros autores', '480.0', 'emanuelirrazabal@gmail.com', '30-66965662-5', 'FUNDACION JEAN PIAGET', 'Corrientes', 'Lavalle 50', '0379 443-6360', '4'),
(6308, 'Iurich Fabiana', 'OTRA', '18/05/2015', 'Transferencia Bancaria', 'Asistentes docentes nivel medio/terciario', '200.0', 'fabianaiurich@yahoo.es/ mmaurel38@yahoo.com.es', 'DNI NÂº 20448600', 'Instituto de Nivel Terciario de EducaciÃ³n TÃ©cnica y FormaciÃ³n Profesiona', 'Resistencia', 'CÃ³rdoba 801', '0362-4438821', '1'),
(6398, 'Jaime Salvatierra Victor Manuel', 'UNSE', '22/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'chippy537@gmail.com', '29814060', 'Jaime Salvatierra Victor Manuel', 'Loreto', 'Moreno 158', '3845420839', '1'),
(6338, 'Jara María J.', 'UNNE', '19/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'majito29@hotmail.es', '32795737', 'Universidad Nacional del Nordeste', 'CORRIENTES', '9 de Julio 687', '3782521692', '1'),
(6387, 'Kang Ruben', 'UNE', '21/05/2015', 'Pago en Evento', 'Otros autores', '480.0', 'kangruben@gmail.com', '4202424', 'RubÃ©n Dario Kang Cardozo/ Facultad PolitÃ©cnica - UNE', 'Cuidad del Este - Paraguay', 'Ciudad del Este', '59573611636', '1'),
(6414, 'Linares Natalia', 'I-27', '25/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'linares.natalia@hotmail.com', '28302641', 'Instituto Superior San JosÃ© I-27', 'Corrientes Capital', '120 Viviendas Mz J Casa 3 Barrio Santa MarÃ­a', '3794630713', '4'),
(6405, 'Lovos Edith', 'UNRN', '24/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'elovos@unrn.edu.ar', '30710427425', 'Universidad Nacional de Rio Negro', 'Viedma', 'Belgrano 526', '02920-428969', '4'),
(6329, 'Maluff jorge ricardo', 'UNSE', '19/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'jorgericardomaluff@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6310, 'Marangolo Alessandra Luana', 'OTRA', '18/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'ale.marangolo@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6406, 'Marder Cristina Guadalupe', 'ISFD', '24/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'cristinamarder@yahoo.com.ar', '13905614', 'Marder Cristina Guadalupe', 'Corrientes', 'Barrio 3 de abril 215 viviendas manzana C Casa 193', '3794353594', '1'),
(6403, 'Mattje Joana Micaela', 'UNSE', '24/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'mattje08@hotmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6307, 'Maurel María del Carmen', 'OTRA', '17/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'mmaurel_38@yahoo.com.ar', '30628540787', 'Ministerio de EducaciÃ³n de la NaciÃ³n', 'Sin informacion', 'Sin informacion', 'Sin informacion', '4'),
(6330, 'Mereles Eliana Gisell', 'OTRA', '19/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'elianagisell@outlook.es', '27387159261', 'Mereles Eliana Gisell', 'ItuzaingÃ³ Corrientes', 'Francisco LÃ³pez 2047', '3786411190', '1'),
(6314, 'Oporto Adriana Raquel', 'OTRA', '18/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'raqueloporto@hotmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6411, 'Paparoni Valeria', 'I-27', '25/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'valeriapaparoni@hotmail.com', '28302125', 'Instituto San JosÃ© I-27', 'Corrientes Capital', 'Gutemberg 3295', '3794080258', '4'),
(6399, 'Peleato Romina Elisabeth', 'ISFD', '23/05/2015', 'Transferencia Bancaria', 'Asistentes docentes nivel medio/terciario', '200.0', 'ropeleato@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6415, 'Perez Silvia N', 'UNLaM', '25/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'sperez@ing.unlam.edu.ar', '16164334', 'Perez, Silvia Noemi / UNLaM', 'San Justo, Buenos Aires', 'Florencio Varela 1903', '4480-8900', '1'),
(6343, 'Pinto Cristian', 'UNSa', '20/05/2015', 'Depósito Bancario', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'woshicris@gmail.com', '30586762571', 'Universidad Nacional de Salta', 'Salta Capital', 'Av Bolivia 5.150', '0387-4255328', '4'),
(6327, 'Princich Fernando', 'UNNE', '19/05/2015', 'Transferencia Bancaria', 'Asistentes docentes nivel medio/terciario', '200.0', 'flprincich@gmail.com', '20255639758', 'Princich Fernando', 'Corrientes', 'Belgrano 1358 dpto L', '3794253229', '2'),
(6380, 'Ramirez Lidia Yolanda', 'UNNE', '21/05/2015', 'Pago en Evento', 'Asistentes docentes nivel medio/terciario', '200.0', 'yramirezl@hotmail.com', '23-20374003-4', 'Ramirez Lidia Yolanda', 'Corrientes', 'Nuestra SeÃ±ora de la AsunciÃ³n 2782', '3,79155E+11', '5'),
(6416, 'RAMIREZ MARIA ISABEL', 'ISFD', '25/05/2015', 'Transferencia Bancaria', 'Asistentes docentes nivel medio/terciario', '200.0', 'maryairam@hotmail.com', '22640174', 'Ramirez Maria Isabel', 'capital', '160 viv. maz E. casa 149', '3794828694', '1'),
(6391, 'rathmann liliana Estela', 'OTRA', '21/05/2015', 'Pago en Evento', 'Asistentes en General', '350.0', 'lrathmann@atlantida.edu.ar', '5986525', 'Rathmann Liliana E.', 'Mar de Ajo', 'Diag. Rivadavia 515', '2.257.420.338', '4'),
(6318, 'Revuelta Miguel A.', 'UNMdP', '18/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'mrevuelta@fi.mdp.edu.ar', '30-58676172-9', 'Universidad Nacional de Mar del Plata', 'Mar del Plata', 'Juan B. Justo 4302', '0223 4816600 int 181', '1'),
(6319, 'RODRIGUEZ JULIA CAROLINA', 'UNNE', '18/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'juliacarolinarodriguez@hotmail.com', '26188132', 'Rodriguez Julia Escuela tÃ©cnica UOCRA "Islas Malvinas"', 'Argentina', 'Gobernador Gallino 399', '3794 259524', '1'),
(6349, 'Rodriguez Maria Elizabeth', 'UNSE', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'marizro00@hotmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6417, 'Romero Cristian Alberto', 'ISFD', '26/05/2015', 'Transferencia Bancaria', 'Asistentes docentes nivel medio/terciario', '200.0', 'profecristianromero@gmail.com', '31686224', 'Romero Cristian Alberto', 'Corrientes', 'San martin 2730', '379-472-6465', '1'),
(6320, 'Sala Natalia Ines', 'OTRA', '18/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'nis_natalia@hotmail.com', '33723429', 'Instituto Superioir de Formacion Docente de ItuzaingÃ³', 'ItuzaingÃ³', 'San Luis y Laprida', '03786 425421', '1'),
(6303, 'Sanchez Alvarez Milagros Samanta', 'OTRA', '15/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'alvarezmilagros@gmail.com', '34900638', 'INSTITUTO DON ORIONE UEP 55', 'Presidencia Roque Saenz PeÃ±a', 'calle 1 entre 2 y 4', '3644- 509817', '1'),
(6345, 'Santa Cruz Claudia Elisabet', 'OTRA', '20/05/2015', 'Transferencia Bancaria', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'claudiasantacruz23@gmail.com', 'DNI 32647720', 'INSTITUTO SUPERIOR DE FORMACIÃ“N DOCENTE', 'ItuzaingÃ³', 'Posadas 1953 dpto 2', '3786-497761', '1'),
(6326, 'Sena Maria del Carmen', 'OTRA', '19/05/2015', 'Transferencia Bancaria', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'mar._728@hotmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6412, 'Silva Augusto', 'I-27', '25/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'augustosilva5949@hotmail.com', '31435949', 'Instituto Superior San JosÃ© I-27', 'Corrientes Capital', 'Pasaje Ocanto 31', '3794555014', '4'),
(6325, 'Sofía Osiris', 'UNPA', '19/05/2015', 'Pago en Evento', 'Asistentes en General', '350.0', 'sistemasuarg@gmail.com', '30-65502011-6', 'Universidad Nacional de la Patagonia Austral', 'RÃ­o Gallegos', 'Lisandro de la Torre 1070', '54-2966-442317', '4'),
(6393, 'Sosa Delfina Lindaura', 'UNSE', '22/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'delfysosa92@gmail.com', '36994625', 'Universidad Nacional de Santiago del Estero', 'Santiago del Estero', 'BÂ° Las Americas-Fernadez-Sgo del Estero', '3855913903', '1'),
(6309, 'Téllez Servián Miguel Angel', 'UNA', '18/05/2015', 'Pago en Evento', 'Asistentes docentes nivel medio/terciario', '200.0', 'mtellez@pol.una.py', '2934562-6', 'TÃ©llez ServiÃ¡n Miguel Angel', 'Central', 'Silvano Mosqueira 004 c/ Alberto Shenonni', '5,95982E+11', '1'),
(6348, 'Toledo Walter Ramon', 'UNSE', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'walter.toledo2012@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6336, 'Travieso Mauro', 'UNLP', '19/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'mauro.travieso@outlook.com.ar', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6413, 'Vallejos Leonardo', 'I-27', '25/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'leocorrientes@outlook.es', '28811018', 'Instituto Superior San JosÃ© I-27', 'Corrientes Capital', 'RÃ­o Limay 2798', '3794409611', '4'),
(6347, 'Villalba Yoana Yanet', 'UNSE', '21/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'villalba.yanet2012@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6316, 'Zapata Roxana Lorena', 'OTRA', '18/05/2015', 'Depósito Bancario', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'zapatalorena121@gmail.com', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', 'Sin informacion', '1'),
(6384, 'Zianni Ernesto E.', 'UNL', '21/05/2015', 'Transferencia Bancaria', 'Autores miembros de Universidades de la RedUNCI', '400.0', 'ezianni@fce.unl.edu.ar', '14048715', 'Zianni Ernesto / Facultad de Ciencias Economicas UNL', 'Santa Fe', 'Sin informacion', 'Sin informacion', '1'),
(6311, 'Zorrilla Dahiana', 'UNA', '18/05/2015', 'Pago en Evento', 'Asistentes estudiantes universitarios y/o terciarios', '80.00', 'dahianazorrilla@gmail.com', '2934562-6', 'TÃ©llez ServiÃ¡n Miguel Angel', 'Central', 'Silvano Mosqueira 004 c/ Alberto Shenonni', '5,95982E+11', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `id_persona` int(5) NOT NULL AUTO_INCREMENT,
  `ayn` varchar(75) NOT NULL,
  `correo` varchar(75) NOT NULL,
  `lugar_trabajo` varchar(75) DEFAULT NULL,
  `universidad` varchar(100) NOT NULL,
  `pais` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4659 ;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `ayn`, `correo`, `lugar_trabajo`, `universidad`, `pais`) VALUES
(4575, 'Aballay Soria Marcelo Humberto', 'marceg_scout86@live.com', 'Sin informacion', 'UNSJ', 'Sin Informacion'),
(4576, 'Abdala G.', 'claugonza93@gmail.com', 'Sin informacion', 'UNSL', 'Sin Informacion'),
(4577, 'Acevedo Cecilia', 'cecibel7@hotmail.com.ar', 'Sin informacion', 'UTN-FRM', 'Sin Informacion'),
(4578, 'Aciar Gabriela', 'profe.july@gmail.com', 'Sin informacion', 'UNSJ', 'Sin Informacion'),
(4579, 'Aciar Silvana', 'Romysilva15@gmail.com', 'Sin informacion', 'UNSJ', 'Sin Informacion'),
(4580, 'Acosta Blanco Viviana E.', 'vivimonis_@hotmail.com', 'Sin informacion', 'UNE', 'Sin Informacion'),
(4581, 'Agüero Andrea Leonor', 'nati-rom3@live.com', 'Sin informacion', 'UNLAR', 'Sin Informacion'),
(4582, 'Alderette Claudia', 'entelequia_22@hotmail.com', 'Sin informacion', 'UNLaM', 'Sin Informacion'),
(4583, 'Alonso Alejandra', 'alto02@hotmail.com', 'Sin informacion', 'UBA', 'Sin Informacion'),
(4584, 'Ana Maria Benitez', 'BenÃ­tezprofesorado@gmail.com', 'Sin informacion', 'UNaM', 'Sin Informacion'),
(4585, 'Anaya Víctor', 'victor.obrist@gmail.com', 'Sin informacion', 'UPV', 'Sin Informacion'),
(4586, 'Arias Mayra', 'm4y.007@hotmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4587, 'Bachman Noemi', 'griseldarojas33@gmail.com', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4588, 'Barrios Juan', 'juanbaravaos@gmail,com', 'Sin informacion', 'UNE', 'Sin Informacion'),
(4589, 'Belcastro Ángela', 'angelab@ing.unp.edu.ar', 'Sin informacion', 'UNPSJB', 'Sin Informacion'),
(4590, 'Benitez Andrea Eliana', 'andrebenitez17@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4591, 'Benitez Karina Elizabeth', 'karinaelizabethbenitez@gmail.com', 'Sin informacion', '', 'Sin Informacion'),
(4592, 'Britos Jose Daniel', 'dbritos@gmail.com', 'Sin informacion', 'UNC', 'Sin Informacion'),
(4593, 'Bustamante Paola Beatriz', 'pao.b.bust@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4594, 'Bustamante Víctor Sebastián', 'sebastianbustamante06@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4595, 'Butiler Daiana Yanet', 'yanethe20dyb@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4596, 'Carreras Mariano Francisco', 'marianocarreras90@hotmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4597, 'Castro Chans Beatriz', 'beatriz.castrochans@comunidad.unne.edu.ar', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4598, 'Castro Gutierrez Eveling Gloria', 'yayaeve@gmail.com', 'Sin informacion', 'UNSA', 'Sin Informacion'),
(4599, 'Cavallotti Gina Giuliana', 'cavallotti_gina@hotmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4600, 'Cejas Dahia Fabiana', 'fabiana.dfc@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4601, 'Chapero Laura', 'cdavidlaura@gmail.com', 'Sin informacion', 'UTN-FRRe', 'Sin Informacion'),
(4602, 'Dalfaro Nidia', 'ndalfaro@frre.utn.edu.ar', 'Sin informacion', 'UTN-FRRe', 'Sin Informacion'),
(4603, 'Espinoza Cecilia Natalia', 'cecilianespi@gmail.com', 'Sin informacion', 'UNSa', 'Sin Informacion'),
(4604, 'Esquivel Jessica Vetiana', 'jessicavesquivel@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4605, 'Ferraro María De Los Angeles', 'MAFFERRARO@HOTMAIL..COM', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4606, 'Franco Zanek', 'francozanek@hotmail.com', 'Sin informacion', 'UNSa', 'Sin Informacion'),
(4607, 'Gallardo Cynthia Noemi', 'gallardoc_9@hotmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4608, 'Gómez Adrian', 'gomez_jime18@hotmail.com', 'Sin informacion', 'HIBA', 'Sin Informacion'),
(4609, 'Gomez Maria Silvina', 'kiaki_16@hotmail. com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4610, 'Gomez Rocio Dahiana', 'rociiogomeez@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4611, 'Gómez Sandra M', 'sgomezvinuales@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4612, 'Gómez Codutti Ana Elisa', 'anacodutti@live.com.ar', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4613, 'Gonzalez Jorge', 'jorgeariel1974@gmail.com', 'Sin informacion', 'I-27', 'Sin Informacion'),
(4614, 'Guzmán María Josefina', 'joshyslim@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4615, 'Helaman Griselsa', 'grish1486@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4616, 'Ierache Jorge', 'jierache@yahoo.com.ar', 'Sin informacion', 'UNLaM', 'Sin Informacion'),
(4617, 'Igarzabal Cano María Victoria', 'mavigarzabal@yahoo.com.ar', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4618, 'Irrazábal Emanuel', 'emanuelirrazabal@gmail.com', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4619, 'Iurich Fabiana', 'fabianaiurich@yahoo.es/ mmaurel38@yahoo.com.es', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4620, 'Jaime Salvatierra Victor Manuel', 'chippy537@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4621, 'Jara María J.', 'majito29@hotmail.es', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4622, 'Kang Ruben', 'kangruben@gmail.com', 'Sin informacion', 'UNE', 'Sin Informacion'),
(4623, 'Linares Natalia', 'linares.natalia@hotmail.com', 'Sin informacion', 'I-27', 'Sin Informacion'),
(4624, 'Lovos Edith', 'elovos@unrn.edu.ar', 'Sin informacion', 'UNRN', 'Sin Informacion'),
(4625, 'Maluff Jorge Ricardo', 'jorgericardomaluff@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4626, 'Marangolo Alessandra Luana', 'ale.marangolo@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4627, 'Marder Cristina Guadalupe', 'cristinamarder@yahoo.com.ar', 'Sin informacion', 'ISFD', 'Sin Informacion'),
(4628, 'Mattje Joana Micaela', 'mattje08@hotmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4629, 'Maurel María Del Carmen', 'mmaurel_38@yahoo.com.ar', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4630, 'Mereles Eliana Gisell', 'elianagisell@outlook.es', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4631, 'Oporto Adriana Raquel', 'raqueloporto@hotmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4632, 'Paparoni Valeria', 'valeriapaparoni@hotmail.com', 'Sin informacion', 'I-27', 'Sin Informacion'),
(4633, 'Peleato Romina Elisabeth', 'ropeleato@gmail.com', 'Sin informacion', 'ISFD', 'Sin Informacion'),
(4634, 'Perez Silvia N', 'sperez@ing.unlam.edu.ar', 'Sin informacion', 'UNLaM', 'Sin Informacion'),
(4635, 'Pinto Cristian', 'woshicris@gmail.com', 'Sin informacion', 'UNSa', 'Sin Informacion'),
(4636, 'Princich Fernando', 'flprincich@gmail.com', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4637, 'Ramirez Lidia Yolanda', 'yramirezl@hotmail.com', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4638, 'Ramirez Maria Isabel', 'maryairam@hotmail.com', 'Sin informacion', 'ISFD', 'Sin Informacion'),
(4639, 'Rathmann Liliana Estela', 'lrathmann@atlantida.edu.ar', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4640, 'Revuelta Miguel A.', 'mrevuelta@fi.mdp.edu.ar', 'Sin informacion', 'UNMdP', 'Sin Informacion'),
(4641, 'Rodriguez Julia Carolina', 'juliacarolinarodriguez@hotmail.com', 'Sin informacion', 'UNNE', 'Sin Informacion'),
(4642, 'Rodriguez Maria Elizabeth', 'marizro00@hotmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4643, 'Romero Cristian Alberto', 'profecristianromero@gmail.com', 'Sin informacion', 'ISFD', 'Sin Informacion'),
(4644, 'Sala Natalia Ines', 'nis_natalia@hotmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4645, 'Sanchez Alvarez Milagros Samanta', 'alvarezmilagros@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4646, 'Santa Cruz Claudia Elisabet', 'claudiasantacruz23@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4647, 'Sena Maria Del Carmen', 'mar._728@hotmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4648, 'Silva Augusto', 'augustosilva5949@hotmail.com', 'Sin informacion', 'I-27', 'Sin Informacion'),
(4649, 'Sofía Osiris', 'sistemasuarg@gmail.com', 'Sin informacion', 'UNPA', 'Sin Informacion'),
(4650, 'Sosa Delfina Lindaura', 'delfysosa92@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4651, 'Téllez Servián Miguel Angel', 'mtellez@pol.una.py', 'Sin informacion', 'UNA', 'Sin Informacion'),
(4652, 'Toledo Walter Ramon', 'walter.toledo2012@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4653, 'Travieso Mauro', 'mauro.travieso@outlook.com.ar', 'Sin informacion', 'UNLP', 'Sin Informacion'),
(4654, 'Vallejos Leonardo', 'leocorrientes@outlook.es', 'Sin informacion', 'I-27', 'Sin Informacion'),
(4655, 'Villalba Yoana Yanet', 'villalba.yanet2012@gmail.com', 'Sin informacion', 'UNSE', 'Sin Informacion'),
(4656, 'Zapata Roxana Lorena', 'zapatalorena121@gmail.com', 'Sin informacion', 'OTRA', 'Sin Informacion'),
(4657, 'Zianni Ernesto E.', 'ezianni@fce.unl.edu.ar', 'Sin informacion', 'UNL', 'Sin Informacion'),
(4658, 'Zorrilla Dahiana', 'dahianazorrilla@gmail.com', 'Sin informacion', 'UNA', 'Sin Informacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_inscripcion`
--

CREATE TABLE IF NOT EXISTS `tipos_inscripcion` (
  `id_tipo_insc` int(2) NOT NULL,
  `tipo_inscripcion` varchar(75) NOT NULL,
  `precio_insc_temp` decimal(10,0) NOT NULL,
  `precio_insc_tard` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_tipo_insc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_inscripcion`
--

INSERT INTO `tipos_inscripcion` (`id_tipo_insc`, `tipo_inscripcion`, `precio_insc_temp`, `precio_insc_tard`) VALUES
(0, 'Autores miembros de Universidades de la RedUNCI', '400', '480'),
(1, 'Otros Autores', '480', '580'),
(2, 'Asistentes en general', '350', '400'),
(3, 'Asistentes docentes UNNE', '250', '300'),
(4, 'Asistentes docentes nivel medio/terciario', '200', '240'),
(5, 'Asistentes Estudiantes universitarios y/o terciarios', '80', '100');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_facturacion`
--
ALTER TABLE `datos_facturacion`
  ADD CONSTRAINT `FK_datosFacturacion_idCondIVA` FOREIGN KEY (`condicion_iva`) REFERENCES `condiciones_iva` (`id_cond_iva`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `FK_inscripciones_datosFac` FOREIGN KEY (`id_datos_fac`) REFERENCES `datos_facturacion` (`id_datos_fac`),
  ADD CONSTRAINT `FK_personas_estadoInsc` FOREIGN KEY (`id_estado_insc`) REFERENCES `estados_inscripcion` (`id_estado_insc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_personas_formaPago` FOREIGN KEY (`id_forma_pago`) REFERENCES `formas_pago` (`id_forma_pago`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_personas_idPersona` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_personas_tipoInsc` FOREIGN KEY (`id_tipo_insc`) REFERENCES `tipos_inscripcion` (`id_tipo_insc`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
