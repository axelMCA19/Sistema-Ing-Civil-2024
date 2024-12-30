-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-12-2024 a las 22:43:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ing_civil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `algebra_basica`
--

CREATE TABLE `algebra_basica` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `algebra_basica`
--

INSERT INTO `algebra_basica` (`id`, `nombre_docente`, `sigla`, `documento_docente`, `fecha_entrega`, `nota_practica`, `nota_teoria`, `titulo`, `asunto`) VALUES
(9, 'juan carlos ', 'algebra ba', 'uploads/papalia-feldman-desarrollo-humano-12a-ed2.pdf', '2024-08-21', 35.00, 35.00, 'practica del algebra lineal', 'es una practica jovenes'),
(10, 'juan carlos ', 'algebra ba', 'uploads/Francisco mora neuro educacion.pdf', '2024-08-21', 35.00, 35.00, 'practica del algebra lineal', 'hdksjghkfjdsl'),
(11, 'juan carlos ', 'algebra ba', 'uploads/Francisco mora neuro educacion (3).pdf', '2024-08-21', 80.00, 80.00, 'practica del algebra lineal', 'trabajo practico de algebra basica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `algebra_lineal`
--

CREATE TABLE `algebra_lineal` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisis_numerico`
--

CREATE TABLE `analisis_numerico` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calculo_i`
--

CREATE TABLE `calculo_i` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calculo_ii`
--

CREATE TABLE `calculo_ii` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calculo_iii`
--

CREATE TABLE `calculo_iii` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_docentes`
--

CREATE TABLE `codigos_docentes` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `codigos_docentes`
--

INSERT INTO `codigos_docentes` (`id`, `codigo`, `estado`) VALUES
(1, '6PKWLE3C3M1', 1),
(2, 'KFWXK3W6PP2', 0),
(3, '9F6HWYPNEY3', 0),
(4, 'LNKYC3X69P4', 0),
(5, '6333KPMHER5', 0),
(6, 'YYFW3ERCLK6', 0),
(7, 'CFHM33939M7', 0),
(8, 'CYMYXFM6CE8', 0),
(9, 'HNLYPF9WFN9', 0),
(10, 'FXMLC3WCNL10', 0),
(11, '6MCHFPPCXX11', 0),
(12, 'FNFLNEX3YK12', 0),
(13, 'PN9NYE96EM13', 0),
(14, 'KWRF6PXRH314', 0),
(15, 'KCW9YFFNX915', 0),
(16, 'CMHXMEFXXK16', 0),
(17, 'LKL9HN63FC17', 0),
(18, 'XFMENM3WPW18', 0),
(19, 'YHKCHPNK6F19', 0),
(20, 'CX9PWRXREN20', 0),
(21, '6FN3NPRXPY21', 0),
(22, 'WYKCPC3RYM22', 0),
(23, '6C9LXFL36R23', 0),
(24, 'XHHNPFXFLK24', 0),
(25, 'HP3WMW6RE325', 0),
(26, 'CWLXYER99R26', 0),
(27, '6X66L6XLLP27', 0),
(28, 'L9CWMMFL3R28', 0),
(29, '6XNHXPPEM329', 0),
(30, 'KPF69MKX6930', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_universitario`
--

CREATE TABLE `codigos_universitario` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `codigos_universitario`
--

INSERT INTO `codigos_universitario` (`id`, `codigo`, `estado`) VALUES
(1, '6PKWLE3C3M', 1),
(2, 'KFWXK3W6PP', 0),
(3, '9F6HWYPNEY', 0),
(4, 'LNKYC3X69P', 0),
(5, '6333KPMHER', 0),
(6, 'YYFW3ERCLK', 0),
(7, 'CFHM33939M', 0),
(8, 'CYMYXFM6CE', 0),
(9, 'HNLYPF9WFN', 0),
(10, 'FXMLC3WCNL', 0),
(11, '6MCHFPPCXX', 0),
(12, 'FNFLNEX3YK', 0),
(13, 'PN9NYE96EM', 0),
(14, 'KWRF6PXRH3', 0),
(15, 'KCW9YFFNX9', 0),
(16, 'CMHXMEFXXK', 0),
(17, 'LKL9HN63FC', 0),
(18, 'XFMENM3WPW', 0),
(19, 'YHKCHPNK6F', 0),
(20, 'CX9PWRXREN', 0),
(21, '6FN3NPRXPY', 0),
(22, 'WYKCPC3RYM', 0),
(23, '6C9LXFL36R', 0),
(24, 'XHHNPFXFLK', 0),
(25, 'HP3WMW6RE3', 0),
(26, 'CWLXYER99R', 0),
(27, '6X66L6XLLP', 0),
(28, 'L9CWMMFL3R', 0),
(29, '6XNHXPPEM3', 0),
(30, 'KPF69MKX69', 0),
(31, 'MKFKMENYHY', 0),
(32, 'KYCFE6P9CM', 0),
(33, 'CCEHXXF9F9', 0),
(34, '6NHW3CCYPP', 0),
(35, 'M9M9FWLRPL', 0),
(36, 'NE9FRXXEYK', 0),
(37, 'WMRKWXMFFX', 0),
(38, 'H3PNLL3WP9', 0),
(39, 'YFFYCY6P6X', 0),
(40, 'YNPXCNMH93', 0),
(41, 'FXMPKC3XPH', 0),
(42, 'H3MHE69FM6', 0),
(43, 'CYNCNHH39X', 0),
(44, 'H33LLHXHKK', 0),
(45, 'NE6RH69HEY', 0),
(46, 'PCL3Y6MM3L', 0),
(47, 'LWC3HNNYNK', 0),
(48, 'H6EW99RCR9', 0),
(49, 'WC9CKYKWR9', 0),
(50, '3F33L39Y96', 0),
(51, 'WCCLN6NNKX', 0),
(52, 'YCLF3M66C3', 0),
(53, 'MMRLNER3MP', 0),
(54, 'YYKE3NPM3L', 0),
(55, 'HRL9KHNYNE', 0),
(56, 'RWLX9RMWC3', 0),
(57, 'WCNRXFPLYE', 0),
(58, 'X9393KFFN6', 0),
(59, 'FLH66X9NHC', 0),
(60, 'X3MHKLCEMP', 0),
(61, 'KLL6YKMELE', 0),
(62, '96CPMNRRHC', 0),
(63, '6X6FNWWKCF', 0),
(64, 'W3MC9MCPFP', 0),
(65, 'CERYEXEP33', 0),
(66, 'YRC63CPYYE', 0),
(67, 'CK6NWCPP3L', 0),
(68, 'EHPF3RNWFY', 0),
(69, 'MRFN6YW3HK', 0),
(70, 'XP6NFCYKME', 0),
(71, 'XR6NEFP9LK', 0),
(72, 'MFLREWWXPF', 0),
(73, 'K3YH9FLHKN', 0),
(74, '69EKHWWK63', 0),
(75, 'WCHHHRXLXK', 0),
(76, 'H6HKREFXHM', 0),
(77, 'YM9MWF3PCE', 0),
(78, 'PEECXWEPL3', 0),
(79, 'XNN6N33CCC', 0),
(80, '6ENFC6RHEN', 0),
(81, 'M9RLN9HXNX', 0),
(82, 'E6EWPL9MWC', 0),
(83, 'M6XXR9ECHR', 0),
(84, '63CCHCRC6M', 0),
(85, 'WRYCF6XPY3', 0),
(86, 'HYE3KLC66X', 0),
(87, '6PWCPHNMFY', 0),
(88, '9RLEM63YFN', 0),
(89, 'PYCMPFPWMP', 0),
(90, 'LMPFCCKE3Y', 0),
(91, '63N693XREE', 0),
(92, 'KPKXXYLPRC', 0),
(93, 'FEHYHYWLHW', 0),
(94, 'F6EWYW9W6L', 0),
(95, 'KLNR9R3FXP', 0),
(96, 'HWXEMMHNPR', 0),
(97, 'XK6PX3PNNX', 0),
(98, '6XKM6N6CWR', 0),
(99, 'EE33LFMRFL', 0),
(100, 'P3F66P6R93', 0),
(101, 'XCYR9PMPHR', 0),
(102, 'FE3WK93W63', 0),
(103, 'CLPPMM6NXN', 0),
(104, '9NEYN3WMYY', 0),
(105, 'KHRC66YYXR', 0),
(106, 'FK639FHPPL', 0),
(107, 'EWNMRYMPE3', 0),
(108, 'EKXNNHREY9', 0),
(109, 'C3XHHM6LMK', 0),
(110, 'C3XE9RNMRP', 0),
(111, 'PHLFY6LE9R', 0),
(112, 'RMKEXFW3ML', 0),
(113, 'EHEHMXN9NX', 0),
(114, 'NFRWEXXFWM', 0),
(115, 'LWC3EW93WF', 0),
(116, 'LFMXKNLH9F', 0),
(117, '9CRK6XXWX9', 0),
(118, '36NRXE3WXF', 0),
(119, 'KXW9WNM3RW', 0),
(120, 'EEHC9HH9R9', 0),
(121, 'MWPWFHN9HE', 0),
(122, '93ERPMRPFN', 0),
(123, 'HFRMHMCHN9', 0),
(124, 'CYLH9WPYRN', 0),
(125, 'H9LYMMCHKY', 0),
(126, 'LHH9MEYMHK', 0),
(127, '6KX36KXHMN', 0),
(128, '93HPKXE3YC', 0),
(129, 'X3HXYLMLFC', 0),
(130, 'CLPKRRKEMF', 0),
(131, 'HR3KH963YK', 0),
(132, 'KXRFMPREEY', 0),
(133, 'XK9939EC3R', 0),
(134, 'F6X3663NMC', 0),
(135, '6K6CHKRCKM', 0),
(136, 'FLYPXRNXWN', 0),
(137, 'KMML3NPE3L', 0),
(138, 'M3LXPNNPCK', 0),
(139, 'MN6RFFF9XM', 0),
(140, 'LRL6N3PERR', 0),
(141, 'KXP6YNHRPR', 0),
(142, 'WYCNFNRYKW', 0),
(143, 'YC9MLWKHPL', 0),
(144, 'MKMHR3R63R', 0),
(145, 'MEMEL66XM6', 0),
(146, 'RLECP6HCL6', 0),
(147, 'HEXLRKKPCM', 0),
(148, 'E6PPCWP63M', 0),
(149, 'FR69YYLX3L', 0),
(150, '9XYWXLMLNL', 0),
(151, 'WNKN9NN3KN', 0),
(152, '3KMX69KEX3', 0),
(153, 'WYX93EYWLE', 0),
(154, 'PKF9F3REE6', 0),
(155, 'W3KE39HXNF', 0),
(156, 'LNYW6M6PCC', 0),
(157, 'WENYYCNFYX', 0),
(158, 'FHWHFXMLEM', 0),
(159, 'RWHWLW6HKP', 0),
(160, '6CRCLRYYFE', 0),
(161, 'RPHH36NYNK', 0),
(162, 'KCWHL6PLHF', 0),
(163, 'YREP3FXNCW', 0),
(164, 'EWNHE9YXMK', 0),
(165, 'KYFWNNC69Y', 0),
(166, 'WWFYF9HCPN', 0),
(167, 'PMRXFFRCHX', 0),
(168, 'FPMCPXNHXR', 0),
(169, 'YLEWN3CY9R', 0),
(170, 'L69P33RLEE', 0),
(171, 'RKCFLLHYMY', 0),
(172, 'CPLYKXKL6L', 0),
(173, '9RWXK3FR6M', 0),
(174, '6EEYC6NMP9', 0),
(175, 'HMMNCXWXFK', 0),
(176, 'KW9YEFYRE3', 0),
(177, 'LYRCXLNH3X', 0),
(178, 'PPP6R696XF', 0),
(179, 'F3XXCMF3MR', 0),
(180, '6WYHHYMFEN', 0),
(181, 'H9KF3KMKFR', 0),
(182, 'Y9EXKHXE9E', 0),
(183, 'MCPWKKE9K9', 0),
(184, '3CNKMRM93R', 0),
(185, 'WCH3H3NMP3', 0),
(186, 'CEC9L3EHFN', 0),
(187, '3W9PPC9H6M', 0),
(188, '6HW9FHW3WC', 0),
(189, 'YKMPFR6H6M', 0),
(190, 'LMF666KFNF', 0),
(191, 'EHEWMLRXEK', 0),
(192, 'MWL9KFNFF3', 0),
(193, 'LHEWF963HE', 0),
(194, 'YLLLLNNKPP', 0),
(195, 'C3WCNHY6RY', 0),
(196, 'XCY9YPL3HR', 0),
(197, 'CYL9WEEHXL', 0),
(198, 'CNKPHXHNNP', 0),
(199, 'WXEF3W9FM6', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dibujo_tecnico_i`
--

CREATE TABLE `dibujo_tecnico_i` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dibujo_tecnico_ii`
--

CREATE TABLE `dibujo_tecnico_ii` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `carnet` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombres`, `apellidos`, `codigo`, `departamento`, `password`, `carnet`) VALUES
(1, 'AXEL MARCELO', 'CARTAGENA APAZA', '6PKWLE3C3M1', '', '$2y$10$nqNUclLOg9Fjo2wmLKTMNeitDTbMOIO3jTr/8PGvznRTs4Omdkt9u', '10848352');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatica`
--

CREATE TABLE `estatica` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructuras_isostaticas`
--

CREATE TABLE `estructuras_isostaticas` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fisica_i`
--

CREATE TABLE `fisica_i` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fisica_ii`
--

CREATE TABLE `fisica_ii` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fisica_iii`
--

CREATE TABLE `fisica_iii` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geologia_aplicada`
--

CREATE TABLE `geologia_aplicada` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hidraulica_i`
--

CREATE TABLE `hidraulica_i` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales_construccion`
--

CREATE TABLE `materiales_construccion` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mecanica_suelos_laboratorio_i`
--

CREATE TABLE `mecanica_suelos_laboratorio_i` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `probabilidades_estadisticas`
--

CREATE TABLE `probabilidades_estadisticas` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quimica_general`
--

CREATE TABLE `quimica_general` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resistencia_materiales_i`
--

CREATE TABLE `resistencia_materiales_i` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resistencia_materiales_ii`
--

CREATE TABLE `resistencia_materiales_ii` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnologia_hormigon_laboratorio`
--

CREATE TABLE `tecnologia_hormigon_laboratorio` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topografia_i`
--

CREATE TABLE `topografia_i` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topografia_ii`
--

CREATE TABLE `topografia_ii` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_docente` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universitarios`
--

CREATE TABLE `universitarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `semestre` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `carnet` varchar(20) NOT NULL,
  `codigo_universitario` varchar(50) NOT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `universitarios`
--

INSERT INTO `universitarios` (`id`, `nombres`, `apellidos`, `semestre`, `password`, `carnet`, `codigo_universitario`, `foto_perfil`) VALUES
(7, 'AXEL MARCELO', 'CARTAGENA APAZA', '3', '$2y$10$wEspkfQfzItpLRJFAnn96O6wOJhn6JOIpp1cfG3VmASg9uJuZw1m2', '10848352', '6PKWLE3C3M', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `algebra_basica`
--
ALTER TABLE `algebra_basica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `algebra_lineal`
--
ALTER TABLE `algebra_lineal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `analisis_numerico`
--
ALTER TABLE `analisis_numerico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calculo_i`
--
ALTER TABLE `calculo_i`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calculo_ii`
--
ALTER TABLE `calculo_ii`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calculo_iii`
--
ALTER TABLE `calculo_iii`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `codigos_universitario`
--
ALTER TABLE `codigos_universitario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `dibujo_tecnico_i`
--
ALTER TABLE `dibujo_tecnico_i`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dibujo_tecnico_ii`
--
ALTER TABLE `dibujo_tecnico_ii`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `estatica`
--
ALTER TABLE `estatica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estructuras_isostaticas`
--
ALTER TABLE `estructuras_isostaticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fisica_i`
--
ALTER TABLE `fisica_i`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fisica_ii`
--
ALTER TABLE `fisica_ii`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fisica_iii`
--
ALTER TABLE `fisica_iii`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `geologia_aplicada`
--
ALTER TABLE `geologia_aplicada`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hidraulica_i`
--
ALTER TABLE `hidraulica_i`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materiales_construccion`
--
ALTER TABLE `materiales_construccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mecanica_suelos_laboratorio_i`
--
ALTER TABLE `mecanica_suelos_laboratorio_i`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `probabilidades_estadisticas`
--
ALTER TABLE `probabilidades_estadisticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quimica_general`
--
ALTER TABLE `quimica_general`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resistencia_materiales_i`
--
ALTER TABLE `resistencia_materiales_i`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resistencia_materiales_ii`
--
ALTER TABLE `resistencia_materiales_ii`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tecnologia_hormigon_laboratorio`
--
ALTER TABLE `tecnologia_hormigon_laboratorio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `topografia_i`
--
ALTER TABLE `topografia_i`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `topografia_ii`
--
ALTER TABLE `topografia_ii`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `universitarios`
--
ALTER TABLE `universitarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carnet` (`carnet`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `algebra_basica`
--
ALTER TABLE `algebra_basica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `algebra_lineal`
--
ALTER TABLE `algebra_lineal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `analisis_numerico`
--
ALTER TABLE `analisis_numerico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `calculo_i`
--
ALTER TABLE `calculo_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calculo_ii`
--
ALTER TABLE `calculo_ii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calculo_iii`
--
ALTER TABLE `calculo_iii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `codigos_universitario`
--
ALTER TABLE `codigos_universitario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de la tabla `dibujo_tecnico_i`
--
ALTER TABLE `dibujo_tecnico_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dibujo_tecnico_ii`
--
ALTER TABLE `dibujo_tecnico_ii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estatica`
--
ALTER TABLE `estatica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estructuras_isostaticas`
--
ALTER TABLE `estructuras_isostaticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fisica_i`
--
ALTER TABLE `fisica_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fisica_ii`
--
ALTER TABLE `fisica_ii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fisica_iii`
--
ALTER TABLE `fisica_iii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `geologia_aplicada`
--
ALTER TABLE `geologia_aplicada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hidraulica_i`
--
ALTER TABLE `hidraulica_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiales_construccion`
--
ALTER TABLE `materiales_construccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mecanica_suelos_laboratorio_i`
--
ALTER TABLE `mecanica_suelos_laboratorio_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `probabilidades_estadisticas`
--
ALTER TABLE `probabilidades_estadisticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quimica_general`
--
ALTER TABLE `quimica_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resistencia_materiales_i`
--
ALTER TABLE `resistencia_materiales_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resistencia_materiales_ii`
--
ALTER TABLE `resistencia_materiales_ii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tecnologia_hormigon_laboratorio`
--
ALTER TABLE `tecnologia_hormigon_laboratorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `topografia_i`
--
ALTER TABLE `topografia_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `topografia_ii`
--
ALTER TABLE `topografia_ii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `universitarios`
--
ALTER TABLE `universitarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
