-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2024 a las 20:19:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `backcac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleados`
--

CREATE TABLE `tbl_empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre_empleado` varchar(100) NOT NULL,
  `apellido_empleado` varchar(100) NOT NULL,
  `sexo_empleado` int(11) NOT NULL,
  `telefono_empleado` varchar(100) NOT NULL,
  `email_empleado` varchar(100) NOT NULL,
  `profesion_empleado` varchar(100) NOT NULL,
  `foto_empleado` mediumtext NOT NULL,
  `salario_empleado` bigint(20) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_empleados`
--

INSERT INTO `tbl_empleados` (`id_empleado`, `nombre_empleado`, `apellido_empleado`, `sexo_empleado`, `telefono_empleado`, `email_empleado`, `profesion_empleado`, `foto_empleado`, `salario_empleado`, `fecha_registro`) VALUES
(1, 'Leonardo', 'ayala', 1, '03774500205', 'sergiodark.sa@gmail.com', 'profe de inglés', '2398111c4481438baa524af0894f55e132b21edd0115400caec1a38eabb2d9c9', 520000, '2024-07-07 03:06:47'),
(3, 'Cristian', 'Hernandez', 2, '3774500888', 'aldanita@gmail.com', 'estudiante', 'aa9be962df144616af4f5b26f6ad80418958f9395a7047c28d8bfc979128d253', 5652725, '2024-07-08 17:32:34'),
(6, 'Diego', 'Pascuzzi', 1, '369857412', 'diego@gmail.com', 'Cantante', '21fe3a5655cc406fb6c7d8f92445b958563931a391e64e89830e148d7ee111cf', 520000, '2024-07-09 18:08:12'),
(7, 'Alejandro', 'Artaza', 1, '3774500209', 'alejandro@gmail.com', 'Profesor', '8d5128a8d2e149d1aa3f22b95c347bbb1e674d57c44e44ac9b777221e4feecc4.jpg', 250000, '2024-07-09 18:07:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name_surname` varchar(100) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `pass_user` text NOT NULL,
  `created_user` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name_surname`, `email_user`, `pass_user`, `created_user`) VALUES
(1, 'Urian', 'dev@gmail.com', '', '2023-07-21 23:10:01'),
(2, 'sergio', 'sergio@gmail.com', 'scrypt:32768:8:1$CKa0YQeTpvdstmZ2$de405f02286d6ed65514ffd960f71f06ba3453a171911c3183a05e7f6a3a716890238e63dce498400ab479a224a0190aecb3458151ec2108eac1a4c2eb5cc72d', '2024-07-07 03:05:02'),
(3, 'diego', 'diego@gmail.com', 'scrypt:32768:8:1$fFB9N7taX15m1Fni$e17c8fdb05e792443b24c779b655e8c8b447380a20f3f8ba753b59500d597a138b5076a25ee2a871396c14981a4afcf84da22f5d71e2664d4257bf4a6afa2f7f', '2024-07-07 03:08:15'),
(4, 'aldana', 'aldana@gmail.com', 'scrypt:32768:8:1$05PR9FGRnAcvYp6L$d3af7d5f6de4f44d82ce38e0636bd35d4bcc25269805e3e1d8e5d94ec75252c8de05280f64f796ba375ebe33122974543d71c9b2ba48ff1c50f885ad810ea1d9', '2024-07-07 03:12:25'),
(5, 'Sergio Ayala', 'sergioleo@gmail.com', 'scrypt:32768:8:1$5FMoGHcq2YXZ1H6o$5bc6575291829f71545ece2aba4173e5d500f1fa1bf4b0bed6b58c6f050b77f507614e49937ec4905ae1ae363299e037ba46f64f2db36471b37532f51998bf97', '2024-07-08 01:59:45'),
(6, 'javier', 'javier@gmail.com', 'scrypt:32768:8:1$Z1YPiNNzgYxMdW2f$e90369fa6c3def00aef474d660d7a6fec71691528106d0e05998cd9b17d195d30fac7cb0251e29bc3d278fb6620420bcef5ec5550918736a592aa1ee436063d1', '2024-07-08 12:31:11'),
(7, 'Paola', 'paola@gmail.com', 'scrypt:32768:8:1$HwD6ys3lF4cmD5vk$3a251393f8b2c1bcf75788b916616b72fddef42b191d0be33ee8c32a3b176c75557237fe57047fedaa116f34cf02d56ccbfb7bf1251efd21011e2eacb86d6e7c', '2024-07-08 13:25:16'),
(8, 'emiliano martinez', 'emiliano@gmail.com', 'scrypt:32768:8:1$GvFmgRYPEK1hIoL4$e35e2f8a3e38a731e84decff70ba9f47e85d286fc26e50563dbb55280b4d605bd34614befa8898484ab8e72e70644faf578a84f3047fafd2d576d3c4891efc0b', '2024-07-08 17:03:43'),
(9, 'fernando', 'fernando@gmail.com', 'scrypt:32768:8:1$j8U111MJu1FAk8PC$b977a48ad7e4570efc09c12b1fc2a8f34ca323e562da0282456e364e6c2e9b25cce09609e4a3f85d30684f48a540b7e7cba025a99615ad1d19242789c9da5c7e', '2024-07-08 17:31:37'),
(10, 'daniela cañete', 'daniela@gmail.com', 'scrypt:32768:8:1$B8jLUsjDDeIGHpT0$5c5416e503eeb08ddaf280f66de2fc345a26566a3c61c86ba84a869769821f889b2374e705483c8d4c7ad5c18fcbb7cfd710c26fca6e4bf64cdef12a4a5d2f91', '2024-07-08 18:40:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
