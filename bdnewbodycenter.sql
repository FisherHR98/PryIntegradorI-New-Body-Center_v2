-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2022 a las 00:38:30
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdnewbodycenter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `CODIGO` varchar(5) NOT NULL,
  `PASSW` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`CODIGO`, `PASSW`) VALUES
('A001', '12345'),
('A002', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `ID` int(5) NOT NULL,
  `NOMAPE` varchar(60) NOT NULL,
  `DNI_CLI` varchar(8) NOT NULL,
  `TELF` varchar(9) NOT NULL,
  `PACK` varchar(25) NOT NULL,
  `FECHA` varchar(25) NOT NULL,
  `HORA` time(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`ID`, `NOMAPE`, `DNI_CLI`, `TELF`, `PACK`, `FECHA`, `HORA`) VALUES
(2, 'Santiago', '75240085', '956279778', '02', '2022-05-27', '17:14:00.00000'),
(3, 'Diego', '75240105', '992512340', '04', '2022-06-02', '09:12:00.00000'),
(4, 'Fernando', '98498498', '926755611', '04', '2022-05-27', '08:19:00.00000'),
(5, 'Alex', '84897848', '956279778', '02', '2022-05-31', '19:17:00.00000'),
(18, 'fisher', '75240085', '956279778', '01', '2022-06-28', '17:46:00.00000'),
(19, 'fisher', '75240085', '956279778', '01', '2022-06-13', '11:34:00.00000'),
(21, 'Yeferson', '75240085', '956279778', '03', '2022-06-28', '16:31:00.00000'),
(22, 'Yeferson', '75240085', '956279778', '03', '2022-06-29', '21:02:00.00000'),
(23, 'Yeferson', '12345678', '956279778', '04', '2022-06-29', '20:05:00.00000'),
(24, 'fisher', '75240085', '956279778', '02', '2022-07-06', '21:07:00.00000'),
(25, 'Yeferson', '75240087', '956279778', '02', '2022-06-29', '21:11:00.00000'),
(26, 'Yeferson', '75240086', '956279778', '04', '2022-06-27', '17:09:00.00000'),
(27, 'Yeferson', '75240105', '956279778', '03', '2022-07-05', '21:13:00.00000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `DNI_CLI` varchar(30) NOT NULL,
  `NOMB` varchar(30) DEFAULT NULL,
  `APE` varchar(30) DEFAULT NULL,
  `TELF` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `ID` int(5) NOT NULL,
  `TURN` varchar(25) NOT NULL,
  `PACK` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`ID`, `TURN`, `PACK`) VALUES
(0, '', 0),
(0, '', 0),
(0, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `CODE_P` varchar(30) NOT NULL,
  `NOMB_PAQ` varchar(30) DEFAULT NULL,
  `PRECIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paquete`
--

INSERT INTO `paquete` (`CODE_P`, `NOMB_PAQ`, `PRECIO`) VALUES
('01', 'POSTLIPO', 450),
('02', 'FLACIDEZ', 450),
('03', 'REDUCTOR', 450),
('04', 'EMSCULT', 550),
('05', 'PEPTONAS', 1300);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NOMAPE` (`NOMAPE`),
  ADD KEY `DNI` (`DNI_CLI`),
  ADD KEY `TELF` (`TELF`),
  ADD KEY `DNI_CLI` (`DNI_CLI`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`DNI_CLI`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`CODE_P`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
