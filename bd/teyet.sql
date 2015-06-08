-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-06-2015 a las 00:04:21
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `teyet`
--
CREATE DATABASE IF NOT EXISTS `teyet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `teyet`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condiciones_iva`
--

CREATE TABLE IF NOT EXISTS `condiciones_iva` (
  `id_cond_iva` int(2) NOT NULL AUTO_INCREMENT,
  `condicion_iva` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_cond_iva`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `condiciones_iva`
--

INSERT INTO `condiciones_iva` (`id_cond_iva`, `condicion_iva`) VALUES
(0, 'Responsable Inscripto'),
(1, 'Consumidor Final'),
(2, 'Exento'),
(3, 'Monotributista'),
(4, 'Desconocido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_facturacion`
--

CREATE TABLE IF NOT EXISTS `datos_facturacion` (
  `id_datos_fac` int(5) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `domicilio` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `condicion_iva` int(2) NOT NULL,
  `cuil` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `cajero` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nro_factura` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_datos_fac`),
  KEY `condicion_iva` (`condicion_iva`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4793 ;

--
-- Volcado de datos para la tabla `datos_facturacion`
--

INSERT INTO `datos_facturacion` (`id_datos_fac`, `localidad`, `domicilio`, `telefono`, `condicion_iva`, `cuil`, `fecha_pago`, `cajero`, `nro_factura`) VALUES
(4697, 'ituzaingo', 'buenos aires y apipe', 'Sin informacion', 4, '32328061', '2015-06-23', 'Federico Alemany', NULL),
(4698, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4699, 'Corrientes', 'Estados Unidos 549', '3794260418', 4, '34207471', NULL, NULL, NULL),
(4700, 'Resistencia', 'French 414', 'Sin informacion', 4, '24.798.788', NULL, NULL, NULL),
(4701, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4702, 'Ciudad del Este', 'Barrio San Jose , km 4 1/2', '973155301', 4, '4881005', NULL, NULL, NULL),
(4703, 'ItuzaingÃ³', 'Buenos Aires 2230', '03786-15495893', 2, '32899750', NULL, NULL, NULL),
(4704, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, '29657916', NULL, NULL, NULL),
(4705, 'Ituzaingo, Corrientes', 'calle 13 casa 49', '3786610282', 1, '23615624', NULL, NULL, NULL),
(4706, 'ituzaingo', 'Posadas y pellegrini 163', '3786416105', 4, '37709342', NULL, NULL, NULL),
(4707, 'Ciudad del Este, Paraguay', 'Avda. Las Guaranias casi Mburucuya', '5,95973E+11', 4, '2.312.484', NULL, NULL, NULL),
(4708, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4709, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4710, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4711, 'Comodoro Rivadavia', 'KM 4', '2974307420', 4, '16757474', NULL, NULL, NULL),
(4712, 'Presidencia Roque Saenz PeÃ±a', 'barrio 130 viv Mz 79 Pc 6', '4436940', 4, '27-38968361-8', NULL, NULL, NULL),
(4713, 'Ituzaingo corrientes', 'san martin 2087', '3,78616E+11', 4, '30438694', NULL, NULL, NULL),
(4714, 'Cordoba', 'Martin Gil 5014', '5,49351E+12', 1, '20104467564', NULL, NULL, NULL),
(4715, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4716, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4717, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4718, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4719, 'Corrientes', 'Gdor. Lopez 60', '379-4431014', 2, '27-17968004-7', NULL, NULL, NULL),
(4720, 'ItuzaingÃ³', 'Calle 22 casa 5 Barrio San MartÃ­n', '03786-421381', 4, '18.419.399', NULL, NULL, NULL),
(4721, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4722, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4723, 'Carreiros', 'Av. Italia Km 8', '81577726', 4, '29484517', NULL, NULL, NULL),
(4724, 'Resistencia', 'French 414', '362-4432928', 2, '30-54667116-6', NULL, NULL, NULL),
(4725, 'Salta', 'Avenida Bolivia 5150', 'Sin informacion', 2, 'CUIT 30-58676257-1', NULL, NULL, NULL),
(4726, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4727, 'CORRIENTES', 'Sin informacion', 'Sin informacion', 4, '27247129397', NULL, NULL, NULL),
(4728, 'Salta Capital', 'Avenida Bolivia 5150', '4255547', 2, '30-58676257-1', NULL, NULL, NULL),
(4729, 'Santiago del Estero (Capital)', 'San Juan NÂº1330 B: Primera Junta', '(0385) 421-8341', 4, '31905176', NULL, NULL, NULL),
(4730, 'Ituzaingo Corrientes', 'Pago Largo y Urquiza Barrio Itati', '3786494681', 2, '38715951', NULL, NULL, NULL),
(4731, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4732, 'ItuzaingÃ³ Corrientes', 'Barrio Gral San MartÃ­n, Calle 4 Casa 8', '3786615021', 4, '37393016', NULL, NULL, NULL),
(4733, 'CÃ³rdoba capital', 'Calle de Los Latinos 8555', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4734, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4735, 'Corrientes', 'Av Sarmiento 1971', 'Sin informacion', 4, '23742547', NULL, NULL, NULL),
(4736, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4737, 'Ituzaingo - Corrientes', 'BÂ° 180 Casa 110', '03786-15614940', 4, '32106362', NULL, NULL, NULL),
(4738, 'San Justo', 'Florencio Varela 1903', '44808900 INT 8630 Santiago Igarza', 2, '30646228685', NULL, NULL, NULL),
(4739, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4740, 'Corrientes', 'Lavalle 50', '0379 443-6360', 2, '30-66965662-5', NULL, NULL, NULL),
(4741, 'Resistencia', 'CÃ³rdoba 801', '0362-4438821', 4, 'DNI NÂº 20448600', NULL, NULL, NULL),
(4742, 'Loreto', 'Moreno 158', '3845420839', 4, '29814060', NULL, NULL, NULL),
(4743, 'CORRIENTES', '9 de Julio 687', '3782521692', 4, '32795737', NULL, NULL, NULL),
(4744, 'Cuidad del Este - Paraguay', 'Ciudad del Este', '59573611636', 4, '4202424', NULL, NULL, NULL),
(4745, 'Corrientes Capital', '120 Viviendas Mz J Casa 3 Barrio Santa MarÃ­a', '3794630713', 2, '28302641', NULL, NULL, NULL),
(4746, 'Viedma', 'Belgrano 526', '02920-428969', 2, '30710427425', NULL, NULL, NULL),
(4747, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4748, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4749, 'Corrientes', 'Barrio 3 de abril 215 viviendas manzana C Casa 193', '3794353594', 4, '13905614', NULL, NULL, NULL),
(4750, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4751, 'Sin informacion', 'Sin informacion', 'Sin informacion', 2, '30628540787', NULL, NULL, NULL),
(4752, 'ItuzaingÃ³ Corrientes', 'Francisco LÃ³pez 2047', '3786411190', 4, '27387159261', NULL, NULL, NULL),
(4753, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4754, 'Corrientes Capital', 'Gutemberg 3295', '3794080258', 2, '28302125', NULL, NULL, NULL),
(4755, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4756, 'San Justo, Buenos Aires', 'Florencio Varela 1903', '4480-8900', 4, '16164334', NULL, NULL, NULL),
(4757, 'Salta Capital', 'Av Bolivia 5.150', '0387-4255328', 2, '30586762571', NULL, NULL, NULL),
(4758, 'Corrientes', 'Belgrano 1358 dpto L', '3794253229', 0, '20255639758', NULL, NULL, NULL),
(4759, 'Corrientes', 'Nuestra SeÃ±ora de la AsunciÃ³n 2782', '3,79155E+11', 3, '23-20374003-4', NULL, NULL, NULL),
(4760, 'capital', '160 viv. maz E. casa 149', '3794828694', 4, '22640174', NULL, NULL, NULL),
(4761, 'Mar de Ajo', 'Diag. Rivadavia 515', '2.257.420.338', 2, '5986525', NULL, NULL, NULL),
(4762, 'Mar del Plata', 'Juan B. Justo 4302', '0223 4816600 int 181', 4, '30-58676172-9', NULL, NULL, NULL),
(4763, 'Argentina', 'Gobernador Gallino 399', '3794 259524', 4, '26188132', NULL, NULL, NULL),
(4764, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4765, 'Corrientes', 'San martin 2730', '379-472-6465', 4, '31686224', NULL, NULL, NULL),
(4766, 'ItuzaingÃ³', 'San Luis y Laprida', '03786 425421', 4, '33723429', NULL, NULL, NULL),
(4767, 'Presidencia Roque Saenz PeÃ±a', 'calle 1 entre 2 y 4', '3644- 509817', 4, '34900638', NULL, NULL, NULL),
(4768, 'ItuzaingÃ³', 'Posadas 1953 dpto 2', '3786-497761', 4, 'DNI 32647720', NULL, NULL, NULL),
(4769, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4770, 'Corrientes Capital', 'Pasaje Ocanto 31', '3794555014', 2, '31435949', NULL, NULL, NULL),
(4771, 'RÃ­o Gallegos', 'Lisandro de la Torre 1070', '54-2966-442317', 2, '30-65502011-6', NULL, NULL, NULL),
(4772, 'Santiago del Estero', 'BÂ° Las Americas-Fernadez-Sgo del Estero', '3855913903', 4, '36994625', NULL, NULL, NULL),
(4773, 'Central', 'Silvano Mosqueira 004 c/ Alberto Shenonni', '5,95982E+11', 4, '2934562-6', NULL, NULL, NULL),
(4774, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4775, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4776, 'Corrientes Capital', 'RÃ­o Limay 2798', '3794409611', 2, '28811018', NULL, NULL, NULL),
(4777, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4778, 'Sin informacion', 'Sin informacion', 'Sin informacion', 4, 'Sin informacion', NULL, NULL, NULL),
(4779, 'Santa Fe', 'Sin informacion', 'Sin informacion', 4, '14048715', NULL, NULL, NULL),
(4780, 'Central', 'Silvano Mosqueira 004 c/ Alberto Shenonni', '5,95982E+11', 4, '2934562-6', NULL, NULL, NULL),
(4781, 'sadf', 'sadf', '', 0, 'sdf', NULL, NULL, NULL),
(4782, 'asdas', 'asd', '', 1, '33', NULL, NULL, NULL),
(4783, 'LOCALIDAD', 'DOMIC', '', 0, 'DNI', NULL, NULL, NULL),
(4784, 'Charatas', 'Mi Calle', '', 0, '33', NULL, NULL, NULL),
(4785, 'Corrientes', 'Chubyt', '', 0, '2043405', NULL, NULL, NULL),
(4786, 'Corrientes', 'Chubyt', '', 0, '2043405', NULL, NULL, NULL),
(4787, 'Corrientes', 'Chubyt', '', 0, '2043405', NULL, NULL, NULL),
(4788, 'Corrientes', 'Chubyt', '', 0, '2043405', NULL, NULL, NULL),
(4789, 'asdass', 'asd', '', 0, 'mfalemany5@gmail.com', NULL, NULL, NULL),
(4790, 'aasd', 'asd', 'TELEFONONNNN', 0, 'dada', NULL, NULL, NULL),
(4791, 'Ituzaingo - Corrientes', 'Cgadslkj', 'Mi telefono', 0, '32445040', NULL, NULL, NULL),
(4792, 'Corrientes', 'Misiones 1756', '33232', 3, '2032405039', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_inscripcion`
--

CREATE TABLE IF NOT EXISTS `estados_inscripcion` (
  `id_estado_insc` int(2) NOT NULL,
  `estado_insc` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_estado_insc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
  `forma_pago` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_forma_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
  `fecha_hora` varchar(15) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `id_tipo_insc` (`id_tipo_insc`),
  KEY `id_forma_pago` (`id_forma_pago`),
  KEY `id_estado_insc` (`id_estado_insc`),
  KEY `id_datos_fac` (`id_datos_fac`),
  KEY `nro_inscripcion` (`nro_inscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id_persona`, `nro_inscripcion`, `id_tipo_insc`, `id_forma_pago`, `id_estado_insc`, `id_datos_fac`, `fecha_hora`) VALUES
(5350, 6313, 3, 0, 0, 4697, '1431907200'),
(5351, 6337, 3, 0, 0, 4698, '1431993600'),
(5352, 6346, 3, 0, 0, 4699, '1432080000'),
(5353, 6397, 3, 1, 0, 4700, '1432252800'),
(5354, 6350, 3, 0, 0, 4701, '1432166400'),
(5355, 6394, 5, 0, 0, 4702, '1432252800'),
(5356, 6409, 3, 0, 0, 4703, '1432512000'),
(5357, 6305, 3, 2, 0, 4704, '1431734400'),
(5358, 6315, 3, 0, 0, 4705, '1431907200'),
(5359, 6317, 3, 0, 0, 4706, '1431907200'),
(5360, 6395, 5, 0, 0, 4707, '1432252800'),
(5361, 6333, 3, 0, 0, 4708, '1431993600'),
(5362, 6390, 3, 1, 0, 4709, '1432166400'),
(5363, 6392, 5, 0, 0, 4710, '1432252800'),
(5364, 6396, 4, 2, 0, 4711, '1432252800'),
(5365, 6306, 3, 1, 0, 4712, '1431734400'),
(5366, 6342, 3, 0, 0, 4713, '1432080000'),
(5367, 6328, 4, 0, 0, 4714, '1431993600'),
(5368, 6388, 3, 0, 0, 4715, '1432166400'),
(5369, 6385, 3, 0, 0, 4716, '1432166400'),
(5370, 6344, 3, 0, 0, 4717, '1432080000'),
(5371, 6304, 3, 0, 0, 4718, '1431648000'),
(5372, 6404, 4, 2, 0, 4719, '1432425600'),
(5373, 6312, 3, 0, 0, 4720, '1431907200'),
(5374, 6381, 3, 0, 0, 4721, '1432166400'),
(5375, 6366, 3, 0, 0, 4722, '1432166400'),
(5376, 6408, 5, 0, 0, 4723, '1432512000'),
(5377, 6418, 4, 2, 0, 4724, '1432598400'),
(5378, 6331, 4, 1, 0, 4725, '1431993600'),
(5379, 6322, 3, 1, 0, 4726, '1431907200'),
(5380, 6389, 4, 2, 0, 4727, '1432166400'),
(5381, 6324, 4, 1, 0, 4728, '1431993600'),
(5382, 6334, 3, 0, 0, 4729, '1431993600'),
(5383, 6410, 3, 0, 0, 4730, '1432512000'),
(5384, 6379, 3, 0, 0, 4731, '1432166400'),
(5385, 6335, 3, 1, 0, 4732, '1431993600'),
(5386, 6323, 5, 0, 0, 4733, '1431907200'),
(5387, 6400, 3, 0, 0, 4734, '1432339200'),
(5388, 6401, 5, 0, 0, 4735, '1432339200'),
(5389, 6332, 3, 0, 0, 4736, '1431993600'),
(5390, 6321, 3, 1, 0, 4737, '1431907200'),
(5391, 6402, 4, 2, 0, 4738, '1432339200'),
(5392, 6407, 3, 0, 0, 4739, '1432512000'),
(5393, 6386, 5, 0, 0, 4740, '1432166400'),
(5394, 6308, 0, 2, 0, 4741, '1431907200'),
(5395, 6398, 3, 0, 0, 4742, '1432252800'),
(5396, 6338, 3, 1, 0, 4743, '1431993600'),
(5397, 6387, 5, 0, 0, 4744, '1432166400'),
(5398, 6414, 3, 0, 0, 4745, '1432512000'),
(5399, 6405, 4, 2, 0, 4746, '1432425600'),
(5400, 6329, 3, 0, 0, 4747, '1431993600'),
(5401, 6310, 3, 0, 0, 4748, '1431907200'),
(5402, 6406, 3, 0, 0, 4749, '1432425600'),
(5403, 6403, 3, 0, 0, 4750, '1432425600'),
(5404, 6307, 4, 2, 0, 4751, '1431820800'),
(5405, 6330, 3, 1, 0, 4752, '1431993600'),
(5406, 6314, 3, 1, 0, 4753, '1431907200'),
(5407, 6411, 3, 0, 0, 4754, '1432512000'),
(5408, 6399, 0, 2, 0, 4755, '1432339200'),
(5409, 6415, 4, 2, 0, 4756, '1432512000'),
(5410, 6343, 4, 1, 0, 4757, '1432080000'),
(5411, 6327, 0, 2, 0, 4758, '1431993600'),
(5412, 6380, 0, 0, 0, 4759, '1432166400'),
(5413, 6416, 0, 2, 0, 4760, '1432512000'),
(5414, 6391, 2, 0, 0, 4761, '1432166400'),
(5415, 6318, 4, 2, 0, 4762, '1431907200'),
(5416, 6319, 3, 0, 0, 4763, '1431907200'),
(5417, 6349, 3, 0, 0, 4764, '1432166400'),
(5418, 6417, 0, 2, 0, 4765, '1432598400'),
(5419, 6320, 3, 0, 0, 4766, '1431907200'),
(5420, 6303, 3, 1, 0, 4767, '1431648000'),
(5421, 6345, 3, 2, 0, 4768, '1432080000'),
(5422, 6326, 3, 2, 0, 4769, '1431993600'),
(5423, 6412, 3, 0, 0, 4770, '1432512000'),
(5424, 6325, 2, 0, 0, 4771, '1431993600'),
(5425, 6393, 3, 0, 0, 4772, '1432252800'),
(5426, 6309, 0, 0, 0, 4773, '1431907200'),
(5427, 6348, 3, 0, 0, 4774, '1432166400'),
(5428, 6336, 3, 0, 0, 4775, '1431993600'),
(5429, 6413, 3, 0, 0, 4776, '1432512000'),
(5430, 6347, 3, 0, 0, 4777, '1432166400'),
(5431, 6316, 3, 1, 0, 4778, '1431907200'),
(5432, 6384, 4, 2, 0, 4779, '1432166400'),
(5433, 6311, 3, 0, 0, 4780, '1431907200'),
(5438, 6419, 0, 0, 0, 4782, '1433631012'),
(5439, 6420, 1, 1, 0, 4783, '1433631080'),
(5440, 6421, 1, 1, 0, 4784, '1433631158'),
(5441, 6422, 0, 0, 0, 4785, '1433631467'),
(5442, 6423, 0, 0, 0, 4786, '1433631582'),
(5443, 6424, 0, 0, 0, 4787, '1433631688'),
(5444, 6425, 0, 0, 0, 4788, '1433631820'),
(5445, 6426, 0, 1, 0, 4789, '1433631868'),
(5446, 6427, 2, 1, 0, 4790, '1433631918'),
(5447, 6428, 0, 0, 0, 4791, '1433632368'),
(5448, 6429, 0, 0, 0, 4792, '1433701405');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `original`
--

CREATE TABLE IF NOT EXISTS `original` (
  `nro_inscripcion` int(6) DEFAULT NULL,
  `nombre` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `universidad` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_inscripcion` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `forma_pago` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `tipo_inscripcion` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `precio` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `correo` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `facturacion_cuil` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `facturacion_institucion` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `facturacion_localidad` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `facturacion_domicilio` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `facturacion_telefono` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `facturacion_condicion_iva` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
  `ayn` varchar(75) CHARACTER SET latin1 NOT NULL,
  `correo` varchar(75) CHARACTER SET latin1 NOT NULL,
  `lugar_trabajo` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `universidad` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5449 ;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `ayn`, `correo`, `lugar_trabajo`, `universidad`) VALUES
(5350, 'Aballay Soria Marcelo Humberto', 'marceg_scout86@live.com', 'Sin informacion', 'UNSJ'),
(5351, 'Abdala G.', 'claugonza93@gmail.com', 'Sin informacion', 'UNSL'),
(5352, 'Acevedo Cecilia', 'cecibel7@hotmail.com.ar', 'Sin informacion', 'UTN-FRM'),
(5353, 'Aciar Gabriela', 'profe.july@gmail.com', 'Sin informacion', 'UNSJ'),
(5354, 'Aciar Silvana', 'Romysilva15@gmail.com', 'Sin informacion', 'UNSJ'),
(5355, 'Acosta Blanco Viviana E.', 'vivimonis_@hotmail.com', 'Sin informacion', 'UNE'),
(5356, 'Agüero Andrea Leonor', 'nati-rom3@live.com', 'Sin informacion', 'UNLAR'),
(5357, 'Alderette Claudia', 'entelequia_22@hotmail.com', 'Sin informacion', 'UNLaM'),
(5358, 'Alonso Alejandra', 'alto02@hotmail.com', 'Sin informacion', 'UBA'),
(5359, 'Ana Maria Benitez', 'BenÃ­tezprofesorado@gmail.com', 'Sin informacion', 'UNaM'),
(5360, 'Anaya Víctor', 'victor.obrist@gmail.com', 'Sin informacion', 'UPV'),
(5361, 'Arias Mayra', 'm4y.007@hotmail.com', 'Sin informacion', 'UNSE'),
(5362, 'Bachman Noemi', 'griseldarojas33@gmail.com', 'Sin informacion', 'UNNE'),
(5363, 'Barrios Juan', 'juanbaravaos@gmail,com', 'Sin informacion', 'UNE'),
(5364, 'Belcastro Ángela', 'angelab@ing.unp.edu.ar', 'Sin informacion', 'UNPSJB'),
(5365, 'Benitez Andrea Eliana', 'andrebenitez17@gmail.com', 'Sin informacion', 'OTRA'),
(5366, 'Benitez Karina Elizabeth', 'karinaelizabethbenitez@gmail.com', 'Sin informacion', ''),
(5367, 'Britos Jose Daniel', 'dbritos@gmail.com', 'Sin informacion', 'UNC'),
(5368, 'Bustamante Paola Beatriz', 'pao.b.bust@gmail.com', 'Sin informacion', 'UNSE'),
(5369, 'Bustamante Víctor Sebastián', 'sebastianbustamante06@gmail.com', 'Sin informacion', 'UNSE'),
(5370, 'Butiler Daiana Yanet', 'yanethe20dyb@gmail.com', 'Sin informacion', 'UNSE'),
(5371, 'Carreras Mariano Francisco', 'marianocarreras90@hotmail.com', 'Sin informacion', 'UNSE'),
(5372, 'Castro Chans Beatriz', 'beatriz.castrochans@comunidad.unne.edu.ar', 'Sin informacion', 'UNNE'),
(5373, 'Castro Gutierrez Eveling Gloria', 'yayaeve@gmail.com', 'Sin informacion', 'UNSA'),
(5374, 'Cavallotti Gina Giuliana', 'cavallotti_gina@hotmail.com', 'Sin informacion', 'UNSE'),
(5375, 'Cejas Dahia Fabiana', 'fabiana.dfc@gmail.com', 'Sin informacion', 'UNSE'),
(5376, 'Chapero Laura', 'cdavidlaura@gmail.com', 'Sin informacion', 'UTN-FRRe'),
(5377, 'Dalfaro Nidia', 'ndalfaro@frre.utn.edu.ar', 'Sin informacion', 'UTN-FRRe'),
(5378, 'Espinoza Cecilia Natalia', 'cecilianespi@gmail.com', 'Sin informacion', 'UNSa'),
(5379, 'Esquivel Jessica Vetiana', 'jessicavesquivel@gmail.com', 'Sin informacion', 'OTRA'),
(5380, 'Ferraro María De Los Angeles', 'MAFFERRARO@HOTMAIL..COM', 'Sin informacion', 'UNNE'),
(5381, 'Franco Zanek', 'francozanek@hotmail.com', 'Sin informacion', 'UNSa'),
(5382, 'Gallardo Cynthia Noemi', 'gallardoc_9@hotmail.com', 'Sin informacion', 'UNSE'),
(5383, 'Gómez Adrian', 'gomez_jime18@hotmail.com', 'Sin informacion', 'HIBA'),
(5384, 'Gomez Maria Silvina', 'kiaki_16@hotmail. com', 'Sin informacion', 'UNSE'),
(5385, 'Gomez Rocio Dahiana', 'rociiogomeez@gmail.com', 'Sin informacion', 'OTRA'),
(5386, 'Gómez Sandra M', 'sgomezvinuales@gmail.com', 'Sin informacion', 'OTRA'),
(5387, 'Gómez Codutti Ana Elisa', 'anacodutti@live.com.ar', 'Sin informacion', 'UNNE'),
(5388, 'Gonzalez Jorge', 'jorgeariel1974@gmail.com', 'Sin informacion', 'I-27'),
(5389, 'Guzmán María Josefina', 'joshyslim@gmail.com', 'Sin informacion', 'UNSE'),
(5390, 'Helaman Griselsa', 'grish1486@gmail.com', 'Sin informacion', 'OTRA'),
(5391, 'Ierache Jorge', 'jierache@yahoo.com.ar', 'Sin informacion', 'UNLaM'),
(5392, 'Igarzabal Cano María Victoria', 'mavigarzabal@yahoo.com.ar', 'Sin informacion', 'OTRA'),
(5393, 'Irrazábal Emanuel', 'emanuelirrazabal@gmail.com', 'Sin informacion', 'UNNE'),
(5394, 'Iurich Fabiana', 'fabianaiurich@yahoo.es/ mmaurel38@yahoo.com.es', 'Sin informacion', 'OTRA'),
(5395, 'Jaime Salvatierra Victor Manuel', 'chippy537@gmail.com', 'Sin informacion', 'UNSE'),
(5396, 'Jara María J.', 'majito29@hotmail.es', 'Sin informacion', 'UNNE'),
(5397, 'Kang Ruben', 'kangruben@gmail.com', 'Sin informacion', 'UNE'),
(5398, 'Linares Natalia', 'linares.natalia@hotmail.com', 'Sin informacion', 'I-27'),
(5399, 'Lovos Edith', 'elovos@unrn.edu.ar', 'Sin informacion', 'UNRN'),
(5400, 'Maluff Jorge Ricardo', 'jorgericardomaluff@gmail.com', 'Sin informacion', 'UNSE'),
(5401, 'Marangolo Alessandra Luana', 'ale.marangolo@gmail.com', 'Sin informacion', 'OTRA'),
(5402, 'Marder Cristina Guadalupe', 'cristinamarder@yahoo.com.ar', 'Sin informacion', 'ISFD'),
(5403, 'Mattje Joana Micaela', 'mattje08@hotmail.com', 'Sin informacion', 'UNSE'),
(5404, 'Maurel María Del Carmen', 'mmaurel_38@yahoo.com.ar', 'Sin informacion', 'OTRA'),
(5405, 'Mereles Eliana Gisell', 'elianagisell@outlook.es', 'Sin informacion', 'OTRA'),
(5406, 'Oporto Adriana Raquel', 'raqueloporto@hotmail.com', 'Sin informacion', 'OTRA'),
(5407, 'Paparoni Valeria', 'valeriapaparoni@hotmail.com', 'Sin informacion', 'I-27'),
(5408, 'Peleato Romina Elisabeth', 'ropeleato@gmail.com', 'Sin informacion', 'ISFD'),
(5409, 'Perez Silvia N', 'sperez@ing.unlam.edu.ar', 'Sin informacion', 'UNLaM'),
(5410, 'Pinto Cristian', 'woshicris@gmail.com', 'Sin informacion', 'UNSa'),
(5411, 'Princich Fernando', 'flprincich@gmail.com', 'Sin informacion', 'UNNE'),
(5412, 'Ramirez Lidia Yolanda', 'yramirezl@hotmail.com', 'Sin informacion', 'UNNE'),
(5413, 'Ramirez Maria Isabel', 'maryairam@hotmail.com', 'Sin informacion', 'ISFD'),
(5414, 'Rathmann Liliana Estela', 'lrathmann@atlantida.edu.ar', 'Sin informacion', 'OTRA'),
(5415, 'Revuelta Miguel A.', 'mrevuelta@fi.mdp.edu.ar', 'Sin informacion', 'UNMdP'),
(5416, 'Rodriguez Julia Carolina', 'juliacarolinarodriguez@hotmail.com', 'Sin informacion', 'UNNE'),
(5417, 'Rodriguez Maria Elizabeth', 'marizro00@hotmail.com', 'Sin informacion', 'UNSE'),
(5418, 'Romero Cristian Alberto', 'profecristianromero@gmail.com', 'Sin informacion', 'ISFD'),
(5419, 'Sala Natalia Ines', 'nis_natalia@hotmail.com', 'Sin informacion', 'OTRA'),
(5420, 'Sanchez Alvarez Milagros Samanta', 'alvarezmilagros@gmail.com', 'Sin informacion', 'OTRA'),
(5421, 'Santa Cruz Claudia Elisabet', 'claudiasantacruz23@gmail.com', 'Sin informacion', 'OTRA'),
(5422, 'Sena Maria Del Carmen', 'mar._728@hotmail.com', 'Sin informacion', 'OTRA'),
(5423, 'Silva Augusto', 'augustosilva5949@hotmail.com', 'Sin informacion', 'I-27'),
(5424, 'Sofía Osiris', 'sistemasuarg@gmail.com', 'Sin informacion', 'UNPA'),
(5425, 'Sosa Delfina Lindaura', 'delfysosa92@gmail.com', 'Sin informacion', 'UNSE'),
(5426, 'Téllez Servián Miguel Angel', 'mtellez@pol.una.py', 'Sin informacion', 'UNA'),
(5427, 'Toledo Walter Ramon', 'walter.toledo2012@gmail.com', 'Sin informacion', 'UNSE'),
(5428, 'Travieso Mauro', 'mauro.travieso@outlook.com.ar', 'Sin informacion', 'UNLP'),
(5429, 'Vallejos Leonardo', 'leocorrientes@outlook.es', 'Sin informacion', 'I-27'),
(5430, 'Villalba Yoana Yanet', 'villalba.yanet2012@gmail.com', 'Sin informacion', 'UNSE'),
(5431, 'Zapata Roxana Lorena', 'zapatalorena121@gmail.com', 'Sin informacion', 'OTRA'),
(5432, 'Zianni Ernesto E.', 'ezianni@fce.unl.edu.ar', 'Sin informacion', 'UNL'),
(5433, 'Zorrilla Dahiana', 'dahianazorrilla@gmail.com', 'Sin informacion', 'UNA'),
(5436, 'akljasd', 'pepito@gmail.com', 'asd', 'Universidad de Mi Casa'),
(5437, 'akljasd', 'pepito2@gmail.com', 'asd', 'Universidad de Mi Casa'),
(5438, 'asdas', 'pepito3@gmail.com', 'asdf', 'Universidad de Mi casa'),
(5439, 'Pepito', 'pepito4@gmail.com', 'Mi casa', 'Universidad de Mi casa 2'),
(5440, 'asd', 'pepito5@gmail.com', 'sadfas', 'Universidad de Mi casa'),
(5441, 'Federico Alemany', 'mfalemany@gmail.com', 'Mi lugar de Trabajo', 'Universidad de Mi casa'),
(5442, 'Federico Alemany', 'mfalemany2@gmail.com', 'Mi lugar de Trabajo', 'Universidad de Mi casa'),
(5443, 'Federico Alemany', 'mfalemany3@gmail.com', 'Mi lugar de Trabajo', 'Universidad de Mi casa'),
(5444, 'Federico Alemany', 'mfalemany4@gmail.com', 'Mi lugar de Trabajo', 'Universidad de Mi casa'),
(5445, 'sdas', 'mfalemany5@gmail.com', 'asd', 'Universidad de Mi casaasd'),
(5446, 'asd', 'mfalemany6@gmail.com', 'asd', 'Universidad de Mi casaasd'),
(5447, 'Federico Alemany', 'mfalemany9@gmail.com', 'Mi casa', 'Universidad de Mi casa 2'),
(5448, 'Federico Alemany', 'mfalemany23@gmail.com', 'Facultad de Ciencias Agrarias', 'Universidad Nacional del Nordeste');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_inscripcion`
--

CREATE TABLE IF NOT EXISTS `tipos_inscripcion` (
  `id_tipo_insc` int(2) NOT NULL,
  `tipo_inscripcion` varchar(75) COLLATE utf8_spanish_ci NOT NULL,
  `precio_insc_temp` decimal(10,0) NOT NULL,
  `precio_insc_tard` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_tipo_insc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipos_inscripcion`
--

INSERT INTO `tipos_inscripcion` (`id_tipo_insc`, `tipo_inscripcion`, `precio_insc_temp`, `precio_insc_tard`) VALUES
(0, 'Asistentes docentes nivel medio/terciario', '200', '240'),
(1, 'Asistentes docentes UNNE', '250', '300'),
(2, 'Asistentes en general', '350', '400'),
(3, 'Asistentes Estudiantes universitarios y/o terciarios', '80', '100'),
(4, 'Autores miembros de Universidades de la RedUNCI', '400', '480'),
(5, 'Otros Autores', '480', '580');

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
