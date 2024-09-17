-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2024 at 09:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plantbazaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `plantid` int(10) NOT NULL,
  `addedby` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emailSeller` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plantname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plantColor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plantSize` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plantcategories` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`plantid`, `addedby`, `emailSeller`, `plantname`, `img1`, `img2`, `img3`, `plantColor`, `plantSize`, `plantcategories`, `details`, `location`, `price`, `createdAt`, `updatedAt`) VALUES
(32, 'Maranatha Barredo', '', 'asdasd', 'Untitled.png', '', '', '', '', 'outplant', 'asd', 'asd', 123, '2024-09-16 16:20:23', '2024-09-16 16:20:23'),
(33, 'Juan Dela Cruz', '', 'Gumamela', '440470823_999828935142957_267048814429931240_n.jpg', '', '', '', '', 'outplant', 'Kailangan ng pera kaya binenta.', 'Cabanatuan City', 250, '2024-09-16 16:20:23', '2024-09-16 16:20:23'),
(34, 'asd asd', '', 'Wala lang', 'Screenshot 2024-06-11 010150.png', 'Screenshot 2024-08-17 094044.png', 'Screenshot 2024-08-17 095422.png', '', '', 'inplant', 'Kailangan ng Pera', 'Hello po', 120, '2024-09-16 16:20:23', '2024-09-16 16:20:23'),
(35, 'Juan Dela Cruz', '', 'asd', 'Screenshot 2024-08-25 140014.png', '', '', 'Red', 'Small', 'outdoor', 'asd', 'qwe', 123, '2024-09-16 16:20:23', '2024-09-16 16:20:23'),
(36, 'Juan Dela Cruz', '', 'Wala lang 123', 'Screenshot 2024-08-26 211448.png', '', '', 'Red', 'Small', 'aquatic', 'Kailangan ng Pera', 'Hello po', 123, '2024-09-16 16:20:23', '2024-09-16 16:20:23'),
(37, 'Juan Dela Cruz', '', 'Wala lang', 'Screenshot 2024-08-25 160629.png', '', '', 'Red', 'Small', 'Flowers', 'Kailangan ng Pera', 'asd', 123, '2024-09-16 16:20:23', '2024-09-16 16:20:23'),
(38, 'Juan Dela Cruz', '', 'Sample Plant 1', 'Screenshot 2024-08-27 205133.png', 'Screenshot 2024-09-13 205826.png', 'Screenshot 2024-09-09 134653.png', 'White', 'Medium', 'Outdoor', 'Mahal na Halaman', 'Caloocan', 350, '2024-09-16 16:20:23', '2024-09-16 16:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_archive`
--

CREATE TABLE `product_archive` (
  `archiveID` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `postPlantName` varchar(50) NOT NULL,
  `img1` varchar(128) NOT NULL,
  `img2` varchar(128) NOT NULL,
  `img3` varchar(128) NOT NULL,
  `plantSize` varchar(20) NOT NULL,
  `plantCategories` varchar(40) NOT NULL,
  `details` varchar(128) NOT NULL,
  `location` int(70) NOT NULL,
  `price` int(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `sellerFirstName` varchar(80) NOT NULL,
  `sellerLastName` varchar(50) NOT NULL,
  `sellerEmail` varchar(128) NOT NULL,
  `ratings` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_applicant`
--

CREATE TABLE `seller_applicant` (
  `applicantID` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `applicantFirstName` varchar(50) NOT NULL,
  `applicantLastName` varchar(50) NOT NULL,
  `validId` varchar(128) NOT NULL,
  `selfieValidId` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `proflePicture` varchar(128) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phoneNumber` bigint(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `proflePicture`, `firstname`, `lastname`, `email`, `gender`, `phoneNumber`, `address`, `password`, `status`) VALUES
(37, '', 'Maranatha', 'Barredo', 'maranathabarredo@gmail.com', 'male', 9123738712, 'Brgy.San pedro', 'ceea4f8538aeaedae2ef36d692de660188aa24cb', 0),
(38, '', 'Juan', 'Dela Cruz', 'mbarredo2n.neust@gmail.com', 'male', 9123738712, 'Brgy. San Pedro', '2bff41bafd6efd6a97aa3a73fd015f4bf289b546', 0),
(39, '', 'asd', 'asd', 'soongapac@gmail.com', 'male', 90321232123, 'qwe', '2bff41bafd6efd6a97aa3a73fd015f4bf289b546', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`plantid`),
  ADD KEY `sellerEmail` (`emailSeller`);

--
-- Indexes for table `product_archive`
--
ALTER TABLE `product_archive`
  ADD PRIMARY KEY (`archiveID`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`sellerEmail`);

--
-- Indexes for table `seller_applicant`
--
ALTER TABLE `seller_applicant`
  ADD PRIMARY KEY (`applicantID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `email` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `plantid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_archive`
--
ALTER TABLE `product_archive`
  MODIFY `archiveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_applicant`
--
ALTER TABLE `seller_applicant`
  MODIFY `applicantID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sellers`
--
ALTER TABLE `sellers`
  ADD CONSTRAINT `sellers_ibfk_1` FOREIGN KEY (`sellerEmail`) REFERENCES `product` (`emailSeller`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
