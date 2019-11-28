-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 نوفمبر 2019 الساعة 04:18
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
  `personID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `job`
--

INSERT INTO `job` (`jobID`, `name`, `personID`) VALUES
(1, 'scientist.', 'INTJ'),
(2, 'engineer.', 'INTJ'),
(3, 'teacher or teacher.', 'INTJ'),
(4, 'doctor.', 'INTJ'),
(5, 'corporate strategic plan.', 'INTJ'),
(6, 'business manager, or manager.', 'INTJ'),
(7, 'commander.', 'INTJ'),
(8, 'lawyer, or prosecutor.', 'INTJ'),
(9, 'judge.', 'INTJ'),
(10, 'computer programmer, systems analyst, or a computer specialist to me.', 'INTJ'),
(11, 'scientist, especially in the field of chemistry and physics.', 'INTP'),
(12, 'photographer.', 'INTP'),
(13, 'strategic plan.', 'INTP'),
(14, 'financial planner.', 'INTP'),
(15, 'mathematician.', 'INTP'),
(16, 'university professor.', 'INTP'),
(17, 'computer programmer, systems analyst, computer specialist.', 'INTP'),
(18, 'technical writer.', 'INTP'),
(19, 'engineer.', 'INTP'),
(20, 'attorney / attorney.', 'INTP'),
(21, 'judge.', 'INTP'),
(22, 'Lawyer.', 'ENTP'),
(23, 'psychiatrist.', 'ENTP'),
(24, 'businessman.', 'ENTP'),
(25, 'Photographer.', 'ENTP'),
(26, 'Advisory.', 'ENTP'),
(27, 'Engineer.', 'ENTP'),
(28, 'World.', 'ENTP'),
(29, 'actor.', 'ENTP'),
(30, 'Sales Representative.', 'ENTP'),
(31, 'Personal seller and marketer.', 'ENTP'),
(32, 'Computer programmer, systems analyst, or a computer specialist to me.', 'ENTP'),
(33, 'Head of company management.', 'ENTJ'),
(34, 'Founder of the company.', 'ENTJ'),
(35, 'Adviser.', 'ENTJ'),
(36, 'Computer Consultant.', 'ENTJ'),
(37, 'Lawyer.', 'ENTJ'),
(38, 'Judge.', 'ENTJ'),
(39, 'Manager or supervisor of works.', 'ENTJ'),
(40, 'University professor or administrative officer.', 'ENTJ'),
(41, 'Religious prompt, volunteer worker.', 'INFJ'),
(42, 'Teacher or prompt.', 'INFJ'),
(43, 'Doctor.', 'INFJ'),
(44, 'Specialized in alternative medicine.', 'INFJ'),
(45, 'Psychologist or psychiatrist.', 'INFJ'),
(46, 'Counselor or social worker.', 'INFJ'),
(47, 'Artist or photographer.', 'INFJ'),
(48, 'Childcare, early childhood education', 'INFJ'),
(49, 'clerk.', 'INFP'),
(50, 'Social worker or counselor.', 'INFP'),
(51, 'Advisory.', 'INFP'),
(52, 'Journalist.', 'INFP'),
(53, 'Human Resource Management.', 'INFP'),
(54, 'Teacher or professor.', 'INFP'),
(55, 'Scientist or psychiatrist.', 'INFP'),
(56, 'Worker or religious advocate', 'INFP'),
(57, 'Guide or Prompt.', 'ENFJ'),
(58, 'Advisory.', 'ENFJ'),
(59, 'Psychologist.', 'ENFJ'),
(60, 'Social Affairs Worker.', 'ENFJ'),
(61, 'Teacher.', 'ENFJ'),
(62, 'Religious Prompt.', 'ENFJ'),
(63, 'Sales Representative.', 'ENFJ'),
(64, 'Human Resources.', 'ENFJ'),
(65, 'Administrative.', 'ENFJ'),
(66, 'Events Coordinator.', 'ENFJ'),
(67, 'Political or diplomatic.', 'ENFJ'),
(68, 'clerk.', 'ENFJ'),
(69, 'Consultant - Consultant.', 'ENFP'),
(70, 'Psychologist.', 'ENFP'),
(71, 'Investor.', 'ENFP'),
(72, 'actor.', 'ENFP'),
(73, 'Teacher.', 'ENFP'),
(74, 'Political - diplomatic.', 'ENFP'),
(75, 'journalist.', 'ENFP'),
(76, 'TV reporter.', 'ENFP'),
(77, 'Programmer, Systems Analyst, or Computer Specialist.', 'ENFP'),
(78, 'World.', 'ENFP'),
(79, 'Engineer.', 'ENFP'),
(80, 'Director, supervisor, or head of a company or institution.', 'ISTJ'),
(81, 'Accounting or Finance Officer.', 'ISTJ'),
(82, 'A policeman, or a detective.', 'ISTJ'),
(83, 'Judge.', 'ISTJ'),
(84, 'Lawyer.', 'ISTJ'),
(85, 'Doctor.', 'ISTJ'),
(86, 'Commander.', 'ISTJ'),
(87, 'Programmer, systems analyst, or computer specialist.', 'ISTJ'),
(88, 'Interior Architect.', 'ISFJ'),
(89, 'Designer.', 'ISFJ'),
(90, 'Nurse.', 'ISFJ'),
(91, 'Administrative or manager.', 'ISFJ'),
(92, 'Assistant Director.', 'ISFJ'),
(93, 'Child care, early child development.', 'ISFJ'),
(94, 'Social worker or counselor.', 'ISFJ'),
(95, 'Preacher or religious guide.', 'ISFJ'),
(96, 'Home Economics.', 'ISFJ'),
(97, 'Registered accounts.', 'ISFJ'),
(98, 'Store Manager.', 'ISFJ'),
(99, 'Commander.', 'ESTJ'),
(100, 'Company or business manager.', 'ESTJ'),
(101, 'Policeman or investigator.', 'ESTJ'),
(102, 'Judge.', 'ESTJ'),
(103, 'Official or financial analyst.', 'ESTJ'),
(104, 'Teacher.', 'ESTJ'),
(105, 'Sales representative.', 'ESTJ'),
(106, 'Housekeeping and Economics.', 'ESFJ'),
(107, 'Nurse.', 'ESFJ'),
(108, 'Teacher.', 'ESFJ'),
(109, 'Administrative or supervisor.', 'ESFJ'),
(110, 'Childcare.', 'ESFJ'),
(111, 'Family doctor.', 'ESFJ'),
(112, 'Charity.', 'ESFJ'),
(113, 'office boss.', 'ESFJ'),
(114, 'Counselor or social worker.', 'ESFJ'),
(115, 'Accounting or auditor.', 'ESFJ'),
(116, 'Assistant Supervisor.', 'ESFJ'),
(117, 'Investigator or policeman.', 'ISTP'),
(118, 'Medical examiner.', 'ISTP'),
(119, 'Programmer, systems analyst, and computer specialist.', 'ISTP'),
(120, 'Engineer.', 'ISTP'),
(121, 'Craftsman, carpenter, for example ..', 'ISTP'),
(122, 'Mechanical.', 'ISTP'),
(123, 'Pilot or driver.', 'ISTP'),
(124, 'Athlete.', 'ISTP'),
(125, 'Investor.', 'ISTP'),
(126, 'An artist with all kinds of art.', 'ISFP'),
(127, 'Designer.', 'ISFP'),
(128, 'Childcare.', 'ISFP'),
(129, 'Counselor and social worker.', 'ISFP'),
(130, 'Teacher.', 'ISFP'),
(131, 'Psychologist.', 'ISFP'),
(132, 'veterinary doctor.', 'ISFP'),
(133, 'Pediatrics.', 'ISFP'),
(134, 'Sales Representative.', 'ESTP'),
(135, 'Sales Officer.', 'ESTP'),
(136, 'Police, investigation.', 'ESTP'),
(137, 'Ambulance, Emergency Medical Technician.', 'ESTP'),
(138, 'Computer Network Technician.', 'ESTP'),
(139, 'Technical support for computers.', 'ESTP'),
(140, 'Investor or businessman.', 'ESTP'),
(141, 'Artist, actor and presenter.', 'ESFP'),
(142, 'Sales representative.', 'ESFP'),
(143, 'Counselor and social worker.', 'ESFP'),
(144, 'Childcare.', 'ESFP'),
(145, 'Fashion designer.', 'ESFP'),
(146, 'Designer Home Decor.', 'ESFP'),
(147, 'Photographer.', 'ESFP');

-- --------------------------------------------------------

--
-- بنية الجدول `major`
--

CREATE TABLE `major` (
  `majorID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `major`
--

INSERT INTO `major` (`majorID`, `name`) VALUES
(1, 'Media, languages ??and public relations'),
(2, 'Construction and Transport'),
(3, 'Education'),
(4, 'Agriculture, environment and living things'),
(5, 'Tourism, Hotel and Sports'),
(6, 'Forensic, Social and Human Sciences'),
(7, 'Arts and Design'),
(8, 'Engineering, Science and Energy'),
(9, 'Information Systems'),
(10, 'human health'),
(11, 'The world of management, finance and business');

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
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contry` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `universty`
--

INSERT INTO `universty` (`univID`, `name`, `contry`, `address`, `type`, `rank`, `link`, `conditions`, `subjectID`) VALUES
(1, 'King Saud University', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(2, 'Umm Al Qura University', 'saudi arabia', 'Adham', NULL, NULL, NULL, NULL, NULL),
(3, 'Imam Muhammad bin Saud Islamic University', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(4, 'King Abdulaziz University', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(5, 'King Khalid University', 'saudi arabia', 'Abha', NULL, NULL, NULL, NULL, NULL),
(6, 'Taibah University', 'saudi arabia', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Arab Open University', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(8, 'Jazan University', 'saudi arabia', 'Aldair', NULL, NULL, NULL, NULL, NULL),
(9, 'University of Tabuk', 'saudi arabia', 'Tabuk', NULL, NULL, NULL, NULL, NULL),
(10, 'University of Jeddah�', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(11, 'University of Thebes', 'saudi arabia', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Imam Abdul Rahman bin Faisal University�', 'saudi arabia', 'Dammam', NULL, NULL, NULL, NULL, NULL),
(13, 'Islamic University�', 'saudi arabia', 'Madina', NULL, NULL, NULL, NULL, NULL),
(14, 'Qassim University�', 'saudi arabia', 'Buraidah', NULL, NULL, NULL, NULL, NULL),
(15, 'Jouf University�', 'saudi arabia', 'Qurayyat', NULL, NULL, NULL, NULL, NULL),
(16, 'University of Business and Technology', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(17, 'Prince Sultan University', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(18, 'Qassim National Colleges', 'saudi arabia', '�Buraidah', NULL, NULL, NULL, NULL, NULL),
(19, 'Effat University', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(20, 'Jeddah International College', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(21, 'Umm Al - Qura University', 'saudi arabia', 'Qunfudah', NULL, NULL, NULL, NULL, NULL),
(22, 'Qassim University', 'saudi arabia', 'Nabhaniyah', NULL, NULL, NULL, NULL, NULL),
(23, 'King Fahd University of Petroleum and Minerals', 'saudi arabia', 'Dhahran', NULL, NULL, NULL, NULL, NULL),
(24, 'University of Jazan', 'saudi arabia', 'Jazan', NULL, NULL, NULL, NULL, NULL),
(25, 'Al Baha University', 'saudi arabia', 'Al Baha', NULL, NULL, NULL, NULL, NULL),
(26, 'Prince Sultan University', 'saudi arabia', '�Riyadh', NULL, NULL, NULL, NULL, NULL),
(27, 'Imam Abdul Rahman bin Faisal University', 'saudi arabia', 'Dammam', NULL, NULL, NULL, NULL, NULL),
(28, 'King Fahd University of Petroleum and Minerals', 'saudi arabia', '�Dhahran', NULL, NULL, NULL, NULL, NULL),
(29, 'Al - Yamamah University Riyadh', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(30, 'University of Tabuk', 'saudi arabia', 'Al Wajh', NULL, NULL, NULL, NULL, NULL),
(31, 'University of Hail', 'saudi arabia', 'Hail', NULL, NULL, NULL, NULL, NULL),
(32, 'Najran University', 'saudi arabia', 'Najran', NULL, NULL, NULL, NULL, NULL),
(33, 'Dar Al Uloom University', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(34, 'Prince Mohammed bin Fahd University', 'saudi arabia', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'King Faisal University�', 'saudi arabia', 'Ahsa', NULL, NULL, NULL, NULL, NULL),
(36, 'Jouf University', 'saudi arabia', 'Sakaka', NULL, NULL, NULL, NULL, NULL),
(37, 'Princess Noura University', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(38, 'Northern Borders University�', 'saudi arabia', 'Arar', NULL, NULL, NULL, NULL, NULL),
(39, 'Northern Borders University', 'saudi arabia', 'Arar', NULL, NULL, NULL, NULL, NULL),
(40, 'University of Jeddah', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(41, 'Dar Al Hikma University', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(42, 'Qassim University', 'saudi arabia', 'Buraidah', NULL, NULL, NULL, NULL, NULL),
(43, 'Taif University', 'saudi arabia', 'Taif', NULL, NULL, NULL, NULL, NULL),
(44, 'King Saud University�', 'saudi arabia', '�Riyadh', NULL, NULL, NULL, NULL, NULL),
(45, 'University of Bisha', 'saudi arabia', 'Bisha', NULL, NULL, NULL, NULL, NULL),
(46, 'Imam Muhammad bin Saud Islamic University�', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(47, 'Qassim University�', 'saudi arabia', 'Unaizah', NULL, NULL, NULL, NULL, NULL),
(48, 'Northern Borders University�', 'saudi arabia', '�Rafha', NULL, NULL, NULL, NULL, NULL),
(49, 'Majmaah University�', 'saudi arabia', '�Majmaah', NULL, NULL, NULL, NULL, NULL),
(50, 'University of Hail�', 'saudi arabia', '�Hail', NULL, NULL, NULL, NULL, NULL),
(51, 'Al Baha University�', 'saudi arabia', '�Al Baha', NULL, NULL, NULL, NULL, NULL),
(52, 'Dig subcontractors University�', 'saudi arabia', '�drilling sub', NULL, NULL, NULL, NULL, NULL),
(53, 'Umm�Al�Qura University�', 'saudi arabia', '�Qunfudah', NULL, NULL, NULL, NULL, NULL),
(54, 'King Khalid University�', 'saudi arabia', '�Abha', NULL, NULL, NULL, NULL, NULL),
(55, 'University of Jazan�', 'saudi arabia', '�Jazan', NULL, NULL, NULL, NULL, NULL),
(56, 'Hafr Al', 'saudi arabia', 'Batin University', NULL, NULL, NULL, NULL, NULL),
(57, 'Imam Muhammad bin Saud Islamic University', 'saudi arabia', 'Ahsa', NULL, NULL, NULL, NULL, NULL),
(58, 'King Faisal University�', 'saudi arabia', '�Ahsa', NULL, NULL, NULL, NULL, NULL),
(59, 'Shaqra University�', 'saudi arabia', '�Dawadmi', NULL, NULL, NULL, NULL, NULL),
(60, 'Imam Abdul Rahman bin Faisal University�', 'saudi arabia', '�Dammam', NULL, NULL, NULL, NULL, NULL),
(61, 'King Abdulaziz University�', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(62, 'Qassim University�', 'saudi arabia', '�Buraidah', NULL, NULL, NULL, NULL, NULL),
(63, 'King Abdulaziz University�', 'saudi arabia', '�Jeddah', NULL, NULL, NULL, NULL, NULL),
(64, 'King Abdulaziz University�', 'saudi arabia', '�Rabigh', NULL, NULL, NULL, NULL, NULL),
(65, 'University of Jeddah�', 'saudi arabia', '�Khulais', NULL, NULL, NULL, NULL, NULL),
(66, 'King Abdulaziz University', 'saudi arabia', 'Rabigh', NULL, NULL, NULL, NULL, NULL),
(67, 'University of Tabuk�', 'saudi arabia', 'Al�Wajh', NULL, NULL, NULL, NULL, NULL),
(68, 'Taibah University�', 'saudi arabia', '�Yanbu', NULL, NULL, NULL, NULL, NULL),
(69, 'Taif University�', 'saudi arabia', '�Taif', NULL, NULL, NULL, NULL, NULL),
(70, 'University of Jeddah', 'saudi arabia', 'Khulais', NULL, NULL, NULL, NULL, NULL),
(71, 'Prince Mohammed Bin Fahd University��News', 'saudi arabia', '�Laith', NULL, NULL, NULL, NULL, NULL),
(72, 'Ibn Rushd College', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(73, 'Islamic University', 'saudi arabia', 'Medina', NULL, NULL, NULL, NULL, NULL),
(74, 'Taibah University', 'saudi arabia', 'Yanbu', NULL, NULL, NULL, NULL, NULL),
(75, 'Umm Al', 'saudi arabia', 'Qura University', NULL, NULL, NULL, NULL, NULL),
(76, 'Jouf University�', 'saudi arabia', '�Sakaka', NULL, NULL, NULL, NULL, NULL),
(77, 'University of Shaqra�', 'saudi arabia', 'Laith', NULL, NULL, NULL, NULL, NULL),
(78, 'University of Tabuk�', 'saudi arabia', '�Tabuk', NULL, NULL, NULL, NULL, NULL),
(79, 'University of Jeddah�', 'saudi arabia', '�Jeddah', NULL, NULL, NULL, NULL, NULL),
(80, 'Shaqra University', 'saudi arabia', 'Dawadmi', NULL, NULL, NULL, NULL, NULL),
(81, 'Shaqra University', 'saudi arabia', 'Afif', NULL, NULL, NULL, NULL, NULL),
(82, 'Al Baha University', 'saudi arabia', 'Baha', NULL, NULL, NULL, NULL, NULL),
(83, 'King Fahd University of Petroleum and Minerals�', 'saudi arabia', '�Dhahran', NULL, NULL, NULL, NULL, NULL),
(84, 'King Fahd University of Petroleum and Minerals', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(85, 'Prince Sultan University�', 'saudi arabia', '�Riyadh', NULL, NULL, NULL, NULL, NULL),
(86, 'University of Business and Technology�', 'saudi arabia', '�Jeddah', NULL, NULL, NULL, NULL, NULL),
(87, 'Islamic University�', 'saudi arabia', '�Medina', NULL, NULL, NULL, NULL, NULL),
(88, 'Imam Muhammad bin Saud Islamic University', 'saudi arabia', '�Riyadh', NULL, NULL, NULL, NULL, NULL),
(89, 'Imam Abdul Rahman�bin Faisal�University�', 'saudi arabia', '�Dammam', NULL, NULL, NULL, NULL, NULL),
(90, 'Arab Open University', 'saudi arabia', '�Kharj', NULL, NULL, NULL, NULL, NULL),
(91, 'King Saud University between Abdulaziz for Health ', 'saudi arabia', '�Riyadh', NULL, NULL, NULL, NULL, NULL),
(92, 'Saudi Electronic University�', 'saudi arabia', '�Riyadh', NULL, NULL, NULL, NULL, NULL),
(93, 'Saudi Electronic University�', 'saudi arabia', '�Dammam', NULL, NULL, NULL, NULL, NULL),
(94, 'Saudi Electronic University', 'saudi arabia', 'Jeddah', NULL, NULL, NULL, NULL, NULL),
(95, 'King Saud University between Abdulaziz for Health ', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(96, 'Private Medical Care College', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(97, 'Riyadh Colleges of Dentistry and Pharmacy', 'saudi arabia', 'Riyadh', NULL, NULL, NULL, NULL, NULL),
(98, 'Knowledge Colleges�', 'saudi arabia', '�Riyadh', NULL, NULL, NULL, NULL, NULL),
(99, 'Private Medical Care College�', 'saudi arabia', '�Riyadh', NULL, NULL, NULL, NULL, NULL),
(100, 'Saad College of Nursing and�Health Sciences', 'saudi arabia', '�Kbralohlih', NULL, NULL, NULL, NULL, NULL),
(101, 'Batterjee College of Medical Sciences and Technolo', 'saudi arabia', '�Jeddah', NULL, NULL, NULL, NULL, NULL),
(102, 'Saudi Electronic University�', 'saudi arabia', '�Jeddah', NULL, NULL, NULL, NULL, NULL);

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
ALTER TABLE `job` ADD FULLTEXT KEY `FK` (`personID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD KEY `pk` (`majorID`);

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
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `majorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `universty`
--
ALTER TABLE `universty`
  MODIFY `univID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
