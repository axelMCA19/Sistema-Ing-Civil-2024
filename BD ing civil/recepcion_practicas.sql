-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2024 a las 05:40:27
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
-- Base de datos: `recepcion_practicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `algebra_basica`
--

CREATE TABLE `algebra_basica` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `algebra_basica`
--

INSERT INTO `algebra_basica` (`id`, `nombre_docente`, `sigla`, `documento_entrega`, `fecha_entrega`, `nota_practica`, `nota_teoria`, `nombre_alumno`, `apellido_alumno`, `semestre`, `titulo`, `asunto`) VALUES
(13, 'juan carlos ', 'algebra ba', 'uploads/Francisco mora neuro educacion (1).pdf', '2024-08-21', 80.00, 80.00, 'axel marcelo ', 'cartagena apaza', 1, 'practica del algebra lineal', 'jhgfdsa'),
(14, 'juan carlos ', 'algebra ba', 'uploads/papalia-feldman-desarrollo-humano-12a-ed2 (1).pdf', '2024-08-21', 100.00, 100.00, 'axel marcelo ', 'cartagena apaza', 1, 'practica del algebra lineal', 'practica de algebra basica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `algebra_lineal`
--

CREATE TABLE `algebra_lineal` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dibujo_tecnico_i`
--

CREATE TABLE `dibujo_tecnico_i` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diseno_estructuras_concreto`
--

CREATE TABLE `diseno_estructuras_concreto` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diseno_estructuras_metalicas`
--

CREATE TABLE `diseno_estructuras_metalicas` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatica`
--

CREATE TABLE `estatica` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructuras_hiperstaticas`
--

CREATE TABLE `estructuras_hiperstaticas` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hidraulica_ii`
--

CREATE TABLE `hidraulica_ii` (
  `id` int(11) NOT NULL,
  `nombre_docente` varchar(100) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
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
  `documento_entrega` varchar(255) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `nota_practica` decimal(5,2) DEFAULT NULL,
  `nota_teoria` decimal(5,2) DEFAULT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `asunto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indices de la tabla `diseno_estructuras_concreto`
--
ALTER TABLE `diseno_estructuras_concreto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `diseno_estructuras_metalicas`
--
ALTER TABLE `diseno_estructuras_metalicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estatica`
--
ALTER TABLE `estatica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estructuras_hiperstaticas`
--
ALTER TABLE `estructuras_hiperstaticas`
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
-- Indices de la tabla `hidraulica_i`
--
ALTER TABLE `hidraulica_i`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hidraulica_ii`
--
ALTER TABLE `hidraulica_ii`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materiales_construccion`
--
ALTER TABLE `materiales_construccion`
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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `algebra_basica`
--
ALTER TABLE `algebra_basica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `algebra_lineal`
--
ALTER TABLE `algebra_lineal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `analisis_numerico`
--
ALTER TABLE `analisis_numerico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calculo_i`
--
ALTER TABLE `calculo_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT de la tabla `diseno_estructuras_concreto`
--
ALTER TABLE `diseno_estructuras_concreto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diseno_estructuras_metalicas`
--
ALTER TABLE `diseno_estructuras_metalicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estatica`
--
ALTER TABLE `estatica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estructuras_hiperstaticas`
--
ALTER TABLE `estructuras_hiperstaticas`
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
-- AUTO_INCREMENT de la tabla `hidraulica_i`
--
ALTER TABLE `hidraulica_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hidraulica_ii`
--
ALTER TABLE `hidraulica_ii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiales_construccion`
--
ALTER TABLE `materiales_construccion`
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
-- AUTO_INCREMENT de la tabla `topografia_i`
--
ALTER TABLE `topografia_i`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `topografia_ii`
--
ALTER TABLE `topografia_ii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
