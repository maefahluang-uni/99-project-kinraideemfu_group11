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
(101, 1, 518, 'Great place! I like the atmosphere', 4),
(102, 1, 521, 'The food is very delicious. Especially desserts', 5),
(103, 2, 513, 'Good service but prices a bit high', 4),
(104, 2, 515, 'Friendly staff and friendly atmosphere', 4),
(105, 3, 511, 'Good experience Food quality needs to be improved', 3),
(106, 3, 512, 'Excellent food and quick service', 5),
(107, 4, 517, 'This place has a beautiful view. But the menu is limited', 3),
(108, 4, 517, 'Best restaurant in MFU', 5),
(109, 5, 514, 'average experience Nothing special', 3),
(110, 5, 521, 'Delicious food in a comfortable atmosphere', 4),
(111, 6, 516, 'Wait time too long But the food is worth it', 4),
(112, 6, 513, 'Very good value for money I like the variety in the menu', 5),
(113, 7, 519, 'Dessert is the highlight of the meal', 5),
(114, 7, 516, 'Good service but small quantity of drinks', 3),
(115, 8, 518, 'family friendly environment', 4),
(116, 8, 513, 'Amazing food! A little expensive', 4),
(117, 9, 518, 'Staff are knowledgeable about the menu', 4),
(118, 9, 514, 'Cozy atmosphere and friendly staff', 4),
(119, 10, 515, 'The restaurant has a unique and stylish decoration', 5),
(120, 10, 512, 'Seat area suitable for dinner', 4),
(121, 11, 511, 'variety of noodles', 4),
(122, 12, 516, 'The atmosphere was lively. And the drinks are refreshing', 5),
(123, 12, 520, 'Crepes delicious beyond expectations', 5),
(124, 13, 511, 'Friendly staff but limited options', 3),
(125, 13, 512, 'Well prepared food with attention to detail', 5),
(126, 14, 514, 'Unique cooking experience, must try!', 5),
(127, 14, 515, 'Quick service and reasonable prices', 4),
(128, 15, 515, 'Comfortable seats and warm atmosphere', 4),
(129, 15, 520, 'Dessert menu rather disappointing', 3),
(130, 15, 520, 'Highly recommended', 5),
(131, 11, 519, 'Attentive staff and wide range of drinks', 4),
(132, 12, 521, 'Beautiful interior design', 4),
(133, 13, 519, 'Delicious, but waited longer than expected', 3);

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
