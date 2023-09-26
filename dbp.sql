-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2023 a las 04:52:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `géneros`
--

CREATE TABLE `géneros` (
  `Género` varchar(40) NOT NULL,
  `id_género` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `géneros`
--

INSERT INTO `géneros` (`Género`, `id_género`) VALUES
('Terror', 1),
('Suspenso', 2),
('Comedia', 3),
('Accion', 4),
('Drama', 5),
('Musical', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `peliculas_id` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `descripcion` text NOT NULL,
  `director` varchar(40) NOT NULL,
  `id_género` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`peliculas_id`, `titulo`, `descripcion`, `director`, `id_género`) VALUES
(1, 'Buenos Muchachos', 'La verdadera historia de Henry Hill, un niño de Brooklyn mitad irlandés, mitad siciliano que es adoptado por gánsteres del vecindario a una edad temprana y asciende en las filas de una familia mafiosa bajo la dirección de Jimmy Conway.', 'Martin Scorsese', 5),
(2, 'Barbie', 'Barbie y Ken se lo están pasando en grande en el colorido y aparentemente perfecto mundo de Barbie Land. Sin embargo, cuando tienen la oportunidad de ir al mundo real, pronto descubren las alegrías y los peligros de vivir entre humanos.\r\n', 'Greta Gerwig', 3),
(3, 'Mad Max: Camino De La Furia', 'Una historia apocalíptica ambientada en los confines de nuestro planeta, en un paisaje desértico y desolado donde la humanidad está destrozada y casi todo el mundo está enloquecido luchando por las necesidades de la vida. Dentro de este mundo existen dos rebeldes huyendo que podrían restaurar el orden.\r\n', 'George Miller', 4),
(4, 'No es pais para viejos', 'Llewelyn Moss se topa con cadáveres, 2 millones de dólares y un tesoro de heroína en el desierto de Texas, pero el asesino metódico Anton Chigurh viene a buscarlo, con el sheriff local Ed Tom Bell siguiéndole la pista. Los roles de presa y depredador se desdibujan cuando la búsqueda violenta del dinero y la justicia chocan.\r\n', 'The Coen Brothers', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `géneros`
--
ALTER TABLE `géneros`
  ADD PRIMARY KEY (`id_género`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`peliculas_id`),
  ADD KEY `fk_peliculas_género` (`id_género`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `géneros`
--
ALTER TABLE `géneros`
  MODIFY `id_género` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `peliculas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `fk_peliculas_género` FOREIGN KEY (`id_género`) REFERENCES `géneros` (`id_género`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
