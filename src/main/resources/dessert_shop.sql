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
-- Table structure for table `dessert_shop`
--

CREATE TABLE `dessert_shop` (
  `Dessert_shop_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) DEFAULT NULL,
  `Restaurant_Name` varchar(255) DEFAULT NULL,
  `Menu` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Map_Location` varchar(255) DEFAULT NULL,
  `Time_of_Service` varchar(255) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dessert_shop`
--

INSERT INTO `dessert_shop` (`Dessert_shop_ID`, `Restaurant_ID`, `Restaurant_Name`, `Menu`, `Price`, `Map_Location`, `Time_of_Service`, `PHONE`) VALUES
(1, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีมะตะบะ', 60, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(2, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีจิ้มแกงชุดใหญ่', 65, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(3, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีทิชชู่', 40, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(4, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีช็อคโกแลตชีส', 50, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(5, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีข้าวโพด', 40, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(6, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีกล้วย', 40, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(7, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีโอวัลติน', 35, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(8, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีกรอบ', 25, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(9, 519, 'รอดียะห์ โรตีหาดใหญ่', 'โรตีหนากรอบ', 25, 'https://maps.app.goo.gl/kWmemzbQs6wafEP3A', 'Monday-Sunday 10.00am-10.00pm.', NULL),
(10, 520, 'เครปยายดา', 'เครปหวานฉ่ำ', 35, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(11, 520, 'เครปยายดา', 'เครปซิกเนเจอร์', 45, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(12, 520, 'เครปยายดา', 'เครปโตเกียว', 35, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(13, 520, 'เครปยายดา', 'เครปเย็นโอริโอ้', 30, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(14, 520, 'เครปยายดา', 'เครปเย็นนมสดฝอย', 30, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(15, 520, 'เครปยายดา', 'ปังปิ้งโอวัลตินนม', 30, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(16, 520, 'เครปยายดา', 'ปังปิ้งนูเทลล่าราดช็อก', 30, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(17, 520, 'เครปยายดา', 'ปังปิ้งฝอยกล้วยราดช็อก', 30, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(18, 520, 'เครปยายดา', 'ปังปิ้งช็อกโกโก้ครั้นราดช็อกนม', 30, 'https://maps.app.goo.gl/HZwU1p75tvdf6mKp6', 'Monday-Sunday 12.00am-11.59pm.', NULL),
(19, 521, 'Milk Box MFU', 'ฮันนี่โทสต์', 49, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(20, 521, 'Milk Box MFU', 'สตรอว์เบอร์รี่โทสต์', 49, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(21, 521, 'Milk Box MFU', 'ช็อกโกแลตโทสต์', 49, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(22, 521, 'Milk Box MFU', 'บลูเบอร์รี่โทสต์', 49, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(23, 521, 'Milk Box MFU', 'เนยถั่วโทสต์', 69, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(24, 521, 'Milk Box MFU', 'บราวชูก้าร์สังขหยาโทสต์', 69, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(25, 521, 'Milk Box MFU', 'ปังช็อคโกแล็ต', 25, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(26, 521, 'Milk Box MFU', 'ปังคาราเมล', 25, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540'),
(27, 521, 'Milk Box MFU', 'ปังบลูเบอรี่', 25, 'https://maps.app.goo.gl/AAQeWCwKjsRAWpfG8', 'Monday-Sunday 10.00am-11.50pm.', '0875767540');

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
