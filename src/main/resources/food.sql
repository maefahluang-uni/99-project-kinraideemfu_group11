-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8100
-- Generation Time: Nov 22, 2023 at 03:51 PM
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
  `Price` decimal(10,2) DEFAULT NULL,
  `Map_Location` varchar(255) DEFAULT NULL,
  `Time_of_Service` varchar(255) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Food_ID`, `Restaurant_ID`, `Restaurant_Name`, `Menu`, `Price`, `Map_Location`, `Time_of_Service`, `PHONE`) VALUES
(5123, 511, 'Phra Athit Noodles\n', 'Kao Lao Moo', 65.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5124, 511, 'Phra Athit Noodles\n', 'Kao Lao Beef', 65.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5125, 511, 'Phra Athit Noodles\n', 'Jumbo beef noodles', 75.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5126, 511, 'Phra Athit Noodles\n', 'Jumbo Pork noodles', 75.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5127, 511, 'Phra Athit Noodles\n', 'Special beef noodles', 65.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5128, 511, 'Phra Athit Noodles\n', 'Special pork noodles', 65.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5129, 511, 'Phra Athit Noodles\n', 'Beef noodles', 55.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5130, 511, 'Phra Athit Noodles\n', 'Pork noodles', 55.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5131, 511, 'Phra Athit Noodles\n', 'Pork Nam Ngiao', 45.00, 'https://maps.app.goo.gl/wsviYaBqPkJcYiCB7', 'Monday-Friday 10.00am.-8.00pm.', NULL),
(5132, 512, 'Pag Mor ', 'Tom Yum Fried Rice', 55.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5133, 512, 'Pag Mor ', 'Stir-fried rice with shrimp paste', 55.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5134, 512, 'Pag Mor ', 'Fried pork with garlic and pepper on rice', 55.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5135, 512, 'Pag Mor ', 'White choc oreo Croffle', 69.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5136, 512, 'Pag Mor ', 'Marshmallow Choco Croffle', 69.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5137, 512, 'Pag Mor ', 'Banana Choco Croffle', 69.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5138, 512, 'Pag Mor ', 'Salted Egg Corn Salad', 80.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5139, 512, 'Pag Mor ', 'Spicy pork sausage and salted egg salad', 100.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5140, 512, 'Pag Mor ', 'Pork sausage salad', 80.00, 'https://maps.app.goo.gl/9FVMsJixAd9zxBUf6', 'Monday-Sunday 11.00am.-1.30am.', '0992453599'),
(5141, 513, 'GINDON at Mae Fah Luang', 'Jumbo grilled pork neck on rice + onsen egg', 239.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5142, 513, 'GINDON at Mae Fah Luang', 'Grilled chicken on rice, size L + onsen egg', 118.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5143, 513, 'GINDON at Mae Fah Luang', 'Grilled Shrimp with Sauce on Rice', 89.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5144, 513, 'GINDON at Mae Fah Luang', ' Premium Beef Pie Topped with Grilled Sauce + Onsen Egg', 149.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5145, 513, 'GINDON at Mae Fah Luang', ' Spicy Salad, Grilled Pork Neck', 79.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5146, 513, 'GINDON at Mae Fah Luang', 'Salad with sesame salad dressing and Japanese soy sauce', 59.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5147, 513, 'GINDON at Mae Fah Luang', 'Grilled Corn with Sauce', 39.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5148, 513, 'GINDON at Mae Fah Luang', 'Kimchi', 19.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5149, 513, 'GINDON at Mae Fah Luang', 'Seaweed Salad', 29.00, 'https://maps.app.goo.gl/LMtGbQEH2TwXwBuS9', 'Monday-Sunday 11.30am.-9.30pm. Closed on Tuesday', '0895265626'),
(5150, 514, 'Imm Jung fresh noodles', 'Fresh rice noodles', 80.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5151, 514, 'Imm Jung fresh noodles', 'Fresh noodles tom yum', 80.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5152, 514, 'Imm Jung fresh noodles', 'fresh green noodles', 80.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5153, 514, 'Imm Jung fresh noodles', 'Cold fresh noodles', 80.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5154, 514, 'Imm Jung fresh noodles', 'Original fresh noodles', 75.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5155, 514, 'Imm Jung fresh noodles', 'Pork on rice with spicy sauce', 75.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5156, 514, 'Imm Jung fresh noodles', 'Pork with Mala Sauce on Rice', 75.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5157, 514, 'Imm Jung fresh noodles', 'Chicken rice and jaew dipping sauce', 75.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5158, 514, 'Imm Jung fresh noodles', 'Chicken with Mala Sauce on Rice', 75.00, 'https://maps.app.goo.gl/kif9tjg6N4kqyE7p8', 'Monday-Saturday 11.00am.-8.00pm.', '0916989866'),
(5159, 515, 'Senchai Charoensap', 'Braised Chicken Noodles', 55.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5160, 515, 'Senchai Charoensap', 'Braised Chicken Noodles', 55.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5161, 515, 'Senchai Charoensap', 'Namtok Pork  Noodles', 60.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5162, 515, 'Senchai Charoensap', 'Dry noodles with soy sauce and stewed chicken', 55.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5163, 515, 'Senchai Charoensap', 'Dry Tom Yum Noodles', 60.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5164, 515, 'Senchai Charoensap', 'Creamy Tom Yum Noodles', 60.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5165, 515, 'Senchai Charoensap', 'Clear noodle soup', 55.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5166, 515, 'Senchai Charoensap', 'Kao Lao Creamy Tom Yum ', 60.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5167, 515, 'Senchai Charoensap', 'Chicken Feet Spicy Soup', 65.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999'),
(5168, 515, 'Senchai Charoensap', 'Shrimp Hakao', 40.00, 'https://maps.app.goo.gl/HZFtN4QTZVj3zBY98', 'Monday-Sunday 10.00am.-9.00pm.', '0850376999');

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
