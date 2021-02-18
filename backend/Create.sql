-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2021 a las 15:53:05
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `data_warehouse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channels`
--

CREATE TABLE `channels` (
  `ID` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `channel` varchar(50) NOT NULL DEFAULT '',
  `user` varchar(50) NOT NULL DEFAULT '',
  `preference` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `channels`
--

INSERT INTO `channels` (`ID`, `contact_id`, `channel`, `user`, `preference`) VALUES
(1, 1, 'Whatsapp', '54923129310', 'No molestar'),
(2, 1, 'Facebook', 'FbICa', 'Canal favorito'),
(3, 1, 'Twitter', 'FbICa', 'Sin preferencia'),
(4, 2, 'Whatsapp', '', 'Sin preferencia'),
(5, 2, 'Facebook', '', 'Sin preferencia'),
(6, 2, 'Twitter', 'Irian', 'Canal favorito'),
(7, 3, 'Whatsapp', '', 'Sin preferencia'),
(8, 3, 'Facebook', '@Fb', 'No molestar'),
(9, 3, 'Twitter', '@Fb', 'Canal favorito'),
(10, 4, 'Whatsapp', '', 'Sin preferencia'),
(11, 4, 'Facebook', '', 'Sin preferencia'),
(12, 4, 'Twitter', '', 'Sin preferencia'),
(13, 5, 'Whatsapp', '', 'Sin preferencia'),
(14, 5, 'Facebook', 'sFb', 'No molestar'),
(15, 5, 'Twitter', 'twitt', 'Canal favorito'),
(16, 6, 'Whatsapp', '', 'Sin preferencia'),
(17, 6, 'Facebook', 'Noice', 'No molestar'),
(18, 6, 'Twitter', 'Genius', 'Canal favorito'),
(19, 7, 'Whatsapp', '', 'Canal favorito'),
(20, 7, 'Facebook', 'ART', 'No molestar'),
(21, 7, 'Twitter', 'ET', 'Sin preferencia'),
(22, 8, 'Whatsapp', '', 'Sin preferencia'),
(23, 8, 'Facebook', '', 'Sin preferencia'),
(24, 8, 'Twitter', 'SocUB', 'Canal favorito'),
(25, 9, 'Whatsapp', '', 'Sin preferencia'),
(26, 9, 'Facebook', '', 'Sin preferencia'),
(27, 9, 'Twitter', '', 'Sin preferencia'),
(28, 10, 'Whatsapp', '', 'Canal favorito'),
(29, 10, 'Facebook', '', 'Sin preferencia'),
(30, 10, 'Twitter', '', 'Sin preferencia'),
(31, 11, 'Whatsapp', '', 'Sin preferencia'),
(32, 11, 'Facebook', '', 'Sin preferencia'),
(33, 11, 'Twitter', '', 'Sin preferencia'),
(34, 12, 'Whatsapp', '81823981823', 'Canal favorito'),
(35, 12, 'Facebook', '', 'Sin preferencia'),
(36, 12, 'Twitter', '', 'Sin preferencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `ID` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`ID`, `country_id`, `name`) VALUES
(1, 1, 'Buenos Aires'),
(2, 1, 'Córdoba'),
(3, 2, 'Bogotá'),
(5, 2, 'Medellín'),
(7, 3, 'Santiago'),
(8, 3, 'Valparaíso'),
(11, 4, 'Montevideo'),
(14, 6, 'Washington'),
(15, 6, 'Austin'),
(16, 7, 'Ottawa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `adress` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `city` varchar(50) NOT NULL DEFAULT '0',
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`ID`, `name`, `adress`, `email`, `phone`, `city`, `city_id`) VALUES
(1, 'BYC', 'Somewhere 123', 'byc@byc.com.ar', '549123123', 'Buenos Aires', 1),
(2, 'Globant', 'siemprevivav', 'globant@globant.com.ar', '172381237', 'Buenos Aires', 1),
(3, 'Globo', 'som4', 'globo@globo.com.ar', '1231412313', 'Montevideo', 11),
(4, 'MercadoLibre', 'siempreviva', 'mercadolibre@mercadolibre.com.ar', '1123123', 'Santiago', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0',
  `charge` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `company` varchar(50) NOT NULL DEFAULT '0',
  `company_id` int(11) DEFAULT NULL,
  `region` varchar(50) DEFAULT '0',
  `country` varchar(50) DEFAULT '0',
  `city` varchar(50) DEFAULT '0',
  `city_id` int(11) DEFAULT NULL,
  `interest` varchar(50) DEFAULT '0',
  `adress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`ID`, `name`, `last_name`, `charge`, `email`, `company`, `company_id`, `region`, `country`, `city`, `city_id`, `interest`, `adress`) VALUES
(1, 'Sonia', 'Flow', 'Designer', 'sonf@email.com', 'BYC', 1, 'Sudamerica', 'Argentina', 'Buenos Aires', 1, '50%', 'siempreviva'),
(2, 'Florencia', 'María', 'Designer', 'florm@email.com', 'Globant', 2, 'Sudamerica', 'Argentina', 'Buenos Aires', 1, '100%', 'siempreviva'),
(3, 'Lucas', 'Mals', 'Dev', 'luma@email.com', 'Globo', 3, 'Norteamerica', 'Estados Unidos', 'Florida', 14, '100%', 'siempreviva'),
(4, 'Bastian', 'Miller', 'PMG', 'bm@email.com', 'BYC', 1, 'Sudamerica', 'Argentina', 'Córdoba', 2, '25%', ''),
(5, 'Jhon', 'mcCloud', 'Software Eng', 'jmcc@email.com', 'BYC', 1, 'Norteamerica', 'México', 'Ciudad de México', NULL, '75%', ''),
(6, 'Victoria', 'Brown', 'Admin', 'vb@email.com', 'MercadoLibre', 4, 'Sudamerica', 'Argentina', 'Córdoba', 2, '50%', 'siempreviva'),
(7, 'Ron', 'Howard', 'CEO', 'rhw@email.com', 'BYC', 1, 'Sudamerica', 'Argentina', 'Córdoba', 2, '100%', ''),
(8, 'Juan', 'Ferraro', 'Iconoma', 'juanf@email.com', 'BYC', 1, 'Sudamerica', 'Chile', 'Santiago', 7, '50%', 'siempreviva'),
(9, 'Marta', 'Bul', 'PMG', 'marb@email.com', 'BYC', 1, 'Sudamerica', 'Colombia', 'Bogotá', 3, '50%', 'siempreviva'),
(10, 'Laura', 'Fernandez', 'Manager', 'lauf@email.com', 'Globo', 3, 'Norteamerica', 'Estados Unidos', 'Texas', 15, '100%', 'siempreviva'),
(11, 'Ian', 'McGregor', 'Repartidor', 'iMcg@outlool.com', 'Globo', 3, 'Sudamerica', 'Argentina', 'Buenos Aires', 1, '75%', 'siempreviva'),
(12, 'Irian', 'Mels', 'CEO2', 'imel@imel.com', 'BYC', 1, 'Sudamerica', 'Uruguay', 'Montevideo', 11, '50%', 'siempreviva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`ID`, `region_id`, `name`) VALUES
(1, 1, 'Argentina'),
(2, 1, 'Colombia'),
(3, 1, 'Chile'),
(4, 1, 'Uruguay'),
(6, 2, 'Estados Unidos'),
(7, 2, 'Canadá');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE `regions` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`ID`, `name`) VALUES
(1, 'Sudamerica'),
(2, 'Norteamerica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `profile` varchar(15) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `name`, `last_name`, `email`, `profile`, `password`) VALUES
(1, 'admin', 'admin', 'ibrian_84@hotmail.com', 'Administrador', 'secret'),
(2, 'admin', 'admin', 'ibrian_84@hotmail.com', 'Administrador', 'secret'),
(3, 'admin', 'admin', 'ibrian_84@hotmail.com', 'Administrador', 'secret'),
(4, 'admin', 'admin', 'ibrian_84@hotmail.com', 'Administrador', 'secret');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_channels_contacts` (`contact_id`) USING BTREE;

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_cities_countries` (`country_id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_companies_cities` (`city_id`) USING BTREE;

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD KEY `FK_contacts_companies` (`company_id`) USING BTREE,
  ADD KEY `FK_contacts_cities` (`city_id`) USING BTREE;

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_countries_regions` (`region_id`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `channels`
--
ALTER TABLE `channels`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `regions`
--
ALTER TABLE `regions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `FK_channels_contacts` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `FK_cities_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `FK_companies_cities` FOREIGN KEY (`city_id`) REFERENCES `cities` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `FK_contacts_cities` FOREIGN KEY (`city_id`) REFERENCES `cities` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_contacts_companies` FOREIGN KEY (`company_id`) REFERENCES `companies` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `FK_countries_regions` FOREIGN KEY (`region_id`) REFERENCES `regions` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
