-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2021 a las 21:36:07
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `va3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Kit de Videovigilancia', '2019-08-14 01:13:39'),
(2, 'ACCESORIOS VIDEOVIGILANCIA', '2019-08-15 00:09:08'),
(3, 'Cables', '2019-08-14 01:13:53'),
(4, 'Activos Redes', '2019-08-14 01:14:41'),
(5, 'Pasivos Redes', '2019-08-14 01:14:33'),
(6, 'Telefonía', '2019-08-14 01:14:55'),
(7, 'SERVICIO', '2019-08-14 02:10:51'),
(8, 'CÁMARAS ANÁLOGAS Y DIGITALES', '2019-08-14 17:09:18'),
(9, 'ENERGÍA SEGURIDAD', '2019-08-14 21:51:49'),
(10, 'INTERFONOS Y VIDEOPORTEROS', '2019-08-14 23:50:35'),
(11, 'SOFTWARE', '2019-08-15 17:17:03'),
(12, 'ACCESORIOS DE COMPUTO', '2019-08-15 17:17:40'),
(13, 'CAMARAS IP ', '2019-08-16 18:43:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(18, 'Abraham Alexis Rincón Guillén', 1, 'pcredes@hotmail.com', '(961) 118-8462', 'av central poniente local 3 plaza de la tecnologia', '1996-10-11', 5, '2020-01-14 12:41:00', '2020-01-20 16:04:25'),
(19, 'Venta de Mostrador', 2, 'seguimientos@pcredes.com.mx', '(555) 502-0800', 'Conocido', '1974-02-10', 1141, '2020-03-31 12:29:36', '2020-03-31 11:29:36'),
(20, 'Oscar Palma Ramirez', 1, 'oscar.palma@pcredes.com.mx', '(555) 502-0800', 'PCREDES', '2019-12-13', 104, '2020-03-17 15:51:33', '2020-03-17 14:51:33'),
(21, 'rodrigo ', 2, 'rodrolpz1015@gmail.com', '9611658028 ', 'cerca de alla', '21-11-99', 0, '17-11-21', '2021-02-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio_venta` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(64, 7, 'SERFORMSR-01', 'FORMATEO DE COMPUTADORA SIN RESPALDO', 'vistas/img/productos/SERFORMSR-01/836.jpg', 998, '100', '400', 2, '2019-12-13 12:03:59'),
(65, 7, 'SERVFORCR-01', 'FORMATEO CON RESPALDO', 'vistas/img/productos/SERVFORCR-01/125.jpg', 1000, '150', '500', 0, '2019-10-02 12:27:28'),
(66, 2, 'CONCORRH-01', 'CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM', 'vistas/img/productos/CONCORRH-01/316.jpg', 130, '7', '15', 84, '2020-03-26 11:24:05'),
(67, 8, 'CAMIPB1MHL-01', 'CAMARA IP BALA DE 1MP HILOOK MODELO IPCB100', 'vistas/img/productos/CAMIPB1MHL-01/761.jpg', 2, '480', '774', 0, '2020-01-16 14:40:24'),
(68, 8, 'CAMIPB2MHL-01', 'CAMARA IP BALA DE 2MP HILOOK MODELO IPCB121H', 'vistas/img/productos/CAMIPB2MHL-01/520.jpg', 2, '660', '961', 0, '2020-01-16 14:39:39'),
(69, 9, 'LAMPEMERG-01', 'Lampara de Emergencia de Led con 110 220V SYSCOM', 'vistas/img/productos/LAMPEMERG-01/520.jpg', 1, '340', '476', 0, '2019-08-14 18:29:40'),
(74, 10, 'KITINT1AU-01', 'KIT DE INTERFON CON 1 AURICULAR SYSCOM HASTA 3 AURICULARES', 'vistas/img/productos/KITINT1AU-01/461.jpg', 1, '450', '598', 0, '2020-01-16 14:33:16'),
(75, 2, 'BALUMBNCPAR-01', 'PAR DE VIDEOBALUM BNC CABLE RF BLINDADO EPCOM', 'vistas/img/productos/BALUMBNCPAR-01/656.jpg', 13, '55', '70', 4, '2020-02-24 18:24:17'),
(76, 2, 'CONCORRM-01', 'CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM', 'vistas/img/productos/CONCORRM-01/654.jpg', 146, '7', '15', 67, '2020-03-16 11:43:50'),
(77, 2, 'CONVIDM-01', 'CONECTOR DE VIDEO RCA MACHO', 'vistas/img/productos/CONVIDM-01/463.jpg', 15, '10', '17', 12, '2020-03-17 12:44:11'),
(78, 2, 'MICRCA-01', 'MICROFONO CON CANCELACIÓN DE RUIDO DE ALTA FIDELIDAD', 'vistas/img/productos/MICRCA-01/308.jpg', 6, '80', '140', 2, '2019-11-21 13:37:38'),
(79, 2, 'MICRCA-02', 'MICRÓFONO CON CANCELACIÓN DE RUIDO DE ALTA FIDELIDAD 50 A 120 M2', 'vistas/img/productos/MICRCA-02/148.png', 0, '70', '120', 2, '2019-10-28 14:12:32'),
(85, 2, 'PROTEC-01', 'PROTECTOR PARA EXTERIOR IP68 ', 'vistas/img/productos/PROTEC-01/590.jpg', 9, '11', '16', 0, '2020-01-16 14:24:05'),
(87, 2, 'FUEPO12V-01', 'FUENTE DE PODER DE 12 V 1 A', 'vistas/img/productos/FUEPO12V-01/649.jpg', 2, '30', '98', 16, '2020-02-13 16:06:01'),
(88, 8, 'CAMDE720PBI-01', 'CAMARA DOMO LE7TURBOWP EPCOM 720P BLANCA INTERIOR ', 'vistas/img/productos/CAMDE720PBI-01/413.jpg', 0, '228', '296', 1, '2019-11-15 16:25:05'),
(92, 12, 'CP3P5AJ2P5-01', 'CONECTOR DE PLUG 3P5 MM A JACK 2P5 MM', 'vistas/img/productos/CP3P5AJ2P5-01/974.jpg', 0, '35', '50', 1, '2019-11-08 15:17:19'),
(93, 2, 'SENMI-01', 'SENSOR MAGNETICO INALAMBRICO ', 'vistas/img/productos/SENMI-01/244.jpg', 9, '100', '140', 0, '2019-08-16 13:04:15'),
(94, 2, 'VIDBE-01', 'VIDEO BALUM EPCOM', 'vistas/img/productos/VIDBE-01/782.jpg', 0, '45', '70', 15, '2020-01-16 14:14:31'),
(95, 2, 'CABCBNCA', 'CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS', 'vistas/img/productos/CABCBNCA/343.png', 3, '106', '148', 20, '2020-03-20 19:16:48'),
(96, 8, 'CAMF-01', 'CAMARA FALSA', 'vistas/img/productos/CAMF-01/125.png', 4, '95', '126', 0, '2019-10-01 16:33:48'),
(97, 8, 'CAMB720EG', 'CAMARA BALA 720P EPCOM LB7TURBOP GRIS', 'vistas/img/productos/CAMB720EG/640.png', 0, '260', '363', 0, '2019-08-16 13:25:06'),
(98, 8, 'CAMB720EB', 'CAMARA BALA 720P EPCOM LB7TURBOG2P BLANCA', 'vistas/img/productos/CAMB720EB/173.png', 0, '285', '400', 0, '2019-08-16 13:35:54'),
(99, 8, 'CAMD720EB', 'CAMARA DOMO 720P EPCOM LE7TURBOIG2', 'vistas/img/productos/CAMD720EB/197.png', 0, '250', '354', 0, '2019-08-16 13:39:55'),
(100, 8, 'CAMBIP3MP-01', 'CAMARA BALA IP DE 3MP IPCHFW1320SN036S3', 'vistas/img/productos/CAMBIP3MP-01/544.png', 1, '1138', '1599', 0, '2019-08-16 13:43:14'),
(101, 1, 'DVR16CE', 'DVR 16 CANALES S16TURBOL EPCOM', 'vistas/img/productos/DVR16CE/712.png', 1, '1520', '2119', 0, '2020-01-16 14:09:34'),
(102, 2, 'DVR4CE', 'DVR 4 CANALES S04TURBOL EPCOM', 'vistas/img/productos/DVR4CE/886.png', 1, '650', '923', 5, '2020-02-29 13:11:28'),
(103, 1, 'DVR8CE', 'DVR 8 CANALES S08TURBOL EPCOM', 'vistas/img/productos/DVR8CE/178.png', 2, '907', '1270', 10, '2020-02-24 18:24:17'),
(105, 1, 'MICCR-01', 'MICRÓFONO CON CANCELACIÓN DE RUIDO', 'vistas/img/productos/MICCR-01/822.png', 2, '150', '248', 0, '2019-08-16 14:16:02'),
(106, 2, 'PUL4', 'PULPO HEMBRA DE 4 ENTRADAS', 'vistas/img/productos/PUL4/486.png', 9, '40', '59', 9, '2020-03-30 16:29:52'),
(107, 2, 'PUL8', 'PULPO HEMBRA DE 8 ENTRADAS', 'vistas/img/productos/PUL8/936.png', 0, '60', '89', 8, '2020-02-23 12:52:27'),
(108, 9, 'LAMPSSNO-01', 'LAMPARA SOLAR CON SENSOR DE MOVIMIENTO Y OSCURIDAD', 'vistas/img/productos/LAMPSSNO-01/356.jpg', 6, '150', '230', 0, '2019-10-01 16:07:11'),
(109, 12, 'ADMMSD', 'ADAPTADOR DE MEMORIA MICRO SD ', 'vistas/img/productos/ADMMSD/701.png', 2, '18', '30', 2, '2020-01-20 15:00:34'),
(111, 9, 'CANCA', 'CANDADO CON ALARMA', 'vistas/img/productos/CANCA/987.jpg', 4, '110', '179', 4, '2020-02-28 10:07:17'),
(112, 9, 'DISPSW', 'DISPOSITIVO DE SEGURIDAD WATCHGUARD FIREBOX', 'vistas/img/productos/DISPSW/681.jpg', 1, '4500', '5500', 0, '2019-08-21 13:13:31'),
(114, 3, 'EXTHDMIUTP', 'EXTENSOR HDMI POR UTP ', 'vistas/img/productos/EXTHDMIUTP/106.jpg', 0, '210', '303', 1, '2020-02-21 13:30:49'),
(115, 3, 'EXTVGAUTP', 'EXTENSOR DE VGA POR CABLE UTP', 'vistas/img/productos/EXTVGAUTP/473.png', 3, '60', '80', 0, '2020-01-16 13:42:26'),
(116, 3, 'CABIMPRE', 'CABLE USB IMPRESORA TIPO A B MACHO', 'vistas/img/productos/CABIMPRE/230.png', 7, '50', '96', 2, '2020-01-16 13:41:02'),
(117, 12, 'CONRJ45C5E', 'CONECTOR RJ 45 CAT5 BOLSA CON 100 PZ', 'vistas/img/productos/CONRJ45C5E/423.png', 4, '100', '120', 1, '2020-01-16 13:38:55'),
(118, 12, 'CONRJ45C5E1', 'CONECTOR RJ 45 CAT5 POR PIEZA', 'vistas/img/productos/CONRJ45C5E1/858.png', 22, '3', '5', 121, '2020-03-26 11:24:05'),
(119, 12, 'CONRJ45C6', 'CONECTOR RJ45 CAT6 BOLSA CON 100 PZ', 'vistas/img/productos/CONRJ45C6/336.png', 1, '200', '247', 1, '2019-12-16 17:37:39'),
(121, 12, 'PINIPJACK', 'PINZA DE IMPACTO PONCHADO PARA JACK ', 'vistas/img/productos/PINIPJACK/159.png', 2, '200', '255', 0, '2019-08-21 13:43:19'),
(122, 6, 'MANLA2P5MMM', 'MANOS LIBRES ALAMBRICO 2P5 MM MOTOROLA', 'vistas/img/productos/MANLA2P5MMM/777.jpg', 2, '100', '140', 0, '2019-08-21 15:43:10'),
(123, 2, 'ADC100V240V4CAM', 'ADAPTADOR DE CORRIENTE DE 100V 240V PARA 4 CAMARAS', 'vistas/img/productos/ADC100V240V4CAM/609.png', 0, '400', '469', 1, '2020-02-05 10:49:56'),
(125, 3, 'CABHDMI3M', 'CABLE HDMI DE 3 M', 'vistas/img/productos/CABHDMI3M/128.png', 5, '50', '84', 11, '2020-02-12 16:29:27'),
(126, 3, 'CABHDMI1P8M', 'CABLE HDMI DE 1P8 M', 'vistas/img/productos/CABHDMI1P8M/337.png', 18, '40', '66', 6, '2020-03-30 12:15:34'),
(127, 12, 'PINP3EN1', 'PINZA PONCHADORA 3 EN 1', 'vistas/img/productos/PINP3EN1/548.png', 3, '100', '150', 0, '2019-11-23 11:25:55'),
(128, 2, 'PLAC4P', 'PLACA DE PARED PARA 4 PUERTOS', 'vistas/img/productos/PLAC4P/852.png', 14, '30', '35', 0, '2020-01-16 13:17:28'),
(129, 2, 'PLAC2P', 'PLACA DE PARED PARA 2 PUERTOS', 'vistas/img/productos/PLAC2P/676.png', 17, '30', '35', 1, '2020-02-29 12:55:30'),
(130, 2, 'PLAC1P', 'PLACA DE PARED PARA 1 PUERTOS', 'vistas/img/productos/PLAC1P/167.jpg', 0, '30', '35', 0, '2020-01-16 13:14:17'),
(133, 12, 'CONRJ11', 'CONECTOR RJ 11 BOLSA CON 100 PZ', 'vistas/img/productos/CONRJ11/969.jpg', 3, '85', '114', 0, '2019-08-22 10:17:21'),
(135, 12, 'CONRJ11X', 'CONECTOR RJ 11 POR PIEZA', 'vistas/img/productos/CONRJ11X/486.jpg', 23, '1', '2', 28, '2020-02-28 20:18:57'),
(136, 1, 'ADC12V4AM', 'ADAPTADOR DE CORRIENTE DE 12V 3P33 A CON PULPO DE 5 SALIDAS', 'vistas/img/productos/ADC12V4AM/150.png', 1, '300', '359', 1, '2020-02-05 10:49:56'),
(138, 3, 'CABCVGAARCA', 'CABLE CONVERTIDOR VGA A RCA', 'vistas/img/productos/CABCVGAARCA/713.jpg', 0, '60', '78', 1, '2019-10-30 14:20:34'),
(140, 3, 'CABUTP100CPZA', 'CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS', 'vistas/img/productos/CABUTP100CPZA/566.jpg', 64, '5', '8', 230, '2020-02-07 11:42:32'),
(142, 3, 'GRAPFB100PZ', 'GRAPA DE FIJACION BOLSA DE 100 PIEZAS', 'vistas/img/productos/GRAPFB100PZ/114.png', 4, '38', '50', 8, '2020-02-17 10:09:57'),
(143, 3, 'GRAPFPZ', 'GRAPA DE FIJACION POR PIEZA', 'vistas/img/productos/GRAPFPZ/128.png', 0, '1', '2', 0, '2019-10-01 13:12:27'),
(144, 12, 'PLAC3P', 'PLACA DE PARED PARA 3 PUERTOS', 'vistas/img/productos/PLAC3P/444.png', 6, '20', '35', 0, '2020-01-16 12:48:58'),
(145, 11, 'ANYCM4P', 'ANYCAST M4 PLUS ', 'vistas/img/productos/ANYCM4P/406.png', 3, '350', '480', 3, '2020-01-30 13:04:42'),
(146, 12, 'ACPTPL', 'ACCESS POINT TP LINK TLWA801ND', 'vistas/img/productos/ACPTPL/878.jpg', 1, '500', '650', 4, '2020-03-26 19:47:49'),
(147, 12, 'ACPTA9', 'ACCESS POINT TENDA A9 ', 'vistas/img/productos/ACPTA9/442.jpg', 0, '292', '408.8', 1, '2019-11-02 19:13:17'),
(148, 12, 'MMSD32GBBP', 'MEMORIA MICROS SD DE 32 GB MARCA BLACKPCS', 'vistas/img/productos/MMSD32GBBP/775.png', 1, '80', '100', 13, '2020-03-25 19:35:15'),
(151, 12, 'MMSD16GBA', 'MEMORIA MICRO SD 16 GB ADATA', 'vistas/img/productos/MMSD16GBA/653.jpg', 0, '50', '85', 0, '2019-08-22 13:31:05'),
(152, 12, 'MMSD32GBA', 'MEMORIA MICRO SD 32 GB ADATA', 'vistas/img/productos/MMSD32GBA/689.jpg', 0, '90', '120', 0, '2019-08-22 13:44:25'),
(156, 12, 'MUSB32GBSAN', 'MEMORIA USB SANDISK 32 GB', 'vistas/img/productos/MUSB32GBSAN/883.jpg', 0, '72', '110', 0, '2019-10-01 13:08:18'),
(157, 12, 'MUSB32GBSTYLOS', 'MEMORIA USB 32 GB STYLOS', 'vistas/img/productos/MUSB32GBSTYLOS/757.jpg', 0, '87', '100', 0, '2019-08-22 15:36:31'),
(158, 12, ' TLWN821N', 'ADAPTADOR USB TPLINK', 'vistas/img/productos/ TLWN821N/748.jpg', 0, '205', '285', 2, '2019-10-30 13:35:07'),
(159, 12, ' TLWN725N', 'ADAPTADOR USB NANO TPLINK', 'vistas/img/productos/ TLWN725N/328.jpg', 0, '100', '198', 0, '2019-08-22 16:16:42'),
(160, 12, 'RS1280', 'REPETIDOR DE SEÑAL GREEN LEAF', 'vistas/img/productos/RS1280/410.png', 0, '300', '398', 5, '2020-03-25 19:14:31'),
(161, 2, 'SENSORALARM', 'SENSOR CON ALARMA', 'vistas/img/productos/SENSORALARM/519.png', 5, '72', '100', 1, '2020-01-21 10:36:55'),
(162, 12, 'DIVAUDIO', 'DIVISOR DE AUDIO ', 'vistas/img/productos/DIVAUDIO/264.png', 7, '57', '98', 3, '2019-12-16 13:57:22'),
(163, 12, 'Z304F5N', 'DISCO DURO 4TB SEAGATE', 'vistas/img/productos/Z304F5N/956.jpg', 1, '1500', '2100', 0, '2020-02-12 13:55:37'),
(164, 8, 'CAMES', 'GRABADORA ESPIA', 'vistas/img/productos/CAMES/806.png', 1, '180', '230', 0, '2019-10-01 12:19:41'),
(165, 8, 'CAMESR', 'CAMARA ESPIA CON REPRODUCTOR DE MP3 ', 'vistas/img/productos/CAMESR/397.jpg', 0, '400', '490', 0, '2019-08-29 15:03:18'),
(167, 3, 'CABAUX', 'CABLE DE AUDIO AUXILIAR PLUG 3P5 A RCA', 'vistas/img/productos/CABAUX/280.jpg', 0, '10', '30', 0, '2019-10-01 12:19:02'),
(168, 3, 'CABAUX3.5MM', 'CABLE AUXILIAR 3P5 MM', 'vistas/img/productos/CABAUX3.5MM/329.jpg', 0, '10', '27', 1, '2020-01-16 12:28:15'),
(169, 9, 'CLASR', 'CLAVIJAS SENCILLAS DE REMPLAZO', 'vistas/img/productos/CLASR/718.jpg', 6, '7', '14', 0, '2020-01-16 12:27:10'),
(170, 3, 'SWDI', 'INTERRUPTOR WIFI DOMOTICA INALAMBRICO', 'vistas/img/productos/SWDI/534.jpg', 4, '180', '250', 0, '2020-01-16 12:24:54'),
(172, 3, 'CABFO', 'CABLE DE FIBRA OPTICA 1P5 METROS PARA MODEM', 'vistas/img/productos/CABFO/270.jpg', 0, '100', '78', 1, '2020-02-22 11:23:11'),
(173, 3, 'CABTCA', 'CABLE TRIFASICO DE CORRIENTE ALIMENTACION', 'vistas/img/productos/CABTCA/847.jpg', 0, '30', '40', 7, '2020-01-16 12:21:40'),
(174, 3, 'CABVGA', 'CABLE VGA A VGA', 'vistas/img/productos/CABVGA/388.jpg', 6, '25', '50', 9, '2020-02-17 13:02:25'),
(175, 12, 'EXTCDD', 'EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES', 'vistas/img/productos/EXTCDD/704.jpg', 3, '100', '148', 8, '2020-03-17 14:51:33'),
(176, 12, 'ADUSBWIFI', 'ADAPTADOR USB WIFI NANO', 'vistas/img/productos/ADUSBWIFI/259.jpg', 3, '100', '150', 8, '2020-03-13 10:57:32'),
(177, 3, 'ADHDMIVGA', 'ADAPTADOR HDMI A VGA', 'vistas/img/productos/ADHDMIVGA/210.jpg', 1, '100', '190', 9, '2020-03-02 10:25:01'),
(179, 8, 'CAMLLESP', 'LLAVERO CAMARA ESPIA FOTOS Y VIDEO', 'vistas/img/productos/CAMLLESP/168.jpg', 0, '180', '250', 10, '2020-03-26 15:56:27'),
(180, 12, 'BOCINACABVC', 'BOCINA CONTRA AGUA BLUETHOOTH VARIOS COLORES', 'vistas/img/productos/BOCINACABVC/747.jpg', 2, '80', '120', 0, '2019-08-30 10:41:44'),
(181, 3, 'CARSPA', 'CARGADOR SAMSUNG PUNTA AGUJA 19V 2P5A', 'vistas/img/productos/CARSPA/152.jpg', 0, '200', '350', 0, '2019-08-30 10:46:03'),
(182, 12, 'soptritv', 'SOPORTE TRIPIE PARA PANTALLAS TV DE 37 A 70 PULGADAS', 'vistas/img/productos/soptritv/463.jpg', 0, '1200', '1550', 0, '2019-09-12 13:34:05'),
(185, 12, 'MONT', 'MOUSE NACEB TECHNOLOGY GAMER', 'vistas/img/productos/MONT/777.jpg', 0, '250', '350', 0, '2019-12-09 18:43:43'),
(186, 9, 'CONC', 'CONTROL UNIVERSAL MINISPLIT LG MIRAGE SAMSUNG MABE CARRIER', 'vistas/img/productos/CONC/557.jpg', 0, '80', '150', 0, '2020-01-16 12:05:06'),
(187, 3, 'MULCUL8-01', 'MULTICARGADOR UNIVERSAL LAPTOP 8 PUNTAS 12 24V', 'vistas/img/productos/MULCUL8-01/925.jpg', 0, '150', '350', 0, '2020-02-13 14:23:21'),
(189, 12, 'FUEPAR500', 'FUENTE DE PODER ACTECK R500  PLATA 500 W', 'vistas/img/productos/FUEPAR500/133.png', 1, '280', '390', 0, '2019-12-13 13:20:44'),
(190, 1, 'KIT4DVR81080P', 'KIT CAMARAS 1080P HIKVISION DVR 8 CANALES 4 CAMARAS BALA CABLES', 'vistas/img/productos/KIT4DVR81080P/952.jpg', 0, '3500', '3950', 1, '2020-03-30 12:15:34'),
(193, 12, 'pagweb', 'PAGINA WEB TODO INCLUIDO DISEÑO HOSPEDAJE DOMINIO Y CORREOS', 'vistas/img/productos/pagweb/164.jpg', 1000, '0', '3500', 0, '2019-09-13 11:55:26'),
(194, 12, 'DD500GBS', 'DISCO DURO GENERICO 500 GB SATA 3P5', 'vistas/img/productos/DD500GBS/312.jpg', 2, '400', '580', 15, '2020-03-30 12:15:34'),
(195, 12, 'IMPME', 'IMPRESORA MULTIFUNCIONAL EPSON L3110', 'vistas/img/productos/IMPME/782.jpg', 0, '2800', '3350', 0, '2019-09-13 12:11:54'),
(196, 12, 'MEMMSD16GBS', 'MEMORIA MICRO SD 16GB STYLOS', 'vistas/img/productos/MEMMSD16GBS/159.jpg', 0, '60', '85', 10, '2020-01-21 18:25:15'),
(197, 12, 'MEMMSD32GBS', 'MEMORIA MICRO SD 32GB STYLOS', 'vistas/img/productos/MEMMSD32GBS/591.jpg', 0, '55', '100', 2, '2019-10-10 15:24:06'),
(198, 12, 'DD2000GBS', 'DISCO DURO GENERICO 2000 GB SATA 3P5', 'vistas/img/productos/DD2000GBS/171.jpg', 2, '950', '1200', 4, '2020-02-12 13:36:27'),
(200, 1, 'KIT4CH1080P-01', 'KIT TURBOHD 1080P HIK CONNECT DVR 4 CANALES 4 CAMARAS BALA MODELO HIK1080KIT4', 'vistas/img/productos/KIT4CH1080P-01/144.jpg', 2, '3000', '3402', 0, '2020-01-16 11:46:16'),
(201, 1, 'KIT4CH720PDVR8C', 'KIT DE 4 CAMARAS HILOOK DVR 8 CANALES KIT7208BP', 'vistas/img/productos/KIT4CH720PDVR8C/722.png', 0, '2438', '3413', 2, '2020-02-17 20:33:21'),
(202, 13, 'CAMP360', 'CAMARA PANORAMICA 360 IP VR CAM', 'vistas/img/productos/CAMP360/168.jpg', 3, '1000', '1200', 0, '2019-10-01 11:17:11'),
(203, 12, 'PROTRJ45RJ11', 'PROBADOR TESTEADOR CABLE DE RED UTP RJ11 RJ45 ETHERNET', 'vistas/img/productos/PROTRJ45RJ11/307.jpg', 0, '100', '140', 1, '2020-02-26 17:49:20'),
(204, 8, 'CAMESL-01', 'LENTE ESPIA 1080P MEMORIA DE 8GB GRABACION DE AUDIO Y VÍDEO', 'vistas/img/productos/CAMESL-01/807.png', 1, '750', '980', 0, '2019-09-13 12:49:01'),
(205, 12, 'PRESENIAL', 'PRESENTADOR INALAMBRICO CON APUNTADOR LASER', 'vistas/img/productos/PRESENIAL/127.png', 3, '150', '240', 4, '2020-03-03 11:33:14'),
(206, 12, 'VENB', 'VENTILADOR BROBOTIX', 'vistas/img/productos/VENB/893.jpg', 0, '180', '219', 0, '2019-09-13 12:52:23'),
(207, 12, 'MEMMSD32GBSK-01', 'MEMORIA MICRO SD KINGSTON 32GB 32 GB NEGRO', 'vistas/img/productos/MEMMSD32GBSK-01/309.jpg', 0, '100', '164', 2, '2019-11-19 13:00:57'),
(210, 2, 'KITVPH', 'KIT DE VIDEO PORTERO HIKVISION DIGITAL TECHNOLOGY', 'vistas/img/productos/KITVPH/379.jpg', 1, '2100', '2980', 0, '2019-12-04 18:54:19'),
(212, 12, 'TRANS12VCA30VA', 'TRANSFORMADOR DE PARED 12 VCA 30 VA CUENTA CON FUSIBLE EXTERNO', 'vistas/img/productos/TRANS12VCA30VA/721.png', 1, '200', '268', 0, '2019-10-01 11:11:08'),
(213, 12, 'MODR-01', 'MODULO DE RELEVADOR', 'vistas/img/productos/MODR-01/354.png', 1, '50', '75', 0, '2019-10-01 11:10:33'),
(214, 12, 'SOQS', 'SOQUET SENCILLO', 'vistas/img/productos/SOQS/258.jpg', 1, '13', '23', 0, '2019-09-13 13:07:46'),
(215, 2, 'MICA', 'MICROFONO ALAMBRICO', 'vistas/img/productos/MICA/814.png', 0, '200', '270', 0, '2019-09-13 13:08:49'),
(217, 12, 'ADRED', 'ADAPTADOR USB ETHERNET RED', 'vistas/img/productos/ADRED/675.png', 6, '100', '200', 1, '2020-02-25 15:56:42'),
(218, 12, 'ADRCA2RCA1', 'ADAPTADOR DE 2 CONECTORES HEMBRAS RCA A 1 CONECTOR MACHO RCA', 'vistas/img/productos/ADRCA2RCA1/763.jpg', 1, '15', '55', 0, '2019-09-13 13:15:54'),
(219, 12, 'JACKCAT5EA-02', 'JACK DE IMPACTO CAT5E PARA CALIBRE 22 AL 2', 'vistas/img/productos/JACKCAT5EA-02/558.jpg', 36, '38', '52', 10, '2020-02-29 12:55:30'),
(221, 9, 'BATAAAPZ', 'BATERIA AAA XTRON PIEZA', 'vistas/img/productos/BATAAAPZ/605.jpg', 0, '1', '5', 6, '2020-01-15 13:34:30'),
(222, 12, 'IMPTTE', 'IMPRESORA TERMICA TICKETS 80 MM EPSON TM T20LL MINIPRINTER', 'vistas/img/productos/IMPTTE/476.jpg', 0, '4000', '4838', 0, '2019-09-13 13:31:22'),
(223, 8, 'CAMB720EB-01', 'CAMARA BALA 720P EPCOM METALICA COLOR BLANCO ', 'vistas/img/productos/CAMB720EB-01/201.png', 0, '350', '408', 1, '2020-01-15 13:31:58'),
(224, 12, 'FCOPTE', 'FRASCOS PARA RELLENAR SISTEMA EPSON T504 O T544', 'vistas/img/productos/FCOPTE/551.png', 0, '269', '369', 0, '2019-10-02 16:31:04'),
(226, 12, 'BUTP305M', 'BOBINA UTP 305 MTS', 'vistas/img/productos/BUTP305M/254.png', 0, '1000', '1200', 3, '2020-02-24 18:24:17'),
(227, 12, 'UD310', 'MEMORIA USB ADATA DE 32GB', 'vistas/img/productos/UD310/210.jpg', 1, '90', '140', 6, '2020-03-27 16:15:30'),
(230, 8, 'CAMANA1080HI-01', 'CAMARA BALA 1080P HILOOK THCB120PC', 'vistas/img/productos/CAMANA1080HI-01/930.png', 0, '290', '406', 1, '2020-01-15 12:12:56'),
(231, 12, 'SOPTVLCD-3008', 'SOPORTE PANTALLA 14 A 37 MITZU', 'vistas/img/productos/SOPTVLCD-3008/301.jpg', 0, '80', '170', 2, '2020-02-24 18:24:17'),
(232, 12, 'SOPTVLCD-3020', 'SOPORTE CON BRAZO PANTALLA 17 A 42 MITZU', 'vistas/img/productos/SOPTVLCD-3020/140.jpg', 0, '200', '398', 0, '2020-01-15 12:11:18'),
(234, 7, 'SERV-01', 'CRIMPEADO DE CONECTOR', 'vistas/img/productos/default/anonymous.png', 9999998, '0', '5', 2, '2019-10-05 16:00:53'),
(236, 6, 'TELSINBAT', 'TELEFONO CON PANTALLA Y ALTAVOZ', 'vistas/img/productos/TELSINBAT/560.png', 4, '100', '190', 23, '2020-03-25 17:54:13'),
(239, 8, 'THCT120PC', 'CAMARA DOMO HILOOK 1080P THCT120PC', 'vistas/img/productos/THCT120PC/800.png', 2, '277', '443', 0, '2020-02-19 14:42:38'),
(240, 8, 'THCB120MC', 'CAMARA BALA HILOOK 1080P THCB120MC', 'vistas/img/productos/THCB120MC/806.png', 15, '310', '496', 1, '2020-02-23 12:52:27'),
(241, 8, 'THCT110P', 'CAMARA DOMO HILOOK 720P THCT110P', 'vistas/img/productos/THCT110P/836.png', 2, '184', '332', 3, '2020-02-20 11:43:54'),
(242, 8, 'THCB110P', 'CAMARA BALA 720P HILOOK THCB110P', 'vistas/img/productos/THCB110P/384.png', 12, '217', '369', 26, '2020-02-24 18:24:17'),
(243, 8, 'THCT120MC', 'CAMARA DOMO HILOOK 1080P THCT120MC', 'vistas/img/productos/THCT120MC/669.png', 1, '302', '483', 1, '2020-02-17 20:33:21'),
(244, 2, 'PLK12D6CH', 'FUENTE DE PODER  12V 6 A CON 6 CANALES EPCOM', 'vistas/img/productos/PLK12D6CH/363.jpg', 2, '300', '450', 4, '2020-02-24 18:24:17'),
(245, 12, 'MU2107', 'MEMORIA USB BLACKPCS 32GB', 'vistas/img/productos/MU2107/678.jpg', 0, '30', '115', 10, '2020-01-29 19:24:19'),
(246, 12, 'USB16', 'MEMORIA USB BLACKPCS 16GB ROJO', 'vistas/img/productos/USB16/396.jpg', 2, '45', '90', 8, '2020-03-23 11:51:42'),
(247, 12, 'HYUNDAI32', 'MEMORIA MICRO SD HYUNDAI 32GB', 'vistas/img/productos/HYUNDAI32/484.jpg', 0, '60', '115', 12, '2020-03-02 14:18:01'),
(249, 4, 'TP LINK 5', 'SWITCH TP LINK 5PORT', 'vistas/img/productos/TP LINK 5/795.jpg', 2, '120', '271.2', 0, '2019-11-09 14:54:16'),
(250, 4, 'SWITCH 8PORT', 'SWITCH MERCUSYS 8 PORT', 'vistas/img/productos/SWITCH 8PORT/146.jpg', 0, '90', '192', 5, '2020-03-02 17:44:42'),
(251, 12, 'DDUSAT260', 'DISCO DURO GENERICO 1000 GB SATA 3P5', 'vistas/img/productos/DDUSAT260/525.jpg', 2, '680', '1050', 4, '2020-02-12 13:28:26'),
(252, 2, 'BNC', 'CONECTORES BNC ', 'vistas/img/productos/BNC/400.png', 16, '10', '20', 14, '2020-03-17 12:44:11'),
(253, 12, 'HUBUSB3PUERTOS', 'ADAPTADOR USB CON 3 PUERTOS HUB USB', 'vistas/img/productos/HUBUSB3PUERTOS/465.png', 6, '20', '40', 5, '2020-01-25 13:22:49'),
(254, 8, 'CAMGOPRO', 'CAMARA DEPORTIVA GO PRO ', 'vistas/img/productos/CAMGOPRO/352.png', 0, '500', '650', 7, '2020-03-12 18:19:52'),
(257, 12, 'HUBUSB4PUERTOS', 'ADAPTADOR USB CON 4 PUERTOS HUB 4 PUERTOS', 'vistas/img/productos/HUBUSB4PUERTOS/650.png', 4, '40', '80', 2, '2019-12-20 13:20:54'),
(258, 12, 'CABUTPCAT5E100MGENERICO', 'CABLE UTP CAT 5E 100 METROS GENERICO ', 'vistas/img/productos/CABUTPCAT5E100MGENERICO/884.png', 1, '200', '350', 3, '2020-03-30 16:34:49'),
(260, 12, 'LAPDELL', 'Laptop DELL Vostro 14 3000', 'vistas/img/productos/LAPDELL/282.jpg', 0, '10000', '14400', 2, '2019-11-12 20:02:43'),
(261, 12, 'CABLEUSBIPHONE', 'CABLE USB PARA IPHONE', 'vistas/img/productos/CABLEUSBIPHONE/704.png', 1, '25', '70', 1, '2019-11-14 19:18:44'),
(262, 12, 'OTGV8', 'OTG V8', 'vistas/img/productos/OTGV8/904.png', 0, '10', '25', 1, '2019-11-14 19:18:44'),
(263, 2, 'boli01', 'BOLIGRAFO ESPIA ', 'vistas/img/productos/boli01/500.png', 3, '189', '480', 1, '2020-01-21 10:36:32'),
(264, 8, 'camara domo', 'CAMARA DOMO EPCOM 720P LD7TURBOW', 'vistas/img/productos/camara domo/620.png', 0, '298', '480', 12, '2020-02-17 20:33:21'),
(265, 12, 'aire comprimido ', 'AIRE COMPRIMIDO ', 'vistas/img/productos/aire comprimido /411.png', 12, '50', '100', 12, '2020-02-19 09:56:41'),
(266, 2, 'power', 'FUENTE DE PODER HEAVY DUTY  DE 11 15 VCD  PARA 16 CAMARAS', 'vistas/img/productos/power/243.png', 0, '1538', '2154', 0, '2020-01-15 11:36:09'),
(267, 12, 'tp link 8', 'SWITCH TP LINK DE 8 PUERTOS', 'vistas/img/productos/tp link 8/500.jpg', 1, '145', '297', 1, '2020-01-15 11:35:14'),
(270, 12, 'BATAAPZ', 'BATERIA AA TRITON PIEZA', 'vistas/img/productos/BATAAPZ/961.png', 0, '1', '5', 1, '2020-01-15 11:33:07'),
(271, 12, 'AG4', 'PILA PARA RELOJ AG4 LR621 377 SR626', 'vistas/img/productos/AG4/261.png', 0, '5', '10', 7, '2019-12-19 14:33:58'),
(272, 12, 'CABHDMI10M', 'CABLE HDMI DE 10 M', 'vistas/img/productos/CABHDMI10M/741.png', 1, '100', '186', 5, '2020-02-22 14:10:29'),
(273, 2, 'REGISTROSCONTAPACIEGA', 'CAJAS PVC PARA CAMARAS DE SEGURIDAD', 'vistas/img/productos/REGISTROSCONTAPACIEGA/241.png', 0, '30', '52', 8, '2020-01-22 18:50:21'),
(278, 12, 'LAMPUSB', 'LAMPARA LED USB', 'vistas/img/productos/LAMPUSB/491.jpg', 5, '20', '25', 1, '2019-12-04 17:27:45'),
(279, 1, 'CAMIPELEGATE', 'CAMARA PANORAMICA IP 360 MARCA ELEGATE', 'vistas/img/productos/CAMIPELEGATE/646.png', 2, '390', '800', 4, '2020-02-18 11:07:19'),
(280, 2, 'ACC-MIC4', 'MICROFONO DE ALTA DEFINICION PROVISION', 'vistas/img/productos/ACC-MIC4/604.jpg', 6, '92', '184', 0, '2019-12-09 18:15:40'),
(281, 12, 'NA-105', 'BOCINA NACEB TECHNOLOGY ROJO', 'vistas/img/productos/NA-105/871.jpg', 1, '78', '140', 1, '2020-01-15 13:51:53'),
(282, 12, 'KITTECLADOYMOUSE', 'KIT DE TECLADO Y MOUSE NACEB TECHNOLOGY ESTANDAR NEGRO', 'vistas/img/productos/KITTECLADOYMOUSE/152.jpg', 0, '98', '170', 3, '2020-02-05 12:41:02'),
(283, 12, 'MMSD16GBBPC', 'MEMORIA MICRO SD 16 GB CLASE 10 BLACKPCS', 'vistas/img/productos/MMSD16GBBPC/382.jpg', 11, '48', '80', 3, '2020-03-25 19:35:15'),
(284, 12, 'MOUSEONT', 'MOUSE OPTICO NACEB VARIOS COLORES', 'vistas/img/productos/MOUSEONT/853.jpg', 3, '62', '124', 3, '2020-03-23 18:07:12'),
(285, 12, 'CARGHPPAZUL', 'CARGADOR PARA LAPTOP HP G 14K PUNTA AZUL ', 'vistas/img/productos/CARGHPPAZUL/647.png', 2, '129', '250', 4, '2020-02-12 15:41:17'),
(286, 12, 'LENTESCONAUDIFONOS', 'LENTES AUDIFONOS MANOS LIBRES BLUETOOTH ORIGINAL', 'vistas/img/productos/LENTESCONAUDIFONOS/259.png', 1, '194', '350', 1, '2020-03-04 10:46:47'),
(287, 8, 'LENTECELULAR', 'LENTES CELULAR CON TRIPIE SELFIE Y CONTROL REMOTO BLUETOOTH', 'vistas/img/productos/LENTECELULAR/382.png', 0, '100', '198', 1, '2019-12-12 15:11:42'),
(288, 9, 'DETECTORDERAYO', 'DETECTOR DE RAYO FOTOELECTRICO  TIPO CORTINA', 'vistas/img/productos/DETECTORDERAYO/695.jpg', 3, '638', '957', 0, '2019-12-12 18:50:09'),
(289, 12, 'funda01', 'FUNDA PARA MINI LAPTOP GREEN LEAF ROJO', 'vistas/img/productos/funda01/563.jpg', 2, '120', '168', 0, '2019-12-13 13:16:00'),
(290, 2, 'carga01', 'CARGADOR PARA LAPTOP DELL XPS 11 12 13 14 15 18', 'vistas/img/productos/carga01/105.jpg', 0, '200', '400', 1, '2020-03-02 13:20:34'),
(291, 12, 'bat01', 'Bateria para laptop HP ME03 3s1p ', 'vistas/img/productos/bat01/549.jpg', 1, '690', '890', 0, '2019-12-13 13:50:07'),
(292, 12, 'bat02', 'Bateria Hp Oa03 Oa04 240 G2 250 G3 740715 001 746641 001', 'vistas/img/productos/bat02/901.jpg', 0, '400', '590', 1, '2019-12-16 14:32:22'),
(293, 9, 'recep01', 'RECEPTACULO 2224 2 TORK', 'vistas/img/productos/recep01/739.jpg', 1, '78', '98', 0, '2019-12-15 12:46:35'),
(294, 9, 'FOTO01', 'Fotocelda Tork 110 V', 'vistas/img/productos/FOTO01/844.jpg', 1, '95', '130', 0, '2019-12-15 12:51:18'),
(295, 6, 'ante01', 'ANTENA YAGUI SMA PARA TELEFONO RURAL', 'vistas/img/productos/ante01/226.jpg', 0, '490', '980', 1, '2019-12-15 14:01:03'),
(296, 9, 'pilaAA', 'PILA AA', 'vistas/img/productos/pilaAA/482.jpg', 8, '2', '10', 8, '2020-01-29 19:24:19'),
(297, 9, 'pilaAAA', 'PILA AAA', 'vistas/img/productos/pilaAAA/514.jpg', 17, '2', '8', 7, '2020-02-22 14:04:06'),
(298, 12, 'PILACR2032', 'PILA CR2032', 'vistas/img/productos/default/anonymous.png', 17, '5', '30', 4, '2020-01-23 11:59:16'),
(299, 12, 'DDS120GB', 'DISCO DURO ESTADO SOLIDO DE 120 GB BLACKPCS', 'vistas/img/productos/DDS120GB/376.jpg', 1, '380', '608', 0, '2019-12-17 11:01:43'),
(300, 12, 'DDS240GB', 'DISCO DURO ESTADO SOLIDO DE 240 GB BLACKPCS', 'vistas/img/productos/DDS240GB/463.jpg', 0, '565', '850', 2, '2020-01-28 18:08:35'),
(301, 12, 'DD3000GB', 'DISCO DURO GENERICO 3000 GB SATA 3P5', 'vistas/img/productos/DD3000GB/683.jpg', 1, '875', '1350', 6, '2020-02-17 20:33:21'),
(302, 12, 'DD1000GB2P5', 'DISCO DURO SEGATE 1000 GB LAPTOP 2P5 ', 'vistas/img/productos/DD1000GB2P5/603.jpg', 0, '853', '1279', 1, '2020-02-09 13:14:01'),
(303, 12, 'SF110D-08', 'SWITCH CISCO DE 8 PUERTOS ', 'vistas/img/productos/default/anonymous.png', 1, '500', '850', 0, '2019-12-18 14:08:15'),
(304, 12, 'TINTAS', 'KIT DE TINTAS CANON', 'vistas/img/productos/TINTAS/648.jpg', 4, '700', '1100', 0, '2020-01-26 12:15:45'),
(305, 9, 'MULTI01', 'MULTIMETRO DIGITAL', 'vistas/img/productos/MULTI01/745.jpg', 2, '80', '120', 0, '2020-02-13 14:23:37'),
(306, 12, 'TRIPIE01', 'Tripie Aluminio Control Bluetooth iPhone Android', 'vistas/img/productos/TRIPIE01/403.jpg', 0, '100', '480', 1, '2019-12-26 12:21:15'),
(307, 12, 'ADAPHDMI', 'ADAPTADOR 90GRADOS HDMI', 'vistas/img/productos/ADAPHDMI/654.jpg', 3, '52', '60', 0, '2020-01-15 11:05:15'),
(308, 6, 'ADAPJACK', 'ADAPTADOR 2 JACKS TELEFONICO 4 HILOS', 'vistas/img/productos/ADAPJACK/145.png', 4, '8', '20', 0, '2020-01-15 11:05:04'),
(309, 6, 'BASTON01', 'BASTON TRIPIE SELFIE BLUETOOTH', 'vistas/img/productos/BASTON01/588.jpg', 3, '150', '250', 1, '2019-12-31 10:39:25'),
(310, 3, 'CABMAN', 'CONVERTIDOR DE USB A SERIAL MANHATTAN', 'vistas/img/productos/CABMAN/134.jpg', 0, '200', '434', 1, '2019-12-20 14:56:45'),
(311, 7, 'SERVRESTAUMAS 01 ', 'SERVICIO DE RESTAURACION DE COMPUTADORAS MAS ', 'vistas/img/productos/default/anonymous.png', 9999, '200', '800', 0, '2019-12-21 10:39:46'),
(312, 2, 'ELIMINADOR01', 'Eliminador Fuente Cargador Tiras Led Camaras Cctv 12v 2a', 'vistas/img/productos/ELIMINADOR01/393.png', 8, '41', '120', 9, '2020-03-03 11:41:23'),
(313, 6, 'ADAPJACK01', 'ADAPTADOR 2 JACKS RCA A PLUG 6P3 MM ', 'vistas/img/productos/ADAPJACK01/938.jpg', 6, '12', '28', 0, '2020-01-15 10:56:41'),
(314, 12, 'TABLETKITSONE', 'TABLET KITS ONE ', 'vistas/img/productos/default/anonymous.png', 0, '850', '1200', 1, '2019-12-23 12:59:31'),
(316, 8, 'B8TURBOEXIR28W', 'CAMARA TURBOHD GRAN ANGULAR1080P', 'vistas/img/productos/B8TURBOEXIR28W/398.png', 5, '413', '665', 0, '2020-01-15 10:54:39'),
(317, 12, 'NOBREAK', 'No Break FORZA', 'vistas/img/productos/default/anonymous.png', 0, '750', '900', 1, '2020-01-09 11:28:31'),
(318, 12, 'CARGADORLAPTOPASUSR500N', 'CARGADOR PARA LAPTOP ASUS MODELO R500N', 'vistas/img/productos/CARGADORLAPTOPASUSR500N/741.png', 0, '250', '450', 0, '2020-01-15 10:23:00'),
(319, 7, 'TAQUETE01', 'TAQUETE TABLA ROCA', 'vistas/img/productos/TAQUETE01/729.jpg', 200, '1', '3', 0, '2020-01-10 09:56:09'),
(320, 12, 'CABLEDERED', 'CABLE DE RED 10 M', 'vistas/img/productos/default/anonymous.png', 0, '100', '100', 1, '2020-01-15 13:54:58'),
(321, 12, 'TLWR84N', 'ROUTER INALAMBRICO N MODELO TLWR840N', 'vistas/img/productos/TLWR84N/870.jpg', 0, '285', '456', 2, '2020-01-22 14:36:51'),
(322, 12, 'USBHYUNDAI', 'USB HYUNDAI 16 GB', 'vistas/img/productos/default/anonymous.png', 8, '80', '90', 6, '2020-03-18 18:20:36'),
(323, 12, 'MICRO01', 'MICROFONO PARA SOLAPA', 'vistas/img/productos/MICRO01/464.jpg', 1, '30', '100', 2, '2020-01-17 15:34:00'),
(324, 2, 'BALUM02', 'VIDEO BALUM COLA DE RATON', 'vistas/img/productos/BALUM02/755.jpg', 0, '50', '50', 32, '2020-02-24 18:24:17'),
(325, 1, 'KIT4CH720PDVR4C', 'KIT DE 4 CAMARAS DE SEGURIDAD HILOOK 720P DVR 4 CANALES MODELO KIT7204BP', 'vistas/img/productos/KIT4CH720PDVR4C/259.png', 1, '1500', '2398', 3, '2020-02-19 10:24:27'),
(327, 8, 'CAMFOCO360', 'CAMARA 360 TIPO FOCO', 'vistas/img/productos/CAMFOCO360/433.png', 2, '480', '750', 1, '2020-02-18 11:01:11'),
(328, 12, 'TRIPIEALUMINIO', 'TRIPIE DE ALUMINIO CON 3 NIVELES', 'vistas/img/productos/TRIPIEALUMINIO/821.png', 0, '99', '280', 3, '2020-03-31 11:29:36'),
(329, 2, 'TAQUETEDEPLASTICO14', 'TAQUETE DE PLASTICO DE 1 CUARTO BOLSA DE 100 PZAS ', 'vistas/img/productos/default/anonymous.png', 4, '10', '42', 4, '2020-02-24 18:24:17'),
(330, 12, 'BATELENOVOL0916Y02', 'BATERIA OTIGINAL LENOVO L0916Y02', 'vistas/img/productos/BATELENOVOL0916Y02/877.png', 0, '506', '770', 1, '2020-01-23 17:14:57'),
(332, 12, 'USBKINGSTON', 'USB KINGSTON 32 GB', 'vistas/img/productos/USBKINGSTON/894.jpg', 6, '90', '150', 4, '2020-03-20 10:20:40'),
(333, 2, 'tenda-06', 'antena punto a punto tenda', 'vistas/img/productos/tenda-06/805.png', 1, '1100', '1598', 0, '2020-01-26 12:02:50'),
(334, 7, 'servicio01', 'ANTICIPO DE SERVICIO ', 'vistas/img/productos/default/anonymous.png', 0, '200', '500', 1, '2020-01-28 19:23:08'),
(335, 3, 'CONVER01', 'CONVERTIDOR VIMI VGA A HDMI', 'vistas/img/productos/CONVER01/185.jpg', 2, '150', '264', 0, '2020-01-31 18:10:52'),
(336, 7, 'sertv02', 'COBRO SERVICIO', 'vistas/img/productos/default/anonymous.png', 0, '500', '788', 1, '2020-01-29 19:40:38'),
(337, 6, 'CONMUT02', 'CONMUTADOR DE 3 LINEAS Y 8 EXTENSIONES ', 'vistas/img/productos/CONMUT02/169.jpg', 1, '2000', '2500', 0, '2020-02-02 10:57:38'),
(338, 12, 'MON01', 'MONITOR AOC 19 P COLOR', 'vistas/img/productos/default/anonymous.png', 1, '1420', '1520', 1, '2020-02-04 13:47:01'),
(339, 6, 'NAOMI01', 'TELEFONO NAOMIPHONE', 'vistas/img/productos/NAOMI01/896.jpg', 1, '400', '800', 0, '2020-02-04 18:39:15'),
(340, 6, 'funda02', 'FUNDA CON TECLADO 7P', 'vistas/img/productos/default/anonymous.png', 2, '144', '249', 1, '2020-02-05 13:21:54'),
(341, 12, 'MOUSEINA', 'MOUSE INALAMBRICO ACTEK', 'vistas/img/productos/MOUSEINA/193.jpg', 2, '100', '178', 0, '2020-02-05 19:22:01'),
(342, 12, 'TECLADO02', 'TECLADO USB ACTECK AC', 'vistas/img/productos/TECLADO02/452.jpg', 2, '100', '198', 1, '2020-02-26 15:01:35'),
(343, 12, 'ENFRIADORA01', 'BASE ENFRIADORA AJUSTABLE NEGRA', 'vistas/img/productos/ENFRIADORA01/239.jpg', 1, '100', '240', 0, '2020-02-05 19:34:40'),
(344, 3, 'CABLECORRIENTE', 'CABLE CORRIENTE HDD SATA', 'vistas/img/productos/CABLECORRIENTE/885.jpg', 0, '20', '60', 4, '2020-02-06 11:32:34'),
(345, 6, 'FENG03', 'BAOFENG PORTABLE TWO WAY RADIO', 'vistas/img/productos/FENG03/641.jpg', 1, '700', '980', 0, '2020-02-08 14:23:22'),
(346, 3, 'elimi01', 'eliminadores 12a', 'vistas/img/productos/default/anonymous.png', 1, '70', '98', 2, '2020-02-09 15:01:17'),
(347, 4, 'sw01', 'Switch TPLINK TLSG1016D', 'vistas/img/productos/default/anonymous.png', 0, '1200', '1680', 1, '2020-02-11 13:50:23'),
(348, 12, 'anti01', 'Anticipo Lector Quemador Dvd Slim Externo LG Resta 280', 'vistas/img/productos/default/anonymous.png', 0, '200', '300', 1, '2020-02-13 12:05:56'),
(349, 12, 'LECTORLG', 'Lector Quemador Dvd Slim Externo LG', 'vistas/img/productos/LECTORLG/232.jpg', 1, '100', '580', 1, '2020-02-17 11:14:41'),
(350, 1, 'kit01', 'Instalacion de kit de 4 camaras anticipo 3600 resta 3600', 'vistas/img/productos/default/anonymous.png', 2, '1000', '3600', 1, '2020-02-18 16:32:38'),
(351, 1, 'pantalla', 'PANTALLA HP V194', 'vistas/img/productos/default/anonymous.png', 0, '1000', '1695', 2, '2020-02-24 18:24:17'),
(352, 13, 'PULPO', 'PULPO 8 ENTRADAS', 'vistas/img/productos/PULPO/298.jpg', 21, '50', '89', 2, '2020-03-30 16:29:52'),
(353, 3, 'EXTENSOR 01', 'EXTENSOR USB POR UTP RJ45 ANTICIPO 200 RESTA 115', 'vistas/img/productos/default/anonymous.png', 3, '100', '315', 0, '2020-03-03 11:29:37'),
(354, 2, 'Splinter01', 'Splintter Divisor De Señal HDMI', 'vistas/img/productos/default/anonymous.png', 0, '100', '250', 1, '2020-03-13 16:36:16'),
(355, 3, 'CABLEOPTICO', 'CABLE DE AUDIO OPTICO DE 1M', 'vistas/img/productos/default/anonymous.png', 8, '50', '78', 0, '2020-03-03 11:22:02'),
(356, 3, 'cableo2', '115 RESTANTE PRODUCTO EXTENSOR USB POR RJ45', 'vistas/img/productos/default/anonymous.png', 0, '50', '115', 1, '2020-03-03 14:24:17'),
(357, 1, 'cam012', 'Anticipo camaras de vigilancia 3500 resta 3500', 'vistas/img/productos/default/anonymous.png', 0, '1000', '3500', 1, '2020-03-03 19:23:36'),
(358, 3, 'kit', 'kit de antena amplificadora  restante pagado', 'vistas/img/productos/default/anonymous.png', 1, '100', '1850', 1, '2020-03-12 15:12:53'),
(360, 3, 'kit', 'kit de antena amplificadora  restante pagado', 'vistas/img/productos/default/anonymous.png', 1, '100', '1850', 0, '2020-03-12 15:12:53'),
(361, 12, 'mouse', 'MOUSE NEGRO GREEN LEAF', 'vistas/img/productos/default/anonymous.png', 0, '20', '79.9', 1, '2020-03-12 16:27:02'),
(362, 7, 'laptop hp', 'LAPTOP HP 240G Y SOPORTE VENTILADOR 4200 ANTICIPO 2100', 'vistas/img/productos/default/anonymous.png', 0, '1000', '2100', 2, '2020-03-13 18:21:17'),
(363, 3, 'case', 'CASE DISCO DURO SATA35', 'vistas/img/productos/default/anonymous.png', 0, '100', '480', 1, '2020-03-17 14:51:33'),
(364, 7, 'cartucho', '2 CARTUCHOS', 'vistas/img/productos/default/anonymous.png', 0, '100', '560', 1, '2020-03-18 12:13:04'),
(365, 3, 'con1', 'convertidor pc', 'vistas/img/productos/default/anonymous.png', 1, '10', '50', 0, '2020-03-23 13:08:30'),
(366, 7, 'man01', 'mantenimiento pv', 'vistas/img/productos/default/anonymous.png', 0, '100', '200', 1, '2020-03-23 13:22:58'),
(367, 7, 'convertidor', 'convertidor midi a vga anticipo 240 resta 240', 'vistas/img/productos/default/anonymous.png', 0, '100', '240', 1, '2020-03-23 18:15:23'),
(368, 3, 'lap01', 'LAPTOP HP G40 ANTICIPO 1900 Y RESTA 1900', 'vistas/img/productos/default/anonymous.png', 0, '1000', '1900', 1, '2020-03-23 18:35:08'),
(369, 2, 'DVR02', 'DVR 8 CANALES S08TURBOL EPCOM', 'vistas/img/productos/default/anonymous.png', 0, '150', '3335', 1, '2020-03-25 17:52:27'),
(370, 3, 'dahua', 'VIDEO BALUM DAHUA', 'vistas/img/productos/default/anonymous.png', 4, '50', '70', 4, '2020-03-26 11:24:05'),
(371, 7, 'servicio05', 'MAntenimiento preventivo anticipo 175 y resta 175', 'vistas/img/productos/default/anonymous.png', 0, '100', '175', 2, '2020-03-27 14:23:58'),
(373, 3, '123', 'cable utp bueno ', 'Hola', 5, '500 ', '9050', 0, '2021-02-19/13:28:43.157'),
(375, 3, '5555', 'Cable de red prefabricado', 'hola', 8, '20', '600', 0, 'hola'),
(380, 1, '1236', 'hola', 'Hola', 3, '600', '900', 0, '2021-02-21/19:06:25.762'),
(381, 1, '123', 'chido', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQE', 3, '8', '900', 0, '2021-02-24/13:40:49.471'),
(382, 1, '7', 'jdj', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/2wBDAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/wAARCALQBQADASIA\nAhEBAxEB/8QAHwABAAEDBQEB', 6, '8', '9', 0, '2021-02-24/14:02:45.795'),
(383, 1, '44', 'g', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/2wBDAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/wAARCAZAAuIDASIA\nAhEBAxEB/8QAHwAAAQUBAQEB', 3, '9', '0', 0, '2021-02-24/22:22:03.528'),
(384, 1, '6', 'b', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/2wBDAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/wAARCALQBQADASIA\nAhEBAxEB/8QAHwAAAQQCAwEB', 6, '8', '99', 0, '2021-02-24/22:51:11.368'),
(385, 1, '55', 'g', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/2wBDAQEBAQEBAQEBAQEBAQEBAQEBAQEB\nAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQH/wAARCAODBj8DASIA\nAhEBAxEB/8QAHwAAAQQDAQEB', 8, '88', '99', 0, '2021-02-25/00:35:57.815'),
(386, 1, 'ho', 'y', 'content://media/external/images/media/141311', 5, '6', '9', 0, '2021-02-25/09:21:06.189'),
(387, 1, '8', 'nose', 'content://media/external/images/media/150254', 6, '8', '9', 0, '2021-02-25/14:23:17.985'),
(388, 1, '7', 'hola', 'content://media/external/images/media/141146', 7, '9', '0', 0, '2021-02-25/14:27:53.661');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu`
--

CREATE TABLE `usu` (
  `id` int(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usu`
--

INSERT INTO `usu` (`id`, `nombre`, `contrasena`, `correo`) VALUES
(1, 'Hola', '123', '123@gmail.com '),
(2, '', '', ''),
(3, 'Gol', '123', '123@gmail.com '),
(4, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5audRCr3mMZMvcCPf7OvInwL9hxZPDI8iu', 'Administrador', 'vistas/img/usuarios/admin/974.jpg', 1, '2020-09-21 10:07:02', '2020-09-21 15:07:02'),
(60, 'Abraham Alexis Rincón Guillén', 'arincong', '$2a$07$asxx54ahjppf45sd87a5auBinln/gcqXJJPS4J6OBd7e0F/qCvilO', 'Administrador', 'vistas/img/usuarios/arincong/269.jpg', 1, '2020-03-31 12:28:49', '2020-03-31 17:28:49'),
(61, 'Luis Antonio Espinosa Gómez', 'lespinosag', '$2a$07$asxx54ahjppf45sd87a5auagG2T8.Z.c/GFCukN.EcCmBGPOmjB/.', 'Vendedor', 'vistas/img/usuarios/lespinosag/530.jpg', 1, '2020-03-31 12:29:08', '2020-03-31 17:29:08'),
(62, 'Abel Ramos Gómez', 'aramosg', '$2a$07$asxx54ahjppf45sd87a5auOrLbS7wu1wHlBGh3QHDQ8wlYyypWVdi', 'Vendedor', 'vistas/img/usuarios/aramosg/873.jpg', 0, '2019-12-15 11:39:28', '2019-12-15 17:09:57'),
(63, 'Ambar Irene Flores Montero', 'Ambar', '$2a$07$asxx54ahjppf45sd87a5auiTyHeFc62J3E31wmQAyIhapsXaUBXoS', 'Vendedor', '', 1, '2020-02-29 11:01:05', '2020-02-29 16:01:05'),
(64, 'José Daniel Flores Montero', 'Pepe', '$2a$07$asxx54ahjppf45sd87a5auZFOpaT198YCejpN6FlP.Mt2p.t6G5sG', 'Vendedor', '', 1, '2020-03-29 15:10:15', '2020-03-29 20:10:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(44, 10005, 19, 60, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"76\",\"precio\":\"5\",\"total\":\"20\"},{\"id\":\"135\",\"descripcion\":\"CONECTOR RJ 11 POR PIEZA\",\"cantidad\":\"6\",\"stock\":\"84\",\"precio\":\"2\",\"total\":\"12\"}]', 0, 32, 32, 'Efectivo', '2019-10-01 15:32:40'),
(45, 10006, 19, 60, '[{\"id\":\"158\",\"descripcion\":\"ADAPTADOR USB TPLINK\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"285\",\"total\":\"285\"}]', 0, 285, 285, 'Efectivo', '2019-10-02 19:34:18'),
(46, 10007, 19, 60, '[{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2019-10-03 01:08:09'),
(47, 10008, 19, 1, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"25\",\"stock\":\"260\",\"precio\":\"8\",\"total\":\"200\"},{\"id\":\"78\",\"descripcion\":\"MICRÓFONO CON CANCELACIÓN DE RUIDO DE ALTA FIDELIDAD\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"140\",\"total\":\"140\"},{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 VCD\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"98\",\"total\":\"98\"},{\"id\":\"77\",\"descripcion\":\"CONECTOR DE VIDEO RCA MACHO\",\"cantidad\":\"2\",\"stock\":\"28\",\"precio\":\"17\",\"total\":\"34\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"85\",\"precio\":\"14\",\"total\":\"14\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"94\",\"precio\":\"14\",\"total\":\"14\"}]', 0, 500, 500, 'Efectivo', '2019-10-05 16:10:16'),
(48, 10009, 19, 1, '[{\"id\":\"207\",\"descripcion\":\"MEMORIA MICRO SD KINGSTON 32GB 32 GB NEGRO\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"164\",\"total\":\"164\"},{\"id\":\"197\",\"descripcion\":\"MEMORIA MICRO SD 32GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"100\",\"total\":\"100\"},{\"id\":\"64\",\"descripcion\":\"FORMATEO DE COMPUTADORA SIN RESPALDO\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"400\",\"total\":\"400\"}]', 0, 664, 664, 'Efectivo', '2019-10-05 18:11:53'),
(49, 10010, 19, 1, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"26\",\"precio\":\"5\",\"total\":\"10\"},{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"4\",\"stock\":\"256\",\"precio\":\"8\",\"total\":\"32\"},{\"id\":\"234\",\"descripcion\":\"CRIMPEADO DE CONECTOR\",\"cantidad\":\"2\",\"stock\":\"9999998\",\"precio\":\"5\",\"total\":\"10\"}]', 0, 52, 52, 'Efectivo', '2019-10-05 21:00:53'),
(50, 10011, 19, 1, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"3\",\"stock\":\"23\",\"precio\":\"5\",\"total\":\"15\"}]', 0, 15, 15, 'Efectivo', '2019-10-05 21:03:16'),
(51, 10012, 19, 61, '[{\"id\":\"175\",\"descripcion\":\"EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2019-10-08 23:40:13'),
(52, 10013, 19, 60, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"6\",\"stock\":\"17\",\"precio\":\"4\",\"total\":\"24\"}]', 0, 24, 24, 'Efectivo', '2019-10-09 15:35:25'),
(53, 10014, 19, 60, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2019-10-09 22:35:40'),
(54, 10015, 19, 60, '[{\"id\":\"197\",\"descripcion\":\"MEMORIA MICRO SD 32GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2019-10-10 20:24:06'),
(55, 10016, 19, 61, '[{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2019-10-11 00:12:22'),
(56, 10017, 19, 61, '[{\"id\":\"175\",\"descripcion\":\"EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2019-10-11 15:25:09'),
(58, 10019, 19, 62, '[{\"id\":\"141\",\"descripcion\":\"CABLE UTP CAT 5E POR METRO ENERLINE\",\"cantidad\":\"5\",\"stock\":\"1\",\"precio\":\"4\",\"total\":\"20\"}]', 0, 20, 20, 'Efectivo', '2019-10-12 15:45:25'),
(59, 10020, 19, 62, '[{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2019-10-12 17:20:34'),
(60, 10021, 19, 60, '[{\"id\":\"160\",\"descripcion\":\"REPETIDOR DE SEÑAL GREEN LEAF\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"398\",\"total\":\"398\"},{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 588, 588, 'Efectivo', '2019-10-14 18:46:47'),
(61, 10022, 19, 61, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2019-10-14 22:33:15'),
(62, 10023, 19, 61, '[{\"id\":\"62\",\"descripcion\":\"Kit de 4 Cámaras 720p  Hilook SYSCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"2398\",\"total\":\"2398\"}]', 0, 2398, 2398, 'Efectivo', '2019-10-14 23:20:20'),
(63, 10024, 19, 60, '[{\"id\":\"111\",\"descripcion\":\"CANDADO CON ALARMA\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"179\",\"total\":\"179\"}]', 0, 179, 179, 'Efectivo', '2019-10-15 15:47:56'),
(64, 10025, 19, 60, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"230\",\"total\":\"230\"},{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 315, 315, 'Efectivo', '2019-10-15 15:55:31'),
(65, 10026, 19, 61, '[{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 VCD\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 98, 98, 'Efectivo', '2019-10-16 00:56:58'),
(66, 10027, 19, 61, '[{\"id\":\"230\",\"descripcion\":\"CAMARA BALA 1080P HILOOK THCB120PC\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"392.229\",\"total\":\"392.23\"},{\"id\":\"73\",\"descripcion\":\"CÁMARA METÁLICA BLANCO ANALOGA TIPO BALA DE 1080P EPCOM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"525\",\"total\":\"525\"},{\"id\":\"72\",\"descripcion\":\"CÁMARA METÁLICA NEGRO ANALOGA BALA 1080P EPCOM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"525\",\"total\":\"525\"},{\"id\":\"94\",\"descripcion\":\"VIDEO BALUM EPCOM\",\"cantidad\":\"5\",\"stock\":\"13\",\"precio\":\"69\",\"total\":\"345\"}]', 0, 1787.23, 1787.23, 'TC-035779', '2019-10-16 16:05:42'),
(67, 10028, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"Teléfono con Pantalla y Altavoz\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2019-10-16 18:26:50'),
(68, 10029, 19, 61, '[{\"id\":\"160\",\"descripcion\":\"REPETIDOR DE SEÑAL GREEN LEAF\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"398\",\"total\":\"398\"}]', 0, 398, 398, 'Efectivo', '2019-10-17 23:57:41'),
(69, 10030, 19, 62, '[{\"id\":\"173\",\"descripcion\":\"CABLE TRIFASICO DE CORRIENTE ALIMENTACION\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2019-10-19 17:54:33'),
(70, 10031, 19, 62, '[{\"id\":\"117\",\"descripcion\":\"CONECTOR RJ 45 CAT5 BOLSA CON 100 PZ\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"120\",\"total\":\"120\"}]', 0, 120, 120, 'Efectivo', '2019-10-19 19:37:01'),
(71, 10032, 19, 62, '[{\"id\":\"173\",\"descripcion\":\"CABLE TRIFASICO DE CORRIENTE ALIMENTACION\",\"cantidad\":\"2\",\"stock\":\"3\",\"precio\":\"40\",\"total\":\"80\"},{\"id\":\"174\",\"descripcion\":\"CABLE VGA A VGA\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"50\",\"total\":\"50\"}]', 0, 130, 130, 'Efectivo', '2019-10-19 22:55:27'),
(72, 10033, 19, 60, '[{\"id\":\"221\",\"descripcion\":\"BATERIA AAA XTRON PIEZA\",\"cantidad\":\"3\",\"stock\":\"12\",\"precio\":\"5\",\"total\":\"15\"}]', 0, 15, 15, 'Efectivo', '2019-10-21 16:12:23'),
(73, 10034, 19, 60, '[{\"id\":\"141\",\"descripcion\":\"CABLE UTP CAT 5E POR METRO ENERLINE\",\"cantidad\":\"6\",\"stock\":\"0\",\"precio\":\"4\",\"total\":\"24\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"15\",\"precio\":\"4\",\"total\":\"8\"}]', 0, 32, 32, 'Efectivo', '2019-10-22 17:13:55'),
(74, 10035, 19, 60, '[{\"id\":\"236\",\"descripcion\":\"Teléfono con Pantalla y Altavoz\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2019-10-23 22:35:15'),
(75, 10036, 19, 60, '[{\"id\":\"221\",\"descripcion\":\"BATERIA AAA XTRON PIEZA\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"5\",\"total\":\"5\"}]', 0, 5, 5, 'Efectivo', '2019-10-24 15:18:46'),
(76, 10037, 19, 60, '[{\"id\":\"62\",\"descripcion\":\"Kit de 4 Cámaras 720p  Hilook KIT7204BP\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"2398\",\"total\":\"2398\"}]', 0, 2398, 2398, 'TD-460547395148', '2019-10-25 18:57:38'),
(77, 10038, 19, 62, '[{\"id\":\"235\",\"descripcion\":\"CARGADOR PARA LAPTOP ACER 19V \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"380.1\",\"total\":\"380.1\"}]', 0, 380.1, 380.1, 'Efectivo', '2019-10-26 23:48:20'),
(78, 10039, 19, 60, '[{\"id\":\"79\",\"descripcion\":\"MICRÓFONO CON CANCELACIÓN DE RUIDO DE ALTA FIDELIDAD 50 A 120 M2\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"120\",\"total\":\"120\"}]', 0, 120, 120, 'Efectivo', '2019-10-28 20:01:38'),
(79, 10040, 19, 60, '[{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 VCD\",\"cantidad\":\"3\",\"stock\":\"7\",\"precio\":\"98\",\"total\":\"294\"},{\"id\":\"79\",\"descripcion\":\"MICRÓFONO CON CANCELACIÓN DE RUIDO DE ALTA FIDELIDAD 50 A 120 M2\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"120\",\"total\":\"120\"},{\"id\":\"77\",\"descripcion\":\"CONECTOR DE VIDEO RCA MACHO\",\"cantidad\":\"2\",\"stock\":\"26\",\"precio\":\"17\",\"total\":\"34\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"84\",\"precio\":\"14\",\"total\":\"14\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"93\",\"precio\":\"14\",\"total\":\"14\"}]', 0, 476, 476, 'Efectivo', '2019-10-28 20:12:32'),
(80, 10041, 19, 60, '[{\"id\":\"223\",\"descripcion\":\"CAMARA BALA 720P EPCOM METALICA COLOR BLANCO \",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"408\",\"total\":\"408\"},{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"30\",\"stock\":\"226\",\"precio\":\"8\",\"total\":\"240\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"83\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"92\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 VCD\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"98\",\"total\":\"98\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"550\",\"total\":\"550\"},{\"id\":\"94\",\"descripcion\":\"VIDEO BALUM EPCOM\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"69\",\"total\":\"69\"},{\"id\":\"102\",\"descripcion\":\"DVR 4 CANALES S04TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"923\",\"total\":\"923\"},{\"id\":\"168\",\"descripcion\":\"CABLE AUXILIAR 3P5 MM\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"27\",\"total\":\"27\"}]', 0, 2345, 2345, 'Efectivo', '2019-10-30 19:16:45'),
(81, 10042, 19, 60, '[{\"id\":\"158\",\"descripcion\":\"ADAPTADOR USB TPLINK\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"285\",\"total\":\"285\"}]', 0, 285, 285, 'Efectivo', '2019-10-30 19:35:07'),
(82, 10043, 19, 60, '[{\"id\":\"145\",\"descripcion\":\"ANYCAST M4 PLUS \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"480\",\"total\":\"480\"},{\"id\":\"138\",\"descripcion\":\"CABLE CONVERTIDOR VGA A RCA\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"78\",\"total\":\"78\"}]', 0, 558, 558, 'TD-12345', '2019-10-30 20:20:34'),
(83, 10044, 19, 60, '[{\"id\":\"111\",\"descripcion\":\"CANDADO CON ALARMA\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"179\",\"total\":\"179\"}]', 0, 179, 179, 'Efectivo', '2019-10-31 19:58:22'),
(84, 10045, 19, 60, '[{\"id\":\"161\",\"descripcion\":\"SENSOR CON ALARMA\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2019-10-31 20:06:42'),
(85, 10046, 19, 60, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"5\",\"stock\":\"221\",\"precio\":\"8\",\"total\":\"40\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"5\",\"total\":\"10\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"81\",\"precio\":\"15\",\"total\":\"30\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"90\",\"precio\":\"15\",\"total\":\"30\"}]', 0, 110, 110, 'Efectivo', '2019-10-31 21:12:00'),
(86, 10047, 19, 61, '[{\"id\":\"176\",\"descripcion\":\"ADAPTADOR USB WIFI NANO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-11-01 17:44:46'),
(87, 10048, 19, 61, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"9\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 20, 20, 'Efectivo', '2019-11-01 19:48:56'),
(88, 10049, 19, 61, '[{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION \",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2019-11-01 19:59:16'),
(89, 10050, 19, 61, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"230\",\"total\":\"230\"}]', 0, 230, 230, 'Efectivo', '2019-11-01 20:11:50'),
(91, 10051, 19, 62, '[{\"id\":\"147\",\"descripcion\":\"ACCESS POINT TENDA A9 \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"408.8\",\"total\":\"408.8\"}]', 0, 408.8, 408.8, 'Efectivo', '2019-11-03 01:13:17'),
(92, 10052, 18, 60, '[{\"id\":\"173\",\"descripcion\":\"CABLE TRIFASICO DE CORRIENTE ALIMENTACION\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2019-11-04 20:36:16'),
(93, 10053, 19, 61, '[{\"id\":\"103\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"1270\",\"total\":\"1270\"},{\"id\":\"244\",\"descripcion\":\"FUENTE DE PODER  12V 6 A\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"450\",\"total\":\"450\"},{\"id\":\"106\",\"descripcion\":\"PULPO HEMBRA DE 4 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"59\",\"total\":\"59\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"550\",\"total\":\"550\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"8\",\"stock\":\"82\",\"precio\":\"15\",\"total\":\"120\"}]', 0, 2449, 2449, 'TD-12345', '2019-11-05 21:51:36'),
(94, 10054, 19, 60, '[{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2019-11-06 21:28:46'),
(95, 10055, 19, 60, '[{\"id\":\"126\",\"descripcion\":\"CABLE HDMI DE 1P8 M\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"66\",\"total\":\"132\"},{\"id\":\"174\",\"descripcion\":\"CABLE VGA A VGA\",\"cantidad\":\"2\",\"stock\":\"12\",\"precio\":\"50\",\"total\":\"100\"}]', 0, 232, 232, 'Efectivo', '2019-11-07 16:43:29'),
(96, 10056, 19, 60, '[{\"id\":\"205\",\"descripcion\":\"PRESENTADOR INALAMBRICO CON APUNTADOR LASER\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"240\",\"total\":\"240\"}]', 0, 240, 240, 'Efectivo', '2019-11-07 19:19:28'),
(97, 10057, 19, 60, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-11-07 19:31:43'),
(98, 10058, 19, 60, '[{\"id\":\"62\",\"descripcion\":\"KIT DE 4 CAMARAS HILOOK KIT7204BP\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"2398\",\"total\":\"2398\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"550\",\"total\":\"550\"}]', 0, 2948, 2948, 'Efectivo', '2019-11-08 17:58:10'),
(99, 10059, 19, 60, '[{\"id\":\"92\",\"descripcion\":\"CONECTOR DE PLUG 3P5 MM A JACK 2P5 MM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"50\",\"total\":\"50\"}]', 0, 50, 50, 'Efectivo', '2019-11-08 21:17:19'),
(101, 10060, 19, 62, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2019-11-10 00:30:15'),
(102, 10061, 19, 60, '[{\"id\":\"62\",\"descripcion\":\"KIT DE 4 CAMARAS HILOOK KIT7204BP\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"2398\",\"total\":\"4796\"}]', 0, 4796, 4796, 'Efectivo', '2019-11-12 17:34:31'),
(103, 10062, 19, 60, '[{\"id\":\"251\",\"descripcion\":\"DISCO DURO GENERICO 1000 GB SATA 3P5\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"1050\",\"total\":\"2100\"}]', 0, 2100, 2100, 'Efectivo', '2019-11-12 17:40:04'),
(104, 10063, 19, 61, '[{\"id\":\"252\",\"descripcion\":\"CONECTORES BNC \",\"cantidad\":\"8\",\"stock\":\"22\",\"precio\":\"20\",\"total\":\"160\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"4\",\"stock\":\"77\",\"precio\":\"15\",\"total\":\"60\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"4\",\"stock\":\"78\",\"precio\":\"15\",\"total\":\"60\"}]', 0, 280, 280, 'Efectivo', '2019-11-13 00:02:12'),
(105, 10064, 19, 61, '[{\"id\":\"260\",\"descripcion\":\"Laptop DELL Vostro 14 3000\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"14400\",\"total\":\"28800\"}]', 0, 28800, 28800, 'TD-12345', '2019-11-13 02:02:43'),
(106, 10065, 19, 60, '[{\"id\":\"256\",\"descripcion\":\"CABLE UTP CAT 5E POR METRO KAI PING\",\"cantidad\":\"10\",\"stock\":\"295\",\"precio\":\"4\",\"total\":\"40\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"98\",\"precio\":\"5\",\"total\":\"10\"}]', 0, 50, 50, 'Efectivo', '2019-11-14 21:40:38'),
(107, 10066, 19, 60, '[{\"id\":\"176\",\"descripcion\":\"ADAPTADOR USB WIFI NANO\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-11-14 23:59:02'),
(108, 10067, 19, 60, '[{\"id\":\"261\",\"descripcion\":\"CABLE USB PARA IPHONE\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"70\",\"total\":\"70\"},{\"id\":\"262\",\"descripcion\":\"OTG V8\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"25\",\"total\":\"25\"}]', 0, 95, 95, 'Efectivo', '2019-11-15 01:18:44'),
(109, 10068, 19, 61, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-11-15 21:50:13'),
(110, 10069, 19, 61, '[{\"id\":\"88\",\"descripcion\":\"CAMARA DOMO LE7TURBOWP EPCOM 720P BLANCA INTERIOR \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"296\",\"total\":\"296\"}]', 0, 296, 296, 'TD-12345', '2019-11-15 22:25:05'),
(111, 10070, 19, 62, '[{\"id\":\"257\",\"descripcion\":\"ADAPTADOR USB CON 4 PUERTOS HUB 4 PUERTOS\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"80\",\"total\":\"80\"},{\"id\":\"253\",\"descripcion\":\"ADAPTADOR USB CON 3 PUERTOS HUB USB\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 120, 120, 'Efectivo', '2019-11-16 18:10:34'),
(112, 10071, 19, 62, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2019-11-16 18:14:17'),
(113, 10072, 19, 62, '[{\"id\":\"174\",\"descripcion\":\"CABLE VGA A VGA\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"50\",\"total\":\"50\"}]', 0, 50, 50, 'Efectivo', '2019-11-17 17:44:20'),
(114, 10073, 19, 1, '[{\"id\":\"267\",\"descripcion\":\"tp link de 8 puertos\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"297\",\"total\":\"297\"},{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"5\",\"stock\":\"216\",\"precio\":\"8\",\"total\":\"40\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"96\",\"precio\":\"5\",\"total\":\"10\"}]', 0, 347, 347, 'Efectivo', '2019-11-17 18:28:34'),
(115, 10074, 19, 1, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2019-11-17 20:07:22'),
(116, 10075, 19, 60, '[{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2019-11-19 17:10:57'),
(117, 10076, 19, 60, '[{\"id\":\"268\",\"descripcion\":\"SOPORTE TRIPIE PARA CELULARES UNIVERSAL\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"380\",\"total\":\"380\"},{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"115\",\"total\":\"115\"},{\"id\":\"207\",\"descripcion\":\"MEMORIA MICRO SD KINGSTON 32GB 32 GB NEGRO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"164\",\"total\":\"164\"},{\"id\":\"254\",\"descripcion\":\"CAMARA DEPORTIVA GO PRO \",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 1309, 1309, 'Efectivo', '2019-11-19 19:00:57'),
(118, 10077, 19, 61, '[{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-11-19 21:44:18'),
(119, 10078, 19, 61, '[{\"id\":\"176\",\"descripcion\":\"ADAPTADOR USB WIFI NANO\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'TD-12345', '2019-11-20 02:03:25'),
(120, 10079, 19, 60, '[{\"id\":\"162\",\"descripcion\":\"DIVISOR DE AUDIO \",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 98, 98, 'Efectivo', '2019-11-20 17:28:08'),
(121, 10080, 19, 60, '[{\"id\":\"253\",\"descripcion\":\"ADAPTADOR USB CON 3 PUERTOS HUB USB\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2019-11-20 17:56:34'),
(122, 10081, 19, 61, '[{\"id\":\"94\",\"descripcion\":\"VIDEO BALUM EPCOM\",\"cantidad\":\"3\",\"stock\":\"25\",\"precio\":\"69\",\"total\":\"207\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"3\",\"stock\":\"74\",\"precio\":\"15\",\"total\":\"45\"}]', 0, 252, 252, 'Efectivo', '2019-11-20 23:08:15'),
(123, 10082, 19, 60, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-11-21 16:37:45'),
(124, 10083, 19, 60, '[{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 V 1 A\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 98, 98, 'Efectivo', '2019-11-21 19:24:40'),
(125, 10084, 19, 60, '[{\"id\":\"78\",\"descripcion\":\"MICROFONO CON CANCELACIÓN DE RUIDO DE ALTA FIDELIDAD\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"140\",\"total\":\"140\"},{\"id\":\"77\",\"descripcion\":\"CONECTOR DE VIDEO RCA MACHO\",\"cantidad\":\"2\",\"stock\":\"40\",\"precio\":\"17\",\"total\":\"34\"}]', 0, 174, 174, 'Efectivo', '2019-11-21 19:37:38'),
(126, 10085, 19, 60, '[{\"id\":\"270\",\"descripcion\":\"BATERIA AA TRITON PIEZA\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"5\",\"total\":\"5\"},{\"id\":\"221\",\"descripcion\":\"BATERIA AAA XTRON PIEZA\",\"cantidad\":\"2\",\"stock\":\"9\",\"precio\":\"5\",\"total\":\"10\"}]', 0, 15, 15, 'Efectivo', '2019-11-21 20:52:06'),
(127, 10086, 19, 61, '[{\"id\":\"265\",\"descripcion\":\"AIRE COMPRIMIDO \",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2019-11-21 22:52:21'),
(129, 10087, 19, 61, '[{\"id\":\"173\",\"descripcion\":\"CABLE TRIFASICO DE CORRIENTE ALIMENTACION\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2019-11-22 01:48:46'),
(130, 10088, 19, 60, '[{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"550\",\"total\":\"550\"}]', 0, 550, 550, 'Efectivo', '2019-11-22 20:00:31'),
(131, 10089, 19, 62, '[{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"3\",\"stock\":\"71\",\"precio\":\"15\",\"total\":\"45\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"3\",\"stock\":\"75\",\"precio\":\"15\",\"total\":\"45\"},{\"id\":\"252\",\"descripcion\":\"CONECTORES BNC \",\"cantidad\":\"6\",\"stock\":\"16\",\"precio\":\"20\",\"total\":\"120\"},{\"id\":\"106\",\"descripcion\":\"PULPO HEMBRA DE 4 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"59\",\"total\":\"59\"}]', 0, 269, 269, 'Efectivo', '2019-11-23 19:36:21'),
(132, 10090, 19, 62, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"230\",\"total\":\"230\"}]', 0, 230, 230, 'Efectivo', '2019-11-23 22:25:24'),
(133, 10091, 19, 62, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"230\",\"total\":\"230\"}]', 0, 230, 230, 'Efectivo', '2019-11-24 17:51:51'),
(134, 10092, 19, 62, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"14\",\"stock\":\"202\",\"precio\":\"8\",\"total\":\"112\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"94\",\"precio\":\"5\",\"total\":\"10\"}]', 9.76, 122, 131.76, 'Efectivo', '2019-11-24 20:04:28'),
(135, 10093, 19, 62, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"4\",\"stock\":\"198\",\"precio\":\"8\",\"total\":\"32\"}]', 6.08, 32, 38.08, 'Efectivo', '2019-11-24 21:08:15'),
(136, 10094, 19, 60, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-11-25 18:23:07'),
(137, 10095, 19, 61, '[{\"id\":\"162\",\"descripcion\":\"DIVISOR DE AUDIO \",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 98, 98, 'Efectivo', '2019-11-25 21:32:41'),
(138, 10096, 19, 61, '[{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2019-11-26 00:37:03'),
(139, 10097, 19, 61, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2019-11-26 02:07:42'),
(140, 10098, 19, 61, '[{\"id\":\"103\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1270\",\"total\":\"1270\"}]', 0, 1270, 1270, 'Efectivo', '2019-11-26 16:16:12'),
(141, 10099, 19, 61, '[{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-11-26 21:16:35'),
(142, 10100, 19, 61, '[{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-11-27 00:28:39'),
(143, 10101, 18, 60, '[{\"id\":\"271\",\"descripcion\":\"PILA PARA RELOJ AG4 LR621 377 SR626\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"10\",\"total\":\"10\"}]', 0, 10, 10, 'Efectivo', '2019-11-28 01:15:55'),
(144, 10102, 19, 60, '[{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-11-28 17:25:03'),
(145, 10103, 19, 61, '[{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"550\",\"total\":\"550\"}]', 0, 550, 550, 'Efectivo', '2019-11-28 23:59:15'),
(146, 10104, 19, 60, '[{\"id\":\"258\",\"descripcion\":\"CABLE UTP CAT 5E 100 METROS GENERICO \",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"350\",\"total\":\"350\"}]', 0, 350, 350, 'Efectivo', '2019-11-29 23:38:11'),
(147, 10105, 19, 61, '[{\"id\":\"146\",\"descripcion\":\"ACCESS POINT TP LINK TLWA801ND\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 650, 650, 'TD-123456', '2019-11-29 22:40:00'),
(148, 10106, 19, 61, '[{\"id\":\"90\",\"descripcion\":\"KIT DE 4 CAMARAS EPCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"2450\",\"total\":\"2450\"}]', 0, 2450, 2450, 'Efectivo', '2019-11-29 23:38:45'),
(149, 10107, 19, 61, '[{\"id\":\"94\",\"descripcion\":\"VIDEO BALUM EPCOM\",\"cantidad\":\"2\",\"stock\":\"23\",\"precio\":\"69\",\"total\":\"138\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"69\",\"precio\":\"15\",\"total\":\"30\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"73\",\"precio\":\"15\",\"total\":\"30\"}]', 0, 198, 198, 'TD-12345', '2019-11-30 00:06:56'),
(150, 10108, 19, 62, '[{\"id\":\"178\",\"descripcion\":\"CAMARA WIFI V380\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"800\",\"total\":\"800\"}]', 0, 800, 800, 'Efectivo', '2019-11-30 21:38:04'),
(151, 10109, 19, 61, '[{\"id\":\"256\",\"descripcion\":\"CABLE UTP CAT 5E POR METRO KAI PING\",\"cantidad\":\"30\",\"stock\":\"265\",\"precio\":\"4\",\"total\":\"120\"}]', 0, 120, 120, 'Efectivo', '2019-12-03 01:00:08'),
(152, 10110, 19, 61, '[{\"id\":\"278\",\"descripcion\":\"LAMPARA LED USB\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"25\",\"total\":\"25\"}]', 0, 25, 25, 'Efectivo', '2019-12-04 23:27:45'),
(153, 10111, 19, 61, '[{\"id\":\"271\",\"descripcion\":\"PILA PARA RELOJ AG4 LR621 377 SR626\",\"cantidad\":\"4\",\"stock\":\"3\",\"precio\":\"10\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2019-12-05 19:49:56'),
(154, 10112, 19, 61, '[{\"id\":\"274\",\"descripcion\":\"FUENTE DE PODER 12V 2A\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"87\",\"total\":\"87\"}]', 0, 87, 87, 'Efectivo', '2019-12-06 18:40:34'),
(155, 10113, 19, 61, '[{\"id\":\"174\",\"descripcion\":\"CABLE VGA A VGA\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"50\",\"total\":\"50\"}]', 0, 50, 50, 'Efectivo', '2019-12-06 19:53:16'),
(156, 10114, 19, 60, '[{\"id\":\"227\",\"descripcion\":\"MEMORIA USB ADATA DE 32GB\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"120\",\"total\":\"120\"}]', 0, 120, 120, 'Efectivo', '2019-12-09 19:22:33'),
(157, 10115, 19, 60, '[{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-12-09 19:32:21'),
(158, 10116, 19, 60, '[{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"550\",\"total\":\"550\"}]', 0, 550, 550, 'Efectivo', '2019-12-10 01:10:26'),
(159, 10117, 19, 60, '[{\"id\":\"111\",\"descripcion\":\"CANDADO CON ALARMA\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"179\",\"total\":\"179\"}]', 0, 179, 179, 'Efectivo', '2019-12-10 18:45:17'),
(160, 10118, 19, 60, '[{\"id\":\"148\",\"descripcion\":\"MEMORIA MICRO SD 32 GB CLASE 10 BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"110\",\"total\":\"110\"},{\"id\":\"254\",\"descripcion\":\"CAMARA DEPORTIVA GO PRO \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 760, 760, 'Efectivo', '2019-12-11 19:46:57'),
(161, 10119, 19, 60, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"92\",\"precio\":\"5\",\"total\":\"10\"},{\"id\":\"256\",\"descripcion\":\"CABLE UTP CAT 5E POR METRO KAI PING\",\"cantidad\":\"1\",\"stock\":\"264\",\"precio\":\"4\",\"total\":\"4\"}]', 0, 14, 14, 'Efectivo', '2019-12-12 19:32:02'),
(162, 10120, 19, 60, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-12-12 19:33:09'),
(163, 10121, 19, 60, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-12-12 19:33:31'),
(164, 10122, 19, 60, '[{\"id\":\"279\",\"descripcion\":\"CAMARA PANORAMICA IP 360 MARCA ELEGATE\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"800\",\"total\":\"800\"}]', 0, 800, 800, 'Efectivo', '2019-12-12 19:36:35'),
(165, 10123, 19, 60, '[{\"id\":\"109\",\"descripcion\":\"ADAPTADOR DE MEMORIA MICRO SD \",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"30\",\"total\":\"30\"}]', 0, 30, 30, 'Efectivo', '2019-12-12 19:38:04'),
(166, 10124, 19, 60, '[{\"id\":\"285\",\"descripcion\":\"CARGADOR PARA LAPTOP HP G 14K PUNTA AZUL \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"245\",\"total\":\"245\"}]', 0, 245, 245, 'Efectivo', '2019-12-12 19:42:29'),
(167, 10125, 19, 60, '[{\"id\":\"287\",\"descripcion\":\"LENTES CELULAR CON TRIPIE SELFIE Y CONTROL REMOTO BLUETOOTH\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"198\",\"total\":\"198\"}]', 0, 198, 198, 'TD-123456', '2019-12-12 21:11:42'),
(168, 10126, 19, 60, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-12-12 23:11:23'),
(169, 10127, 19, 60, '[{\"id\":\"173\",\"descripcion\":\"CABLE TRIFASICO DE CORRIENTE ALIMENTACION\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"40\",\"total\":\"40\"},{\"id\":\"174\",\"descripcion\":\"CABLE VGA A VGA\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"50\",\"total\":\"50\"}]', 0, 90, 90, 'Efectivo', '2019-12-13 00:54:56'),
(170, 10128, 19, 60, '[{\"id\":\"263\",\"descripcion\":\"BOLIGRAFO ESPIA \",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"480\",\"total\":\"480\"},{\"id\":\"148\",\"descripcion\":\"MEMORIA MICRO SD 32 GB CLASE 10 BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"110\",\"total\":\"110\"}]', 0, 590, 590, 'Efectivo', '2019-12-13 17:04:57'),
(171, 10129, 19, 60, '[{\"id\":\"64\",\"descripcion\":\"FORMATEO DE COMPUTADORA SIN RESPALDO\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"400\",\"total\":\"400\"}]', 64, 400, 464, 'Efectivo', '2019-12-13 18:03:59'),
(172, 10130, 20, 60, '[{\"id\":\"102\",\"descripcion\":\"DVR 4 CANALES S04TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"923\",\"total\":\"923\"}]', 0, 923, 923, 'Efectivo', '2019-12-13 18:07:32'),
(173, 10131, 19, 1, '[{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"6\",\"stock\":\"67\",\"precio\":\"15\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2019-12-13 18:29:04'),
(174, 10132, 19, 1, '[{\"id\":\"173\",\"descripcion\":\"CABLE TRIFASICO DE CORRIENTE ALIMENTACION\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2019-12-13 23:32:41'),
(175, 10133, 19, 1, '[{\"id\":\"198\",\"descripcion\":\"DISCO DURO GENERICO 2000 GB SATA 3P5\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"1200\",\"total\":\"2400\"},{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 V 1 A\",\"cantidad\":\"2\",\"stock\":\"20\",\"precio\":\"98\",\"total\":\"196\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"88\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 2616, 2616, 'TD-003051', '2019-12-13 23:35:06'),
(176, 10134, 19, 1, '[{\"id\":\"295\",\"descripcion\":\"ANTENA YAGUI SMA PARA TELEFONO RURAL\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"980\",\"total\":\"980\"}]', 0, 980, 980, 'Efectivo', '2019-12-15 20:01:03'),
(177, 10135, 19, 1, '[{\"id\":\"148\",\"descripcion\":\"MEMORIA MICRO SD 32 GB CLASE 10 BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"110\",\"total\":\"110\"}]', 0, 110, 110, 'Efectivo', '2019-12-16 19:22:13'),
(178, 10136, 19, 1, '[{\"id\":\"298\",\"descripcion\":\"PILA CR2032\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"30\",\"total\":\"30\"}]', 0, 30, 30, 'Efectivo', '2019-12-16 19:35:09'),
(179, 10137, 19, 1, '[{\"id\":\"162\",\"descripcion\":\"DIVISOR DE AUDIO \",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 98, 98, 'Efectivo', '2019-12-16 19:57:22'),
(180, 10138, 18, 60, '[{\"id\":\"292\",\"descripcion\":\"Bateria Hp Oa03 Oa04 240 G2 250 G3 740715 001 746641 001\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"590\",\"total\":\"590\"}]', 0, 590, 590, 'TD-123456', '2019-12-16 20:32:22'),
(181, 10139, 19, 60, '[{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 V 1 A\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 98, 98, 'Efectivo', '2019-12-16 23:29:39'),
(182, 10140, 19, 60, '[{\"id\":\"119\",\"descripcion\":\"CONECTOR RJ45 CAT6 BOLSA CON 100 PZ\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"247\",\"total\":\"247\"}]', 0, 247, 247, 'TD-123456789', '2019-12-16 23:37:39'),
(183, 10141, 19, 60, '[{\"id\":\"175\",\"descripcion\":\"EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2019-12-17 16:00:25'),
(184, 10142, 19, 60, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-12-17 17:35:59'),
(185, 10143, 19, 60, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"230\",\"total\":\"230\"},{\"id\":\"148\",\"descripcion\":\"MEMORIA MICRO SD 32 GB CLASE 10 BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"110\",\"total\":\"110\"}]', 0, 340, 340, 'Efectivo', '2019-12-17 17:41:23'),
(186, 10144, 19, 60, '[{\"id\":\"176\",\"descripcion\":\"ADAPTADOR USB WIFI NANO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-12-17 17:51:01'),
(187, 10145, 19, 60, '[{\"id\":\"146\",\"descripcion\":\"ACCESS POINT TP LINK TLWA801ND\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 650, 650, 'Efectivo', '2019-12-17 21:34:44'),
(188, 10146, 19, 60, '[{\"id\":\"297\",\"descripcion\":\"PILA AAA\",\"cantidad\":\"1\",\"stock\":\"24\",\"precio\":\"8\",\"total\":\"8\"}]', 0, 8, 8, 'Efectivo', '2019-12-18 01:42:45'),
(189, 10147, 19, 60, '[{\"id\":\"178\",\"descripcion\":\"CAMARA WIFI V380\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"800\",\"total\":\"800\"},{\"id\":\"148\",\"descripcion\":\"MEMORIA MICRO SD 32 GB CLASE 10 BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"110\",\"total\":\"110\"}]', 0, 910, 910, 'TD-123456', '2019-12-18 17:18:27'),
(190, 10148, 19, 60, '[{\"id\":\"301\",\"descripcion\":\"DISCO DURO GENERICO 3000 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"1350\",\"total\":\"1350\"}]', 0, 1350, 1350, 'TD-123456', '2019-12-18 17:20:04'),
(191, 10149, 19, 60, '[{\"id\":\"279\",\"descripcion\":\"CAMARA PANORAMICA IP 360 MARCA ELEGATE\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"800\",\"total\":\"800\"}]', 0, 800, 800, 'TD-123', '2019-12-18 17:50:08'),
(192, 10150, 19, 60, '[{\"id\":\"265\",\"descripcion\":\"AIRE COMPRIMIDO \",\"cantidad\":\"2\",\"stock\":\"9\",\"precio\":\"100\",\"total\":\"200\"}]', 0, 200, 200, 'Efectivo', '2019-12-18 18:16:40'),
(193, 10151, 19, 61, '[{\"id\":\"126\",\"descripcion\":\"CABLE HDMI DE 1P8 M\",\"cantidad\":\"1\",\"stock\":\"21\",\"precio\":\"66\",\"total\":\"66\"}]', 0, 66, 66, 'Efectivo', '2019-12-18 22:47:27'),
(194, 10152, 19, 61, '[{\"id\":\"150\",\"descripcion\":\"MEMORIA USB ADATA UV128 32 GB USB 3P0 NEGRO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2019-12-19 18:07:03'),
(195, 10153, 19, 61, '[{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2019-12-19 18:08:43'),
(196, 10154, 19, 61, '[{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2019-12-19 18:09:47'),
(197, 10155, 19, 61, '[{\"id\":\"271\",\"descripcion\":\"PILA PARA RELOJ AG4 LR621 377 SR626\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"10\",\"total\":\"20\"}]', 0, 20, 20, 'Efectivo', '2019-12-19 20:33:58'),
(198, 10156, 19, 61, '[{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"2\",\"stock\":\"14\",\"precio\":\"148\",\"total\":\"296\"},{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 V 1 A\",\"cantidad\":\"2\",\"stock\":\"17\",\"precio\":\"98\",\"total\":\"196\"}]', 0, 492, 492, 'Efectivo', '2019-12-20 01:01:14'),
(199, 10157, 19, 61, '[{\"id\":\"300\",\"descripcion\":\"DISCO DURO ESTADO SOLIDO DE 240 GB BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"850\",\"total\":\"850\"}]', 0, 850, 850, 'Efectivo', '2019-12-20 16:52:30'),
(201, 10158, 19, 61, '[{\"id\":\"257\",\"descripcion\":\"ADAPTADOR USB CON 4 PUERTOS HUB 4 PUERTOS\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2019-12-20 19:20:54'),
(202, 10159, 19, 61, '[{\"id\":\"310\",\"descripcion\":\"CONVERTIDOR DE USB A SERIAL MANHATTAN\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"434\",\"total\":\"434\"}]', 0, 434, 434, 'Efectivo', '2019-12-20 20:56:45'),
(203, 10160, 19, 61, '[{\"id\":\"94\",\"descripcion\":\"VIDEO BALUM EPCOM\",\"cantidad\":\"2\",\"stock\":\"21\",\"precio\":\"69\",\"total\":\"138\"}]', 0, 138, 138, 'Efectivo', '2019-12-20 22:15:48'),
(204, 10161, 19, 61, '[{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2019-12-20 23:48:50'),
(205, 10162, 19, 60, '[{\"id\":\"314\",\"descripcion\":\"TABLET KITS ONE \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1200\",\"total\":\"1200\"}]', 0, 1200, 1200, 'Efectivo', '2019-12-23 18:59:31'),
(206, 10163, 19, 60, '[{\"id\":\"94\",\"descripcion\":\"VIDEO BALUM EPCOM\",\"cantidad\":\"1\",\"stock\":\"20\",\"precio\":\"70\",\"total\":\"70\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"68\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"66\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"272\",\"descripcion\":\"CABLE HDMI DE 10 M\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"186\",\"total\":\"186\"}]', 0, 286, 286, 'Efectivo', '2019-12-23 19:34:40'),
(207, 10164, 19, 60, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-12-23 22:37:02'),
(208, 10165, 19, 60, '[{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"550\",\"total\":\"550\"},{\"id\":\"90\",\"descripcion\":\"KIT DE 4 CAMARAS EPCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"2480\",\"total\":\"2480\"},{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"40\",\"stock\":\"158\",\"precio\":\"8\",\"total\":\"320\"}]', 0, 3350, 3350, 'Efectivo', '2019-12-24 01:07:00'),
(209, 10166, 19, 60, '[{\"id\":\"315\",\"descripcion\":\"CABLE DE AUDIO OPTICO DE 1M\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"78\",\"total\":\"78\"}]', 0, 78, 78, 'Efectivo', '2019-12-24 01:28:18'),
(210, 10167, 19, 60, '[{\"id\":\"227\",\"descripcion\":\"MEMORIA USB ADATA DE 32GB\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"120\",\"total\":\"120\"}]', 0, 120, 120, 'Efectivo', '2019-12-24 17:59:46'),
(211, 10168, 19, 60, '[{\"id\":\"309\",\"descripcion\":\"BASTON TRIPIE SELFIE BLUETOOTH\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"250\",\"total\":\"250\"}]', 0, 250, 250, 'Efectivo', '2019-12-24 18:41:03'),
(213, 10170, 19, 60, '[{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2019-12-24 19:06:08'),
(214, 10171, 19, 60, '[{\"id\":\"246\",\"descripcion\":\"MEMORIA USB BLACKPCS 16GB ROJO\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2019-12-24 19:13:31'),
(215, 10172, 19, 60, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-12-24 19:55:17'),
(216, 10173, 19, 60, '[{\"id\":\"306\",\"descripcion\":\"Tripie Aluminio Control Bluetooth iPhone Android\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"480\",\"total\":\"480\"}]', 0, 480, 480, 'Efectivo', '2019-12-26 18:21:15'),
(217, 10174, 19, 60, '[{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2019-12-26 19:28:11'),
(218, 10175, 19, 60, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"15\",\"stock\":\"143\",\"precio\":\"8\",\"total\":\"120\"}]', 0, 120, 120, 'Efectivo', '2019-12-26 20:33:25'),
(219, 10176, 19, 61, '[{\"id\":\"176\",\"descripcion\":\"ADAPTADOR USB WIFI NANO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-12-26 21:26:31'),
(220, 10177, 19, 61, '[{\"id\":\"265\",\"descripcion\":\"AIRE COMPRIMIDO \",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2019-12-27 19:50:30'),
(221, 10178, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2019-12-28 00:10:28'),
(222, 10179, 19, 61, '[{\"id\":\"246\",\"descripcion\":\"MEMORIA USB BLACKPCS 16GB ROJO\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2019-12-28 01:22:23'),
(223, 10180, 19, 64, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"30\",\"stock\":\"113\",\"precio\":\"8\",\"total\":\"240\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"84\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 260, 260, 'Efectivo', '2019-12-28 19:12:49'),
(224, 10181, 19, 64, '[{\"id\":\"272\",\"descripcion\":\"CABLE HDMI DE 10 M\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"186\",\"total\":\"186\"}]', 0, 186, 186, 'Efectivo', '2019-12-29 21:40:55'),
(225, 10182, 19, 60, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2019-12-30 18:23:47'),
(226, 10183, 19, 60, '[{\"id\":\"94\",\"descripcion\":\"VIDEO BALUM EPCOM\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"70\",\"total\":\"70\"},{\"id\":\"75\",\"descripcion\":\"PAR DE VIDEOBALUM BNC CABLE RF BLINDADO SYSCOM\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"70\",\"total\":\"70\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"67\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"65\",\"precio\":\"15\",\"total\":\"15\"}]', 0, 170, 170, 'TD-123456', '2019-12-30 20:23:36'),
(227, 10184, 19, 60, '[{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"66\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"64\",\"precio\":\"15\",\"total\":\"15\"}]', 0, 30, 30, 'Efectivo', '2019-12-30 20:25:45'),
(228, 10185, 19, 61, '[{\"id\":\"62\",\"descripcion\":\"KIT DE 4 CAMARAS HILOOK KIT7204BP\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"2398\",\"total\":\"2398\"}]', 0, 2398, 2398, 'TD-00000', '2019-12-31 22:10:43'),
(229, 10186, 19, 61, '[{\"id\":\"145\",\"descripcion\":\"ANYCAST M4 PLUS \",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"480\",\"total\":\"480\"}]', 0, 480, 480, 'Efectivo', '2019-12-31 23:02:11'),
(230, 10187, 19, 61, '[{\"id\":\"285\",\"descripcion\":\"CARGADOR PARA LAPTOP HP G 14K PUNTA AZUL \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"245\",\"total\":\"245\"}]', 0, 245, 245, 'Efectivo', '2020-01-02 23:14:42'),
(231, 10188, 19, 61, '[{\"id\":\"282\",\"descripcion\":\"KIT DE TECLADO Y MOUSE NACEB TECHNOLOGY ESTANDAR NEGRO\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"217\",\"total\":\"217\"}]', 0, 217, 217, 'Efectivo', '2020-01-03 18:40:39');
INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(232, 10189, 19, 64, '[{\"id\":\"265\",\"descripcion\":\"AIRE COMPRIMIDO \",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2020-01-04 19:25:06'),
(233, 10190, 19, 64, '[{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-01-04 21:51:08'),
(234, 10191, 19, 64, '[{\"id\":\"315\",\"descripcion\":\"CABLE DE AUDIO OPTICO DE 1M\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"78\",\"total\":\"78\"}]', 0, 78, 78, 'Efectivo', '2020-01-05 17:48:18'),
(235, 10192, 19, 64, '[{\"id\":\"103\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"1270\",\"total\":\"1270\"},{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"4\",\"stock\":\"9\",\"precio\":\"148\",\"total\":\"592\"},{\"id\":\"106\",\"descripcion\":\"PULPO HEMBRA DE 4 ENTRADAS\",\"cantidad\":\"2\",\"stock\":\"2\",\"precio\":\"59\",\"total\":\"118\"},{\"id\":\"312\",\"descripcion\":\"Eliminador Fuente Cargador Tiras Led Camaras Cctv 12v 2a\",\"cantidad\":\"2\",\"stock\":\"2\",\"precio\":\"86\",\"total\":\"172\"}]', 0, 2152, 2152, 'Efectivo', '2020-01-05 19:15:01'),
(236, 10193, 19, 60, '[{\"id\":\"301\",\"descripcion\":\"DISCO DURO GENERICO 3000 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"1350\",\"total\":\"1350\"}]', 0, 1350, 1350, 'Efectivo', '2020-01-06 21:10:28'),
(237, 10194, 19, 60, '[{\"id\":\"116\",\"descripcion\":\"CABLE USB IMPRESORA TIPO A B MACHO\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"96\",\"total\":\"96\"}]', 0, 96, 96, 'Efectivo', '2020-01-07 01:54:01'),
(238, 10195, 18, 60, '[{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 85, 85, 'Efectivo', '2020-01-07 18:27:56'),
(239, 10196, 19, 61, '[{\"id\":\"62\",\"descripcion\":\"KIT DE 4 CAMARAS HILOOK KIT7204BP\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"2398\",\"total\":\"2398\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"550\",\"total\":\"550\"}]', 0, 2948, 2948, 'Efectivo', '2020-01-07 21:16:39'),
(240, 10197, 19, 61, '[{\"id\":\"146\",\"descripcion\":\"ACCESS POINT TP LINK TLWA801ND\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 650, 650, 'Efectivo', '2020-01-08 21:08:25'),
(241, 10198, 19, 60, '[{\"id\":\"317\",\"descripcion\":\"No Break FORZA\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"900\",\"total\":\"900\"}]', 0, 900, 900, 'Efectivo', '2020-01-09 17:28:31'),
(242, 10199, 19, 64, '[{\"id\":\"160\",\"descripcion\":\"REPETIDOR DE SEÑAL GREEN LEAF\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"398\",\"total\":\"398\"}]', 0, 398, 398, 'Efectivo', '2020-01-11 17:23:32'),
(243, 10200, 19, 64, '[{\"id\":\"284\",\"descripcion\":\"MOUSE OPTICO NACEB VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"124\",\"total\":\"124\"}]', 0, 124, 124, 'Efectivo', '2020-01-11 19:59:37'),
(244, 10201, 19, 64, '[{\"id\":\"246\",\"descripcion\":\"MEMORIA USB BLACKPCS 16GB ROJO\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2020-01-11 20:15:23'),
(245, 10202, 19, 64, '[{\"id\":\"253\",\"descripcion\":\"ADAPTADOR USB CON 3 PUERTOS HUB USB\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2020-01-11 20:16:47'),
(246, 10203, 19, 64, '[{\"id\":\"297\",\"descripcion\":\"PILA AAA\",\"cantidad\":\"1\",\"stock\":\"23\",\"precio\":\"8\",\"total\":\"8\"}]', 0, 8, 8, 'Efectivo', '2020-01-11 21:35:17'),
(247, 10204, 19, 64, '[{\"id\":\"175\",\"descripcion\":\"EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2020-01-11 21:59:00'),
(248, 10205, 19, 64, '[{\"id\":\"250\",\"descripcion\":\"SWITCH MERCUSYS 8 PORT\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"192\",\"total\":\"192\"}]', 0, 192, 192, 'Efectivo', '2020-01-12 20:22:45'),
(249, 10206, 18, 60, '[{\"id\":\"116\",\"descripcion\":\"CABLE USB IMPRESORA TIPO A B MACHO\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"96\",\"total\":\"96\"}]', 0, 96, 96, 'Efectivo', '2020-01-14 18:41:00'),
(250, 10207, 19, 60, '[{\"id\":\"285\",\"descripcion\":\"CARGADOR PARA LAPTOP HP G 14K PUNTA AZUL \",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"250\",\"total\":\"250\"}]', 0, 250, 250, 'Efectivo', '2020-01-14 20:30:01'),
(251, 10208, 19, 61, '[{\"id\":\"227\",\"descripcion\":\"MEMORIA USB ADATA DE 32GB\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"120\",\"total\":\"120\"}]', 0, 120, 120, 'Efectivo', '2020-01-14 23:54:23'),
(252, 10209, 19, 61, '[{\"id\":\"160\",\"descripcion\":\"REPETIDOR DE SEÑAL GREEN LEAF\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"398\",\"total\":\"398\"}]', 0, 398, 398, 'Efectivo', '2020-01-15 00:00:32'),
(253, 10210, 19, 60, '[{\"id\":\"320\",\"descripcion\":\"CABLE DE RED 10 M\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2020-01-15 19:54:58'),
(254, 10211, 19, 60, '[{\"id\":\"281\",\"descripcion\":\"BOCINA NACEB TECHNOLOGY ROJO\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"140\",\"total\":\"140\"}]', 0, 140, 140, 'Efectivo', '2020-01-15 19:51:53'),
(255, 10212, 19, 60, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2020-01-15 20:13:28'),
(256, 10213, 19, 60, '[{\"id\":\"242\",\"descripcion\":\"CAMARA BALA 720P HILOOK THCB110P\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"369\",\"total\":\"369\"},{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 517, 517, 'Efectivo', '2020-01-15 20:26:33'),
(257, 10214, 19, 61, '[{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2020-01-15 22:49:03'),
(258, 10215, 19, 61, '[{\"id\":\"253\",\"descripcion\":\"ADAPTADOR USB CON 3 PUERTOS HUB USB\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2020-01-16 00:12:57'),
(259, 10216, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2020-01-16 01:19:41'),
(260, 10217, 19, 61, '[{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 V 1 A\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"98\",\"total\":\"98\"},{\"id\":\"106\",\"descripcion\":\"PULPO HEMBRA DE 4 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"59\",\"total\":\"59\"}]', 0, 157, 157, 'Efectivo', '2020-01-16 01:26:28'),
(261, 10218, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2020-01-16 21:49:34'),
(263, 10220, 19, 61, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2020-01-17 21:10:46'),
(264, 10221, 19, 61, '[{\"id\":\"323\",\"descripcion\":\"MICROFONO PARA SOLAPA\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"100\",\"total\":\"200\"}]', 0, 200, 200, 'Efectivo', '2020-01-17 21:34:00'),
(265, 10222, 19, 61, '[{\"id\":\"298\",\"descripcion\":\"PILA CR2032\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"30\",\"total\":\"30\"}]', 0, 30, 30, 'Efectivo', '2020-01-17 23:59:17'),
(266, 10223, 19, 64, '[{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2020-01-18 19:56:14'),
(267, 10224, 19, 64, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2020-01-19 18:53:32'),
(268, 10225, 19, 64, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"2\",\"stock\":\"4\",\"precio\":\"150\",\"total\":\"300\"}]', 0, 300, 300, 'Efectivo', '2020-01-19 21:20:58'),
(269, 10226, 20, 60, '[{\"id\":\"321\",\"descripcion\":\"ROUTER INALAMBRICO N MODELO TLWR840N\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"456\",\"total\":\"456\"}]', 0, 456, 456, 'Efectivo', '2020-01-20 18:29:33'),
(270, 10227, 20, 60, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"100\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 20, 20, 'Efectivo', '2020-01-20 18:31:32'),
(272, 10229, 19, 61, '[{\"id\":\"148\",\"descripcion\":\"MEMORIA MICROS SD DE 32 GB MARCA BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"110\",\"total\":\"110\"},{\"id\":\"109\",\"descripcion\":\"ADAPTADOR DE MEMORIA MICRO SD \",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"30\",\"total\":\"30\"}]', 0, 140, 140, 'Efectivo', '2020-01-20 21:00:34'),
(274, 10230, 19, 60, '[{\"id\":\"148\",\"descripcion\":\"MEMORIA MICROS SD DE 32 GB MARCA BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"110\",\"total\":\"110\"}]', 0, 110, 110, 'Efectivo', '2020-01-20 22:05:37'),
(275, 10231, 19, 61, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"20\",\"stock\":\"102\",\"precio\":\"8\",\"total\":\"160\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"98\",\"precio\":\"5\",\"total\":\"10\"}]', 0, 170, 170, 'Efectivo', '2020-01-20 22:09:09'),
(276, 10232, 19, 61, '[{\"id\":\"217\",\"descripcion\":\"ADAPTADOR USB ETHERNET RED\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"200\",\"total\":\"200\"}]', 0, 200, 200, 'Efectivo', '2020-01-20 22:13:27'),
(277, 10233, 19, 61, '[{\"id\":\"322\",\"descripcion\":\"USB HYUNDAI 16 GB\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2020-01-21 01:14:13'),
(278, 10234, 19, 61, '[{\"id\":\"175\",\"descripcion\":\"EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2020-01-21 01:58:12'),
(279, 10235, 19, 60, '[{\"id\":\"329\",\"descripcion\":\"TAQUETE DE PLASTICO DE 1 CUARTO BOLSA DE 100 PZAS \",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"42\",\"total\":\"42\"}]', 0, 42, 42, 'Efectivo', '2020-01-21 18:06:30'),
(280, 10236, 19, 60, '[{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-01-21 18:14:26'),
(281, 10237, 19, 60, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"84\",\"total\":\"168\"}]', 0, 168, 168, 'Efectivo', '2020-01-21 21:07:06'),
(282, 10238, 19, 61, '[{\"id\":\"331\",\"descripcion\":\"PONCHADO DE CABLE RED\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2020-01-21 22:07:42'),
(283, 10239, 19, 61, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"2\",\"stock\":\"96\",\"precio\":\"5\",\"total\":\"10\"}]', 0, 10, 10, 'Efectivo', '2020-01-21 22:15:54'),
(284, 10240, 19, 61, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"230\",\"total\":\"230\"},{\"id\":\"196\",\"descripcion\":\"MEMORIA MICRO SD 16GB STYLOS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"85\",\"total\":\"85\"}]', 0, 315, 315, 'Efectivo', '2020-01-22 00:25:15'),
(285, 10241, 19, 60, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2020-01-22 18:18:10'),
(286, 10242, 19, 60, '[{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 V 1 A\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 98, 98, 'Efectivo', '2020-01-22 19:04:46'),
(287, 10243, 19, 60, '[{\"id\":\"321\",\"descripcion\":\"ROUTER INALAMBRICO N MODELO TLWR840N\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"456\",\"total\":\"456\"}]', 0, 456, 456, 'Efectivo', '2020-01-22 20:36:51'),
(288, 10244, 19, 61, '[{\"id\":\"201\",\"descripcion\":\"KIT DE 4 CAMARAS HILOOK DVR 8 CANALES KIT7208BP\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"3413\",\"total\":\"3413\"},{\"id\":\"242\",\"descripcion\":\"CAMARA BALA 720P HILOOK THCB110P\",\"cantidad\":\"8\",\"stock\":\"0\",\"precio\":\"369\",\"total\":\"2952\"},{\"id\":\"106\",\"descripcion\":\"PULPO HEMBRA DE 4 ENTRADAS\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"59\",\"total\":\"118\"},{\"id\":\"251\",\"descripcion\":\"DISCO DURO GENERICO 1000 GB SATA 3P5\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"1050\",\"total\":\"2100\"},{\"id\":\"103\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"1270\",\"total\":\"1270\"},{\"id\":\"226\",\"descripcion\":\"BOBINA UTP 305 MTS\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"8\",\"stock\":\"2\",\"precio\":\"70\",\"total\":\"560\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"8\",\"stock\":\"54\",\"precio\":\"15\",\"total\":\"120\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"8\",\"stock\":\"46\",\"precio\":\"15\",\"total\":\"120\"},{\"id\":\"273\",\"descripcion\":\"CAJAS PVC PARA CAMARAS DE SEGURIDAD\",\"cantidad\":\"8\",\"stock\":\"0\",\"precio\":\"52\",\"total\":\"416\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"6\",\"stock\":\"90\",\"precio\":\"5\",\"total\":\"30\"},{\"id\":\"142\",\"descripcion\":\"GRAPA DE FIJACION BOLSA DE 100 PIEZAS\",\"cantidad\":\"2\",\"stock\":\"10\",\"precio\":\"50\",\"total\":\"100\"},{\"id\":\"329\",\"descripcion\":\"TAQUETE DE PLASTICO DE 1 CUARTO BOLSA DE 100 PZAS \",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"42\",\"total\":\"42\"},{\"id\":\"312\",\"descripcion\":\"Eliminador Fuente Cargador Tiras Led Camaras Cctv 12v 2a\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"120\",\"total\":\"240\"}]', 0, 12681, 12681, 'Efectivo', '2020-01-23 00:50:21'),
(289, 10245, 19, 60, '[{\"id\":\"298\",\"descripcion\":\"PILA CR2032\",\"cantidad\":\"2\",\"stock\":\"17\",\"precio\":\"30\",\"total\":\"60\"}]', 0, 60, 60, 'Efectivo', '2020-01-23 17:59:16'),
(290, 10246, 19, 60, '[{\"id\":\"297\",\"descripcion\":\"PILA AAA\",\"cantidad\":\"1\",\"stock\":\"21\",\"precio\":\"8\",\"total\":\"8\"}]', 0, 8, 8, 'Efectivo', '2020-01-23 19:36:30'),
(291, 10247, 19, 61, '[{\"id\":\"330\",\"descripcion\":\"BATERIA OTIGINAL LENOVO L0916Y02\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"770\",\"total\":\"770\"}]', 0, 770, 770, 'Efectivo', '2020-01-23 23:14:57'),
(292, 10248, 19, 64, '[{\"id\":\"265\",\"descripcion\":\"AIRE COMPRIMIDO \",\"cantidad\":\"3\",\"stock\":\"4\",\"precio\":\"90\",\"total\":\"270\"}]', 0, 270, 270, 'Efectivo', '2020-01-24 16:49:25'),
(293, 10249, 19, 61, '[{\"id\":\"279\",\"descripcion\":\"CAMARA PANORAMICA IP 360 MARCA ELEGATE\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"800\",\"total\":\"800\"}]', 0, 800, 800, 'Efectivo', '2020-01-25 01:03:32'),
(294, 10250, 19, 64, '[{\"id\":\"253\",\"descripcion\":\"ADAPTADOR USB CON 3 PUERTOS HUB USB\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"40\",\"total\":\"40\"}]', 0, 40, 40, 'Efectivo', '2020-01-25 19:22:49'),
(295, 10251, 19, 64, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2020-01-26 18:53:24'),
(296, 10252, 19, 64, '[{\"id\":\"77\",\"descripcion\":\"CONECTOR DE VIDEO RCA MACHO\",\"cantidad\":\"6\",\"stock\":\"15\",\"precio\":\"17\",\"total\":\"102\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"52\",\"precio\":\"15\",\"total\":\"30\"}]', 0, 132, 132, 'Efectivo', '2020-01-26 21:46:03'),
(298, 10254, 19, 64, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"86\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 20, 20, 'Efectivo', '2020-01-26 21:17:38'),
(299, 10255, 19, 61, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2020-01-27 23:34:38'),
(300, 10256, 19, 61, '[{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2020-01-28 17:36:10'),
(301, 10257, 19, 61, '[{\"id\":\"300\",\"descripcion\":\"DISCO DURO ESTADO SOLIDO DE 240 GB BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"850\",\"total\":\"850\"}]', 0, 850, 850, 'Efectivo', '2020-01-29 00:08:35'),
(302, 10258, 19, 61, '[{\"id\":\"334\",\"descripcion\":\"ANTICIPO DE SERVICIO \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"500\",\"total\":\"500\"}]', 0, 500, 500, 'Efectivo', '2020-01-29 01:23:08'),
(303, 10259, 19, 61, '[{\"id\":\"175\",\"descripcion\":\"EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2020-01-29 01:30:48'),
(304, 10260, 19, 61, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"230\",\"total\":\"230\"}]', 0, 230, 230, 'Efectivo', '2020-01-29 01:55:37'),
(305, 10261, 19, 61, '[{\"id\":\"254\",\"descripcion\":\"CAMARA DEPORTIVA GO PRO \",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 650, 650, 'Efectivo', '2020-01-29 23:59:49'),
(306, 10262, 19, 61, '[{\"id\":\"103\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"1270\",\"total\":\"2540\"},{\"id\":\"107\",\"descripcion\":\"PULPO HEMBRA DE 8 ENTRADAS\",\"cantidad\":\"2\",\"stock\":\"6\",\"precio\":\"89\",\"total\":\"178\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"8\",\"stock\":\"78\",\"precio\":\"5\",\"total\":\"40\"},{\"id\":\"264\",\"descripcion\":\"CAMARA DOMO EPCOM 720P LD7TURBOW\",\"cantidad\":\"5\",\"stock\":\"1\",\"precio\":\"480\",\"total\":\"2400\"},{\"id\":\"142\",\"descripcion\":\"GRAPA DE FIJACION BOLSA DE 100 PIEZAS\",\"cantidad\":\"2\",\"stock\":\"8\",\"precio\":\"50\",\"total\":\"100\"},{\"id\":\"198\",\"descripcion\":\"DISCO DURO GENERICO 2000 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"301\",\"descripcion\":\"DISCO DURO GENERICO 3000 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"1350\",\"total\":\"1350\"},{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"70\",\"total\":\"140\"},{\"id\":\"135\",\"descripcion\":\"CONECTOR RJ 11 POR PIEZA\",\"cantidad\":\"6\",\"stock\":\"39\",\"precio\":\"2\",\"total\":\"12\"}]', 0, 7960, 7960, 'Efectivo', '2020-01-30 00:44:17'),
(307, 10263, 19, 61, '[{\"id\":\"332\",\"descripcion\":\"USB KINGSTON 32 GB\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"150\",\"total\":\"150\"},{\"id\":\"245\",\"descripcion\":\"MEMORIA USB BLACKPCS 32GB\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"115\",\"total\":\"115\"},{\"id\":\"296\",\"descripcion\":\"PILA AA\",\"cantidad\":\"8\",\"stock\":\"8\",\"precio\":\"10\",\"total\":\"80\"}]', 0, 345, 345, 'Efectivo', '2020-01-30 01:24:19'),
(308, 10264, 19, 61, '[{\"id\":\"336\",\"descripcion\":\"COBRO SERVICIO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"788\",\"total\":\"788\"}]', 0, 788, 788, 'Efectivo', '2020-01-30 01:40:38'),
(309, 10265, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2020-01-30 16:21:30'),
(310, 10266, 19, 61, '[{\"id\":\"145\",\"descripcion\":\"ANYCAST M4 PLUS \",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"480\",\"total\":\"480\"}]', 0, 480, 480, 'Efectivo', '2020-01-30 19:04:42'),
(311, 10267, 19, 61, '[{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"550\",\"total\":\"550\"}]', 0, 550, 550, 'TD-12345', '2020-01-30 23:31:08'),
(312, 10268, 19, 61, '[{\"id\":\"246\",\"descripcion\":\"MEMORIA USB BLACKPCS 16GB ROJO\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2020-01-31 19:04:16'),
(314, 10269, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"150\",\"total\":\"150\"},{\"id\":\"284\",\"descripcion\":\"MOUSE OPTICO NACEB VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"124\",\"total\":\"124\"}]', 0, 274, 274, 'TD-12345', '2020-02-01 00:11:55'),
(315, 10270, 19, 64, '[{\"id\":\"126\",\"descripcion\":\"CABLE HDMI DE 1P8 M\",\"cantidad\":\"1\",\"stock\":\"20\",\"precio\":\"66\",\"total\":\"66\"}]', 0, 66, 66, 'Efectivo', '2020-02-02 17:03:07'),
(316, 10271, 19, 1, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2020-02-04 19:22:56'),
(317, 10272, 19, 1, '[{\"id\":\"338\",\"descripcion\":\"MONITOR AOC 19 P COLOR\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"1520\",\"total\":\"1520\"}]', 0, 1520, 1520, 'Efectivo', '2020-02-04 19:47:01'),
(318, 10273, 19, 1, '[{\"id\":\"265\",\"descripcion\":\"AIRE COMPRIMIDO \",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2020-02-04 19:53:05'),
(319, 10274, 19, 1, '[{\"id\":\"111\",\"descripcion\":\"CANDADO CON ALARMA\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"179\",\"total\":\"179\"}]', 0, 179, 179, 'Efectivo', '2020-02-04 19:57:58'),
(320, 10275, 20, 1, '[{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"8\",\"stock\":\"14\",\"precio\":\"70\",\"total\":\"560\"},{\"id\":\"103\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"1270\",\"total\":\"2540\"},{\"id\":\"242\",\"descripcion\":\"CAMARA BALA 720P HILOOK THCB110P\",\"cantidad\":\"8\",\"stock\":\"3\",\"precio\":\"369\",\"total\":\"2952\"},{\"id\":\"136\",\"descripcion\":\"ADAPTADOR DE CORRIENTE DE 12V 3P33 A CON PULPO DE 5 SALIDAS\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"359\",\"total\":\"359\"},{\"id\":\"123\",\"descripcion\":\"ADAPTADOR DE CORRIENTE DE 100V 240V PARA 4 CAMARAS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"469\",\"total\":\"469\"},{\"id\":\"142\",\"descripcion\":\"GRAPA DE FIJACION BOLSA DE 100 PIEZAS\",\"cantidad\":\"2\",\"stock\":\"6\",\"precio\":\"50\",\"total\":\"100\"},{\"id\":\"107\",\"descripcion\":\"PULPO HEMBRA DE 8 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"89\",\"total\":\"89\"},{\"id\":\"301\",\"descripcion\":\"DISCO DURO GENERICO 3000 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"1350\",\"total\":\"1350\"},{\"id\":\"198\",\"descripcion\":\"DISCO DURO GENERICO 2000 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1200\",\"total\":\"1200\"}]', 0, 9619, 9619, 'Efectivo', '2020-02-05 16:49:56'),
(321, 10276, 19, 1, '[{\"id\":\"126\",\"descripcion\":\"CABLE HDMI DE 1P8 M\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"66\",\"total\":\"66\"}]', 0, 66, 66, 'Efectivo', '2020-02-05 18:14:01'),
(322, 10277, 19, 1, '[{\"id\":\"282\",\"descripcion\":\"KIT DE TECLADO Y MOUSE NACEB TECHNOLOGY ESTANDAR NEGRO\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"170\",\"total\":\"340\"}]', 0, 340, 340, 'Efectivo', '2020-02-05 18:41:02'),
(323, 10278, 19, 1, '[{\"id\":\"340\",\"descripcion\":\"FUNDA CON TECLADO 7P\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"249\",\"total\":\"249\"}]', 0, 249, 249, 'Efectivo', '2020-02-05 19:21:54'),
(324, 10279, 19, 61, '[{\"id\":\"265\",\"descripcion\":\"AIRE COMPRIMIDO \",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"100\",\"total\":\"200\"}]', 0, 200, 200, 'Efectivo', '2020-02-06 02:12:34'),
(325, 10280, 19, 1, '[{\"id\":\"328\",\"descripcion\":\"TRIPIE DE ALUMINIO CON 3 NIVELES\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"280\",\"total\":\"280\"},{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 395, 395, 'Efectivo', '2020-02-06 17:13:38'),
(326, 10281, 19, 1, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"20\",\"stock\":\"82\",\"precio\":\"8\",\"total\":\"160\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"74\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 180, 180, 'Efectivo', '2020-02-06 17:31:06'),
(327, 10282, 19, 1, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"6\",\"stock\":\"68\",\"precio\":\"5\",\"total\":\"30\"}]', 0, 30, 30, 'Efectivo', '2020-02-06 17:31:55'),
(328, 10283, 19, 1, '[{\"id\":\"344\",\"descripcion\":\"CABLE CORRIENTE HDD SATA\",\"cantidad\":\"4\",\"stock\":\"0\",\"precio\":\"60\",\"total\":\"240\"}]', 0, 240, 240, 'Efectivo', '2020-02-06 17:32:34'),
(329, 10284, 19, 61, '[{\"id\":\"325\",\"descripcion\":\"KIT DE 4 CAMARAS DE SEGURIDAD HILOOK 720P DVR 4 CANALES MODELO KIT7204BP\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"2398\",\"total\":\"4796\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"550\",\"total\":\"1100\"}]', 0, 5896, 5896, 'Efectivo', '2020-02-07 17:37:47'),
(330, 10285, 19, 61, '[{\"id\":\"140\",\"descripcion\":\"CABLE UTP 100 COBRE CATEGORIA 5E POR METRO OSMOSYS\",\"cantidad\":\"18\",\"stock\":\"64\",\"precio\":\"8\",\"total\":\"144\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"64\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 164, 164, 'Efectivo', '2020-02-07 17:42:32'),
(333, 10287, 19, 61, '[{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"4\",\"stock\":\"48\",\"precio\":\"15\",\"total\":\"60\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"4\",\"stock\":\"42\",\"precio\":\"15\",\"total\":\"60\"}]', 0, 120, 120, 'Efectivo', '2020-02-07 23:08:15'),
(334, 10288, 19, 61, '[{\"id\":\"174\",\"descripcion\":\"CABLE VGA A VGA\",\"cantidad\":\"2\",\"stock\":\"7\",\"precio\":\"50\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2020-02-07 23:48:22'),
(335, 10289, 19, 61, '[{\"id\":\"265\",\"descripcion\":\"AIRE COMPRIMIDO \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"100\",\"total\":\"100\"}]', 0, 100, 100, 'Efectivo', '2020-02-08 00:30:39'),
(336, 10290, 19, 64, '[{\"id\":\"302\",\"descripcion\":\"DISCO DURO SEGATE 1000 GB LAPTOP 2P5 \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1200\",\"total\":\"1200\"}]', 0, 1200, 1200, 'Efectivo', '2020-02-09 18:02:02'),
(337, 10291, 19, 64, '[{\"id\":\"264\",\"descripcion\":\"CAMARA DOMO EPCOM 720P LD7TURBOW\",\"cantidad\":\"2\",\"stock\":\"3\",\"precio\":\"480\",\"total\":\"960\"},{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"2\",\"stock\":\"3\",\"precio\":\"148\",\"total\":\"296\"},{\"id\":\"272\",\"descripcion\":\"CABLE HDMI DE 10 M\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"186\",\"total\":\"186\"},{\"id\":\"102\",\"descripcion\":\"DVR 4 CANALES S04TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"923\",\"total\":\"923\"},{\"id\":\"106\",\"descripcion\":\"PULPO HEMBRA DE 4 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"59\",\"total\":\"59\"},{\"id\":\"107\",\"descripcion\":\"PULPO HEMBRA DE 8 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"89\",\"total\":\"89\"}]', 0, 2513, 2513, 'Efectivo', '2020-02-09 19:43:12'),
(338, 10292, 19, 64, '[{\"id\":\"264\",\"descripcion\":\"CAMARA DOMO EPCOM 720P LD7TURBOW\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"480\",\"total\":\"960\"},{\"id\":\"102\",\"descripcion\":\"DVR 4 CANALES S04TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"923\",\"total\":\"923\"},{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"148\",\"total\":\"296\"},{\"id\":\"272\",\"descripcion\":\"CABLE HDMI DE 10 M\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"186\",\"total\":\"186\"},{\"id\":\"107\",\"descripcion\":\"PULPO HEMBRA DE 8 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"89\",\"total\":\"89\"}]', 0, 2454, 2454, 'Efectivo', '2020-02-09 19:45:02'),
(339, 10293, 19, 64, '[{\"id\":\"346\",\"descripcion\":\"eliminadores 12a\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"98\",\"total\":\"98\"},{\"id\":\"346\",\"descripcion\":\"eliminadores 12a\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 196, 196, 'Efectivo', '2020-02-09 21:01:17'),
(340, 10294, 19, 61, '[{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"6\",\"stock\":\"58\",\"precio\":\"5\",\"total\":\"30\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"4\",\"stock\":\"44\",\"precio\":\"15\",\"total\":\"60\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"4\",\"stock\":\"38\",\"precio\":\"15\",\"total\":\"60\"},{\"id\":\"250\",\"descripcion\":\"SWITCH MERCUSYS 8 PORT\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"192\",\"total\":\"192\"}]', 0, 342, 342, 'Efectivo', '2020-02-10 22:19:56'),
(341, 10295, 19, 61, '[{\"id\":\"322\",\"descripcion\":\"USB HYUNDAI 16 GB\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2020-02-11 02:08:01'),
(342, 10296, 19, 1, '[{\"id\":\"205\",\"descripcion\":\"PRESENTADOR INALAMBRICO CON APUNTADOR LASER\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"240\",\"total\":\"240\"}]', 0, 240, 240, 'Efectivo', '2020-02-11 17:49:13'),
(343, 10297, 19, 1, '[{\"id\":\"250\",\"descripcion\":\"SWITCH MERCUSYS 8 PORT\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"192\",\"total\":\"384\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"54\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 404, 404, 'Efectivo', '2020-02-11 18:08:10'),
(344, 10298, 19, 1, '[{\"id\":\"347\",\"descripcion\":\"Switch TPLINK TLSG1016D\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1680\",\"total\":\"1680\"}]', 0, 1680, 1680, 'Efectivo', '2020-02-11 19:50:23'),
(345, 10299, 19, 1, '[{\"id\":\"226\",\"descripcion\":\"BOBINA UTP 305 MTS\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"50\",\"total\":\"50\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"37\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"43\",\"precio\":\"15\",\"total\":\"15\"}]', 0, 1280, 1280, 'Efectivo', '2020-02-12 19:06:08'),
(346, 10300, 19, 61, '[{\"id\":\"285\",\"descripcion\":\"CARGADOR PARA LAPTOP HP G 14K PUNTA AZUL \",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"250\",\"total\":\"250\"}]', 0, 250, 250, 'Efectivo', '2020-02-12 21:41:17'),
(347, 10301, 19, 61, '[{\"id\":\"125\",\"descripcion\":\"CABLE HDMI DE 3 M\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"84\",\"total\":\"84\"}]', 0, 84, 84, 'Efectivo', '2020-02-12 22:29:27'),
(348, 10302, 19, 61, '[{\"id\":\"327\",\"descripcion\":\"CAMARA 360 TIPO FOCO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"750\",\"total\":\"750\"},{\"id\":\"279\",\"descripcion\":\"CAMARA PANORAMICA IP 360 MARCA ELEGATE\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"800\",\"total\":\"800\"},{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"2\",\"stock\":\"2\",\"precio\":\"115\",\"total\":\"230\"}]', 0, 1780, 1780, 'Efectivo', '2020-02-12 23:45:17'),
(349, 10303, 19, 1, '[{\"id\":\"348\",\"descripcion\":\"Anticipo Lector Quemador Dvd Slim Externo LG Resta 280\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"300\",\"total\":\"300\"}]', 0, 300, 300, 'Efectivo', '2020-02-13 18:05:56'),
(350, 10304, 19, 61, '[{\"id\":\"87\",\"descripcion\":\"FUENTE DE PODER DE 12 V 1 A\",\"cantidad\":\"2\",\"stock\":\"2\",\"precio\":\"98\",\"total\":\"196\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"41\",\"precio\":\"15\",\"total\":\"30\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"35\",\"precio\":\"15\",\"total\":\"30\"}]', 0, 256, 256, 'Efectivo', '2020-02-13 22:06:01'),
(351, 10305, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-02-13 23:14:49'),
(352, 10306, 19, 61, '[{\"id\":\"242\",\"descripcion\":\"CAMARA BALA 720P HILOOK THCB110P\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"369\",\"total\":\"369\"},{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"2\",\"stock\":\"11\",\"precio\":\"50\",\"total\":\"100\"},{\"id\":\"107\",\"descripcion\":\"PULPO HEMBRA DE 8 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"89\",\"total\":\"89\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"39\",\"precio\":\"15\",\"total\":\"30\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"2\",\"stock\":\"33\",\"precio\":\"15\",\"total\":\"30\"},{\"id\":\"312\",\"descripcion\":\"Eliminador Fuente Cargador Tiras Led Camaras Cctv 12v 2a\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"120\",\"total\":\"120\"}]', 0, 738, 738, 'Efectivo', '2020-02-14 20:54:44'),
(353, 10307, 19, 64, '[{\"id\":\"246\",\"descripcion\":\"MEMORIA USB BLACKPCS 16GB ROJO\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"80\",\"total\":\"80\"}]', 0, 80, 80, 'Efectivo', '2020-02-16 17:22:53'),
(354, 10308, 19, 61, '[{\"id\":\"242\",\"descripcion\":\"CAMARA BALA 720P HILOOK THCB110P\",\"cantidad\":\"4\",\"stock\":\"0\",\"precio\":\"369\",\"total\":\"1476\"},{\"id\":\"264\",\"descripcion\":\"CAMARA DOMO EPCOM 720P LD7TURBOW\",\"cantidad\":\"2\",\"stock\":\"2\",\"precio\":\"480\",\"total\":\"960\"},{\"id\":\"241\",\"descripcion\":\"CAMARA DOMO HILOOK 720P THCT110P\",\"cantidad\":\"2\",\"stock\":\"0\",\"precio\":\"332\",\"total\":\"664\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"8\",\"stock\":\"31\",\"precio\":\"15\",\"total\":\"120\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"8\",\"stock\":\"25\",\"precio\":\"15\",\"total\":\"120\"},{\"id\":\"142\",\"descripcion\":\"GRAPA DE FIJACION BOLSA DE 100 PIEZAS\",\"cantidad\":\"2\",\"stock\":\"4\",\"precio\":\"50\",\"total\":\"100\"},{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"7\",\"stock\":\"4\",\"precio\":\"50\",\"total\":\"350\"},{\"id\":\"103\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1270\",\"total\":\"1270\"},{\"id\":\"301\",\"descripcion\":\"DISCO DURO GENERICO 3000 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"1350\",\"total\":\"1350\"},{\"id\":\"244\",\"descripcion\":\"FUENTE DE PODER  12V 6 A CON 6 CANALES EPCOM\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"450\",\"total\":\"450\"},{\"id\":\"312\",\"descripcion\":\"Eliminador Fuente Cargador Tiras Led Camaras Cctv 12v 2a\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"120\",\"total\":\"120\"}]', 0, 6980, 6980, 'Efectivo', '2020-02-17 16:09:57'),
(355, 10309, 19, 61, '[{\"id\":\"349\",\"descripcion\":\"Lector Quemador Dvd Slim Externo LG\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"580\",\"total\":\"580\"}]', 0, 580, 580, 'Efectivo', '2020-02-17 17:14:41'),
(356, 10310, 19, 61, '[{\"id\":\"174\",\"descripcion\":\"CABLE VGA A VGA\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"50\",\"total\":\"50\"}]', 0, 50, 50, 'Efectivo', '2020-02-17 19:02:25'),
(357, 10311, 19, 61, '[{\"id\":\"297\",\"descripcion\":\"PILA AAA\",\"cantidad\":\"3\",\"stock\":\"18\",\"precio\":\"8\",\"total\":\"24\"}]', 0, 24, 24, 'Efectivo', '2020-02-17 22:43:50'),
(360, 10312, 19, 61, '[{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"3\",\"stock\":\"0\",\"precio\":\"148\",\"total\":\"444\"},{\"id\":\"329\",\"descripcion\":\"TAQUETE DE PLASTICO DE 1 CUARTO BOLSA DE 100 PZAS \",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"42\",\"total\":\"42\"},{\"id\":\"301\",\"descripcion\":\"DISCO DURO GENERICO 3000 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"1350\",\"total\":\"1350\"},{\"id\":\"107\",\"descripcion\":\"PULPO HEMBRA DE 8 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"89\",\"total\":\"89\"},{\"id\":\"244\",\"descripcion\":\"FUENTE DE PODER  12V 6 A CON 6 CANALES EPCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"450\",\"total\":\"450\"},{\"id\":\"312\",\"descripcion\":\"Eliminador Fuente Cargador Tiras Led Camaras Cctv 12v 2a\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"120\",\"total\":\"120\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"50\",\"precio\":\"5\",\"total\":\"20\"},{\"id\":\"264\",\"descripcion\":\"CAMARA DOMO EPCOM 720P LD7TURBOW\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"480\",\"total\":\"480\"},{\"id\":\"241\",\"descripcion\":\"CAMARA DOMO HILOOK 720P THCT110P\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"332\",\"total\":\"332\"},{\"id\":\"243\",\"descripcion\":\"CAMARA DOMO HILOOK 1080P THCT120MC\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"483\",\"total\":\"483\"},{\"id\":\"201\",\"descripcion\":\"KIT DE 4 CAMARAS HILOOK DVR 8 CANALES KIT7208BP\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"3413\",\"total\":\"3413\"}]', 0, 7223, 7223, 'Efectivo', '2020-02-18 02:33:21'),
(361, 10313, 19, 61, '[{\"id\":\"175\",\"descripcion\":\"EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 148, 148, 'Efectivo', '2020-02-18 16:25:11'),
(362, 10314, 19, 61, '[{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-02-18 16:42:32'),
(365, 10317, 19, 61, '[{\"id\":\"350\",\"descripcion\":\"Instalacion de kit de 4 camaras anticipo 3600 resta 3600\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"3600\",\"total\":\"3600\"}]', 0, 3600, 3600, 'Efectivo', '2020-02-18 19:23:57'),
(366, 10318, 19, 61, '[{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"50\",\"total\":\"50\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"30\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"24\",\"precio\":\"15\",\"total\":\"15\"}]', 0, 80, 80, 'Efectivo', '2020-02-18 20:17:00'),
(367, 10319, 19, 61, '[{\"id\":\"176\",\"descripcion\":\"ADAPTADOR USB WIFI NANO\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2020-02-18 20:36:11'),
(368, 10320, 19, 61, '[{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-02-19 01:39:51'),
(369, 10321, 20, 61, '[{\"id\":\"325\",\"descripcion\":\"KIT DE 4 CAMARAS DE SEGURIDAD HILOOK 720P DVR 4 CANALES MODELO KIT7204BP\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"2398\",\"total\":\"2398\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"550\",\"total\":\"550\"},{\"id\":\"351\",\"descripcion\":\"PANTALLA HP V194\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1695\",\"total\":\"1695\"},{\"id\":\"312\",\"descripcion\":\"Eliminador Fuente Cargador Tiras Led Camaras Cctv 12v 2a\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"120\",\"total\":\"120\"},{\"id\":\"231\",\"descripcion\":\"SOPORTE PANTALLA 14 A 37 MITZU\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"170\",\"total\":\"170\"}]', 0, 4933, 4933, 'Efectivo', '2020-02-19 16:24:27'),
(370, 10322, 19, 61, '[{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"50\",\"total\":\"100\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"46\",\"precio\":\"5\",\"total\":\"20\"}]', 0, 120, 120, 'Efectivo', '2020-02-19 20:27:04'),
(371, 10323, 19, 61, '[{\"id\":\"205\",\"descripcion\":\"PRESENTADOR INALAMBRICO CON APUNTADOR LASER\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"240\",\"total\":\"240\"}]', 0, 240, 240, 'Efectivo', '2020-02-20 00:02:21'),
(372, 10324, 20, 61, '[{\"id\":\"135\",\"descripcion\":\"CONECTOR RJ 11 POR PIEZA\",\"cantidad\":\"10\",\"stock\":\"29\",\"precio\":\"2\",\"total\":\"20\"}]', 0, 20, 20, 'Efectivo', '2020-02-20 18:05:23'),
(373, 10325, 19, 61, '[{\"id\":\"176\",\"descripcion\":\"ADAPTADOR USB WIFI NANO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2020-02-20 23:26:43'),
(374, 10326, 19, 61, '[{\"id\":\"332\",\"descripcion\":\"USB KINGSTON 32 GB\",\"cantidad\":\"2\",\"stock\":\"7\",\"precio\":\"100\",\"total\":\"200\"},{\"id\":\"322\",\"descripcion\":\"USB HYUNDAI 16 GB\",\"cantidad\":\"2\",\"stock\":\"1\",\"precio\":\"80\",\"total\":\"160\"},{\"id\":\"283\",\"descripcion\":\"MEMORIA MICRO SD 16 GB CLASE 10 BLACKPCS\",\"cantidad\":\"2\",\"stock\":\"12\",\"precio\":\"90\",\"total\":\"180\"}]', 0, 540, 540, 'Efectivo', '2020-02-21 01:03:43'),
(375, 10327, 19, 61, '[{\"id\":\"114\",\"descripcion\":\"EXTENSOR HDMI POR UTP \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"303\",\"total\":\"303\"}]', 0, 303, 303, 'Efectivo', '2020-02-21 19:30:49'),
(376, 10328, 19, 64, '[{\"id\":\"172\",\"descripcion\":\"CABLE DE FIBRA OPTICA 1P5 METROS PARA MODEM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"78\",\"total\":\"78\"}]', 0, 78, 78, 'Efectivo', '2020-02-22 17:23:11'),
(377, 10329, 19, 64, '[{\"id\":\"205\",\"descripcion\":\"PRESENTADOR INALAMBRICO CON APUNTADOR LASER\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"240\",\"total\":\"240\"},{\"id\":\"297\",\"descripcion\":\"PILA AAA\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"8\",\"total\":\"8\"}]', 0, 248, 248, 'Efectivo', '2020-02-22 20:04:06'),
(378, 10330, 19, 64, '[{\"id\":\"272\",\"descripcion\":\"CABLE HDMI DE 10 M\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"186\",\"total\":\"186\"}]', 0, 186, 186, 'Efectivo', '2020-02-22 20:10:29'),
(379, 10331, 19, 64, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-02-22 21:22:06'),
(380, 10332, 19, 64, '[{\"id\":\"254\",\"descripcion\":\"CAMARA DEPORTIVA GO PRO \",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"650\",\"total\":\"650\"},{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 765, 765, 'Efectivo', '2020-02-23 18:27:04'),
(381, 10333, 19, 64, '[{\"id\":\"240\",\"descripcion\":\"CAMARA BALA HILOOK 1080P THCB120MC\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"496\",\"total\":\"496\"},{\"id\":\"107\",\"descripcion\":\"PULPO HEMBRA DE 8 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"89\",\"total\":\"89\"}]', 0, 585, 585, 'Efectivo', '2020-02-23 18:52:27'),
(382, 10334, 20, 61, '[{\"id\":\"103\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"1270\",\"total\":\"1270\"},{\"id\":\"242\",\"descripcion\":\"CAMARA BALA 720P HILOOK THCB110P\",\"cantidad\":\"4\",\"stock\":\"12\",\"precio\":\"369\",\"total\":\"1476\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"550\",\"total\":\"550\"},{\"id\":\"244\",\"descripcion\":\"FUENTE DE PODER  12V 6 A CON 6 CANALES EPCOM\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"450\",\"total\":\"450\"},{\"id\":\"324\",\"descripcion\":\"VIDEO BALUM COLA DE RATON\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"50\",\"total\":\"50\"},{\"id\":\"75\",\"descripcion\":\"PAR DE VIDEOBALUM BNC CABLE RF BLINDADO EPCOM\",\"cantidad\":\"3\",\"stock\":\"13\",\"precio\":\"70\",\"total\":\"210\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"4\",\"stock\":\"156\",\"precio\":\"15\",\"total\":\"60\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"4\",\"stock\":\"148\",\"precio\":\"15\",\"total\":\"60\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"4\",\"stock\":\"42\",\"precio\":\"5\",\"total\":\"20\"},{\"id\":\"329\",\"descripcion\":\"TAQUETE DE PLASTICO DE 1 CUARTO BOLSA DE 100 PZAS \",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"42\",\"total\":\"42\"},{\"id\":\"226\",\"descripcion\":\"BOBINA UTP 305 MTS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1200\",\"total\":\"1200\"},{\"id\":\"351\",\"descripcion\":\"PANTALLA HP V194\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1695\",\"total\":\"1695\"},{\"id\":\"231\",\"descripcion\":\"SOPORTE PANTALLA 14 A 37 MITZU\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"170\",\"total\":\"170\"}]', 0, 7253, 7253, 'Efectivo', '2020-02-25 00:24:17'),
(383, 10335, 19, 61, '[{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"155\",\"precio\":\"15\",\"total\":\"15\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"1\",\"stock\":\"147\",\"precio\":\"15\",\"total\":\"15\"}]', 0, 30, 30, 'Efectivo', '2020-02-24 22:45:39'),
(384, 10336, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-02-25 00:56:11'),
(385, 10337, 19, 61, '[{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"3\",\"stock\":\"153\",\"precio\":\"15\",\"total\":\"45\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"3\",\"stock\":\"145\",\"precio\":\"15\",\"total\":\"45\"}]', 0, 90, 90, 'Efectivo', '2020-02-25 19:34:34'),
(387, 10338, 19, 61, '[{\"id\":\"254\",\"descripcion\":\"CAMARA DEPORTIVA GO PRO \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 650, 650, 'Efectivo', '2020-02-25 22:14:33'),
(388, 10339, 19, 61, '[{\"id\":\"342\",\"descripcion\":\"TECLADO USB ACTECK AC\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"198\",\"total\":\"198\"}]', 0, 198, 198, 'Efectivo', '2020-02-26 21:01:35'),
(389, 10340, 19, 61, '[{\"id\":\"203\",\"descripcion\":\"PROBADOR TESTEADOR CABLE DE RED UTP RJ11 RJ45 ETHERNET\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"140\",\"total\":\"140\"}]', 0, 140, 140, 'Efectivo', '2020-02-26 23:49:20'),
(390, 10341, 19, 61, '[{\"id\":\"246\",\"descripcion\":\"MEMORIA USB BLACKPCS 16GB ROJO\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2020-02-29 01:57:30'),
(391, 10342, 20, 61, '[{\"id\":\"219\",\"descripcion\":\"JACK DE IMPACTO CAT5E PARA CALIBRE 22 AL 2\",\"cantidad\":\"8\",\"stock\":\"38\",\"precio\":\"52\",\"total\":\"416\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"12\",\"stock\":\"30\",\"precio\":\"5\",\"total\":\"60\"},{\"id\":\"135\",\"descripcion\":\"CONECTOR RJ 11 POR PIEZA\",\"cantidad\":\"6\",\"stock\":\"23\",\"precio\":\"2\",\"total\":\"12\"}]', 0, 488, 488, 'Efectivo', '2020-02-29 02:18:57'),
(392, 10343, 19, 64, '[{\"id\":\"219\",\"descripcion\":\"JACK DE IMPACTO CAT5E PARA CALIBRE 22 AL 2\",\"cantidad\":\"2\",\"stock\":\"36\",\"precio\":\"52\",\"total\":\"104\"},{\"id\":\"129\",\"descripcion\":\"PLACA DE PARED PARA 2 PUERTOS\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"35\",\"total\":\"35\"}]', 0, 139, 139, 'Efectivo', '2020-02-29 18:55:30'),
(393, 10344, 20, 64, '[{\"id\":\"102\",\"descripcion\":\"DVR 4 CANALES S04TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"923\",\"total\":\"923\"},{\"id\":\"312\",\"descripcion\":\"Eliminador Fuente Cargador Tiras Led Camaras Cctv 12v 2a\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"120\",\"total\":\"120\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"550\",\"total\":\"550\"}]', 0, 1593, 1593, 'Efectivo', '2020-02-29 19:11:28');
INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(395, 10346, 19, 64, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2020-02-29 20:02:48'),
(396, 10347, 19, 61, '[{\"id\":\"177\",\"descripcion\":\"ADAPTADOR HDMI A VGA\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-03-02 16:25:01'),
(397, 10348, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-03-02 19:03:14'),
(398, 10349, 19, 61, '[{\"id\":\"290\",\"descripcion\":\"CARGADOR PARA LAPTOP DELL XPS 11 12 13 14 15 18\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"400\",\"total\":\"400\"}]', 0, 400, 400, 'Efectivo', '2020-03-02 19:20:34'),
(399, 10350, 19, 61, '[{\"id\":\"148\",\"descripcion\":\"MEMORIA MICROS SD DE 32 GB MARCA BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"118\",\"total\":\"118\"}]', 0, 118, 118, 'Efectivo', '2020-03-02 19:54:40'),
(400, 10351, 19, 61, '[{\"id\":\"247\",\"descripcion\":\"MEMORIA MICRO SD HYUNDAI 32GB\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2020-03-02 20:18:01'),
(401, 10352, 19, 61, '[{\"id\":\"250\",\"descripcion\":\"SWITCH MERCUSYS 8 PORT\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"192\",\"total\":\"192\"}]', 0, 192, 192, 'Efectivo', '2020-03-02 23:44:42'),
(402, 10353, 19, 61, '[{\"id\":\"356\",\"descripcion\":\"115 RESTANTE PRODUCTO EXTENSOR USB POR RJ45\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"115\",\"total\":\"115\"}]', 0, 115, 115, 'Efectivo', '2020-03-03 20:24:17'),
(403, 10354, 19, 61, '[{\"id\":\"357\",\"descripcion\":\"Anticipo camaras de vigilancia 3500 resta 3500\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"3500\",\"total\":\"3500\"}]', 0, 3500, 3500, 'TD-12345', '2020-03-04 02:03:42'),
(404, 10355, 19, 61, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"250\",\"total\":\"250\"}]', 0, 250, 250, 'Efectivo', '2020-03-04 16:45:32'),
(405, 10356, 19, 61, '[{\"id\":\"286\",\"descripcion\":\"LENTES AUDIFONOS MANOS LIBRES BLUETOOTH ORIGINAL\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"350\",\"total\":\"350\"}]', 0, 350, 350, 'Efectivo', '2020-03-04 16:46:47'),
(406, 10357, 19, 61, '[{\"id\":\"358\",\"descripcion\":\"Kit Repetidor Señal Celular Antena 3g 4g Booster Amplificado anticipo 1850 resta 1850\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1850\",\"total\":\"1850\"}]', 0, 1850, 1850, 'Efectivo', '2020-03-09 21:01:32'),
(407, 10358, 19, 61, '[{\"id\":\"359\",\"descripcion\":\"cable de 11 metros utp ponchado\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"158\",\"total\":\"158\"}]', 0, 158, 158, 'Efectivo', '2020-03-09 21:18:06'),
(408, 10359, 19, 61, '[{\"id\":\"361\",\"descripcion\":\"MOUSE NEGRO GREEN LEAF\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"79.9\",\"total\":\"79.9\"}]', 0, 79.9, 79.9, 'Efectivo', '2020-03-12 22:27:02'),
(409, 10360, 19, 61, '[{\"id\":\"254\",\"descripcion\":\"CAMARA DEPORTIVA GO PRO \",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 650, 650, 'Efectivo', '2020-03-12 23:16:12'),
(410, 10361, 19, 61, '[{\"id\":\"254\",\"descripcion\":\"CAMARA DEPORTIVA GO PRO \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 650, 650, 'Efectivo', '2020-03-13 00:19:52'),
(411, 10362, 19, 61, '[{\"id\":\"176\",\"descripcion\":\"ADAPTADOR USB WIFI NANO\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"150\",\"total\":\"150\"}]', 24, 150, 174, 'Efectivo', '2020-03-13 16:57:32'),
(412, 10363, 19, 61, '[{\"id\":\"362\",\"descripcion\":\"LAPTOP HP 240G Y SOPORTE VENTILADOR 4200 ANTICIPO 2100\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"2100\",\"total\":\"2100\"}]', 0, 2100, 2100, 'Efectivo', '2020-03-13 21:33:42'),
(413, 10364, 19, 61, '[{\"id\":\"354\",\"descripcion\":\"Splintter Divisor De Señal HDMI\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"250\",\"total\":\"250\"}]', 0, 250, 250, 'Efectivo', '2020-03-13 22:36:16'),
(414, 10365, 19, 61, '[{\"id\":\"362\",\"descripcion\":\"LAPTOP HP 240G Y SOPORTE VENTILADOR 4200 ANTICIPO 2100\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"2100\",\"total\":\"2100\"}]', 0, 2100, 2100, 'Efectivo', '2020-03-14 00:21:17'),
(415, 10366, 19, 61, '[{\"id\":\"352\",\"descripcion\":\"PULPO 8 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"89\",\"total\":\"89\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"7\",\"stock\":\"138\",\"precio\":\"15\",\"total\":\"105\"},{\"id\":\"76\",\"descripcion\":\"CONECTOR DE CORRIENTE MACHO 3p5 MM SYSCOM\",\"cantidad\":\"7\",\"stock\":\"146\",\"precio\":\"15\",\"total\":\"105\"}]', 0, 299, 299, 'Efectivo', '2020-03-16 17:43:50'),
(417, 10367, 20, 61, '[{\"id\":\"363\",\"descripcion\":\"CASE DISCO DURO SATA35\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"480\",\"total\":\"480\"},{\"id\":\"175\",\"descripcion\":\"EXTERNAL CASE PARA DISCO DURO 2P5 VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"148\",\"total\":\"148\"}]', 0, 628, 628, 'Efectivo', '2020-03-17 20:51:33'),
(418, 10368, 19, 61, '[{\"id\":\"227\",\"descripcion\":\"MEMORIA USB ADATA DE 32GB\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"140\",\"total\":\"140\"}]', 0, 140, 140, 'Efectivo', '2020-03-18 17:40:01'),
(419, 10369, 19, 61, '[{\"id\":\"364\",\"descripcion\":\"2 CARTUCHOS\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"560\",\"total\":\"560\"}]', 0, 560, 560, 'Efectivo', '2020-03-18 18:13:04'),
(420, 10370, 19, 61, '[{\"id\":\"246\",\"descripcion\":\"MEMORIA USB BLACKPCS 16GB ROJO\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"90\",\"total\":\"90\"},{\"id\":\"322\",\"descripcion\":\"USB HYUNDAI 16 GB\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 180, 180, 'Efectivo', '2020-03-18 19:00:08'),
(421, 10371, 19, 61, '[{\"id\":\"322\",\"descripcion\":\"USB HYUNDAI 16 GB\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2020-03-19 00:20:36'),
(422, 10372, 19, 61, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"250\",\"total\":\"250\"}]', 0, 250, 250, 'Efectivo', '2020-03-19 22:14:38'),
(423, 10373, 19, 61, '[{\"id\":\"227\",\"descripcion\":\"MEMORIA USB ADATA DE 32GB\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"140\",\"total\":\"140\"}]', 0, 140, 140, 'Efectivo', '2020-03-19 22:59:16'),
(424, 10374, 19, 61, '[{\"id\":\"148\",\"descripcion\":\"MEMORIA MICROS SD DE 32 GB MARCA BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"118\",\"total\":\"118\"}]', 0, 118, 118, 'Efectivo', '2020-03-20 00:55:10'),
(425, 10375, 19, 61, '[{\"id\":\"332\",\"descripcion\":\"USB KINGSTON 32 GB\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"150\",\"total\":\"150\"}]', 0, 150, 150, 'Efectivo', '2020-03-20 16:20:40'),
(426, 10376, 19, 61, '[{\"id\":\"328\",\"descripcion\":\"TRIPIE DE ALUMINIO CON 3 NIVELES\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"280\",\"total\":\"280\"}]', 0, 280, 280, 'Efectivo', '2020-03-20 20:00:31'),
(427, 10377, 19, 61, '[{\"id\":\"95\",\"descripcion\":\"CABLE COAXIAL CON CONECTORES BNC Y ALIMENTACION 18 METROS\",\"cantidad\":\"3\",\"stock\":\"3\",\"precio\":\"148\",\"total\":\"444\"}]', 0, 444, 444, 'Efectivo', '2020-03-21 01:16:48'),
(428, 10378, 19, 61, '[{\"id\":\"246\",\"descripcion\":\"MEMORIA USB BLACKPCS 16GB ROJO\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"90\",\"total\":\"90\"}]', 0, 90, 90, 'Efectivo', '2020-03-23 17:51:42'),
(429, 10379, 19, 61, '[{\"id\":\"366\",\"descripcion\":\"mantenimiento pv\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"200\",\"total\":\"200\"}]', 0, 200, 200, 'Efectivo', '2020-03-23 19:22:58'),
(430, 10380, 19, 61, '[{\"id\":\"148\",\"descripcion\":\"MEMORIA MICROS SD DE 32 GB MARCA BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"118\",\"total\":\"118\"}]', 0, 118, 118, 'Efectivo', '2020-03-23 23:20:53'),
(431, 10381, 19, 61, '[{\"id\":\"284\",\"descripcion\":\"MOUSE OPTICO NACEB VARIOS COLORES\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"124\",\"total\":\"124\"}]', 0, 124, 124, 'Efectivo', '2020-03-24 00:07:12'),
(432, 10382, 19, 61, '[{\"id\":\"367\",\"descripcion\":\"convertidor midi a vga anticipo 240 resta 240\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"240\",\"total\":\"240\"}]', 0, 240, 240, 'Efectivo', '2020-03-24 00:15:23'),
(433, 10383, 19, 61, '[{\"id\":\"368\",\"descripcion\":\"LAPTOP HP G40 ANTICIPO 1900 Y RESTA 1900\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1900\",\"total\":\"1900\"}]', 0, 1900, 1900, 'Efectivo', '2020-03-24 00:35:08'),
(434, 10384, 19, 61, '[{\"id\":\"369\",\"descripcion\":\"DVR 8 CANALES S08TURBOL EPCOM\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"3335\",\"total\":\"3335\"}]', 0, 3335, 3335, 'Efectivo', '2020-03-25 23:52:27'),
(435, 10385, 19, 61, '[{\"id\":\"258\",\"descripcion\":\"CABLE UTP CAT 5E 100 METROS GENERICO \",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"350\",\"total\":\"350\"}]', 0, 350, 350, 'Efectivo', '2020-03-25 23:53:29'),
(436, 10386, 19, 61, '[{\"id\":\"236\",\"descripcion\":\"TELEFONO CON PANTALLA Y ALTAVOZ\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"190\",\"total\":\"190\"}]', 0, 190, 190, 'Efectivo', '2020-03-25 23:54:13'),
(437, 10387, 19, 61, '[{\"id\":\"160\",\"descripcion\":\"REPETIDOR DE SEÑAL GREEN LEAF\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"398\",\"total\":\"398\"}]', 0, 398, 398, 'Efectivo', '2020-03-26 01:14:31'),
(438, 10388, 19, 61, '[{\"id\":\"283\",\"descripcion\":\"MEMORIA MICRO SD 16 GB CLASE 10 BLACKPCS\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"80\",\"total\":\"80\"},{\"id\":\"148\",\"descripcion\":\"MEMORIA MICROS SD DE 32 GB MARCA BLACKPCS\",\"cantidad\":\"3\",\"stock\":\"1\",\"precio\":\"100\",\"total\":\"300\"}]', 0, 380, 380, 'Efectivo', '2020-03-26 01:35:15'),
(439, 10389, 19, 61, '[{\"id\":\"370\",\"descripcion\":\"VIDEO BALUM DAHUA\",\"cantidad\":\"4\",\"stock\":\"4\",\"precio\":\"70\",\"total\":\"280\"},{\"id\":\"118\",\"descripcion\":\"CONECTOR RJ 45 CAT5 POR PIEZA\",\"cantidad\":\"8\",\"stock\":\"22\",\"precio\":\"5\",\"total\":\"40\"},{\"id\":\"66\",\"descripcion\":\"CONECTOR DE CORRIENTE HEMBRA 3p5 MM SYSCOM\",\"cantidad\":\"8\",\"stock\":\"130\",\"precio\":\"15\",\"total\":\"120\"}]', 0, 440, 440, 'Efectivo', '2020-03-26 17:24:05'),
(440, 10390, 19, 61, '[{\"id\":\"179\",\"descripcion\":\"LLAVERO CAMARA ESPIA FOTOS Y VIDEO\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"250\",\"total\":\"250\"}]', 0, 250, 250, 'Efectivo', '2020-03-26 21:56:27'),
(441, 10391, 19, 61, '[{\"id\":\"371\",\"descripcion\":\"MAntenimiento preventivo anticipo 175 y resta 175\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"175\",\"total\":\"175\"}]', 0, 175, 175, 'Efectivo', '2020-03-27 00:32:16'),
(442, 10392, 19, 61, '[{\"id\":\"146\",\"descripcion\":\"ACCESS POINT TP LINK TLWA801ND\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"650\",\"total\":\"650\"}]', 0, 650, 650, 'Efectivo', '2020-03-27 01:47:49'),
(443, 10393, 19, 61, '[{\"id\":\"371\",\"descripcion\":\"MAntenimiento preventivo anticipo 175 y resta 175\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"175\",\"total\":\"175\"}]', 0, 175, 175, 'Efectivo', '2020-03-27 20:23:58'),
(444, 10394, 19, 61, '[{\"id\":\"227\",\"descripcion\":\"MEMORIA USB ADATA DE 32GB\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"140\",\"total\":\"140\"}]', 0, 140, 140, 'Efectivo', '2020-03-27 22:15:30'),
(445, 10395, 19, 61, '[{\"id\":\"190\",\"descripcion\":\"KIT CAMARAS 1080P HIKVISION DVR 8 CANALES 4 CAMARAS BALA CABLES\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"3950\",\"total\":\"3950\"},{\"id\":\"126\",\"descripcion\":\"CABLE HDMI DE 1P8 M\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"66\",\"total\":\"66\"},{\"id\":\"194\",\"descripcion\":\"DISCO DURO GENERICO 500 GB SATA 3P5\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"580\",\"total\":\"580\"}]', 0, 4596, 4596, 'Efectivo', '2020-03-30 18:15:34'),
(446, 10396, 19, 61, '[{\"id\":\"352\",\"descripcion\":\"PULPO 8 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"21\",\"precio\":\"89\",\"total\":\"89\"},{\"id\":\"106\",\"descripcion\":\"PULPO HEMBRA DE 4 ENTRADAS\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"59\",\"total\":\"59\"}]', 0, 148, 148, 'Efectivo', '2020-03-30 22:29:52'),
(447, 10397, 19, 61, '[{\"id\":\"258\",\"descripcion\":\"CABLE UTP CAT 5E 100 METROS GENERICO \",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"350\",\"total\":\"350\"}]', 0, 350, 350, 'Efectivo', '2020-03-30 22:34:49'),
(448, 10398, 19, 61, '[{\"id\":\"328\",\"descripcion\":\"TRIPIE DE ALUMINIO CON 3 NIVELES\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"280\",\"total\":\"280\"}]', 0, 280, 280, 'Efectivo', '2020-03-31 17:29:36');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usu`
--
ALTER TABLE `usu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT de la tabla `usu`
--
ALTER TABLE `usu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
