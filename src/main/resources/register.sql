-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8100
-- Generation Time: Nov 21, 2023 at 03:57 PM
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
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `USER_ID` int(100) NOT NULL,
  `EMAIL` varchar(400) NOT NULL,
  `FIRST_NAME` varchar(400) NOT NULL,
  `LAST_NAME` varchar(400) NOT NULL,
  `USERNAME` varchar(400) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`USER_ID`, `EMAIL`, `FIRST_NAME`, `LAST_NAME`, `USERNAME`, `PASSWORD`) VALUES
(1, 'user1@gmail.com', 'John', 'Doe', 'john_doe', 'password123'),
(2, 'user2@gmail.com', 'Jane', 'Smith', 'jane_smith', 'pass456'),
(3, 'user3@gmail.com', 'Bob', 'Johnson', 'bob_j', 'secure89'),
(4, 'user4@gmail.com', 'Alice', 'Williams', 'alice_w', 'qwerty12'),
(5, 'user5@gmail.com', 'Charlie', 'Brown', 'charlie_b', 'abc123'),
(6, 'user6@gmail.com', 'Eva', 'Miller', 'eva_m', 'p@ssw0rd'),
(7, 'user7@gmail.com', 'Frank', 'Davis', 'frank_d', 'letmein1'),
(8, 'user8@gmail.com', 'Grace', 'Thomas', 'grace_t', 'passphrase'),
(9, 'user9@gmail.com', 'Henry', 'Martin', 'henry_m', 'hello123'),
(10, 'user10@gmail.com', 'Isabel', 'Taylor', 'isabel_t', 'strongpw'),
(11, 'user11@gmail.com', 'Kasidech', 'Chumthong', 'Gote888', 'kukuyt88'),
(12, 'user12@gmail.com', 'Chaiwat ', 'Sawamiphak', 'Max99', 'maxmax99'),
(13, 'user13@gmail.com', 'Pachara', 'Chinnikorn ', 'Mat_Tsover', 'TSover77'),
(14, 'user14@gmail.com', 'Pakpoom ', 'Rodjana ', 'UFA69', 'Por69'),
(15, 'user15@gmail.com', 'Phubet', 'Klubchai', 'Handsome44', 'Somehand66'),
(16, 'user16@gmail.com', 'Sirisak ', 'Vongsawat ', 'DoDo69', '6969DODO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`USER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
