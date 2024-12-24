-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2024 a las 23:02:29
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
(1, '6PKWLE3C3M1', 0),
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
(30, 'KPF69MKX6930', 0),
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `codigos_docentes`
--
ALTER TABLE `codigos_docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `codigos_docentes`
--
ALTER TABLE `codigos_docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
