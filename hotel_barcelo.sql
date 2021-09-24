-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 16-08-2021 a las 17:13:10
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel_barcelo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huesped`
--

CREATE TABLE `huesped` (
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `teléfono` int(8) NOT NULL,
  `email` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_Ingreso` date NOT NULL,
  `fecha_Salida` date NOT NULL,
  `num_Habitacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `clave` int(16) NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `email`) VALUES
(1, 'owner', 2120, ''),
(2, 'asistente', 3090, ''),
(3, 'Juan', 23023, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `huesped`
--
ALTER TABLE `huesped`
  ADD PRIMARY KEY (`num_Habitacion`),
  ADD UNIQUE KEY `IDX_NOM` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_USER` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `huesped`
--
ALTER TABLE `huesped`
  MODIFY `num_Habitacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
