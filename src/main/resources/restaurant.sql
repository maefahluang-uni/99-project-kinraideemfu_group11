-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8100
-- Generation Time: Nov 22, 2023 at 03:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project89`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Restaurant_ID` int(11) NOT NULL,
  `Restaurant_Name` varchar(255) DEFAULT NULL,
  `Rating` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Restaurant_ID`, `Restaurant_Name`, `Rating`) VALUES
(511, 'Phra Athit Noodles', 5),
(512, 'Pag Mor ', 4),
(513, 'GINDON at Mae Fah Luang', 4),
(514, 'Imm Jung fresh noodles', 4),
(515, 'Senchai Charoensap', 5),
(516, 'Lamp Cafe at Mae Fah Luang', 4),
(517, 'Singha Park Cafe M Square MFU Chiang Rai', 4),
(518, 'Café Amazon MFU', 5),
(519, 'Rodiya Roti Hat Yai', 3),
(520, 'Yai Da Crepe', 5),
(521, 'Milk Box MFU', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`Restaurant_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
