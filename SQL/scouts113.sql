

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Base de datos: `scouts113`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scouts`
--

CREATE TABLE `scouts` (
  `NumeroDocumento` varchar(250) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Apellidos` varchar(250) NOT NULL,
  `CorreoElectronico` varchar(250) NOT NULL,
  `Contrasena` varchar(250) NOT NULL,
  `TipoDocumento` int(11) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `CiudadRecidencia` varchar(250) NOT NULL,
  `DireccionResidencia` varchar(250) NOT NULL,
  `NumeroTelefonico` varchar(50) NOT NULL,
  `InstitucionEducativa` varchar(250) NOT NULL,
  `CursoActual` varchar(60) NOT NULL,
  `Jornada` varchar(50) NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `Peso` double NOT NULL,
  `Estatura` double NOT NULL,
  `TipoSangre` varchar(10) NOT NULL,
  `RH` varchar(10) NOT NULL,
  `EPS` varchar(250) NOT NULL,
  `SitioAtencion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `NoIdentidad` varchar(250) NOT NULL,
  `Rol` int(11) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Contrasena` varchar(250) NOT NULL,
  `CorreoElectronico` varchar(250) NOT NULL,
  `NoIdScout` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `scouts`
--
ALTER TABLE `scouts`
  ADD PRIMARY KEY (`NumeroDocumento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`NoIdentidad`),
  ADD KEY `NoIdScout` (`NoIdScout`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`NoIdScout`) REFERENCES `scouts` (`NumeroDocumento`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
