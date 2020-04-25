-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 07:29 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

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
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(25, 'ert', 'ert', '3456', NULL, NULL, NULL, NULL, 'ert@gmail.com', '3456', NULL, '2020-04-08 18:22:48');

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
(14, '23', 'de', '4', '45', 'rt', '', '', '', '', '', '', '', '');

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
(14, '23', 'w', 'w', '3', '3', 'e', 'e', '2', '2', 'w', 'w', '3', '3');

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
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(24, 'der', 'der', '34567', NULL, NULL, NULL, NULL, 'gfd@gmail.com', '34567', NULL, '2020-04-09 05:42:24');

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
  `postingdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `AdminuserName` varchar(50) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
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
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(25, 'wer', 'wer', '234567', NULL, NULL, NULL, NULL, 'wer@gmail.com', '234567', NULL, '2020-04-09 06:23:11');

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
(12, 21, 'qw', 22, 1, 1);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `canteenedu`
--
ALTER TABLE `canteenedu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `canteenexp`
--
ALTER TABLE `canteenexp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employeedetail`
--
ALTER TABLE `employeedetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `watchmenedu`
--
ALTER TABLE `watchmenedu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `watchmenexp`
--
ALTER TABLE `watchmenexp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
