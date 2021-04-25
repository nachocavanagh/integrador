-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2021 a las 15:38:59
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_producto`, `id_usuario`, `texto`, `fecha_creacion`) VALUES
(21, 21, 1, 'increible auto, muy recomendable', '2021-04-01'),
(22, 23, 2, 'auto perfecto para la familia', '2021-04-05'),
(23, 37, 5, 'perfecta suv para la ciudad', '2021-04-06'),
(24, 22, 3, 'excelente deportivo', '2021-04-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `url_img` varchar(255) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `anio` date NOT NULL,
  `caracteristicas` varchar(255) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `url_img`, `id_usuarios`, `nombre_producto`, `fecha_creacion`, `marca`, `modelo`, `anio`, `caracteristicas`, `color`, `precio`, `descripcion`) VALUES
(17, 'http://localhost:3000/images/products/mustanggt.jpg', 2, 'ford mustang', '2020-12-01', 'ford', 'mustang gt', '2021-04-06', NULL, 'naranja', 10000000, NULL),
(18, 'http://localhost:3000/images/products/sirocco.jpeg', 4, 'Volkswagen scirocco', '2021-01-13', 'volkswagen', 'scrirocco gts', '2016-04-23', NULL, 'negro', 5000000, NULL),
(19, 'http://localhost:3000/images/products/golf.jpeg', 3, 'Volkswagen Golf ', '2021-01-05', 'volkswagen', 'golf gti', '2020-05-28', NULL, 'blanco', 5000000, NULL),
(20, 'http://localhost:3000/images/products/vento.jpeg', 4, 'volkswagen vento', '2021-01-12', 'volkswagen', 'vento gli', '2014-03-24', NULL, 'azul', 3000000, NULL),
(21, 'http://localhost:3000/images/products/amarokv6.jpeg', 2, 'volkswagen amarok', '2021-01-13', 'volkswagen', 'amarok v6 dark label', '2020-02-17', NULL, 'negra', 7000000, NULL),
(22, 'http://localhost:3000/images/products/auditt.jpeg', 5, 'audi tt', '2021-02-09', 'audi', 'tt rs ', '2019-09-17', NULL, 'blanco', 8000000, NULL),
(23, 'http://localhost:3000/images/products/audia6.jpeg', 1, 'audi a6 s', '2020-11-18', 'audi', 'a6 s', '2016-04-23', NULL, 'rojo', 5000000, NULL),
(24, 'http://localhost:3000/images/products/audiq5.jpeg', 4, 'audi q5  rs ', '2021-01-12', 'audi', 'q5 rs', '2018-05-09', NULL, 'negro', 7000000, NULL),
(32, 'http://localhost:3000/images/products/camaro.jpeg', 2, 'jeep cherokee srt', '2021-01-04', 'jeep', 'cherokee srt', '2021-04-05', NULL, 'plagada', 10000000, NULL),
(33, 'http://localhost:3000/images/products/rsq8.jpg', 5, 'audi rs q8', '2021-03-16', 'audi', 'rs q8', '2021-04-01', NULL, 'gris', 12000000, NULL),
(34, 'http://localhost:3000/images/products/gtrpro.jpg', 3, 'mercedes benz gt t', '2021-03-08', 'mercedes benz', 'amg gt r pro', '2018-12-12', NULL, 'verde', 14700000, NULL),
(35, 'http://localhost:3000/images/products/camaro.jpeg', 2, 'chevrolet camaro', '2021-04-12', 'chevrolet', 'camaro ss', '2015-03-23', NULL, 'amarillo', 6000000, NULL),
(36, 'http://localhost:3000/images/products/camaro.jpeg', 2, 'jeep cherokee srt', '2021-01-04', 'jeep', 'cherokee srt', '2021-04-05', NULL, 'plagada', 10000000, NULL),
(37, 'http://localhost:3000/images/products/rsq8.jpg', 5, 'audi rs q8', '2021-03-16', 'audi', 'rs q8', '2021-04-01', NULL, 'gris', 12000000, NULL),
(38, 'http://localhost:3000/images/products/gtrpro.jpg', 3, 'mercedes benz gt t', '2021-03-08', 'mercedes benz', 'amg gt r pro', '2018-12-12', NULL, 'verde', 14700000, NULL),
(39, 'http://localhost:3000/images/products/camaro.jpeg', 2, 'chevrolet camaro', '2021-04-12', 'chevrolet', 'camaro ss', '2015-03-23', NULL, 'amarillo', 6000000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `numero_telefono` int(11) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `fecha_nacimiento`, `numero_telefono`, `mail`, `contrasena`) VALUES
(1, 'igancio', 'cavangh', '2021-02-09', 1156342517, 'icavangh@gmail.com', 'nacho1234'),
(2, 'bautista', 'lanusse', '2000-11-18', 1123492628, 'blanusse@hotmail.com', 'blanusse123'),
(3, 'valentino', 'grisanti', '2000-02-11', 1124992525, 'vgrrisanti@gmail.com', 'vgrisanti1234'),
(4, 'pedro', 'torres', '2021-07-02', 1167543902, 'pepotorres@gmail.com', 'pepito1234'),
(5, 'juan', 'gutierrez', '2020-04-07', 1176834920, 'gutierrez.j@gmail.com', 'juancito123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuarios`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
