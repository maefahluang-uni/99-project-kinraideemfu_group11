-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8100
-- Generation Time: Nov 20, 2023 at 05:38 PM
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
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Review_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Restaurant_ID` int(11) DEFAULT NULL,
  `ReviewText` text DEFAULT NULL,
  `Rating` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Review_ID`, `User_ID`, `Restaurant_ID`, `ReviewText`, `Rating`) VALUES
(101, 1, 518, 'สถานที่เยี่ยมมาก! ชอบบรรยากาศ', 4),
(102, 1, 521, 'อาหารอร่อยมาก โดยเฉพาะของหวาน', 5),
(103, 2, 513, 'บริการดี แต่ราคาสูงไปหน่อย', 4),
(104, 2, 515, 'พนักงานเป็นกันเอง และบรรยากาศเป็นกันเอง', 4),
(105, 3, 511, 'ประสบการณ์ที่ดี คุณภาพอาหารจำเป็นต้องปรับปรุง', 3),
(106, 3, 512, 'อาหารเลิศรสและบริการรวดเร็ว', 5),
(107, 4, 517, 'สถานที่นี้วิวสวย แต่เมนูมีจำกัด', 3),
(108, 4, 517, 'ร้านอาหารที่ดีที่สุดในMFU', 5),
(109, 5, 514, 'ประสบการณ์โดยเฉลี่ย ไม่มีอะไรพิเศษ', 3),
(110, 5, 521, 'อาหารอร่อยในบรรยากาศสบาย ๆ', 4),
(111, 6, 516, 'เวลารอนานเกินไป แต่อาหารก็คุ้มค่า', 4),
(112, 6, 513, 'คุ้มค่าเงินมาก ชอบความหลากหลายในเมนู', 5),
(113, 7, 519, 'ของหวานเป็นจุดเด่นของมื้ออาหาร', 5),
(114, 7, 516, 'บริการดี แต่ปริมาณเครื่องดืมน้อย', 3),
(115, 8, 518, 'สภาพแวดล้อมที่เหมาะสำหรับครอบครัว', 4),
(116, 8, 513, 'อาหารน่าทึ่ง! ราคาแพงไปหน่อย', 4),
(117, 9, 518, 'พนักงานมีความรู้เกี่ยวกับเมนู', 4),
(118, 9, 514, 'บรรยากาศสบาย ๆ และพนักงานที่เป็นมิตร', 4),
(119, 10, 515, 'ร้านอาหารมีการตกแต่งที่มีเอกลักษณ์และมีสไตล์', 5),
(120, 10, 512, 'บริเวณที่นั่งเหมาะสำหรับการรับประทานอาหารค่ำ', 4),
(121, 11, 511, 'ก๋วยเตี๋ยวหลากหลาย', 4),
(122, 12, 516, 'บรรยากาศมีชีวิตชีวา และเครื่องดื่มก็สดชื่น', 5),
(123, 12, 520, 'เครปอร่อยเกินความคาดหมาย', 5),
(124, 13, 511, 'พนักงานเป็นกันเองแต่มีตัวเลือกจำกัด', 3),
(125, 13, 512, 'อาหารที่เตรียมไว้อย่างดีใส่ใจในรายละเอียด', 5),
(126, 14, 514, 'ประสบการณ์การทำอาหารที่ไม่เหมือนใคร ต้องลอง!', 5),
(127, 14, 515, 'บริการรวดเร็วและราคาสมเหตุสมผล', 4),
(128, 15, 515, 'ที่นั่งสบายและบรรยากาศอบอุ่น', 4),
(129, 15, 520, 'เมนูของหวานค่อนข้างน่าผิดหวัง', 3),
(130, 15, 520, 'แนะนำเป็นอย่างยิ่ง', 5),
(131, 11, 519, 'พนักงานที่เอาใจใส่และเครื่องดื่มที่หลากหลาย', 4),
(132, 16, 521, 'การออกแบบตกแต่งภายในที่สวยงาม', 4),
(133, 16, 519, 'อร่อย แต่รอนานเกินคาด', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Review_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Restaurant_ID` (`Restaurant_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `register` (`USER_ID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
