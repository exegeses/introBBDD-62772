-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-01-2022 a las 13:44:15
-- Versión del servidor: 8.0.26
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int primary key auto_increment NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(75) NOT NULL,
  `idRol` tinyint NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaLogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `email`, `clave`, `idRol`, `fechaInicio`, `fechaNacimiento`, `fechaLogin`) VALUES
(1, 'Richard', 'Hendricks', 'rhendricks@piedpiper.com', '$2a$12$q.80G07y2k4uksRf87/Lt.rwDOknmKDtpWrSni6tRD5vARMSBdR2.', 1, '2014-04-06 12:00:00', '1983-05-13', '2020-04-06 12:00:00'),
(2, 'Bertram', 'Gilfoyle', 'bgilfoyle@piedpiper.com', '$2a$12$gIiB70V/SJX3gzPdlbyuduLx6LziqdMEuHB7Ev5TxB.m0Q5cGXUni', 2, '2014-04-06 12:00:00', '1980-02-06', '2020-04-06 12:00:00'),
(3, 'Dinesh', 'Chugtai', 'dchugtai@piedpiper.com', '$2a$12$CdZgw2fZ55as5amTBcibUua/WLs653qh36jeSoi/V./6A5YRHaJqi', 2, '2014-04-06 12:00:00', '1982-11-20', '2020-04-05 18:30:00'),
(4, 'Donald \"Jared\"', 'Dunn', 'jdunn@piedpiper.com', '$2a$12$jiu3UiKWAAZK6YIGwdE8EeosAn3Ydh1HOv/f7b.B3zTW.C/kG4By2', 2, '2014-04-06 12:00:00', '1986-08-16', '2020-04-06 12:00:00'),
(5, 'Monica', 'Hall', 'mhall@piedpiper.com', '$2a$12$4gsRK.0UWzmuCNDATSQG1.KhhY7aPTs1YoF47bPDwFNpvu42f6rWK', 3, '2014-04-06 12:00:00', '1988-12-15', '2020-04-06 12:00:00'),
(6, 'Nelson', 'Bighetti', 'nbighetti@hooli.com', '$2a$12$gJZQfimiq4Jx67BKf.PeJ.5VX5BrQGxlYoOrGj7vUDnyxrTK33lxO', 4, '2015-08-04 12:00:00', '1988-10-01', '2019-09-09 12:00:00'),
(7, 'Ron', 'LaFlamme', 'rlaflamme@gmail.com', '$2a$12$MXIupMbMBDhToMUb7vSO6.ORcwWrESj0qVWydjnKaWF7m3L/YxKzm', 4, '2015-02-02 12:00:00', '1989-07-17', '2018-06-06 12:00:00'),
(8, 'Carla', 'Walton', 'cwalton@gmail.com', '$2a$12$H60D3.9ssnivBV3UKO.xwOsV/pnFoFDUUM3k62R5H7yAgC9faNc8a', 4, '2015-09-09 12:00:00', '1990-04-14', '2016-09-09 12:00:00'),
(9, 'Becky', 'Rosenblum', 'brosenblum@gmail.com', '$2a$12$kM2781BYcxQALSI/UQ2o3O3oUnVWUufI0W8qH3g/8cbdjgQY4jUMW', 4, '2015-02-02 12:00:00', '1998-03-28', '2018-06-06 12:00:00'),
(10, 'Danny', 'Aquilino', 'daquilino@gmail.com', '$2a$12$X56wqDdBKnIqNzhynxZLNenQdQaD5csIir3yxowPhPlrT7RjvKnrm', 4, '2015-02-02 12:00:00', '1999-08-21', '2018-06-06 12:00:00'),
(11, 'Priyanka', 'Singh', 'psingh@gmail.com', '$2a$12$0cT0dG7t9C4XGsBbXZmVduWBF.dEqEppQEZpRHgFqPgc1m/ZSQJH6', 4, '2015-02-02 12:00:00', '1998-06-14', '2018-06-06 12:00:00');

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idRol` (`idRol`);


--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_roles` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`);
COMMIT;


