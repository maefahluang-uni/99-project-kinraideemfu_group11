-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8100
-- Generation Time: Nov 20, 2023 at 04:57 PM
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
  `Price` int(11) DEFAULT NULL,
  `Map_Location` varchar(255) DEFAULT NULL,
  `Time_of_Service` varchar(255) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cafe`
--

INSERT INTO `cafe` (`Cafe_ID`, `Restaurant_ID`, `Restaurant_Name`, `Menu`, `Price`, `Map_Location`, `Time_of_Service`, `PHONE`) VALUES
(1, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'Iced Americano', 60, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(2, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'Lamp Es Yen Coffee', 65, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(3, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'ชาเขียวนม', 55, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(4, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'ชาไทย', 55, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(5, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'Iced Cappuccino', 65, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(6, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'Iced Honey Americano', 65, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(7, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'Sunset', 80, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(8, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'Sunset Peach', 80, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(9, 516, 'Lamp Cafe สาขา1หน้าม.แม่ฟ้าหลวง', 'Black Orange', 85, 'https://maps.app.goo.gl/XS1R1efemgRnQkdJA', 'Monday-Sunday 8.30am-8.00pm.', '052050227'),
(10, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Hakkaido Green Tea Frappe', 95, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(11, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Singha Maruzen Latte', 80, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(12, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Espresso', 55, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(13, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Houjicha Latte', 75, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(14, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'ช็อกโกแลตปั่น', 80, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(15, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'ชาเขียวMaruzen', 80, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(16, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Pink Milk Frappe', 70, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(17, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Fresh  Milk Frappe', 70, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(18, 517, 'Singha Park Cafe M Square MFU Chiang Rai', 'Iced Thai Tea', 55, 'https://maps.app.goo.gl/rbuqHP2utoubJNhW7', 'Monday-Sunday 9.00am-5.00pm.', '05316063637'),
(19, 518, 'Café Amazon MFU', 'ชาเขียวนมเย็น', 55, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(20, 518, 'Café Amazon MFU', 'ชาเขียวน้ำผึ้งมะนาวเจลลี่', 60, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(21, 518, 'Café Amazon MFU', 'คาปูชิโน่ร้อน', 50, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(22, 518, 'Café Amazon MFU', 'แบล็คทีฮันนี่', 70, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(23, 518, 'Café Amazon MFU', 'น้ำสตรอเบอร์รี่ปั่น', 70, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(24, 518, 'Café Amazon MFU', 'โยเกิร์ตสมูทตี้มิกซ์เบอรรี่', 70, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(25, 518, 'Café Amazon MFU', 'มัทฉะลาเต้', 60, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(26, 518, 'Café Amazon MFU', 'ไลท์คอฟฟี่ฮันนี่', 60, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL),
(27, 518, 'Café Amazon MFU', 'คาปูชิโนเย็น', 65, 'https://maps.app.goo.gl/DGfLBnbPQyAHphD39', 'Monday-Saturday 7.30am-4.00pm.', NULL);

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
