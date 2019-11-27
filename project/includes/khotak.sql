-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 نوفمبر 2019 الساعة 21:05
-- إصدار الخادم: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khotak`
--

-- --------------------------------------------------------

--
-- بنية الجدول `employ`
--

CREATE TABLE `employ` (
  `empID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `univID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `job`
--

CREATE TABLE `job` (
  `jobID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Field` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `job`
--

INSERT INTO `job` (`jobID`, `name`, `Field`) VALUES
(1, 'TEACHER', 'MATH');

-- --------------------------------------------------------

--
-- بنية الجدول `major`
--

CREATE TABLE `major` (
  `majorID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `pesonalaty`
--

CREATE TABLE `pesonalaty` (
  `personID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `disc` varchar(255) DEFAULT NULL,
  `jobID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `pesonalaty`
--

INSERT INTO `pesonalaty` (`personID`, `name`, `disc`, `jobID`) VALUES
(1, 'INTP', 'JHV', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `subject`
--

CREATE TABLE `subject` (
  `subjectID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `univID` int(11) DEFAULT NULL,
  `jobID` int(11) DEFAULT NULL,
  `majorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `universty`
--

CREATE TABLE `universty` (
  `univID` int(11) NOT NULL,
  `contry` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employ`
--
ALTER TABLE `employ`
  ADD PRIMARY KEY (`empID`),
  ADD KEY `FK` (`univID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD KEY `pk` (`majorID`);

--
-- Indexes for table `pesonalaty`
--
ALTER TABLE `pesonalaty`
  ADD PRIMARY KEY (`personID`),
  ADD KEY `FK` (`jobID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectID`),
  ADD KEY `FK` (`univID`,`jobID`,`majorID`);

--
-- Indexes for table `universty`
--
ALTER TABLE `universty`
  ADD PRIMARY KEY (`univID`),
  ADD KEY `FK` (`subjectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employ`
--
ALTER TABLE `employ`
  MODIFY `empID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `majorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesonalaty`
--
ALTER TABLE `pesonalaty`
  MODIFY `personID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `universty`
--
ALTER TABLE `universty`
  MODIFY `univID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
