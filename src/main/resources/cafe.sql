-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8100
-- Generation Time: Nov 21, 2023 at 03:58 PM
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
-- Table structure for table `cafe`
--

CREATE TABLE `cafe` (
  `Cafe_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) DEFAULT NULL,
  `Restaurant_Name` varchar(255) DEFAULT NULL,
  `Menu` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Map_Location` varchar(255) DEFAULT NULL,
  `Time_of_Service` varchar(255) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cafe`
--

INSERT INTO `cafe` (`Cafe_ID`, `Restaurant_ID`, `Restaurant_Name`, `Menu`, `Price`, `Map_Location`, `Time_of_Service`, `PHONE`) VALUES
(1, 516, 'Lamp Cafe at Mae Fah Luang', 'Iced Americano', 60.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(2, 516, 'Lamp Cafe at Mae Fah Luang', 'Lamp Es Yen Coffee', 65.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(3, 516, 'Lamp Cafe at Mae Fah Luang', 'milk green tea', 55.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(4, 516, 'Lamp Cafe at Mae Fah Luang', 'Thai tea', 55.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(5, 516, 'Lamp Cafe at Mae Fah Luang', 'Iced Cappuccino', 65.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(6, 516, 'Lamp Cafe at Mae Fah Luang', 'Iced Honey Americano', 65.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(7, 516, 'Lamp Cafe at Mae Fah Luang', 'Sunset', 80.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(8, 516, 'Lamp Cafe at Mae Fah Luang', 'Sunset Peach', 80.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(9, 516, 'Lamp Cafe at Mae Fah Luang', 'Black Orange', 85.00, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(10, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Hakkaido Green Tea Frappe', 95.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(11, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Singha Maruzen Latte', 80.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(12, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Espresso', 55.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(13, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Houjicha Latte', 75.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(14, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Chocolate Shake', 80.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(15, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Maruzen Green Tea', 80.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(16, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Pink Milk Frappe', 70.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(17, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Fresh  Milk Frappe', 70.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(18, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Iced Thai Tea', 55.00, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(19, 518, 'Café Amazon MFU', 'Iced milk green tea', 55.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(20, 518, 'Café Amazon MFU', 'Green Tea Honey Lemon Jelly', 60.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(21, 518, 'Café Amazon MFU', 'Hot cappuccino', 50.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(22, 518, 'Café Amazon MFU', 'Black Tea Honey', 70.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(23, 518, 'Café Amazon MFU', 'Strawberry smoothie', 70.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(24, 518, 'Café Amazon MFU', 'Yogurt Smoothie Mixed Berry', 70.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(25, 518, 'Café Amazon MFU', 'Matcha Latte', 60.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(26, 518, 'Café Amazon MFU', 'Light Coffee Honey', 60.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(27, 518, 'Café Amazon MFU', 'Iced cappuccino', 65.00, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cafe`
--
ALTER TABLE `cafe`
  ADD PRIMARY KEY (`Cafe_ID`),
  ADD KEY `Restaurant_ID` (`Restaurant_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cafe`
--
ALTER TABLE `cafe`
  ADD CONSTRAINT `cafe_ibfk_1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
