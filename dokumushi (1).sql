-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 07:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dokumushi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserId` varchar(200) NOT NULL,
  `Pass` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserId`, `Pass`) VALUES
('admin1', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hosplog`
--

CREATE TABLE `hosplog` (
  `UserId` varchar(200) NOT NULL,
  `Pass` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hosplog`
--

INSERT INTO `hosplog` (`UserId`, `Pass`) VALUES
('', ''),
('ABC', 'abc'),
('doc1', 'docpass1');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `UserIdP` int(11) NOT NULL,
  `FName` varchar(200) DEFAULT NULL,
  `LName` varchar(200) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Sex` varchar(200) DEFAULT NULL,
  `Contact` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address1` varchar(400) DEFAULT NULL,
  `Address2` varchar(400) DEFAULT NULL,
  `City` varchar(400) DEFAULT NULL,
  `State` varchar(400) DEFAULT NULL,
  `ZipCode` varchar(400) DEFAULT NULL,
  `MaritialStatus` varchar(200) DEFAULT NULL,
  `EmerName` varchar(200) DEFAULT NULL,
  `EmerRelation` varchar(200) DEFAULT NULL,
  `EmerContact` varchar(200) DEFAULT NULL,
  `Aadhar` varchar(200) DEFAULT NULL,
  `Pan` varchar(200) DEFAULT NULL,
  `Insuarance` varchar(200) DEFAULT NULL,
  `PrevIll` varchar(400) DEFAULT NULL,
  `Hist` varchar(400) DEFAULT NULL,
  `Severity` varchar(200) DEFAULT NULL,
  `Symptoms` varchar(400) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `Attachment1` varchar(400) DEFAULT NULL,
  `Attachment2` varchar(400) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`UserIdP`, `FName`, `LName`, `DOB`, `Sex`, `Contact`, `Email`, `Address1`, `Address2`, `City`, `State`, `ZipCode`, `MaritialStatus`, `EmerName`, `EmerRelation`, `EmerContact`, `Aadhar`, `Pan`, `Insuarance`, `PrevIll`, `Hist`, `Severity`, `Symptoms`, `age`, `Attachment1`, `Attachment2`, `status`) VALUES
(1, 'John', 'Wick', '1999-12-22', 'male', '1234567890', 'abc@123.in', 'a11', 'a12', 'mumbai', 'maharashtra', 'z1', 'Married', 'rad daniel', 'dad', '98212', '123', '', 'yes', 'none', 'nothing', '2', 'cough', 40, 'abc1.com', 'abc2.com', 'active'),
(2, 'Johnny', 'Wicket', '2001-12-19', 'male', '12345678', 'abc@1234.in', 'a11', 'a12', 'pune', 'maharashtra', 'z1', 'Married', 'frad daniel', 'dad', '98212', '123', '', 'yes', 'none', 'nothing', '3', 'cough', 20, 'abcd1.com', 'abcd2.com', 'deceased'),
(3, 'Sharvari', 'Sale', '1998-12-19', 'female', '1234455678', 'abcd@123.in', 'a111', 'a112', 'ratnagiri', 'maharashtra', 'z3', 'Married', 'fradley daniel', 'dad', '984212', '1234', 'da', 'no', 'none', 'nothing', '5', 'cough', 60, 'att1', 'att2', 'recovered'),
(4, 'Sakshi', 'Sangle', '1970-02-20', 'transgender', '1234', '232@imbibe.in', 'addd1', 'addd2', 'indore', 'patna', '408780', 'Single', 'carry', 'brother', '4567', '1478', '', 'yes', 'yes', 'nothing', '1', 'fever', 15, 'attc1', 'attc2', 'recovered'),
(5, 'Hugh', 'Jackman', '1997-02-13', 'Male', '23233434', 'eg@eg.com', 'lane 2', 'shangrila hills', 'Shangrila', 'Himalaya', '000000', 'Divorced', 'wolverine', 'heroavtar', '123456', '2332323232', '12233456', 'No', 'hard bones', 'world tour', '2', 'Excessive coughing', 24, 'Experiment 17-java(sbl).pdf', 'Experiment 17-java(sbl).pdf', 'active'),
(6, 'Hugh2', 'ghgh', '2020-11-10', 'Female', '', '', '', 'shangrila hills', 'Shangrila', 'Himalaya', '000000', 'Single', 'wolverine', '', '', '', '', NULL, '', '', '4', '', 45, 'Queue MCQ 1Answers final.pdf', 'Stack MCQ 1 Answers1 final.pdf', 'active'),
(7, 'hugh4 ', 'Jackman', '2020-11-12', '', '', '', '', '', 'ratnagiri', '', '', '', '', '', '', '', '', NULL, '', '', '4', '', 0, 'Experiment 18-Java_mini_project-java(sbl).pdf', 'Queue MCQ 1Answers final.pdf', 'active'),
(8, 'sayali', 'oak', '2020-12-23', 'Female', '23233434', 'eg@eg.com', 'hoskote bangalore', '', '', '', '', 'Married', 'harry potter', '', '123456', '2332323232', '', NULL, 'na', 'world tour', '3', '', 29, 'SBL ASSIGNMENT  1-19102A0033.pdf', 'Experiment 8-java(sbl).pdf', 'recovered');

-- --------------------------------------------------------

--
-- Table structure for table `staffdet`
--

CREATE TABLE `staffdet` (
  `userid` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `adhar` varchar(14) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `desg` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffdet`
--

INSERT INTO `staffdet` (`userid`, `name`, `address`, `adhar`, `education`, `age`, `doj`, `gender`, `desg`) VALUES
('', '', '', '', '', 0, '0000-00-00', '1', '1'),
('ABC', 'A B C', 'abc', '1234 1234 12', 'MD', 35, '2020-11-20', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ventilator`
--

CREATE TABLE `ventilator` (
  `Bed` int(11) DEFAULT NULL,
  `Ventilator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ventilator`
--

INSERT INTO `ventilator` (`Bed`, `Ventilator`) VALUES
(95, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `hosplog`
--
ALTER TABLE `hosplog`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`UserIdP`),
  ADD KEY `Email` (`Email`),
  ADD KEY `Aadhar` (`Aadhar`),
  ADD KEY `Pan` (`Pan`);

--
-- Indexes for table `staffdet`
--
ALTER TABLE `staffdet`
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `UserIdP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `staffdet`
--
ALTER TABLE `staffdet`
  ADD CONSTRAINT `staffdet_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `hosplog` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
