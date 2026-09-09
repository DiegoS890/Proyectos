-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 09-09-2026 a las 02:18:33
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
-- Base de datos: `usuarios_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `telefono`, `direccion`, `fecha_registro`) VALUES
(1, 'diego trejo', 'trejo123@gmail.com', '$2y$10$FUQJvCNsjX16bmB/0FzOQeMe/.PnqQZzLAtlsO4jn4dO.QC8zWN6a', '', '', '2026-08-28 05:31:25'),
(2, 'Juan Pérez', 'juan@gmail.com', '$2y$10$H9E.ZRmKp9xmrQts.E0VX.E.2CzteR0zX23BdNwsjW40oOKunldYG', '55 1234 5678', 'Calle 123, Colonia Centro, CDMX', '2026-08-29 05:00:28'),
(3, 'Armando Paredes', 'Armando@gmail.com', '$2y$10$YV8EXpK.io2Dge7Jtno4Se0R5/wFufnAbsegXgciDcm4HfrLLwde2', '55 8900 6790', 'Calle Dos, Colonia San Lucas, CDMX', '2026-08-29 05:02:20'),
(4, 'Pedro Vazquez', 'pedro@gmail.com', '$2y$10$AH7CMfLpDlaCkxFwrmXbEOeIyRqSzMHdQogRkHZooC0I/rJf.N0cy', '55 2434 9618', 'Calle Tres, Colonia San Lucas, CDMX', '2026-08-29 05:03:46'),
(5, 'Carlos Ortega', 'carlos@gmail.com', '$2y$10$Ug83qdfdoUCWTa6gfIpBzOpK7izh/e2w/Okx3Zdzl92.cDuOt1sqC', '55 1490 7710', 'Calle Cuatro, Colonia San Lucas, CDMX', '2026-08-29 05:05:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
