-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2023 a las 20:49:09
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `backend`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES
(1, 'Ayudante general', 'Servicio de ayudante general', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Construcción', 'Servicios de construcción en concreto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Servicios de soldadura', 'Servicios de soldadura en metales: Soldadura blanda, Soldadura fuerte y Soldadura fuerte a altas temperaturas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Plomería', 'Servicios de plomería, instalación y mantenimiento de tinacos, cisternas, redes de tuberías y transporte de agua potable a casa.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Servicio de instalación eléctrica', 'Servicio de mantenimiento e instalacion de redes electricas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Pintado de paredes y techos', 'Servicio de todo tipo de pintura en paredes y techos del hogar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Arreglos y mantenimientos del Hogar', 'Servicio de mantenimiento y arreglos comunes en el hogar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Recogida de basura', 'Servicio de recogida de basura de todo tipo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Servicios de Jardineria', 'Servicio de jardineria en espacios abiertos o cerrados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Diseño y presupuesto', 'Servicio de asesoria para diseño y presupuesto para el hogar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Otra', 'Otro tipo de servicio en el area de construccion y del hogar', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id_experiencia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `lugarDeTrabajo` varchar(255) DEFAULT NULL,
  `experienciaDeTrabajo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses`
--

CREATE TABLE `intereses` (
  `id_intereses` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertaempleos`
--

CREATE TABLE `ofertaempleos` (
  `id_ofertaEmpleo` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ofertaempleos`
--

INSERT INTO `ofertaempleos` (`id_ofertaEmpleo`, `titulo`, `correo`, `salario`, `descripcion`, `ubicacion`, `duracion`, `celular`, `id_categoria`, `id_usuario`, `createdAt`, `updatedAt`) VALUES
(1, 'caminar', 'capotejhon173@gmail.com', 320000, 'sjdngl.nsgeblhnkialnañ', 'popayan', '3 meses', 2147483647, 6, 1, '2023-05-24 02:00:18', '2023-05-24 02:09:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE `postulaciones` (
  `id_postulaciones` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_ofertaEmpleo` int(11) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id_rol` int(11) NOT NULL,
  `nombreRol` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id_rol`, `nombreRol`, `createdAt`, `updatedAt`) VALUES
(1, 'Postulante', '2023-05-23 03:43:20', '2023-05-23 03:43:20'),
(2, 'Empleador', '2023-05-23 03:43:26', '2023-05-23 03:43:26'),
(3, 'Administrador', '2023-05-24 15:42:14', '2023-05-24 15:42:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230311202810-create-rol.js'),
('20230311202817-create-usuario.js'),
('20230311202818-create-categoria.js'),
('20230311203440-create-oferta-empleo.js'),
('20230311204147-create-intereses.js'),
('20230311204511-create-usuario-rol.js'),
('20230311205118-create-postulaciones.js'),
('20230311205508-create-experiencia.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariorols`
--

CREATE TABLE `usuariorols` (
  `id_usuarioRol` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `nacionalidad` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `documento` float DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `fotoPerfil` varchar(255) DEFAULT NULL,
  `fechaNacimiento` varchar(255) DEFAULT NULL,
  `telefono` float DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_rol` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombres`, `apellidos`, `nacionalidad`, `correo`, `documento`, `ciudad`, `fotoPerfil`, `fechaNacimiento`, `telefono`, `direccion`, `username`, `password`, `id_rol`, `createdAt`, `updatedAt`) VALUES
(1, 'john', 'capote', 'colombia', 'jhon173@gmail.com', 32145600, 'popayan', 'url', '2003-05-18', 3217980000, 'calle 14', 'jhonc23', '$2b$10$fwMKFYRldBr01nLFcYbGh.yq.9LfGrPBQCeCj/nK/WeYuP7WoxHbW', 2, '2023-05-23 04:02:10', '2023-05-23 04:02:10'),
(2, 'andres estiben', 'pastrana carso', 'colombia', 'andres23@gmail.com', 1061810000, 'popayan', 'url', '2001-06-23', 3217850000, 'calle 64 N11-24', 'andres23', '$2b$10$5KhROlLaqbdVnQx32snt.uZdX64AImRXTK.ahzKOC/lGQtlToVv26', 2, '2023-05-23 23:16:43', '2023-05-23 23:16:43'),
(3, 'JHON EDISON', 'CAPOTE ROJAS', 'colombia', 'capotejhon173@gmail.com', 1061540000, 'popayan', 'url', '08/11/1998', 3246770000, 'calle 64 CN #11-23', 'jhonc23', '$2b$10$kNYCqYtoOeg7nH3mPRSeGOP7JkBhIQuhxDjCQqeskCyRSz.4UWf5a', 3, '2023-05-24 15:44:39', '2023-05-24 15:44:39'),
(4, 'JHON ', ' ROJAS', 'colombia', 'prueba@gmail.com', 1061540000, 'popayan', 'url', '08/11/1998', 3246770000, 'calle 64 CN #11-23', 'jhonc23', '$2b$10$zRmdT75XtNPJoL8A.zZ0Cer.4lNgkH6SXYdQFk8vjajrRW5dqRm36', 1, '2023-05-24 16:47:06', '2023-05-24 16:47:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id_experiencia`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD PRIMARY KEY (`id_intereses`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `ofertaempleos`
--
ALTER TABLE `ofertaempleos`
  ADD PRIMARY KEY (`id_ofertaEmpleo`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id_postulaciones`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_ofertaEmpleo` (`id_ofertaEmpleo`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `usuariorols`
--
ALTER TABLE `usuariorols`
  ADD PRIMARY KEY (`id_usuarioRol`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id_experiencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intereses`
--
ALTER TABLE `intereses`
  MODIFY `id_intereses` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ofertaempleos`
--
ALTER TABLE `ofertaempleos`
  MODIFY `id_ofertaEmpleo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  MODIFY `id_postulaciones` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuariorols`
--
ALTER TABLE `usuariorols`
  MODIFY `id_usuarioRol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `experiencia_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD CONSTRAINT `intereses_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `intereses_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `ofertaempleos`
--
ALTER TABLE `ofertaempleos`
  ADD CONSTRAINT `ofertaempleos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `ofertaempleos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD CONSTRAINT `postulaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `postulaciones_ibfk_2` FOREIGN KEY (`id_ofertaEmpleo`) REFERENCES `ofertaempleos` (`id_ofertaEmpleo`);

--
-- Filtros para la tabla `usuariorols`
--
ALTER TABLE `usuariorols`
  ADD CONSTRAINT `usuariorols_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rols` (`id_rol`),
  ADD CONSTRAINT `usuariorols_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rols` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
