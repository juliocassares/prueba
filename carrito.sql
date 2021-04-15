-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2021 a las 20:59:49
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='productos';

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`) VALUES
(1, 'Monitor LED 22 PLG S22F350FHU', 'monitor para gamers', 450000, '2020-03-18 18:05:15', '2021-04-14 21:05:15'),
(2, 'Monitor LED Curvo 24 PLG C24F390FHU', 'monitor para gamer, alta resolucioon y graficos geniales', 450000, '2020-04-16 23:42:04', '2021-04-21 02:42:04'),
(3, 'Monitor LED Curvo 32PLG C32F391FWU', 'monitor alta definicion', 450000, '2020-03-18 23:59:07', '2021-03-19 02:59:07'),
(4, 'Galaxy S7', 'Hemos realizado progresos importantes, superando barreras y avanzando en todo momento, escuchando los que nos tienes que decir y combinando función y forma. Hemos introducido funciones nunca vistas hasta ahora en los smartphones. ', 900000, '2020-03-19 00:04:03', '2021-03-19 03:04:03'),
(5, 'pc acer nitro 5', 'gran porcesador, graficos estupendos, es para ti', 3500000, '2021-03-19 00:08:03', '2021-03-31 03:08:03'),
(6, 'Auriculares para juegos Lenovo Y: ROW', 'gran sonido envolvente, patrocinado por dolbi sounds', 60000, '2021-03-19 09:02:16', '2021-03-19 12:02:16'),
(7, 'Altavoz Bluetooth ThinkPad Stack\r\nModelo:  4XD0H34183', 'sonido envolvente, para disfrutar en tu casa', 150000, '2021-03-04 09:06:53', '2021-03-19 12:06:53'),
(8, 'ThinkStation NVIDIA Quadro K1200 (LP)', 'targeta grafica para que tus juegos se vean en hd', 399000, '2021-03-19 09:18:06', '2021-03-19 12:18:06'),
(9, 'Teclado USB Lenovo ', 'teclado para gamers', 50000, '2021-03-19 15:38:09', '2021-03-19 18:38:09'),
(10, 'Mouse inalambrico ThinkPad Precision - rojo onda de calor', 'para gamers', 50000, '2021-03-19 15:44:02', '2021-03-19 18:44:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `telefono` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `apellido`, `id`, `email`, `telefono`) VALUES
('dayanis', 'cassares', 123456789, 'dayacassares@gmail.com', 2147483647),
('grace', 'cassares', 123454321, 'gracecassares@hotmail.com', 32863578),
('julio', 'cassares', 1221974951, 'jcassaresvizacino@gmail.com', 2147483647);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
