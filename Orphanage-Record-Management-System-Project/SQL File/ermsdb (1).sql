-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2020 at 12:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `fax` varchar(10) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`id`, `name`, `email`, `phone`, `fax`, `street`, `city`, `state`, `pin`) VALUES
(1, 'Devika Bhalerao', 'medevika987@gmail.com', '0788765729', '', '.', '.', 'Maharashtra', '444004'),
(2, 'Devika Bha', 'medevika987@gmail.com', '0788765729', '', '.', '.', 'Maharashtra', '444004'),
(3, 'Devika Bhalerao', 'medevika987@gmail.com', '0788765729', '', '.', '.', 'Maharashtra', '444004');

-- --------------------------------------------------------

--
-- Table structure for table `canteen`
--

CREATE TABLE `canteen` (
  `ID` int(11) NOT NULL,
  `EmpFname` varchar(50) DEFAULT NULL,
  `EmpLName` varchar(50) NOT NULL,
  `EmpCode` varchar(50) DEFAULT NULL,
  `EmpDept` varchar(120) DEFAULT NULL,
  `EmpDesignation` varchar(120) DEFAULT NULL,
  `EmpContactNo` bigint(10) DEFAULT NULL,
  `EmpGender` enum('Male','Female') DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpPassword` varchar(100) DEFAULT NULL,
  `EmpJoingdate` date DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canteen`
--

INSERT INTO `canteen` (`ID`, `EmpFname`, `EmpLName`, `EmpCode`, `EmpDept`, `EmpDesignation`, `EmpContactNo`, `EmpGender`, `EmpEmail`, `EmpPassword`, `EmpJoingdate`, `PostingDate`) VALUES
(1, 'Subhash', 'Pandey', '123465', 'IT', 'Software Developer', 1234567890, 'Male', 'abc@gmail.com', 'Test@12345', '2019-01-02', '2019-02-06 06:31:49'),
(2, 'Anuj', 'Kumar', '123465558', 'CS', 'Software Developer', 1234567890, 'Male', 'anuj@gmail.com', '123', '2017-03-23', '2019-02-06 06:41:42'),
(3, 'Ankush', 'Pandey', '123467', 'IT', 'Software Developer', 1234567890, 'Male', 'ankush@gmail.com', '89756', '2010-09-13', '2019-02-06 06:42:15'),
(4, 'Sarita', 'Pandey', '12346012', 'IT', 'Software Developer', 1234567890, '', 'abhi@gmail.com', '156975', NULL, '2019-02-06 06:42:47'),
(6, 'Manu', 'Ramesh', '369874', NULL, NULL, NULL, NULL, 'manu@gmail.com', '987563', NULL, '2019-02-06 12:00:50'),
(7, 'Ragunath', 'Shahye', '63', NULL, NULL, NULL, NULL, 'shahye@gmail.com', '99999', NULL, '2019-02-08 07:22:40'),
(8, '1345556', '', '', NULL, NULL, NULL, NULL, '', '', NULL, '2019-02-11 05:08:40'),
(9, 'Garuv', 'Bhatia', '89745', NULL, NULL, NULL, NULL, 'jk@gmail.com', '12', NULL, '2019-02-11 05:12:28'),
(10, 'Khusi', 'Dev', '1234', NULL, NULL, NULL, NULL, 'hjk@gmail.com', '1990', NULL, '2019-02-11 05:18:08'),
(11, 'SARITA', 'pANDEY', '789', NULL, NULL, NULL, NULL, 'PANDEY@GMAIL.COM', '1111', NULL, '2019-02-11 08:50:55'),
(12, 'Dinesh', 'Karthik', '56989', NULL, NULL, NULL, NULL, 'dinesh@gmail.com', '8989', NULL, '2019-02-11 12:30:50'),
(13, 'Test', 'User', '2131231', 'IT', 'Software Developer', 1234567890, 'Male', 'testuser@gmail.com', 'Test@123', '2018-10-09', '2019-02-11 16:21:58'),
(14, 'Anuj', 'Kumar', '1023647885', 'IT', 'Software Developer', 1234567890, 'Male', 'aktest@gmail.com', 'Test@123', '2019-01-01', '2020-02-19 16:58:51'),
(15, 'derr', 'derr', '2', NULL, NULL, NULL, NULL, 'd@gmail.com', '45', NULL, '2020-03-21 09:45:07'),
(16, 'dd', 'dd', '12', NULL, NULL, NULL, NULL, 'sdf@gmail.com', '12', NULL, '2020-03-21 09:45:29'),
(22, 'sw', 'sw', '34566', NULL, NULL, NULL, NULL, 'sw@gmail.com', 'dfd', NULL, '2020-03-21 09:50:20'),
(23, 'w', 'w', '23', NULL, NULL, NULL, NULL, 'def@gmail.com', '34', NULL, '2020-03-22 13:17:39'),
(25, 'ert', 'ert', '3456', NULL, NULL, NULL, NULL, 'ert@gmail.com', '3456', NULL, '2020-04-08 18:22:48'),
(26, 'food', 'food', '9000', NULL, NULL, NULL, NULL, 'food@gmail.com', 'food', NULL, '2020-04-28 12:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `canteenedu`
--

CREATE TABLE `canteenedu` (
  `Id` int(11) NOT NULL,
  `EmpID` int(10) DEFAULT NULL,
  `CoursePG` varchar(45) DEFAULT NULL,
  `SchoolCollegePG` varchar(45) DEFAULT NULL,
  `YearPassingPG` varchar(45) DEFAULT NULL,
  `PercentagePG` varchar(4) DEFAULT NULL,
  `CourseGra` varchar(45) DEFAULT NULL,
  `SchoolCollegeGra` varchar(45) DEFAULT NULL,
  `YearPassingGra` varchar(45) DEFAULT NULL,
  `PercentageGra` varchar(4) DEFAULT NULL,
  `CourseSSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeSSC` varchar(45) DEFAULT NULL,
  `YearPassingSSC` varchar(45) DEFAULT NULL,
  `PercentageSSC` varchar(4) DEFAULT NULL,
  `CourseHSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeHSC` varchar(45) DEFAULT NULL,
  `YearPassingHSC` varchar(45) DEFAULT NULL,
  `PercentageHSC` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canteenedu`
--

INSERT INTO `canteenedu` (`Id`, `EmpID`, `CoursePG`, `SchoolCollegePG`, `YearPassingPG`, `PercentagePG`, `CourseGra`, `SchoolCollegeGra`, `YearPassingGra`, `PercentageGra`, `CourseSSC`, `SchoolCollegeSSC`, `YearPassingSSC`, `PercentageSSC`, `CourseHSC`, `SchoolCollegeHSC`, `YearPassingHSC`, `PercentageHSC`) VALUES
(1, 4, 'NA', 'NA', 'NA', 'NA', 'B.Tech(IT)', 'LPU', '2014', '86%', 'Science', 'ABC Senoir secondary School', '2010', '64%', 'Science', 'abcd', '2008', '98%'),
(2, 2, 'abc', 'ghf', '2016', '89%', 'B.Tech(IT)', 'LPU', '2013', '86%', 'Science', 'DPS Senoir secondary School', '2009', '64%', 'Science', 'DPS Senoir secondary School', '2008', '90%'),
(3, 3, 'Master in charted accountant', 'Bhavi CA college', '2004', '89%', 'Bachelor in charted accountant', 'Bhavi CA college', '1996', '95%', 'Science', 'graimia convent school', '1993', '75%', 'Science', 'graimia convent school', '1991', '89%'),
(4, 7, 'MCA', 'KITE Ghaziabad', '1990', '64 %', 'BCA', 'TVN', '1997', '68 %', 'Science', 'TVN', '1992', '76 %', 'Science', 'TVN', '2010', '89 %'),
(5, 12, 'NA', 'NA', 'NA', 'NA', 'B.Tech', 'VIT', '1996', '75%', 'Science', 'GHI convent school', '1993', '66%', 'Science', 'GHI convent school', '1990', '65%'),
(6, 13, 'MBA', 'SMU', '2018', '70', 'B.Tech', 'LPU', '2015', '80', 'PCM', 'Test', '2010', '74', 'PCM', 'ABC', '2008', '85'),
(7, 1, 'NA', 'NA', 'NA', 'NA', 'B.Tech', 'ABC', '2012', '75', 'PCM', 'XYZ', '2008', '67', '10th', 'HGHH', '2006', '89'),
(8, 14, 'M.Tech', 'ABC College', '2014', '65', 'B.Tech', 'XYZ', '2012', '70', 'PCM', 'ABC', '2008', '56', 'High School', 'XYZ', '2006', '85'),
(9, 15, 'frtt', 'bhg', 'jnj', 'njh', 'ju', 'k', '789', '87', 'uj', 'nj', '89', '98', 'nj', 'nj', '8999', '87');

-- --------------------------------------------------------

--
-- Table structure for table `canteenexp`
--

CREATE TABLE `canteenexp` (
  `ID` int(11) NOT NULL,
  `EmpID` varchar(5) DEFAULT NULL,
  `Employer1Name` varchar(75) DEFAULT NULL,
  `Employer1Designation` varchar(50) DEFAULT NULL,
  `Employer1CTC` varchar(50) DEFAULT NULL,
  `Employer1WorkDuration` varchar(11) DEFAULT NULL,
  `Employer2Name` varchar(75) DEFAULT NULL,
  `Employer2Designation` varchar(50) DEFAULT NULL,
  `Employer2CTC` varchar(50) DEFAULT NULL,
  `Employer2WorkDuration` varchar(11) DEFAULT NULL,
  `Employer3Name` varchar(75) DEFAULT NULL,
  `Employer3Designation` varchar(50) DEFAULT NULL,
  `Employer3CTC` varchar(50) DEFAULT NULL,
  `Employer3WorkDuration` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canteenexp`
--

INSERT INTO `canteenexp` (`ID`, `EmpID`, `Employer1Name`, `Employer1Designation`, `Employer1CTC`, `Employer1WorkDuration`, `Employer2Name`, `Employer2Designation`, `Employer2CTC`, `Employer2WorkDuration`, `Employer3Name`, `Employer3Designation`, `Employer3CTC`, `Employer3WorkDuration`) VALUES
(2, '4', 'abc.pvt.td', 'software tester', '20,000 p/m', '4 yrs', 'tch.pvt.td', 'software tester', '32000 p/m', '4 yrs', 'dfg.pvt.td', 'SR.software tester', '45000 p/m', '7 yrs'),
(7, '2', 'SAR pvt.ltd', 'Software Developer', '25000 p/m', '3 yrs', 'abc enterprise', 'software developer', '30000 p/m', '3 yrs', 'dgfhgfg.pt.ltd', 'software developer', '35000 p/m', '2 yrs till '),
(8, '3', 'GHA pvt.ltd', 'accountant', '25000', '5 yrs', 'HRCH pvt.ltd', 'accountant', '75000', '5 yrs', 'TCGHB pvt ltd', 'Sr.Accountant', '95000 ', '8 yrs till'),
(9, '7', 'FAG pvt.ltd', 'HR Executive', '25000 p/m', '6 yrs', 'TYS', 'HR Executive', '35000 p/m', '7 yrs', 'hirp pvt.ltd', 'HR Executive', '45000 p/m', '4 yrs till'),
(10, '12', 'dfg.pvt.ltd', 'accountant', '25000 p/m', '1 yrs', 'fghpvt.ltd', 'accountant', '30000 p/m', '3 yrs', 'fghpvt.ltd', 'accountant', '45000 p/m', '5 yrs till'),
(11, '13', 'ABC', 'Developer', '12000 ', '2 years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(12, '1', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '14', 'ABC Tech', 'Jr Devloper', '1258000', '6 Month', 'XYZ Tech', 'Devloper', '2589300', '6 Month', 'It Tech', 'Sr Devloper', '853214447', '2 + Years'),
(14, '23', 'de', '4', '45', 'rt', '', '', '', '', '', '', '', ''),
(15, '26', 'Orphan', 'kuhudhaish', '10', '2.9', 'hjdsahdkaH', 'biryani', '12', '78', 'sambhu', 'Chicken', '23', '34');

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `street` varchar(90) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`id`, `name`, `email`, `phone`, `password`, `street`, `city`, `state`, `pin`) VALUES
(1, 'Devika Bhalerao', 'medevika987@gmail.com', '0788765729', '', '.', '.', 'Maharashtra', '444004'),
(2, 'Devika Bhalerao', 'medevika987@gmail.com', '0788765729', '', '.', '.', 'Maharashtra', '444004'),
(3, 'aas', 'dgrkt1234@gmail.com', '1', '', 'xs', 'ccc', 'c', '2'),
(4, 'Devika Bhalerao', 'Admin@a', '0788765729', '', '.', '.', 'Maharashtra', '444004');

-- --------------------------------------------------------

--
-- Table structure for table `empeducation`
--

CREATE TABLE `empeducation` (
  `Id` int(11) NOT NULL,
  `EmpID` int(10) DEFAULT NULL,
  `CoursePG` varchar(45) DEFAULT NULL,
  `SchoolCollegePG` varchar(45) DEFAULT NULL,
  `YearPassingPG` varchar(45) DEFAULT NULL,
  `PercentagePG` varchar(4) DEFAULT NULL,
  `CourseGra` varchar(45) DEFAULT NULL,
  `SchoolCollegeGra` varchar(45) DEFAULT NULL,
  `YearPassingGra` varchar(45) DEFAULT NULL,
  `PercentageGra` varchar(4) DEFAULT NULL,
  `CourseSSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeSSC` varchar(45) DEFAULT NULL,
  `YearPassingSSC` varchar(45) DEFAULT NULL,
  `PercentageSSC` varchar(4) DEFAULT NULL,
  `CourseHSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeHSC` varchar(45) DEFAULT NULL,
  `YearPassingHSC` varchar(45) DEFAULT NULL,
  `PercentageHSC` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empeducation`
--

INSERT INTO `empeducation` (`Id`, `EmpID`, `CoursePG`, `SchoolCollegePG`, `YearPassingPG`, `PercentagePG`, `CourseGra`, `SchoolCollegeGra`, `YearPassingGra`, `PercentageGra`, `CourseSSC`, `SchoolCollegeSSC`, `YearPassingSSC`, `PercentageSSC`, `CourseHSC`, `SchoolCollegeHSC`, `YearPassingHSC`, `PercentageHSC`) VALUES
(1, 4, 'NA', 'NA', 'NA', 'NA', 'B.Tech(IT)', 'LPU', '2014', '86%', 'Science', 'ABC Senoir secondary School', '2010', '64%', 'Science', 'abcd', '2008', '98%'),
(2, 2, 'abc', 'ghf', '2016', '89%', 'B.Tech(IT)', 'LPU', '2013', '86%', 'Science', 'DPS Senoir secondary School', '2009', '64%', 'Science', 'DPS Senoir secondary School', '2008', '90%'),
(3, 3, 'Master in charted accountant', 'Bhavi CA college', '2004', '89%', 'Bachelor in charted accountant', 'Bhavi CA college', '1996', '95%', 'Science', 'graimia convent school', '1993', '75%', 'Science', 'graimia convent school', '1991', '89%'),
(4, 7, 'MCA', 'KITE Ghaziabad', '1990', '64 %', 'BCA', 'TVN', '1997', '68 %', 'Science', 'TVN', '1992', '76 %', 'Science', 'TVN', '2010', '89 %'),
(5, 12, 'NA', 'NA', 'NA', 'NA', 'B.Tech', 'VIT', '1996', '75%', 'Science', 'GHI convent school', '1993', '66%', 'Science', 'GHI convent school', '1990', '65%'),
(6, 13, 'MBA', 'SMU', '2018', '70', 'B.Tech', 'LPU', '2015', '80', 'PCM', 'Test', '2010', '74', 'PCM', 'ABC', '2008', '85'),
(7, 1, 'NA', 'NA', 'NA', 'NA', 'B.Tech', 'ABC', '2012', '75', 'PCM', 'XYZ', '2008', '67', '10th', 'HGHH', '2006', '89'),
(8, 14, 'M.Tech', 'ABC College', '2014', '65', 'B.Tech', 'XYZ', '2012', '70', 'PCM', 'ABC', '2008', '56', 'High School', 'XYZ', '2006', '85'),
(9, 15, 'frtt', 'bhg', 'jnj', 'njh', 'ju', 'k', '789', '87', 'uj', 'nj', '89', '98', 'nj', 'nj', '8999', '87');

-- --------------------------------------------------------

--
-- Table structure for table `empexpireince`
--

CREATE TABLE `empexpireince` (
  `ID` int(11) NOT NULL,
  `EmpID` varchar(5) DEFAULT NULL,
  `Employer1Name` varchar(75) DEFAULT NULL,
  `Employer1Designation` varchar(50) DEFAULT NULL,
  `Employer1CTC` varchar(50) DEFAULT NULL,
  `Employer1WorkDuration` varchar(11) DEFAULT NULL,
  `Employer2Name` varchar(75) DEFAULT NULL,
  `Employer2Designation` varchar(50) DEFAULT NULL,
  `Employer2CTC` varchar(50) DEFAULT NULL,
  `Employer2WorkDuration` varchar(11) DEFAULT NULL,
  `Employer3Name` varchar(75) DEFAULT NULL,
  `Employer3Designation` varchar(50) DEFAULT NULL,
  `Employer3CTC` varchar(50) DEFAULT NULL,
  `Employer3WorkDuration` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empexpireince`
--

INSERT INTO `empexpireince` (`ID`, `EmpID`, `Employer1Name`, `Employer1Designation`, `Employer1CTC`, `Employer1WorkDuration`, `Employer2Name`, `Employer2Designation`, `Employer2CTC`, `Employer2WorkDuration`, `Employer3Name`, `Employer3Designation`, `Employer3CTC`, `Employer3WorkDuration`) VALUES
(2, '4', 'abc.pvt.td', 'software tester', '20,000 p/m', '4 yrs', 'tch.pvt.td', 'software tester', '32000 p/m', '4 yrs', 'dfg.pvt.td', 'SR.software tester', '45000 p/m', '7 yrs'),
(7, '2', 'SAR pvt.ltd', 'Software Developer', '25000 p/m', '3 yrs', 'abc enterprise', 'software developer', '30000 p/m', '3 yrs', 'dgfhgfg.pt.ltd', 'software developer', '35000 p/m', '2 yrs till '),
(8, '3', 'GHA pvt.ltd', 'accountant', '25000', '5 yrs', 'HRCH pvt.ltd', 'accountant', '75000', '5 yrs', 'TCGHB pvt ltd', 'Sr.Accountant', '95000 ', '8 yrs till'),
(9, '7', 'FAG pvt.ltd', 'HR Executive', '25000 p/m', '6 yrs', 'TYS', 'HR Executive', '35000 p/m', '7 yrs', 'hirp pvt.ltd', 'HR Executive', '45000 p/m', '4 yrs till'),
(10, '12', 'dfg.pvt.ltd', 'accountant', '25000 p/m', '1 yrs', 'fghpvt.ltd', 'accountant', '30000 p/m', '3 yrs', 'fghpvt.ltd', 'accountant', '45000 p/m', '5 yrs till'),
(11, '13', 'ABC', 'Developer', '12000 ', '2 years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(12, '1', 'bh', 'cd', '34', '32', 'ff', 'ff', '3', '3f', 'ff', 'f', '3', '2'),
(13, '14', 'ABC Tech', 'Jr Devloper', '1258000', '6 Month', 'XYZ Tech', 'Devloper', '2589300', '6 Month', 'It Tech', 'Sr Devloper', '853214447', '2 + Years'),
(14, '23', 'w', 'w', '3', '3', 'e', 'e', '2', '2', 'w', 'w', '3', '3'),
(15, '26', 'uhwhqlidy', 'tb', '10', '2.9', 'Sudhir Naik', 'glucoma', '233', '3', 'Ravi Singh', 'jauncice', '23', '4');

-- --------------------------------------------------------

--
-- Table structure for table `employeedetail`
--

CREATE TABLE `employeedetail` (
  `ID` int(11) NOT NULL,
  `EmpFname` varchar(50) DEFAULT NULL,
  `EmpLName` varchar(50) NOT NULL,
  `EmpCode` varchar(50) DEFAULT NULL,
  `EmpDept` varchar(120) DEFAULT NULL,
  `EmpDesignation` varchar(120) DEFAULT NULL,
  `EmpContactNo` bigint(10) DEFAULT NULL,
  `EmpGender` enum('Male','Female') DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpPassword` varchar(100) DEFAULT NULL,
  `EmpJoingdate` date DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedetail`
--

INSERT INTO `employeedetail` (`ID`, `EmpFname`, `EmpLName`, `EmpCode`, `EmpDept`, `EmpDesignation`, `EmpContactNo`, `EmpGender`, `EmpEmail`, `EmpPassword`, `EmpJoingdate`, `PostingDate`) VALUES
(1, 'Subhash', 'Pandey', '123465', 'IT', '', 1234567890, 'Male', 'abc@gmail.com', 'Test@12345', '2019-01-02', '2019-02-06 06:31:49'),
(2, 'Anuj', 'Kumar', '123465558', 'CS', 'Software Developer', 1234567890, 'Male', 'anuj@gmail.com', '123', '2017-03-23', '2019-02-06 06:41:42'),
(3, 'Ankush', 'Pandey', '123467', 'IT', 'Software Developer', 1234567890, 'Male', 'ankush@gmail.com', '89756', '2010-09-13', '2019-02-06 06:42:15'),
(4, 'Sarita', 'Pandey', '12346012', 'IT', 'Software Developer', 1234567890, '', 'abhi@gmail.com', '156975', NULL, '2019-02-06 06:42:47'),
(6, 'Manu', 'Ramesh', '369874', NULL, NULL, NULL, NULL, 'manu@gmail.com', '987563', NULL, '2019-02-06 12:00:50'),
(7, 'Ragunath', 'Shahye', '63', NULL, NULL, NULL, NULL, 'shahye@gmail.com', '99999', NULL, '2019-02-08 07:22:40'),
(8, '1345556', '', '', NULL, NULL, NULL, NULL, '', '', NULL, '2019-02-11 05:08:40'),
(9, 'Garuv', 'Bhatia', '89745', NULL, NULL, NULL, NULL, 'jk@gmail.com', '12', NULL, '2019-02-11 05:12:28'),
(10, 'Khusi', 'Dev', '1234', NULL, NULL, NULL, NULL, 'hjk@gmail.com', '1990', NULL, '2019-02-11 05:18:08'),
(11, 'SARITA', 'pANDEY', '789', NULL, NULL, NULL, NULL, 'PANDEY@GMAIL.COM', '1111', NULL, '2019-02-11 08:50:55'),
(12, 'Dinesh', 'Karthik', '56989', NULL, NULL, NULL, NULL, 'dinesh@gmail.com', '8989', NULL, '2019-02-11 12:30:50'),
(13, 'Test', 'User', '2131231', 'IT', 'Software Developer', 1234567890, 'Male', 'testuser@gmail.com', 'Test@123', '2018-10-09', '2019-02-11 16:21:58'),
(14, 'Anuj', 'Kumar', '1023647885', 'IT', 'Software Developer', 1234567890, 'Male', 'aktest@gmail.com', 'Test@123', '2019-01-01', '2020-02-19 16:58:51'),
(15, 'derr', 'derr', '2', NULL, NULL, NULL, NULL, 'd@gmail.com', '45', NULL, '2020-03-21 09:45:07'),
(16, 'dd', 'dd', '12', NULL, NULL, NULL, NULL, 'sdf@gmail.com', '12', NULL, '2020-03-21 09:45:29'),
(22, 'sw', 'sw', '34566', NULL, NULL, NULL, NULL, 'sw@gmail.com', 'dfd', NULL, '2020-03-21 09:50:20'),
(23, 'd', 'd', '234', NULL, NULL, NULL, NULL, 'ty@gmail.com', '1234', NULL, '2020-03-22 13:14:01'),
(24, 'der', 'der', '34567', NULL, NULL, NULL, NULL, 'gfd@gmail.com', '34567', NULL, '2020-04-09 05:42:24'),
(25, 'kb', 'kb', '4', NULL, NULL, NULL, NULL, 'kb@kb.com', 'kb', NULL, '2020-04-26 14:11:12'),
(26, 'ran', 'ran', '8000', NULL, NULL, NULL, NULL, 'ran@ran.com', '123', NULL, '2020-04-28 06:00:03');

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
(10, 'Rakh', 'Pune', 'Maharashtra', 'India', '18.5213', '73.8523', '12:13:20pm'),
(11, 'dd', 'Pune', 'Maharashtra', 'India', '18.5213', '73.8523', '08:26:04pm');

-- --------------------------------------------------------

--
-- Table structure for table `orphans`
--

CREATE TABLE `orphans` (
  `ID` int(11) NOT NULL,
  `OrphanID` varchar(5) DEFAULT NULL,
  `name1` varchar(75) DEFAULT NULL,
  `age1` varchar(50) DEFAULT NULL,
  `healthissue1` varchar(50) DEFAULT NULL,
  `joiningdate1` varchar(11) DEFAULT NULL,
  `name2` varchar(75) DEFAULT NULL,
  `age2` varchar(50) DEFAULT NULL,
  `healthissue2` varchar(50) DEFAULT NULL,
  `joiningdate2` varchar(11) DEFAULT NULL,
  `name3` varchar(75) DEFAULT NULL,
  `age3` varchar(50) DEFAULT NULL,
  `healthissue3` varchar(50) DEFAULT NULL,
  `joiningdate3` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orphans`
--

INSERT INTO `orphans` (`ID`, `OrphanID`, `name1`, `age1`, `healthissue1`, `joiningdate1`, `name2`, `age2`, `healthissue2`, `joiningdate2`, `name3`, `age3`, `healthissue3`, `joiningdate3`) VALUES
(2, '4', 'abc.pvt.td', 'software tester', '20,000 p/m', '4 yrs', 'tch.pvt.td', 'software tester', '32000 p/m', '4 yrs', 'dfg.pvt.td', 'SR.software tester', '45000 p/m', '7 yrs'),
(7, '2', 'SAR pvt.ltd', 'Software Developer', '25000 p/m', '3 yrs', 'abc enterprise', 'software developer', '30000 p/m', '3 yrs', 'dgfhgfg.pt.ltd', 'software developer', '35000 p/m', '2 yrs till '),
(8, '3', 'GHA pvt.ltd', 'accountant', '25000', '5 yrs', 'HRCH pvt.ltd', 'accountant', '75000', '5 yrs', 'TCGHB pvt ltd', 'Sr.Accountant', '95000 ', '8 yrs till'),
(9, '7', 'FAG pvt.ltd', 'HR Executive', '25000 p/m', '6 yrs', 'TYS', 'HR Executive', '35000 p/m', '7 yrs', 'hirp pvt.ltd', 'HR Executive', '45000 p/m', '4 yrs till'),
(10, '12', 'dfg.pvt.ltd', 'accountant', '25000 p/m', '1 yrs', 'fghpvt.ltd', 'accountant', '30000 p/m', '3 yrs', 'fghpvt.ltd', 'accountant', '45000 p/m', '5 yrs till'),
(11, '13', 'ABC', 'Developer', '12000 ', '2 years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(12, '1', 'bh', 'cd', '34', '32', 'ff', 'ff', '3', '3f', 'ff', 'f', '3', '2'),
(13, '14', 'ABC Tech', 'Jr Devloper', '1258000', '6 Month', 'XYZ Tech', 'Devloper', '2589300', '6 Month', 'It Tech', 'Sr Devloper', '853214447', '2 + Years'),
(14, '23', 'w', 'w', '3', '3', 'e', 'e', '2', '2', 'w', 'w', '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `orphansdetail`
--

CREATE TABLE `orphansdetail` (
  `ID` int(11) NOT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) NOT NULL,
  `OrphansCode` varchar(50) DEFAULT NULL,
  `age` varchar(120) DEFAULT NULL,
  `healthissues` varchar(120) DEFAULT NULL,
  `contactno` bigint(10) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `joiningdate` date DEFAULT NULL,
  `postingdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orphansdetail`
--

INSERT INTO `orphansdetail` (`ID`, `Fname`, `Lname`, `OrphansCode`, `age`, `healthissues`, `contactno`, `gender`, `email`, `password`, `joiningdate`, `postingdate`) VALUES
(1, 'Subhash', '', '123465', 'IT', '', 1234567890, 'Female', 'abc@gmail.com', 'Test@12345', '0000-00-00', '2019-02-06 06:31:49'),
(2, 'Anuj', 'Kumar', '123465558', '24', 'HIV', 1234567890, 'Male', 'anuj@gmail.com', '123', '2017-03-23', '2019-02-06 06:41:42'),
(3, 'Ankush', 'Pandey', '123467', '34', 'AID', 1234567890, 'Male', 'ankush@gmail.com', '89756', '2010-09-13', '2019-02-06 06:42:15'),
(4, 'Sarita', 'Pandey', '12346012', '24', 'Mental illness', 1234567890, '', 'abhi@gmail.com', '156975', NULL, '2019-02-06 06:42:47'),
(6, 'Manu', 'Ramesh', '369874', NULL, NULL, NULL, NULL, 'manu@gmail.com', '987563', NULL, '2019-02-06 12:00:50'),
(7, 'Ragunath', 'Shahye', '63', NULL, NULL, NULL, NULL, 'shahye@gmail.com', '99999', NULL, '2019-02-08 07:22:40'),
(8, '1345556', '', '', NULL, NULL, NULL, NULL, '', '', NULL, '2019-02-11 05:08:40'),
(9, 'Garuv', 'Bhatia', '89745', NULL, NULL, NULL, NULL, 'jk@gmail.com', '12', NULL, '2019-02-11 05:12:28'),
(10, 'Khusi', 'Dev', '1234', NULL, NULL, NULL, NULL, 'hjk@gmail.com', '1990', NULL, '2019-02-11 05:18:08'),
(11, 'SARITA', 'pANDEY', '789', NULL, NULL, NULL, NULL, 'PANDEY@GMAIL.COM', '1111', NULL, '2019-02-11 08:50:55'),
(12, 'Dinesh', 'Karthik', '56989', NULL, NULL, NULL, NULL, 'dinesh@gmail.com', '8989', NULL, '2019-02-11 12:30:50'),
(13, 'Test', 'User', '2131231', '20', 'panic attcks', 1234567890, 'Male', 'testuser@gmail.com', 'Test@123', '2018-10-09', '2019-02-11 16:21:58'),
(14, 'Anuj', 'Kumar', '1023647885', '45', 'diabeties', 1234567890, 'Male', 'aktest@gmail.com', 'Test@123', '2019-01-01', '2020-02-19 16:58:51'),
(15, 'derr', 'derr', '2', NULL, NULL, NULL, NULL, 'd@gmail.com', '45', NULL, '2020-03-21 09:45:07'),
(16, 'dd', 'dd', '12', NULL, NULL, NULL, NULL, 'sdf@gmail.com', '12', NULL, '2020-03-21 09:45:29'),
(22, 'sw', 'sw', '34566', NULL, NULL, NULL, NULL, 'sw@gmail.com', 'dfd', NULL, '2020-03-21 09:50:20'),
(23, 'd', 'd', '234', NULL, NULL, NULL, NULL, 'ty@gmail.com', '1234', NULL, '2020-03-22 13:14:01'),
(24, 'der', 'der', '34567', NULL, NULL, NULL, NULL, 'gfd@gmail.com', '34567', NULL, '2020-04-09 05:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `orphan_1`
--

CREATE TABLE `orphan_1` (
  `id` int(11) NOT NULL,
  `Orphan_id` int(9) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Height(cms)` int(11) DEFAULT NULL,
  `Weight` int(6) DEFAULT NULL,
  `Hobbies` varchar(255) DEFAULT NULL,
  `Room_no` int(11) DEFAULT NULL,
  `Outside Place` varchar(255) DEFAULT NULL,
  `Place Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone_no` varchar(255) DEFAULT NULL,
  `COL 14` varchar(10) DEFAULT NULL,
  `COL 15` varchar(9) DEFAULT NULL,
  `COL 16` varchar(9) DEFAULT NULL,
  `COL 17` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orphan_1`
--

INSERT INTO `orphan_1` (`id`, `Orphan_id`, `Gender`, `Age`, `DOB`, `Height(cms)`, `Weight`, `Hobbies`, `Room_no`, `Outside Place`, `Place Name`, `Address`, `Phone_no`, `COL 14`, `COL 15`, `COL 16`, `COL 17`) VALUES
(0, 0, 'Gender', 0, '0000-00-00', 0, 0, 'Hobbies', 0, 'Goes to Job/school/College', 'Jo', 'Address', '0', 'Timing', 'Warden_id', 'Latitude', 'Longitude'),
(1, 13101, 'Male', 26, '0000-00-00', 187, 77, 'Crafting', 103, 'Job', 'Re', 'Dadar West', '22', '10:00-7:00', '14103', '19.053520', '72.894418'),
(2, 13102, 'Female', 24, '0000-00-00', 179, 56, 'DancingSinging', 101, 'Job', 'IC', 'Kurla', '22', '10:00-4:00', '14101', '19.053520', '72.887852'),
(3, 13103, 'Male', 7, '0000-00-00', 119, 20, 'Trekking', 105, 'School', 'Ar', 'Bandra East', '21', '8:00-1:00', '14105', '19.065092', '72.856738'),
(4, 13104, 'Male', 12, '0000-00-00', 140, 33, 'TrekkingSinging', 105, 'School', 'SI', 'Sewri', '22', '7:15-12:30', '14105', '18.982304', '72.836992'),
(5, 13105, 'Female', 5, '0000-00-00', 100, 14, 'Reading', 101, 'School', 'Co', 'Prabhadevi', '20', '8:00-1:30', '14101', '19.016400', '72.829541'),
(6, 13106, 'Female', 18, '0000-00-00', 156, 40, 'DancingSinging', 102, 'College', 'Ja', 'Churchgate', '21', '9:00-12:00', '14102', '18.934510', '72.823021'),
(7, 13107, 'Female', 19, '0000-00-00', 154, 48, 'Drawing', 103, 'College', 'Si', 'FortMumbai', '22', '9:00-12:00', '14103', '18.936262', '72.830056'),
(8, 13108, 'Male', 13, '0000-00-00', 154, 32, 'Painting', 104, 'School', 'ME', 'Bandra West', '22', '7:30-1:30', '14104', '19.052221', '72.827113'),
(9, 13109, 'Female', 19, '0000-00-00', 151, 51, 'Cooking and Baking', 101, 'College', 'B.', 'Charni Road', '22', '9:00-5:00', '14101', '18.951360', '72.817736'),
(10, 13110, 'Male', 23, '0000-00-00', 180, 67, 'SwimmingReading', 105, 'Job', 'In', 'Grant Road', '21', '9:00-4:00', '14105', '18.960550', '72.818482'),
(11, 13111, 'Male', 23, '0000-00-00', 189, 60, 'Drawing Painting', 103, 'Job', 'Ma', 'Girgaon', '20', '10:00-8:00', '14103', '19.100522', '72.739176'),
(12, 13112, 'Male', 20, '0000-00-00', 177, 58, 'Playing Sports', 103, 'College', 'Sw', 'Chembur', '22', '8:45-4:30', '14103', '19.048747', '72.887824'),
(13, 13113, 'Male', 8, '0000-00-00', 127, 27, 'Reading Writing', 102, 'School', 'Ar', 'Bandra West', '22', '8:00-1:00', '14102', '19.048744', '72.854993'),
(14, 13114, 'Female', 10, '0000-00-00', 120, 23, 'Cooking and Baking', 102, 'School', 'Co', 'Prabhadevi', '21', '8:00-1:30', '14102', '19.016400', '72.829541'),
(15, 13115, 'Female', 20, '0000-00-00', 169, 45, 'DancingSinging', 104, 'College', 'Or', 'Sanpada', '22', '9:30-4:30', '14104', '19.064477', '73.005601'),
(16, 13116, 'Female', 16, '0000-00-00', 150, 33, 'Trekking', 101, 'School', 'Sh', 'Dadar West', '21', '8:00-12:30', '14101', '19.015097', '72.835162'),
(17, 13117, 'Male', 23, '0000-00-00', 179, 71, 'CampingDancing', 101, 'College', 'Da', 'Airoli', '22', '9:00-5:00', '14101', '19.160322', '72.993379'),
(18, 13118, 'Female', 16, '0000-00-00', 155, 33, 'Travelling', 104, 'College', 'Ja', 'Churchgate', '21', '9:00-12:00', '14104', '18.934510', '72.823021'),
(19, 13119, 'Male', 16, '0000-00-00', 167, 43, 'Solving puzzles', 101, 'College', 'Ni', 'Kandivali West', '20', '8:00-1:00', '14101', '18.871751', '74.479966'),
(20, 13120, 'Female', 19, '0000-00-00', 167, 56, 'TravellingTrekking', 104, 'College', 'S.', 'Ghatkopar', '21', '9:00-5:00', '14104', '19.075930', '72.896823'),
(21, 13121, 'Female', 4, '0000-00-00', 92, 10, 'playing', 105, '-', 'Co', 'Prabhadevi', '22', '8:00-1:00', '14105', '19.016400', '72.829541'),
(22, 13122, 'Male', 27, '0000-00-00', 189, 60, 'Surfing', 103, 'Job', 'As', 'Goregaon', '20', '9:00-6:00', '14103', '19.165853', '72.843683'),
(23, 13123, 'Male', 14, '0000-00-00', 154, 34, 'Playing Chess', 104, 'School', 'ME', 'Bandra West', '20', '7:30-1:30', '14104', '19.052221', '72.827113'),
(24, 13124, 'Male', 18, '0000-00-00', 177, 50, 'Playing Sports', 105, 'College', 'Si', 'FortMumbai', '22', '9:00-12:00', '14105', '18.936262', '72.830056'),
(25, 13125, 'Female', 11, '0000-00-00', 130, 29, 'Solving puzzles', 101, 'School', 'Ou', 'Dadar', '21', '8:00-1:30', '14101', '19.018066', '72.832825'),
(26, 13126, 'Male', 11, '0000-00-00', 142, 33, 'Reading', 104, 'School', 'Mo', 'Girgaon', '22', '7:30-1:30', '14104', '18.956960', '72.820685'),
(27, 13127, 'Female', 16, '0000-00-00', 156, 34, 'Writing Articles', 103, 'School', 'Co', 'Prabhadevi', '21', '8:00-1:00', '14103', '19.016400', '72.829541'),
(28, 13128, 'Female', 19, '0000-00-00', 167, 42, 'DancingSinging', 105, 'College', 'Pi', 'Panvel', '21', '9:00-1:00', '14105', '18.990205', '73.125620'),
(29, 13129, 'Female', 10, '0000-00-00', 128, 23, 'Wrestling', 104, 'School', 'Co', 'Prabhadevi', '22', '8:00-1:00', '14104', '19.016400', '72.829541'),
(30, 13130, 'Male', 13, '0000-00-00', 144, 31, 'Crafting', 101, 'School', 'SI', 'Sewri', '21', '7:15-12:30', '14101', '18.982304', '72.836992'),
(31, 13131, 'Male', 15, '0000-00-00', 160, 22, 'ReadingwritingDancing', 102, 'School', 'Sh', 'Dadar West', '22', '8:00-12:30', '14102', '19.015097', '72.835162'),
(32, 13132, 'Female', 12, '0000-00-00', 136, 26, 'Solving puzzles', 102, 'School', 'Ou', 'Dadar', '21', '8:00-1:30', '14102', '19.018066', '72.832825'),
(33, 13133, 'Male', 11, '0000-00-00', 139, 24, 'Camping', 102, 'School', 'Go', 'Dadar', '21', '7:00-12:30', '14102', '19.023020', '72.836691'),
(34, 13134, 'Male', 9, '0000-00-00', 127, 26, 'DrawingSketching', 101, 'School', 'Go', 'Dadar', '22', '7:00-12:30', '14101', '19.023020', '72.836691'),
(35, 13135, 'Female', 6, '0000-00-00', 100, 15, 'Sketching', 104, 'School', 'Ar', 'Bandra West', '21', '8:00-1:00', '14104', '19.048744', '72.854993'),
(36, 13136, 'Female', 10, '0000-00-00', 126, 20, 'Playing Sports', 105, 'School', 'Mo', 'Girgaon', '20', '7:30-1:30', '14105', '18.956960', '72.820685'),
(37, 13137, 'Female', 17, '0000-00-00', 153, 38, 'Singing', 104, 'College', 'M.', 'Byculla', '20', '10:00-3:00', '14104', '18.968535', '72.828830'),
(38, 13138, 'Female', 19, '0000-00-00', 160, 40, 'Painting', 102, 'College', 'Go', 'Bandra West', '22', '9:00-2:00', '14102', '19.063334', '72.843302'),
(39, 13139, 'Female', 20, '0000-00-00', 156, 43, 'Reading Novels', 103, 'Job', 'Pr', 'Ghansoli', '20', '9:00-6:30', '14103', '19.119685', '72.994458'),
(40, 13140, 'Male', 21, '0000-00-00', 181, 56, 'Playing Football', 103, 'Job', 'No', 'Thane', '22', '9:30-5:00', '14103', '19.160370', '72.778160'),
(41, 13141, 'Female', 24, '0000-00-00', 160, 50, 'DancingSinging', 103, 'Job', 'Pi', 'Mulund', '21', '8:00-6:00', '14103', '19.160344', '72.778160'),
(42, 13142, 'Male', 27, '0000-00-00', 180, 63, 'Reading Articles', 104, 'Job', 'Lk', 'Kandivali West', '22', '7:30-5:00', '14104', '19.204703', '72.838290'),
(43, 13143, 'Male', 11, '0000-00-00', 140, 27, 'Travelling', 105, 'School', 'Mo', 'Girgaon', '22', '7:30-1:30', '14105', '18.956960', '72.820685'),
(44, 13144, 'Male', 18, '0000-00-00', 174, 51, 'Swimming', 102, 'College', 'Ru', 'Dadar', '22', '11:00-4:00', '14102', '19.024415', '72.847650'),
(45, 13145, 'Female', 10, '0000-00-00', 128, 23, 'DancingSinging', 104, 'School', 'Ou', 'Dadar', '21', '8:00-1:30', '14104', '19.018066', '72.832825'),
(46, 13146, 'Male', 14, '0000-00-00', 160, 30, 'Trekking', 101, 'School', 'ME', 'Bandra West', '20', '7:30-1:30', '14101', '19.052221', '72.827113'),
(47, 13147, 'Female', 17, '0000-00-00', 156, 37, 'Travelling', 102, 'College', 'Si', 'FortMumbai', '20', '9:00-12:00', '14102', '18.936262', '72.830056'),
(48, 13148, 'Female', 22, '0000-00-00', 158, 49, 'PaintingDrawingsketching', 105, 'Job', 'Th', 'Andheri', '20', '11:00-7:00', '14105', '19.114305', '72.865463'),
(49, 13149, 'Male', 21, '0000-00-00', 180, 55, 'Playing sports', 103, 'College', 'KE', 'Parel', '21', '9:00-6:00', '14103', '19.001599', '72.839919'),
(50, 13150, 'Male', 19, '0000-00-00', 187, 57, 'Surfing', 102, 'College', 'K.', 'Colaba', '20', '9:00-5:00', '14102', '18.923805', '72.830171');

-- --------------------------------------------------------

--
-- Table structure for table `orphan_2`
--

CREATE TABLE `orphan_2` (
  `ID` int(5) DEFAULT NULL,
  `Orphan_id` int(11) DEFAULT NULL,
  `Gender` varchar(24) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Heightcms` int(11) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL,
  `Hobbies` varchar(24) DEFAULT NULL,
  `Room_no` int(11) DEFAULT NULL,
  `Place_Type` varchar(255) DEFAULT NULL,
  `Place_Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone_no` varchar(255) DEFAULT NULL,
  `Timing` varchar(10) DEFAULT NULL,
  `Warden_id` int(9) DEFAULT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orphan_2`
--

INSERT INTO `orphan_2` (`ID`, `Orphan_id`, `Gender`, `Age`, `DOB`, `Heightcms`, `Weight`, `Hobbies`, `Room_no`, `Place_Type`, `Place_Name`, `Address`, `Phone_no`, `Timing`, `Warden_id`, `Latitude`, `Longitude`) VALUES
(0, 0, 'Gender', 0, '0000-00-00', 0, 0, 'Hobbies', 0, 'Goes to Job/school/College', 'Job name/School name/Colllege name', 'Address', 'Phone.no', 'Timing', 0, '0', 'Longitude'),
(1, 13101, 'Male', 26, '0000-00-00', 187, 77, 'Crafting', 103, 'Job', 'Reliance Industries', 'Dadar West', '022 2721 3111', '10:00-7:00', 14103, '19', '72.894418'),
(2, 13102, 'Female', 24, '0000-00-00', 179, 56, 'DancingSinging', 101, 'Job', 'ICICI Bank', 'Kurla', '022 3485 5671', '10:00-4:00', 14101, '19', '72.887852'),
(3, 13103, 'Male', 7, '0000-00-00', 119, 20, 'Trekking', 105, 'School', 'Arya Vidya Mandir', 'Bandra East', '021  4328 6671', '8:00-1:00', 14105, '19', '72.856738'),
(4, 13104, 'Male', 12, '0000-00-00', 140, 33, 'TrekkingSinging', 105, 'School', 'SIES High School', 'Sewri', '022 5647 9992', '7:15-12:30', 14105, '19', '72.836992'),
(5, 13105, 'Female', 5, '0000-00-00', 100, 14, 'Reading', 101, 'School', 'Convent Girls High School', 'Prabhadevi', '020 8932 7664', '8:00-1:30', 14101, '19', '72.829541'),
(6, 13106, 'Female', 18, '0000-00-00', 156, 40, 'DancingSinging', 102, 'College', 'Jai Hind College', 'Churchgate', '021 5427 8890', '9:00-12:00', 14102, '19', '72.823021'),
(7, 13107, 'Female', 19, '0000-00-00', 154, 48, 'Drawing', 103, 'College', 'Siddharth College', 'FortMumbai', '022 3458 9864', '9:00-12:00', 14103, '19', '72.830056'),
(8, 13108, 'Male', 13, '0000-00-00', 154, 32, 'Painting', 104, 'School', 'MET Rishikul Vidyalaya', 'Bandra West', '022 3412 7645', '7:30-1:30', 14104, '19', '72.827113'),
(9, 13109, 'Female', 19, '0000-00-00', 151, 51, 'Cooking and Baking', 101, 'College', 'B.J.P.C.I college', 'Charni Road', '022 5600 5671', '9:00-5:00', 14101, '19', '72.817736'),
(10, 13110, 'Male', 23, '0000-00-00', 180, 67, 'SwimmingReading', 105, 'Job', 'Infosys', 'Grant Road', '021 6733 8643', '9:00-4:00', 14105, '19', '72.818482'),
(11, 13111, 'Male', 23, '0000-00-00', 189, 60, 'Drawing Painting', 103, 'Job', 'Mahesh Exports', 'Girgaon', '020 2355 9087', '10:00-8:00', 14103, '19', '72.739176'),
(12, 13112, 'Male', 20, '0000-00-00', 177, 58, 'Playing Sports', 103, 'College', 'Swami Vivekanad College', 'Chembur', '022 4567 8902', '8:45-4:30', 14103, '19', '72.887824'),
(13, 13113, 'Male', 8, '0000-00-00', 127, 27, 'Reading Writing', 102, 'School', 'Arya Vidya Mandir', 'Bandra West', '022 3467 8906', '8:00-1:00', 14102, '19', '72.854993'),
(14, 13114, 'Female', 10, '0000-00-00', 120, 23, 'Cooking and Baking', 102, 'School', 'Convent Girls High School', 'Prabhadevi', '021 4578 0987', '8:00-1:30', 14102, '19', '72.829541'),
(15, 13115, 'Female', 20, '0000-00-00', 169, 45, 'DancingSinging', 104, 'College', 'Oriental College Of Pharmacy', 'Sanpada', '022 4455 8769', '9:30-4:30', 14104, '19', '73.005601'),
(16, 13116, 'Female', 16, '0000-00-00', 150, 33, 'Trekking', 101, 'School', 'Shadarshram Vidyamandir International School', 'Dadar West', '021 5799 0056', '8:00-12:30', 14101, '19', '72.835162'),
(17, 13117, 'Male', 23, '0000-00-00', 179, 71, 'CampingDancing', 101, 'College', 'Datta Meghe College Of Engineering', 'Airoli', '022 3421 2234', '9:00-5:00', 14101, '19', '72.993379'),
(18, 13118, 'Female', 16, '0000-00-00', 155, 33, 'Travelling', 104, 'College', 'Jai Hind College', 'Churchgate', '021 3478 4356', '9:00-12:00', 14104, '19', '72.823021'),
(19, 13119, 'Male', 16, '0000-00-00', 167, 43, 'Solving puzzles', 101, 'College', 'Nirmal Junior College', 'Kandivali West', '020 5566 8809', '8:00-1:00', 14101, '19', '74.479966'),
(20, 13120, 'Female', 19, '0000-00-00', 167, 56, 'TravellingTrekking', 104, 'College', 'S.K Somaiya College', 'Ghatkopar', '021 3452 6684', '9:00-5:00', 14104, '19', '72.896823'),
(21, 13121, 'Female', 4, '0000-00-00', 92, 10, 'playing', 105, '-', 'Convent Girls High School', 'Prabhadevi', '022 8876 9900 ', '8:00-1:00', 14105, '19', '72.829541'),
(22, 13122, 'Male', 27, '0000-00-00', 189, 60, 'Surfing', 103, 'Job', 'Asian Paints', 'Goregaon', '020 5534 8801', '9:00-6:00', 14103, '19', '72.843683'),
(23, 13123, 'Male', 14, '0000-00-00', 154, 34, 'Playing Chess', 104, 'School', 'MET Rishikul Vidyalaya', 'Bandra West', '020 2211 5655', '7:30-1:30', 14104, '19', '72.827113'),
(24, 13124, 'Male', 18, '0000-00-00', 177, 50, 'Playing Sports', 105, 'College', 'Siddharth College', 'FortMumbai', '022 7899 0895', '9:00-12:00', 14105, '19', '72.830056'),
(25, 13125, 'Female', 11, '0000-00-00', 130, 29, 'Solving puzzles', 101, 'School', 'Our Lady Of Salvation High School', 'Dadar', '021 6634 7688', '8:00-1:30', 14101, '19', '72.832825'),
(26, 13126, 'Male', 11, '0000-00-00', 142, 33, 'Reading', 104, 'School', 'Modern High School', 'Girgaon', '022 3462 7765', '7:30-1:30', 14104, '19', '72.820685'),
(27, 13127, 'Female', 16, '0000-00-00', 156, 34, 'Writing Articles', 103, 'School', 'Convent Girls High School', 'Prabhadevi', '021 2211 6789', '8:00-1:00', 14103, '19', '72.829541'),
(28, 13128, 'Female', 19, '0000-00-00', 167, 42, 'DancingSinging', 105, 'College', 'Pillai HOC College', 'Panvel', '021 3890 4453', '9:00-1:00', 14105, '19', '73.125620'),
(29, 13129, 'Female', 10, '0000-00-00', 128, 23, 'Wrestling', 104, 'School', 'Convent Girls High School', 'Prabhadevi', '022 3215 6743', '8:00-1:00', 14104, '19', '72.829541'),
(30, 13130, 'Male', 13, '0000-00-00', 144, 31, 'Crafting', 101, 'School', 'SIES High School', 'Sewri', '021 6790 7732', '7:15-12:30', 14101, '19', '72.836992'),
(31, 13131, 'Male', 15, '0000-00-00', 160, 22, 'ReadingwritingDancing', 102, 'School', 'Shadarshram Vidyamandir International School', 'Dadar West', '022 8976 0988', '8:00-12:30', 14102, '19', '72.835162'),
(32, 13132, 'Female', 12, '0000-00-00', 136, 26, 'Solving puzzles', 102, 'School', 'Our Lady Of Salvation High School', 'Dadar', '021 4532 6741', '8:00-1:30', 14102, '19', '72.832825'),
(33, 13133, 'Male', 11, '0000-00-00', 139, 24, 'Camping', 102, 'School', 'Gokhale Road School', 'Dadar', '021 6609 6742', '7:00-12:30', 14102, '19', '72.836691'),
(34, 13134, 'Male', 9, '0000-00-00', 127, 26, 'DrawingSketching', 101, 'School', 'Gokhale Road School', 'Dadar', '022 6549 3421', '7:00-12:30', 14101, '19', '72.836691'),
(35, 13135, 'Female', 6, '0000-00-00', 100, 15, 'Sketching', 104, 'School', 'Arya Vidya Mandir', 'Bandra West', '021 8931 3216', '8:00-1:00', 14104, '19', '72.854993'),
(36, 13136, 'Female', 10, '0000-00-00', 126, 20, 'Playing Sports', 105, 'School', 'Modern High School', 'Girgaon', '020 3413 7644', '7:30-1:30', 14105, '19', '72.820685'),
(37, 13137, 'Female', 17, '0000-00-00', 153, 38, 'Singing', 104, 'College', 'M.H Saboo Siddhik College', 'Byculla', '020 3452 6684', '10:00-3:00', 14104, '19', '72.828830'),
(38, 13138, 'Female', 19, '0000-00-00', 160, 40, 'Painting', 102, 'College', 'Government Polytechnic Mumbai', 'Bandra West', '022 4321 6554', '9:00-2:00', 14102, '19', '72.843302'),
(39, 13139, 'Female', 20, '0000-00-00', 156, 43, 'Reading Novels', 103, 'Job', 'Prime Medico', 'Ghansoli', '020 7903 2315', '9:00-6:30', 14103, '19', '72.994458'),
(40, 13140, 'Male', 21, '0000-00-00', 181, 56, 'Playing Football', 103, 'Job', 'Nova Steel Industries', 'Thane', '022 4321 8905', '9:30-5:00', 14103, '19', '72.778160'),
(41, 13141, 'Female', 24, '0000-00-00', 160, 50, 'DancingSinging', 103, 'Job', 'Piramal Builders', 'Mulund', '021 9055 6743', '8:00-6:00', 14103, '19', '72.778160'),
(42, 13142, 'Male', 27, '0000-00-00', 180, 63, 'Reading Articles', 104, 'Job', 'Lk Motors', 'Kandivali West', '022 4321 6789', '7:30-5:00', 14104, '19', '72.838290'),
(43, 13143, 'Male', 11, '0000-00-00', 140, 27, 'Travelling', 105, 'School', 'Modern High School', 'Girgaon', '022 4537 6794', '7:30-1:30', 14105, '19', '72.820685'),
(44, 13144, 'Male', 18, '0000-00-00', 174, 51, 'Swimming', 102, 'College', 'Ruia College', 'Dadar', '022 3412 6745', '11:00-4:00', 14102, '19', '72.847650'),
(45, 13145, 'Female', 10, '0000-00-00', 128, 23, 'DancingSinging', 104, 'School', 'Our Lady Of Salvation High School', 'Dadar', '021 2318 9087', '8:00-1:30', 14104, '19', '72.832825'),
(46, 13146, 'Male', 14, '0000-00-00', 160, 30, 'Trekking', 101, 'School', 'MET Rishikul Vidyalaya', 'Bandra West', '020 5689 0976', '7:30-1:30', 14101, '19', '72.827113'),
(47, 13147, 'Female', 17, '0000-00-00', 156, 37, 'Travelling', 102, 'College', 'Siddharth College', 'FortMumbai', '020 4328 9888', '9:00-12:00', 14102, '19', '72.830056'),
(48, 13148, 'Female', 22, '0000-00-00', 158, 49, 'PaintingDrawingsketching', 105, 'Job', 'Theon Pharmaceuticals', 'Andheri', '020 7732 6679', '11:00-7:00', 14105, '19', '72.865463'),
(49, 13149, 'Male', 21, '0000-00-00', 180, 55, 'Playing sports', 103, 'College', 'KEM Hospital and Medical College', 'Parel', '021 3321 8890', '9:00-6:00', 14103, '19', '72.839919'),
(50, 13150, 'Male', 19, '0000-00-00', 187, 57, 'Surfing', 102, 'College', 'K.C College', 'Colaba', '020 4436 8307', '9:00-5:00', 14102, '19', '72.830171');

-- --------------------------------------------------------

--
-- Table structure for table `qgis_csv`
--

CREATE TABLE `qgis_csv` (
  `COL 1` varchar(2) DEFAULT NULL,
  `COL 2` varchar(53) DEFAULT NULL,
  `COL 3` varchar(9) DEFAULT NULL,
  `COL 4` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qgis_csv`
--

INSERT INTO `qgis_csv` (`COL 1`, `COL 2`, `COL 3`, `COL 4`) VALUES
('Id', 'Name', 'Latitude', 'Longitude'),
('1', 'VJTI', '19.022218', '72.856121'),
('2', 'SPIT', '19.123182', '72.838389'),
('3', 'Ruia', '19.022539', '72.848134'),
('4', 'Thakur', '19.206001', '72.872374'),
('5', 'Meethibhai', '19.102894', '72.835241'),
('6', 'IIT Bombay', '19.133435', '72.911079'),
('7', 'Pace Junior College', '19.120387', '72.843075'),
('8', 'NMIMS', '19.103224', '72.834396'),
('9', 'St Xavier\'s College', '19.099486', '72.839977'),
('10', 'Sir JJ College of Architecture', '18.944127', '72.831713'),
('11', 'Bombay College of Pharmacy', '19.077063', '72.858005'),
('12', 'National Institute of Industrial Engineering', '19.139329', '72.834776'),
('13', 'SP Jain Institute of Management and Research', '19.123852', '72.834776'),
('14', 'KJ Somaiya Institute of Management Studies & Research', '19.072813', '72.895614'),
('15', 'Rizwi College of Architecture', '19.066807', '72.823886'),
('16', 'KJ Somaiya College of Arts & Commece', '19.074970', '72.897329'),
('17', 'HR College of Commerce & Economics', '18.929952', '72.824574');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `AdminuserName` varchar(50) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'Admin', 'Test@123', '2019-02-07 16:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `watchmen`
--

CREATE TABLE `watchmen` (
  `ID` int(11) NOT NULL,
  `EmpFname` varchar(50) DEFAULT NULL,
  `EmpLName` varchar(50) NOT NULL,
  `EmpCode` varchar(50) DEFAULT NULL,
  `EmpDept` varchar(120) DEFAULT NULL,
  `EmpDesignation` varchar(120) DEFAULT NULL,
  `EmpContactNo` bigint(10) DEFAULT NULL,
  `EmpGender` enum('Male','Female') DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpPassword` varchar(100) DEFAULT NULL,
  `EmpJoingdate` date DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watchmen`
--

INSERT INTO `watchmen` (`ID`, `EmpFname`, `EmpLName`, `EmpCode`, `EmpDept`, `EmpDesignation`, `EmpContactNo`, `EmpGender`, `EmpEmail`, `EmpPassword`, `EmpJoingdate`, `PostingDate`) VALUES
(1, 'Subhash', 'Pandey', '123465', 'IT', 'Software Developer', 1234567890, 'Male', 'abc@gmail.com', 'Test@12345', '2019-01-02', '2019-02-06 06:31:49'),
(2, 'Anuj', 'Kumar', '123465558', 'CS', 'Software Developer', 1234567890, 'Male', 'anuj@gmail.com', '123', '2017-03-23', '2019-02-06 06:41:42'),
(3, 'Ankush', 'Pandey', '123467', 'IT', 'Software Developer', 1234567890, 'Male', 'ankush@gmail.com', '89756', '2010-09-13', '2019-02-06 06:42:15'),
(4, 'Sarita', 'Pandey', '12346012', 'IT', 'Software Developer', 1234567890, '', 'abhi@gmail.com', '156975', NULL, '2019-02-06 06:42:47'),
(6, 'Manu', 'Ramesh', '369874', NULL, NULL, NULL, NULL, 'manu@gmail.com', '987563', NULL, '2019-02-06 12:00:50'),
(7, 'Ragunath', 'Shahye', '63', NULL, NULL, NULL, NULL, 'shahye@gmail.com', '99999', NULL, '2019-02-08 07:22:40'),
(8, '1345556', '', '', NULL, NULL, NULL, NULL, '', '', NULL, '2019-02-11 05:08:40'),
(9, 'Garuv', 'Bhatia', '89745', NULL, NULL, NULL, NULL, 'jk@gmail.com', '12', NULL, '2019-02-11 05:12:28'),
(10, 'Khusi', 'Dev', '1234', NULL, NULL, NULL, NULL, 'hjk@gmail.com', '1990', NULL, '2019-02-11 05:18:08'),
(11, 'SARITA', 'pANDEY', '789', NULL, NULL, NULL, NULL, 'PANDEY@GMAIL.COM', '1111', NULL, '2019-02-11 08:50:55'),
(12, 'Dinesh', 'Karthik', '56989', NULL, NULL, NULL, NULL, 'dinesh@gmail.com', '8989', NULL, '2019-02-11 12:30:50'),
(13, 'Test', 'User', '2131231', 'IT', 'Software Developer', 1234567890, 'Male', 'testuser@gmail.com', 'Test@123', '2018-10-09', '2019-02-11 16:21:58'),
(14, 'Anuj', 'Kumar', '1023647885', 'IT', 'Software Developer', 1234567890, 'Male', 'aktest@gmail.com', 'Test@123', '2019-01-01', '2020-02-19 16:58:51'),
(15, 'derr', 'derr', '2', NULL, NULL, NULL, NULL, 'd@gmail.com', '45', NULL, '2020-03-21 09:45:07'),
(16, 'dd', 'dd', '12', NULL, NULL, NULL, NULL, 'sdf@gmail.com', '12', NULL, '2020-03-21 09:45:29'),
(22, 'sw', 'sw', '34566', NULL, NULL, NULL, NULL, 'sw@gmail.com', 'dfd', NULL, '2020-03-21 09:50:20'),
(23, 'qw', 'qw', '23', NULL, NULL, NULL, NULL, 'djk@gmail.com', '23', NULL, '2020-04-09 04:15:05'),
(25, 'wer', 'wer', '234567', NULL, NULL, NULL, NULL, 'wer@gmail.com', '234567', NULL, '2020-04-09 06:23:11'),
(26, 'Sayush', 'Kamat', '400065', NULL, NULL, NULL, NULL, 'kamatsayush@gmail.com', 'sayu', NULL, '2020-04-26 14:01:15'),
(27, 'xh', 'xh', '1810', NULL, NULL, NULL, NULL, 'xh@xh.com', '123', NULL, '2020-04-28 12:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `watchmenedu`
--

CREATE TABLE `watchmenedu` (
  `Id` int(11) NOT NULL,
  `watchmenid` int(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` int(45) DEFAULT NULL,
  `shift` int(45) DEFAULT NULL,
  `gateallocated` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watchmenedu`
--

INSERT INTO `watchmenedu` (`Id`, `watchmenid`, `name`, `age`, `shift`, `gateallocated`) VALUES
(1, 4, 'NA', 0, 0, 0),
(2, 2, 'fg', 67, 98, 3),
(3, 3, 'Master in charted accountant', 0, 2004, 89),
(4, 7, 'MCA', 0, 1990, 64),
(5, 12, 'NA', 0, 0, 0),
(6, 13, 'MBA', 0, 2018, 70),
(7, 1, 'NA', 0, 0, 0),
(8, 14, 'M.Tech', 0, 2014, 65),
(9, 15, 'frtt', 0, 0, 0),
(10, 11, 'sw', 1, 2, 1),
(11, 22, 'wq', 2, 2, 3),
(12, 21, 'qw', 22, 1, 1),
(13, 26, 'sayush', 18, 0, 0),
(14, 27, 'xh', 25, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `watchmenexp`
--

CREATE TABLE `watchmenexp` (
  `ID` int(11) NOT NULL,
  `EmpID` varchar(5) DEFAULT NULL,
  `Employer1Name` varchar(75) DEFAULT NULL,
  `Employer1Designation` varchar(50) DEFAULT NULL,
  `Employer1CTC` varchar(50) DEFAULT NULL,
  `Employer1WorkDuration` varchar(11) DEFAULT NULL,
  `Employer2Name` varchar(75) DEFAULT NULL,
  `Employer2Designation` varchar(50) DEFAULT NULL,
  `Employer2CTC` varchar(50) DEFAULT NULL,
  `Employer2WorkDuration` varchar(11) DEFAULT NULL,
  `Employer3Name` varchar(75) DEFAULT NULL,
  `Employer3Designation` varchar(50) DEFAULT NULL,
  `Employer3CTC` varchar(50) DEFAULT NULL,
  `Employer3WorkDuration` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watchmenexp`
--

INSERT INTO `watchmenexp` (`ID`, `EmpID`, `Employer1Name`, `Employer1Designation`, `Employer1CTC`, `Employer1WorkDuration`, `Employer2Name`, `Employer2Designation`, `Employer2CTC`, `Employer2WorkDuration`, `Employer3Name`, `Employer3Designation`, `Employer3CTC`, `Employer3WorkDuration`) VALUES
(2, '4', 'abc.pvt.td', 'software tester', '20,000 p/m', '4 yrs', 'tch.pvt.td', 'software tester', '32000 p/m', '4 yrs', 'dfg.pvt.td', 'SR.software tester', '45000 p/m', '7 yrs'),
(7, '2', 'SAR pvt.ltd', 'Software Developer', '25000 p/m', '3 yrs', 'abc enterprise', 'software developer', '30000 p/m', '3 yrs', 'dgfhgfg.pt.ltd', 'software developer', '35000 p/m', '2 yrs till '),
(8, '3', 'GHA pvt.ltd', 'accountant', '25000', '5 yrs', 'HRCH pvt.ltd', 'accountant', '75000', '5 yrs', 'TCGHB pvt ltd', 'Sr.Accountant', '95000 ', '8 yrs till'),
(9, '7', 'FAG pvt.ltd', 'HR Executive', '25000 p/m', '6 yrs', 'TYS', 'HR Executive', '35000 p/m', '7 yrs', 'hirp pvt.ltd', 'HR Executive', '45000 p/m', '4 yrs till'),
(10, '12', 'dfg.pvt.ltd', 'accountant', '25000 p/m', '1 yrs', 'fghpvt.ltd', 'accountant', '30000 p/m', '3 yrs', 'fghpvt.ltd', 'accountant', '45000 p/m', '5 yrs till'),
(11, '13', 'ABC', 'Developer', '12000 ', '2 years', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(12, '1', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '14', 'ABC Tech', 'Jr Devloper', '1258000', '6 Month', 'XYZ Tech', 'Devloper', '2589300', '6 Month', 'It Tech', 'Sr Devloper', '853214447', '2 + Years'),
(14, '23', 'de', '4', '45', 'rt', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canteen`
--
ALTER TABLE `canteen`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmpCode` (`EmpCode`);

--
-- Indexes for table `canteenedu`
--
ALTER TABLE `canteenedu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `canteenexp`
--
ALTER TABLE `canteenexp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empeducation`
--
ALTER TABLE `empeducation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `empexpireince`
--
ALTER TABLE `empexpireince`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employeedetail`
--
ALTER TABLE `employeedetail`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmpCode` (`EmpCode`);

--
-- Indexes for table `formloc`
--
ALTER TABLE `formloc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orphans`
--
ALTER TABLE `orphans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orphansdetail`
--
ALTER TABLE `orphansdetail`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmpCode` (`OrphansCode`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `watchmen`
--
ALTER TABLE `watchmen`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmpCode` (`EmpCode`);

--
-- Indexes for table `watchmenedu`
--
ALTER TABLE `watchmenedu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `watchmenexp`
--
ALTER TABLE `watchmenexp`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `canteen`
--
ALTER TABLE `canteen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `canteenedu`
--
ALTER TABLE `canteenedu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `canteenexp`
--
ALTER TABLE `canteenexp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `empeducation`
--
ALTER TABLE `empeducation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `empexpireince`
--
ALTER TABLE `empexpireince`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employeedetail`
--
ALTER TABLE `employeedetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `formloc`
--
ALTER TABLE `formloc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orphans`
--
ALTER TABLE `orphans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orphansdetail`
--
ALTER TABLE `orphansdetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `watchmen`
--
ALTER TABLE `watchmen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `watchmenedu`
--
ALTER TABLE `watchmenedu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `watchmenexp`
--
ALTER TABLE `watchmenexp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
