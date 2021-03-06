-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2022 at 08:36 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Ventas`
--
CREATE DATABASE Ventas;
USE Ventas;
-- --------------------------------------------------------

--
-- Table structure for table `CLIENTES`
--

CREATE TABLE `CLIENTES` (
  `NOMBRE` tinytext DEFAULT NULL,
  `APELLIDOS` text DEFAULT NULL,
  `DNI` tinytext DEFAULT NULL,
  `DIRECCION` text DEFAULT NULL,
  `NUM_SOCIO` int(4) DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `EDAD` int(3) DEFAULT NULL,
  `PUNTOS` double(7,2) DEFAULT NULL,
  `EMAIL` tinytext DEFAULT NULL,
  `NUM_TELEFONO_FIJO` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CLIENTES`
--

INSERT INTO `CLIENTES` (`NOMBRE`, `APELLIDOS`, `DNI`, `DIRECCION`, `NUM_SOCIO`, `FECHA_NAC`, `EDAD`, `PUNTOS`, `EMAIL`, `NUM_TELEFONO_FIJO`) VALUES
('ATENEA', 'SEVILLA', '12345678X', 'CALLE PRUEBAS Nº5', 1, '1986-05-11', 33, 333.33, NULL, NULL),
('HÉCTOR', 'GARCIA PASCUAL', NULL, NULL, 123, '1979-05-03', NULL, NULL, NULL, 916897654),
('SILVIA', 'ROMERO FERNÁNDEZ', '79665432Q', 'CALLE MANUELA MALASAÑA 23, MADRID', NULL, NULL, NULL, NULL, NULL, NULL),
('LAURA', 'MARÍN SÁNCHEZ', NULL, NULL, NULL, NULL, 45, 345.67, 'lmarsanchez@tucorreo.es', NULL),
('ANTONIO', 'SANCHEZ CABALLERO', NULL, NULL, NULL, '1968-06-05', NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
