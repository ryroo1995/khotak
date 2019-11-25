-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22 أكتوبر 2019 الساعة 20:18
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
-- بنية الجدول `disc`
--

CREATE TABLE `disc` (
  `id` int(11) NOT NULL,
  `vision` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `employ`
--

CREATE TABLE `employ` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `idspecial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `condtionlink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `specialty`
--

CREATE TABLE `specialty` (
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `subject`
--

CREATE TABLE `subject` (
  `specialty` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `criditehour` int(100) NOT NULL,
  `idsubject` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `universty`
--

CREATE TABLE `universty` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` text NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disc`
--
ALTER TABLE `disc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employ`
--
ALTER TABLE `employ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`idsub`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`idsubject`);

--
-- Indexes for table `universty`
--
ALTER TABLE `universty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disc`
--
ALTER TABLE `disc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employ`
--
ALTER TABLE `employ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialty`
--
ALTER TABLE `specialty`
  MODIFY `idsub` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `idsubject` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `universty`
--
ALTER TABLE `universty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `disc`
--
ALTER TABLE `disc`
  ADD CONSTRAINT `disc` FOREIGN KEY (`id`) REFERENCES `universty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `employ`
--
ALTER TABLE `employ`
  ADD CONSTRAINT `employ` FOREIGN KEY (`id`) REFERENCES `universty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `link`
--
ALTER TABLE `link`
  ADD CONSTRAINT `link` FOREIGN KEY (`id`) REFERENCES `universty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `specialty`
--
ALTER TABLE `specialty`
  ADD CONSTRAINT `subject` FOREIGN KEY (`idsub`) REFERENCES `subject` (`idsubject`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `universty` FOREIGN KEY (`idsubject`) REFERENCES `universty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
