-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 04:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ermsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `formloc`
--

CREATE TABLE `formloc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formloc`
--

INSERT INTO `formloc` (`id`, `name`, `city`, `state`, `country`, `latitude`, `longitude`, `time`) VALUES
(1, 'ras', 'Bogotá', 'Bogota D.C.', 'Colombia', '4.6493', '-74.0617', '03:19:22pm'),
(2, 'sayush', 'Bogotá', 'Bogota D.C.', 'Colombia', '4.6493', '-74.0617', '03:19:32pm'),
(3, 'kailash', 'Bogotá', 'Bogota D.C.', 'Colombia', '4.6493', '-74.0617', '06:53:26pm'),
(4, 'ravish', 'Bogotá', 'Bogota D.C.', 'Colombia', '4.6493', '-74.0617', '06:59:42pm'),
(5, 'raj', 'Pune', 'Maharashtra', 'India', '18.5213', '73.8523', '07:02:43pm'),
(6, 'Ria', 'Pune', 'Maharashtra', 'India', '18.5213', '73.8523', '12:00:22pm'),
(7, 'Ria', '', '', '', '', '', '12:10:11pm'),
(8, 'Elf', '', '', '', '', '', '12:10:25pm'),
(9, 'Elf', 'Pune', 'Maharashtra', 'India', '18.5213', '73.8523', '12:13:03pm'),
(10, 'Rakh', 'Pune', 'Maharashtra', 'India', '18.5213', '73.8523', '12:13:20pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formloc`
--
ALTER TABLE `formloc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formloc`
--
ALTER TABLE `formloc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
