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
-- Table structure for table `dessert_shop`
--

CREATE TABLE `dessert_shop` (
  `Dessert_shop_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) DEFAULT NULL,
  `Restaurant_Name` varchar(255) DEFAULT NULL,
  `Menu` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Map_Location` varchar(255) DEFAULT NULL,
  `Time_of_Service` varchar(255) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dessert_shop`
--

INSERT INTO `dessert_shop` (`Dessert_shop_ID`, `Restaurant_ID`, `Restaurant_Name`, `Menu`, `Price`, `Map_Location`, `Time_of_Service`, `PHONE`) VALUES
(1, 519, 'Rodiya Roti Hat Yai', 'Roti Mataba', 60.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(2, 519, 'Rodiya Roti Hat Yai', 'Large set of roti with curry dip', 65.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(3, 519, 'Rodiya Roti Hat Yai', 'Roti tissue', 40.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(4, 519, 'Rodiya Roti Hat Yai', 'Chocolate Cheese Roti', 50.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(5, 519, 'Rodiya Roti Hat Yai', 'Corn Roti', 40.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(6, 519, 'Rodiya Roti Hat Yai', 'Banana Roti', 40.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(7, 519, 'Rodiya Roti Hat Yai', 'Roti Ovaltine', 35.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(8, 519, 'Rodiya Roti Hat Yai', 'Crispy Roti', 25.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(9, 519, 'Rodiya Roti Hat Yai', 'Thick and crispy roti', 25.00, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(10, 520, 'Yai Da Crepe', 'sweet crepes', 35.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(11, 520, 'Yai Da Crepe', 'Signature Crepes', 45.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(12, 520, 'Yai Da Crepe', 'Tokyo Crepes', 35.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(13, 520, 'Yai Da Crepe', 'Cold Oreo Crepes', 30.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(14, 520, 'Yai Da Crepe', 'Cold crepe with shredded fresh milk', 30.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(15, 520, 'Yai Da Crepe', 'Toast with Ovaltine and Milk', 30.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(16, 520, 'Yai Da Crepe', 'Toasted Nutella with Chocolate', 30.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(17, 520, 'Yai Da Crepe', 'Banana toast with chocolate topping', 30.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(18, 520, 'Yai Da Crepe', 'Choco cocoa toast with chocolate milk drizzle', 30.00, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(19, 521, 'Milk Box MFU', 'Honey Toast', 49.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(20, 521, 'Milk Box MFU', 'Strawberry Toast', 49.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(21, 521, 'Milk Box MFU', 'Chocolate Toast', 49.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(22, 521, 'Milk Box MFU', 'Blueberry Toast', 49.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(23, 521, 'Milk Box MFU', 'Peanut Butter Toast', 69.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(24, 521, 'Milk Box MFU', 'Brown Sugar Custard Toast', 69.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(25, 521, 'Milk Box MFU', 'Chocolate Pan', 25.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(26, 521, 'Milk Box MFU', 'Caramel Pan', 25.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(27, 521, 'Milk Box MFU', 'Blueberry Pan', 25.00, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dessert_shop`
--
ALTER TABLE `dessert_shop`
  ADD PRIMARY KEY (`Dessert_shop_ID`),
  ADD KEY `Restaurant_ID` (`Restaurant_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dessert_shop`
--
ALTER TABLE `dessert_shop`
  ADD CONSTRAINT `dessert_shop_ibfk_1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
