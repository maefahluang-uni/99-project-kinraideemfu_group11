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
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `Food_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) DEFAULT NULL,
  `Restaurant_Name` varchar(255) DEFAULT NULL,
  `Menu` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Map_Location` varchar(255) DEFAULT NULL,
  `Time_of_Service` varchar(255) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Food_ID`, `Restaurant_ID`, `Restaurant_Name`, `Menu`, `Price`, `Map_Location`, `Time_of_Service`, `PHONE`) VALUES
(5123, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'เกาเหลาหมู', 65, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5124, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'เกาเหลาเนื้อ', 65, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5125, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'เตี๋ยวเรือเนื้อจัมโบ้', 75, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5126, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'เตี๋ยวเรือหมูจัมโบ้', 75, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5127, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'เตี๋ยวเรือเนื้อพิเศษ', 65, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5128, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'เตี๋ยวเรือหมูพิเศษ', 65, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5129, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'เตี๋ยวเรือเนื้อธรรมดา', 55, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5130, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'เตี๋ยวเรือหมูธรรมดา', 55, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5131, 511, 'ก๋วยเตี๋ยวเรือพระอาทิตย์', 'น้ำเงี้ยวหมู', 45, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5132, 512, 'ปากหม้อ หน้ามอ', 'ข้าวผัดต้มยำ', 55, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5133, 512, 'ปากหม้อ หน้ามอ', 'ข้าวสามชั้นผัดกระปิ', 55, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5134, 512, 'ปากหม้อ หน้ามอ', ' ข้าวหมูทอดกระเทียมพริกไทย', 55, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5135, 512, 'ปากหม้อ หน้ามอ', 'White choc oreo Croffle', 69, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5136, 512, 'ปากหม้อ หน้ามอ', 'Marshmallow Choco Croffle', 69, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5137, 512, 'ปากหม้อ หน้ามอ', 'Banana Choco Croffle', 69, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5138, 512, 'ปากหม้อ หน้ามอ', 'ยำข้าวโพดไข่เค็ม', 80, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5139, 512, 'ปากหม้อ หน้ามอ', 'ยำหมูยอไข่เค็ม', 100, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5140, 512, 'ปากหม้อ หน้ามอ', 'ยำหมูยอ', 80, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5141, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', 'ข้าวหน้าสันคอหมูย่าง จัมโบ้ + ไข่ออนเซ็น', 239, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5142, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', 'ข้าวหน้าไก่ย่างไซส์L+ไข่ออนเซ็น', 118, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5143, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', 'ข้าวหน้ากุ้งย่างซอส', 89, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5144, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', ' ข้าวหน้าเนื้อใบพายพรีเมี่ยมย่างซอส+ไข่ออนเซ็น', 149, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5145, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', ' สลัดสไปซี่ สันคอหมูย่าง', 79, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5146, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', 'สลัดรวมนํ้าสลัดงาซีอิ้วญี่ปุ่น', 59, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5147, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', 'ข้าวโพดย่างซอส', 39, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5148, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', 'กิมจิ', 19, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5149, 513, 'GINDON กินด้งข้าวหน้าของย่าง แม่ฟ้าหลวง', 'ยำสาหร่าย', 29, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5150, 514, 'Imm Jung อิ่มจังเส้นสด', 'เส้นสดข้าวซอย', 80, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5151, 514, 'Imm Jung อิ่มจังเส้นสด', 'เส้นสดต้มยำ', 80, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5152, 514, 'Imm Jung อิ่มจังเส้นสด', 'ส้นสดเขียวหวาน', 80, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5153, 514, 'Imm Jung อิ่มจังเส้นสด', 'เส้นสดเย็น', 80, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5154, 514, 'Imm Jung อิ่มจังเส้นสด', 'เส้นสด ดั้งเดิม', 75, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5155, 514, 'Imm Jung อิ่มจังเส้นสด', 'ข้าวหน้าหมูซอส จิ้มแจ่ว', 75, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5156, 514, 'Imm Jung อิ่มจังเส้นสด', 'ข้าวหน้าหมู ซอสหม่าล่า', 75, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5157, 514, 'Imm Jung อิ่มจังเส้นสด', 'ข้าวหน้าไก่ซอสจิ้มแจ่ว', 75, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5158, 514, 'Imm Jung อิ่มจังเส้นสด', 'ข้าวหน้าไก่ซอสหม่าล่า', 75, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5159, 515, 'เส้นไชย เจริญทรัพย์', 'ก๋วยเตี๋ยวไก่ตุ๋น', 55, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5160, 515, 'เส้นไชย เจริญทรัพย์', 'ก๋วยเตี๋ยวแห้งซีอิ๊วน้ำไก่ตุ๋น', 55, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5161, 515, 'เส้นไชย เจริญทรัพย์', 'ก๋วยเตี๋ยวเรือหมูน้ำตก', 60, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5162, 515, 'เส้นไชย เจริญทรัพย์', 'ก๋วยเตี๋ยวแห้งซีอิ๊วน้ำไก่ตุ๋น', 55, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5163, 515, 'เส้นไชย เจริญทรัพย์', 'ก๋วยเตี๋ยวแห้งต้มยำ', 60, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5164, 515, 'เส้นไชย เจริญทรัพย์', 'ก๋วยเตี๋ยวต้มยำน้ำข้น', 60, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5165, 515, 'เส้นไชย เจริญทรัพย์', 'ก๋วยเตี๋ยวน้ำใส', 55, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5166, 515, 'เส้นไชย เจริญทรัพย์', 'เกาเหลาต้มยำน้ำข้น', 60, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5167, 515, 'เส้นไชย เจริญทรัพย์', 'ซุปเปอร์ตีนไก่', 65, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5168, 515, 'เส้นไชย เจริญทรัพย์', 'ฮะเก๋ากุ้ง4ชิ้น', 40, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`Food_ID`),
  ADD KEY `Restaurant_ID` (`Restaurant_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
