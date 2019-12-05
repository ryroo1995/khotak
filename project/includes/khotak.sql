-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 ديسمبر 2019 الساعة 01:35
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
CREATE DATABASE IF NOT EXISTS `khotak` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `khotak`;

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
  `personID` varchar(4) NOT NULL,
  `majorID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `job`
--

INSERT INTO `job` (`jobID`, `name`, `personID`, `majorID`) VALUES
(1, 'scientist.', 'INTJ', 8),
(2, 'engineer.', 'INTJ', 8),
(3, 'teacher or teacher.', 'INTJ', 3),
(4, 'doctor.', 'INTJ', 10),
(5, 'corporate strategic plan.', 'INTJ', 11),
(6, 'business manager, or manager.', 'INTJ', 11),
(7, 'commander.', 'INTJ', 4),
(8, 'lawyer, or prosecutor.', 'INTJ', 12),
(9, 'judge.', 'INTJ', 12),
(10, 'computer programmer, systems analyst, or a computer specialist to me.', 'INTJ', 9),
(11, 'scientist, especially in the field of chemistry and physics.', 'INTP', 8),
(12, 'photographer.', 'INTP', 7),
(13, 'strategic plan.', 'INTP', 11),
(14, 'financial planner.', 'INTP', 11),
(15, 'mathematician.', 'INTP', 8),
(16, 'university professor.', 'INTP', 3),
(17, 'computer programmer, systems analyst, computer specialist.', 'INTP', 9),
(18, 'technical writer.', 'INTP', 1),
(19, 'engineer.', 'INTP', 8),
(20, 'attorney / attorney.', 'INTP', 12),
(21, 'judge.', 'INTP', 12),
(22, 'Lawyer.', 'ENTP', 12),
(23, 'psychiatrist.', 'ENTP', 6),
(24, 'businessman.', 'ENTP', 11),
(25, 'Photographer.', 'ENTP', 7),
(26, 'Advisory.', 'ENTP', 12),
(27, 'Engineer.', 'ENTP', 8),
(28, 'scientist.', 'ENTP', 8),
(29, 'actor.', 'ENTP', 7),
(30, 'Sales Representative.', 'ENTP', 11),
(31, 'Personal seller and marketer.', 'ENTP', 11),
(32, 'Computer programmer, systems analyst, or a computer specialist to me.', 'ENTP', 9),
(33, 'Head of company management.', 'ENTJ', 11),
(34, 'Founder of the company.', 'ENTJ', 11),
(35, 'Adviser.', 'ENTJ', 12),
(36, 'Computer Consultant.', 'ENTJ', 9),
(37, 'Lawyer.', 'ENTJ', 12),
(38, 'Judge.', 'ENTJ', 12),
(39, 'Manager or supervisor of works.', 'ENTJ', 11),
(40, 'University professor or administrative officer.', 'ENTJ', 3),
(41, 'Religious prompt, volunteer worker.', 'INFJ', 6),
(42, 'Teacher or prompt.', 'INFJ', 3),
(43, 'Doctor.', 'INFJ', 9),
(44, 'Specialized in alternative medicine.', 'INFJ', 9),
(45, 'Psychologist or psychiatrist.', 'INFJ', 6),
(46, 'Counselor or social worker.', 'INFJ', 6),
(47, 'Artist or photographer.', 'INFJ', 7),
(48, 'Childcare, early childhood education', 'INFJ', 3),
(49, 'clerk.', 'INFP', 1),
(50, 'Social worker or counselor.', 'INFP', 1),
(51, 'Advisory.', 'INFP', 12),
(52, 'Journalist.', 'INFP', 1),
(53, 'Human Resource Management.', 'INFP', 11),
(54, 'Teacher or professor.', 'INFP', 3),
(55, 'Scientist or psychiatrist.', 'INFP', 6),
(56, 'Worker or religious advocate', 'INFP', 6),
(57, 'Guide or Prompt.', 'ENFJ', 5),
(58, 'Advisory.', 'ENFJ', 12),
(59, 'Psychologist.', 'ENFJ', 10),
(60, 'Social Affairs Worker.', 'ENFJ', 6),
(61, 'Teacher.', 'ENFJ', 3),
(62, 'Religious Prompt.', 'ENFJ', 6),
(63, 'Sales Representative.', 'ENFJ', 11),
(64, 'Human Resources.', 'ENFJ', 11),
(65, 'Administrative.', 'ENFJ', 11),
(66, 'Events Coordinator.', 'ENFJ', 11),
(67, 'Political or diplomatic.', 'ENFJ', 12),
(68, 'clerk.', 'ENFJ', 1),
(69, 'Consultant - Consultant.', 'ENFP', 12),
(70, 'Psychologist.', 'ENFP', 10),
(71, 'Investor.', 'ENFP', 5),
(72, 'actor.', 'ENFP', 7),
(73, 'Teacher.', 'ENFP', 3),
(74, 'Political - diplomatic.', 'ENFP', 12),
(75, 'journalist.', 'ENFP', 1),
(76, 'TV reporter.', 'ENFP', 12),
(77, 'Programmer, Systems Analyst, or Computer Specialist.', 'ENFP', 9),
(78, 'scientist.', 'ENFP', 8),
(79, 'Engineer.', 'ENFP', 8),
(80, 'Director, supervisor, or head of a company or institution.', 'ISTJ', 11),
(81, 'Accounting or Finance Officer.', 'ISTJ', 11),
(82, 'A policeman, or a detective.', 'ISTJ', 12),
(83, 'Judge.', 'ISTJ', 12),
(84, 'Lawyer.', 'ISTJ', 12),
(85, 'Doctor.', 'ISTJ', 10),
(86, 'Commander.', 'ISTJ', 12),
(87, 'Programmer, systems analyst, or computer specialist.', 'ISTJ', 9),
(88, 'Interior Architect.', 'ISFJ', 7),
(89, 'Designer.', 'ISFJ', 7),
(90, 'Nurse.', 'ISFJ', 10),
(91, 'Administrative or manager.', 'ISFJ', 11),
(92, 'Assistant Director.', 'ISFJ', 11),
(93, 'Child care, early child development.', 'ISFJ', 3),
(94, 'Social worker or counselor.', 'ISFJ', 6),
(95, 'Preacher or religious guide.', 'ISFJ', 6),
(96, 'Home Economics.', 'ISFJ', 11),
(97, 'Registered accounts.', 'ISFJ', 11),
(98, 'Store Manager.', 'ISFJ', 11),
(99, 'Commander.', 'ESTJ', 12),
(100, 'Company or business manager.', 'ESTJ', 11),
(101, 'Policeman or investigator.', 'ESTJ', 12),
(102, 'Judge.', 'ESTJ', 12),
(103, 'Official or financial analyst.', 'ESTJ', 11),
(104, 'Teacher.', 'ESTJ', 3),
(105, 'Sales representative.', 'ESTJ', 11),
(106, 'Housekeeping and Economics.', 'ESFJ', 3),
(107, 'Nurse.', 'ESFJ', 10),
(108, 'Teacher.', 'ESFJ', 3),
(109, 'Administrative or supervisor.', 'ESFJ', 11),
(110, 'Childcare.', 'ESFJ', 3),
(111, 'Family doctor.', 'ESFJ', 10),
(112, 'Charity.', 'ESFJ', 6),
(113, 'office boss.', 'ESFJ', 11),
(114, 'Counselor or social worker.', 'ESFJ', 6),
(115, 'Accounting or auditor.', 'ESFJ', 11),
(116, 'Assistant Supervisor.', 'ESFJ', 11),
(117, 'Investigator or policeman.', 'ISTP', 12),
(118, 'Medical examiner.', 'ISTP', 10),
(119, 'Programmer, systems analyst, and computer specialist.', 'ISTP', 9),
(120, 'Engineer.', 'ISTP', 8),
(121, 'Craftsman, carpenter', 'ISTP', 7),
(122, 'Mechanical.', 'ISTP', 8),
(123, 'Pilot or driver.', 'ISTP', 2),
(124, 'Athlete.', 'ISTP', 5),
(125, 'Investor.', 'ISTP', 7),
(126, 'An artist with all kinds of art.', 'ISFP', 7),
(127, 'Designer.', 'ISFP', 7),
(128, 'Childcare.', 'ISFP', 3),
(129, 'Counselor and social worker.', 'ISFP', 6),
(130, 'Teacher.', 'ISFP', 3),
(131, 'Psychologist.', 'ISFP', 10),
(132, 'veterinary doctor.', 'ISFP', 10),
(133, 'Pediatrics.', 'ISFP', 10),
(134, 'Sales Representative.', 'ESTP', 11),
(135, 'Sales Officer.', 'ESTP', 11),
(136, 'Police, investigation.', 'ESTP', 12),
(137, 'Ambulance, Emergency Medical Technician.', 'ESTP', 10),
(138, 'Computer Network Technician.', 'ESTP', 9),
(139, 'Technical support for computers.', 'ESTP', 9),
(140, 'Investor or businessman.', 'ESTP', 11),
(141, 'Artist, actor and presenter.', 'ESFP', 7),
(142, 'Sales representative.', 'ESFP', 11),
(143, 'Counselor and social worker.', 'ESFP', 6),
(144, 'Childcare.', 'ESFP', 3),
(145, 'Fashion designer.', 'ESFP', 7),
(146, 'Designer Home Decor.', 'ESFP', 7),
(147, 'Photographer.', 'ESFP', 7);

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
(11, 'The world of management, finance and business'),
(12, 'Law and government functions');

-- --------------------------------------------------------

--
-- بنية الجدول `personalaty`
--

CREATE TABLE `personalaty` (
  `personID` varchar(4) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `disc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `personalaty`
--

INSERT INTO `personalaty` (`personID`, `name`, `disc`) VALUES
('ENFJ', 'protagonist', 'When it comes to finding a career, people with the Protagonist personality type cast their eyes towards anything that lets them do what they love most � helping other people! Lucky for them, people like being helped, and are even willing to pay for it, wh'),
('ENFP', 'campaigner', '�Can�t I fly helicopters AND be an oceanographer who writes songs and cooks?� It�s a big world out there � perhaps even a little too big. Campaigners are fascinated by new ideas, both in terms of developments in fields they are already familiar with, and '),
('ENTJ', 'commader', 'It is in the world of careers that Commanders� boldness and drive are truly at their best. No other personality type is better suited than Commanders to be the respected leader of an organization or team, and no other personality type enjoys it quite so m'),
('ENTP', 'debater', 'In the world of careers, Debaters have the benefit of being naturally engaged and interested in being productive and helpful. But rather than the sort of people-oriented helpfulness that Diplomat personality types bring to the table, Debater personalities'),
('ESFJ', 'consul', 'Because Consuls� traits are so strongly expressed, leading with practical sense and social vigor, the careers they find most satisfying usually revolve around making the best use of these qualities. Consuls are well-organized, enjoying bringing order and '),
('ESFP', 'entertainer', 'Entertainers have a unique quality that makes them exceptional in some careers, and miserable in others � they mirror the mood around them. When people with the Entertainer personality type are at a party or concert, they reflect that mood, giving them th'),
('ESTJ', 'executive', 'Executives� career paths are often as clear and straightforward as they are themselves. Though there are many directions they can choose to go, people with the Executive personality type almost always end up in situations where they have the opportunity t'),
('ESTP', 'entrepreneur', 'When it comes to Entrepreneurs� career options, �action� is the word of the day. People with the Entrepreneur personality type think on their feet and are great at making quick decisions in the heat of the moment. At the same time, they�re affable people '),
('INFJ', 'advocate', 'Advocates are likely to find that most corporate career paths are not designed for them, but for those focused on their status and material gain. However, people with this personality are able to find work that suits them in just about any field.In fact, '),
('INFP', 'mediator', 'It is perhaps more challenging for Mediators to find a satisfying career than any other type. Though intelligent, the regimented learning style of most schools makes long years earning an advanced degree a formidable undertaking for people with the Mediat'),
('INTJ', 'architect', 'Professional know-how is often where Architects shine most brilliantly. They easily take in complex principles and techniques and change them into clear and actionable strategies. No other personality type comes close to their ability to assess and organi'),
('INTP', 'logician', 'Logicians are solitary, eccentric, and independent � none of which is listed as desirable for corporate positions, which are usually designed for very different personality types. Logicians duly struggle in finding careers that meet their needs, but what '),
('ISFJ', 'defender', 'In many ways, Defenders are the backbone of the modern workforce. Altruistic and well-rounded, no other personality type is so well-suited to be of service of others. It is no surprise that many Defenders are not just good at supporting their coworkers an'),
('ISFP', 'adventurer', 'When it comes to the career world, Adventurers need more than just a job. Wealth, power, structure, advancement and security are all lesser goals to Adventurer personalities� greatest need: creative freedom. Adventurers crave a tangible outlet for their i'),
('ISTJ', 'logistician', 'While many personality types may be comfortable with flexible work as consultants and sole proprietors, Logisticians are much more focused on building long-term, stable careers. That�s not to say that Logisticians can�t do that sort of work � many find th'),
('ISTP', 'virtuoso', 'The Virtuoso personality type is probably the hardest to pin down in many aspects of life, but especially in their careers. Virtuosos thrive on diversity and unpredictability, on wondering �what�s next?� every morning. This makes Virtuosos one of the most');

-- --------------------------------------------------------

--
-- بنية الجدول `subject`
--

CREATE TABLE `subject` (
  `subjectID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discription` varchar(2300) DEFAULT NULL,
  `majorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `subject`
--

INSERT INTO `subject` (`subjectID`, `name`, `discription`, `majorID`) VALUES
(1, 'Spanish', 'This specialization means studying the basics of Spanish language and literature.�The Spanish Language Specialist:\r\n�\r\nCreate a deep scientific background on Spanish linguistics, structures and grammar.\r\nExtensive study of the literary heritage of Spanish-speaking peoples (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering Spanish language skills for non-native speakers of different ages and levels.', 1),
(2, 'German language', 'This specialization means studying the basics of German language and literature.�The German language specialist:\r\n�\r\nCreating a deep scientific background on German linguistics, structures and grammar.\r\nExtensive study of the literary heritage of German-speaking peoples (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering German language skills for non-native speakers of different ages and levels.', 1),
(3, 'Italian Language', 'This specialization means studying the basics of Italian language and literature.�The Italian language specialist:\r\n�\r\nCreating a deep scientific background on Italian linguistics, structures and grammar.\r\nAn extensive study of the literary heritage of Italian-speaking peoples (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering Italian language skills for non-native speakers of different ages and levels.', 1),
(4, 'Turkish language', 'This specialization means studying the basics of Turkish language and literature.�The (Turkish Language Specialist):\r\n�\r\nCreating a deep scientific background on Turkish linguistics, structures and grammar.\r\nAn extensive study of the Turkish literary heritage (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering Turkish language skills for non-native speakers of different ages and levels.', 1),
(5, 'the Russian language', 'This specialization means studying the basics of Russian language and literature.�The Russian language specialist:\r\n�\r\nCreating a deep scientific background on Russian linguistics, structures and grammar.\r\nAn extensive study of the literary heritage of Russian-speaking peoples (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering Russian language skills for non-native speakers of different ages and levels.', 1),
(6, 'Hebrew', 'This specialization means studying the basics of Hebrew language and literature.�The Hebrew language specialist:\r\n�\r\nCreating a deep scientific background on linguistics, structures and grammar of the Hebrew language.\r\nAn extensive study of the Jewish people\'s literary heritage (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering Hebrew language skills for non-native speakers of different ages and levels.', 1),
(7, 'Grammar', 'This specialization means studying the conditions of the word, its types, derivatives and its syntactical position in speech.�Which qualifies the student to various areas in the Arabic language and literature and science, such as the field of language revision and language correction, education, etc.�Grammar Specialist:\r\n�\r\nCorrecting language errors by returning them to their origins and knowing their derivatives and linguistic history.\r\nReworking the speech after translating it from another language into Standard Arabic.\r\nParticipate in the drafting of linguistic dictionaries to know the meanings and derivatives.\r\nConducting periodic linguistic research to enrich the Arabic language.\r\nParticipate in the preparation and review of textbooks, literature, theses and research.\r\nLinguistic advisory in the areas of exchange and grammar.\r\nDiscuss research issues and provide scientific advice.\r\nAchieve grammar and morphology scripts.\r\nTraining graduates of Arabic and other faculties to work as linguistic correctors or teachers.\r\nHolding training courses for language correction for employees of newspapers and magazines.\r\nProviding literary and literary editing programs for educational departments, schools, radio and the press', 1),
(8, 'Rhetoric and criticism', 'This specialization means the study of common and innovative rhetorical methods and scientific methods to critique and evaluate literary texts from various poetic and anecdotal works.�He also teaches these methods and develops the literary taste of students in�various educational stages.�The specialist of rhetoric and criticism:\r\n�\r\nIn-depth study of the types of rhetorical methods and the most important examples\r\nWrite a critical review of literary texts based on known criteria and personal criticism\r\nRead literary texts, articles and critical articles and analyze strengths and weaknesses\r\nSee the latest trends in the literary field and emerging literary tracks\r\nSetting the standards and bases on which to evaluate the work and its compatibility with the class of literary work\r\nPossessing extensive literary background and information on the history of literature, writers and critics\r\nDistinguish texts transferred or based on previous texts\r\nAnalyze the characters in the story, play or novel and determine their specifications and the ability of the writer to give them realism\r\nWriting critical articles in magazines or newspapers or as a supplement to literary work\r\nTeaching students rhetorical methods and methods of evaluation and literary criticism', 1),
(9, 'Public relations', 'This specialization means the study of scientific and practical ways to build distinct relationships between the facility or between a person or between a group and the outside world of facilities, media, community members and institutions.�The Public Relations Specialist shall:\r\n�\r\nPrepare strategic plans dealing with means of documenting the establishment\'s relations with other institutions.\r\nArrange visits and meetings that serve to highlight the achievements and direction of the establishment.\r\nPreparing periodical magazines and publications on the establishment\'s activities and achievements.\r\nPrepare news, reports and press releases about the establishment\'s activity or its attitude towards an issue, and communicate with the media for publication.\r\nFollow-up on what is published about the establishment in the various media, respond to complaints and allegations and clarify the official position of the facility.\r\nPrepare and archive all publications, documents and information materials showing the work of the establishment and provide all those who request it.', 1),
(10, 'Persian', 'This specialization means studying the basics of Persian language and literature.�The Persian language specialist:\r\n�\r\nCreate a deep scientific background on Persian linguistics, structures and grammar.\r\nExtensive study of the Persian literary heritage of the people (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering Persian language skills for non-native speakers of different ages and levels.', 1),
(11, 'Japanese language', 'This specialization means studying the basics of Japanese language and literature.�The Japanese language specialist:\r\n�\r\nCreate a deep scientific background on Japanese linguistics, structures and grammar.\r\nAn extensive study of the literary heritage of Japanese-speaking peoples (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering Japanese language skills for non-native speakers of different ages and levels.', 1),
(12, 'Translation', 'This specialization means studying the methods and skills of translation from a foreign language (English or any other language) to the native language (eg Arabic).�The translator will:\r\n�\r\nDeveloping an important theoretical background on the culture of the peoples of the languages ??they are translating.\r\nDevelopment of different language skills for both languages ??(translated and translated)\r\nUnderstand the spirit, circumstances and background of the text before translating it.\r\nMastering the skills of simultaneous interpretation (ie, while someone else is speaking) and direct translation between two or more people.\r\nTranslation of various texts and documents (literary, political, economic, medical, legal) from a foreign language to the mother tongue.', 1),
(13, 'Press and media', 'This specialization means studying scientific methods to search for, analyze, edit and publish the news.�(Media) or (Journalist):\r\n�\r\nSeek information through monitoring, meeting people and reading different sources.\r\nPrepare reports and news about various local and international events of interest to the reader, and determine the format, form and importance that will be given to this news or event.\r\nArrange meetings with people who can give valuable information about an issue.\r\nProviding innovative and innovative ideas for media work so that people accept it and find popularity among them, and benefit them at the same time.\r\nMastering the art of journalistic work in various media such as daily newspaper, various magazines, electronic media and others.\r\nTrain media professionals or young journalists to prepare them well for this important profession.', 1),
(14, 'Arabic language and its literature', 'This specialization means the study of the Arabic language in all its various fields, literature, criticism, rhetoric, grammar, morphology, prose and poetry methods, which develops the ability of learning on the proper linguistic structure, fine literary taste and sincere expression in various aspects of culture, knowledge and arts.�In this specialization, the student studies all information and knowledge related to Arabic language, literature, arts and fields.�This specialization provides students with the information and skills necessary to achieve the correct pronunciation and sound expression and to avoid grammatical and linguistic errors and to enter the melody or weakness in the language to achieve the quality and integrity of the language spoken and written.�The Arabic Language Specialist:\r\n�\r\nCreating a solid scientific background on the linguistics, structures and rules of the Arabic language.\r\nAn extensive study of the Arab literary heritage from the pre-Islamic era to the modern era (poetry, commentaries, novels, theater, story).\r\nPracticing works related to the Arabic language and its branches.\r\nSupervising writing the correct Arabic language and sound expression.\r\nResearch in eloquence and eloquence of the Koran and the Sunnah.\r\nWork in the field of fiction and fiction.\r\nWork to keep pace with the times by producing vocabulary and combinations that can be launched on contemporary products.\r\nTraining and qualification of those interested in Arabic from teachers or postgraduate students.\r\nTeaching Arabic to non-native speakers of different ages and levels.\r\nHolding training courses for language correction for employees of newspapers and magazines.\r\nAchieving the old manuscripts related to the origins and grammar of the language in the past\r\nLinguistic Iftaa in the fields and sciences of the Arabic language.\r\nParticipate in the preparation and review of textbooks, literature, theses and research.\r\nParticipate in the drafting of linguistic dictionaries to know the meanings and derivatives.\r\nProviding literary and literary editing programs for educational departments, schools, radio and the press', 1),
(15, 'Advertising and marketing communication', 'This specialization means studying the methods of using different means of advertising in order to spread the product and marketing it to increase the sales of the organization or promote its services.�The Advertising Specialist:\r\n�\r\nPlan and organize the organization\'s advertising work to serve its objectives at the short and long term.\r\nWork to build the brand of the product and establish a specific reputation and positive about it.\r\nSupervise the advertising work in the organization and determine the means used (TV, newspapers, radio, ..).\r\nManage step-by-step ad campaigns launched at a specific time and place to serve a clear and specific goal.\r\nCoordinate with the designer to produce artwork that is highly capable of achieving the goal of the ad or ad campaign.\r\nWrite the contents of the ad and especially the short sentences that distinguish the product.\r\nWork with external clients of advertising agencies to understand the purpose of the advertising they want and the most appropriate way.', 1),
(16, 'Applied Linguistics', 'This specialization means studying the practical applications of the English language, especially the methods of teaching and learning.�The (Applied Linguist):\r\n�\r\nBuilding an integrated theoretical and practical background on the best ways to teach, acquire and test English as a second language students.ESL).\r\nWork on the design of educational curricula.\r\nWork on the preparation of teaching aids traditional and non-traditional, ie, based on advanced technology.�', 1),
(17, 'radio and television', 'This specialization means studying the basics and methods of media work that are broadcast on radio and television.�The radio and television media:\r\n�\r\nSeek information through monitoring, meeting people and reading different sources.\r\nPrepare reports and news about various local and international events of interest to the listener and viewer, and determine the format, format and importance that will be given to this news or event.\r\nDesigning, producing and directing various programs (documentary, entertainment, drama, cultural, religious, ..) which are broadcast on radio and television.\r\nArrange meetings with people who can give valuable information about an issue.\r\nProviding innovative and innovative ideas for media work so that people accept it and find popularity among them, and benefit them at the same time.\r\nMaster the art of journalistic work in the audio-visual media.\r\nTraining young media professionals to prepare them well for this important profession.\r\nBriefing and observing the laws and ethics governing radio and television broadcasting.\r\nMaster the technical details of editing and output', 1),
(18, 'Chinese Language', 'This specialization means studying the basics of Chinese language and literature.�The Chinese language specialist:\r\n�\r\nTo develop a deep scientific background on Chinese linguistics, structures and grammar.\r\nAn extensive study of the Chinese-speaking literary heritage (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering Chinese language skills for non-native speakers of different ages and levels.', 1),
(19, 'French language', 'This specialization means studying the basics of French language and literature.�The French language specialist:\r\n�\r\nCreating a deep scientific background on French linguistics, structures and grammar.\r\nA thorough study of the literary heritage of French-speaking peoples (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering French language skills for non-native speakers of different ages and levels.', 1),
(20, 'Visual and digital production', 'This specialization means studying the design and production of films (including short and animated films), visual and sound effects, animations, video games, mobile applications, educational programs, and more.�The (Visual and Digital Production Specialist):\r\n�\r\nProduce audiovisual content for advertisements, films, short documentaries, and animated films on TV or on the Internet.\r\nTeam selection and filming locations.\r\nCoordinate studio work schedules and schedule any other appointments.\r\nEdit the sections to make them suitable for viewing.', 1),
(21, 'English language and literature', 'This specialization means studying the basics of English language and literature.�The English Language Specialist:\r\n�\r\nTo develop a deep scientific background on linguistics, structures and grammar of English.\r\nExtensive study of the literary heritage of English-speaking peoples (novels, theater, poetry, story, ..).\r\nGain advanced written and verbal communication skills using this language and translating it into and out of it.\r\nMastering English language skills for non-native speakers of different ages and levels.', 1),
(22, 'Urban Planning', 'This specialization means studying the design and development of the structural structure of cities, suburbs and urban areas.�The Urban Planning Specialist:\r\n�\r\nOrganizing and developing cities and suburbs in order to make them better places to live and achieve economic growth while preserving the environment and architectural heritage.\r\nFollow up the population situation to determine the expected requirements for urban or rural areas.\r\nPreparing reports and plans related to various projects.\r\nCollaborate with architects, civil engineers, landscape architects, construction managers, ground survey experts, and local council members.', 2),
(23, 'Architecture', 'This specialization means the study of scientific methods to design buildings of different types.�The Architect:\r\n�\r\nIdentify the client\'s needs and desires from the building he wants to build.\r\nIdentify the area of ??the building and its distribution, location and other characteristics.\r\nTurning the client\'s wishes into architectural drawings within certain controls.\r\nUsing computer programs or manual drawing to make detailed designs, designs and models of work.\r\nSetting a scale to illustrate and accurately distribute areas.\r\nConsider the physical, social, legal and environmental details of the building.\r\nHiring designers and supervising their work.�', 2),
(24, 'Urban and Regional Planning (Urban and Regional Planning)', 'This specialization means the study of scientific methods of city planning and distribution of housing and services in it taking into account the spatial distribution and economic, social, environmental, heritage and other aspects.�The focus of this specialization extends from urban and geographical planning at the level of the state, regions, cities and villages to the planning of any residential neighborhood.�The City Planner will:\r\n�\r\nProvide perceptions and solutions on city planning and surrounding urban areas.\r\nLocating industrial, commercial, residential, educational, recreational and public areas.\r\nIdentify schematic details of cities and territories such as street width in a neighborhood, traffic light locations, appropriate building height, roadside sidewalks, bus stops, road lighting and much more.\r\nWork to develop cities and regions to the best position to provide welfare to the population according to available resources.�', 2),
(25, 'Department of Transport and Communications', 'This specialization means the preparation of specialists in the field of planning, organizing and managing the transport of persons, goods and infrastructure.�This includes a spectrum of work such as managing road maintenance works, technical services used, studying related systems and planning for current and future needs.�Obviously, transportation systems include aviation, road transport, all kinds of trains and maritime transport.�The Transport Specialist:\r\n�\r\nPlanning and organizing the network of transport routes linking the parts of the State between each other and those connecting the State with neighboring countries.\r\nAssess the current and future needs of the internal and external transport network in order to make decisions accordingly.\r\nBuild a system that ensures that people and cargo are transported on time, safely and safely.\r\nFollowing up and utilizing the latest technologies used in transport, taking into account safety, cost and benefit standards.\r\nBuilding a legal background on the regulations governing air and sea freight and the laws governing them.\r\nGain managerial skills in order to employ them in the management of transport operations to achieve profit and adhere to the adopted standards.\r\nIdentify the methods, systems and skills of the management of land, sea and air ports.', 2),
(26, 'Air control', 'This specialization means studying the theoretical background and practice adopted in directing air traffic from the control tower.�The Air Controller:\r\n�\r\nSit in the control tower and guide the movement of aircraft coming in and out of the airport.\r\nGive approval for the pilot to take off or land.\r\nInform the competent authorities in case the aircraft needs any assistance.\r\nPropose a change in flight route in emergency situations such as bad weather.\r\nPrepare reports on the movement of aircraft, and record what is done between him and the pilots.', 2),
(27, 'civil Aviation', 'This specialization means studying the scientific background and the practical practice of driving different types of multi-engine aircraft that operate in the clover of goods and passengers.�The Civil Pilot shall:\r\n�\r\nPilot the flight of the aircraft from the takeoff destination to the final destination and assume its full responsibilities.\r\nUse all available means for safe access to the aircraft.\r\nDealing with any emergency in accordance with the applicable regulations.\r\nContacting the air traffic control tower and responding to its directions especially during takeoff and landing.\r\nMonitor the alarms, control panel and others in order to ensure the performance of the aircraft and control the speed of the aircraft.', 2),
(28, 'Architecture of the environment', 'This specialization means the preparation of professionals in the planning and design of outdoor spaces (parks, recreational areas, ..) regardless of their size and levels within cities and urban areas and beyond.�The Environmental Architect:\r\n�\r\nGather information about the surrounding environment of the area to be planned such as geographical and climatic data, soil susceptibility to agriculture, drainage sites, site nature, etc.\r\nDesign and layout of residential complexes, public squares, and areas of historical and cultural importance.\r\nStudy the functional and formal relationship between open areas and urban buildings.\r\nPrepare the preliminary plans, then examine them with the engineers concerned and make the proposed amendments.\r\nPreparation of final site plans, executive drawings, specification tables, quantities and preliminary cost estimates on maps\r\nFollow up the implementation of the plans and work to conform specifications and participate in the final delivery of the project\r\nPrepare and submit technical reports to the concerned authority.\r\nWork on the concept of land reclamation and turn it into a populated place.', 2),
(29, 'Marine Engineering', 'This specialization means the study of scientific methods for the design and construction of ships and manufacture, as well as the maintenance and development of all types of marine engines.�The Marine Engineer shall:\r\n�\r\nSupervising the process of designing and manufacturing marine engines of different sizes (boats, ships, jet ski, ..)\r\nBuild a solid scientific background on internal combustion processes, diesel engines, water forces and other closely related science\r\nWork on the maintenance, development and operation of marine engines in the port and during cruises\r\nMonitor the volume of cargoes and operation of ships and ensure their balance and safety\r\nFollow up and control the quality and make sure to follow the standards set in the manufacture and maintenance of ships\r\nFully aware of marine law and environmental pollution in water, specific regulations, irregularities and penalties', 2),
(30, 'architecture', 'This specialization means the study of transforming the building design prepared by the architect into reality taking into account the different details of the building such as electricity, plumbing, ventilation, movement, fire protection systems, etc.�The Architect:\r\n�\r\nBuilding a scientific and engineering background on construction.\r\nCombine design and execution at once.\r\nFollowing up on the exact details of the construction of the building and its contents, and assessing the costs, and may initiate the supervision of the building himself.\r\nSupervise the technicians who carry out the implementation.\r\nMonitor the quality of work and ensure compliance with agreed standards.\r\nEnsure safety of work hazards for the entire team.', 2),
(31, 'Aerospace Engineering', 'This specialization means studying the methods of manufacture, maintenance and testing of aircraft, spacecraft and missiles.�The Aviation Engineer:\r\n�\r\nApply advanced engineering and technical knowledge to ensure safe manufacture, maintenance and development of aircraft of all types.\r\nApplying engineering and technical knowledge in the manufacture and maintenance of spacecraft, guided missiles, etc.\r\nMonitor the performance indicators of engines, emergency devices and other indicators to ensure the operation and safety of the aircraft.\r\nReview all information and data about aircraft, spacecraft or missiles to determine the level of performance, safety and suitability of the customer and to perform the full tests before approving their operation.�\r\nEngage in scientific research to develop the capabilities of aircraft, spacecraft, missiles and others.', 2),
(32, 'Transportation and Traffic Engineering', 'This specialization means studying the application of scientific principles and technology in the planning, design, operation and management of any transportation facilities in a safe, fast, convenient, easy, economical and environmentally friendly way of transporting people and goods.�Transportation engineering is a major branch of civil engineering.�This specialization focuses on the design, construction and repair of multimodal transport or participation in projects involving roads, railways, harbors or canals.�The Transportation Engineer shall:\r\n�\r\nSimulate transport problems using models and operational solutions.\r\nAnalyze and interpret schemes and engineering data collected from studies in transport.\r\nProvide advice and advice on the formation of traffic and road policies.\r\nTransportation design and analysis of the impact of transport on urban roads.\r\nForecasting the impact of developments.\r\nExamine blind spots that cause accidents in order to design road safety improvements.\r\nReporting for funding proposals and planning authorities.\r\nEvaluate plans and proposals that are transferred to it by other engineers in order to make changes if possible.\r\nSupervise plans in partnership with contractors and calculate the total cost of the project.', 2),
(33, 'Maritime navigation', 'This specialization means the preparation of specialists in maritime traffic systems, maritime arts and duties.\r\n�\r\nLead and guide high-seas, government and commercial vessels in and out of ports, and direct them to estuaries, straits and bays\r\nEnsure the safety of crew, passengers and cargo on board\r\nFull knowledge of maritime laws\r\nIdentify the suitability of ships to sail\r\nProviding specialized courses for maritime workers in governmental and commercial sectors', 2),
(34, 'Ports and maritime transport', 'This specialization means the preparation of specialists in the management, operation and planning of ports and maritime transport.�The specialist in the field of (port management and maritime transport) is characterized by the following works:\r\n�\r\nA deep understanding of the nature of the movement of goods through ships and the obstacles that may be encountered and ways of organizing them\r\nExtensive knowledge of the laws governing maritime transport and seaports\r\nThe ability to recognize the various variables in the shipping market and make the right decision about the available options (cost, delivery time, risks, ..)\r\nReview contracts and details of maritime transport operations, use of sea ports, marine insurance and others\r\nIdentify the nature of logistics in general and maritime transport related activities\r\nIdentify the planning and operation of ports', 2),
(35, 'civil engineering', 'This specialization means the study of scientific methods for the implementation of buildings, roads, bridges, tunnels, airports and ports and the establishment of drainage systems and dams as well as irrigation projects of canals and canals.�The (civil engineer) to convert projects from paper to reality view at the lowest cost, and more safe and effective, through the following:\r\n�\r\nManage and guide team members (technicians, workers, ..) while performing their work at the project site.\r\nProvide design and construction advice for various projects.\r\nMonitor the construction work of the project to be created and ensure that it complies with the approved specifications and standards.\r\nWork to estimate the expected cost of the project from the mechanisms and manpower.\r\nAnalyze much of the available information on land, soil, weather maps, cadastral reports, etc. during project planning.', 2),
(36, 'Survey Engineering', 'This specialization means the study of scientific and practical ways to measure distances and directions and clarify the boundaries of existing lands or areas around them such as the seas and others.�The surveyor is interested in:\r\n�\r\nIdentify the target of the survey and the information needed to be provided.\r\nSurvey the surface of the earth to determine its shape, dimensions, borders, contents, heights, gravitational field, etc.\r\nWork to locate objects with high accuracy.\r\nWork to transfer this survey to maps, charts and documents that give useful information to engineers and those involved in the map industry, mining, construction, industry and others.\r\nPrepare reports on the survey at different stages.', 2),
(37, 'Construction Management', 'This specialization means studying how to�plan, design and management of�building installations and facilities of�various such as public buildings, residential, commercial, industrial, streets, monuments and bridges; Vehtm definition of�students \'�methods�and materials of�construction as�well as the�most important techniques used in budgeting and scheduling work and commitment to�quality and safety standards of�management, It is also interested in studying laws and regulations governing construction.\r\n�\r\nThe Construction Management Specialist:\r\n�\r\nSupervision of construction activities at the sites until completion of the project.\r\nChoose appropriate building systems and strategies.\r\nCooperation with engineers and technicians of various specializations during work projects.\r\nSelect, hire and guide workers and contractors.\r\nExplain contracts and technical information to workers and other project personnel.\r\nBudget and discuss financial matters with clients.\r\nSchedule work and communicate with inspectors and clients and inform them of the progress of work projects.\r\nFinding solutions to emergencies and problems that may hinder work.\r\nCompliance with building and safety regulations', 2),
(38, 'Geomatics', 'This specialization means the study of science and techniques related to urban digital data, including urban surveys and spatial or geographic information systems such as measuring, recording, processing, analysis, display and composition of maps.�This specialization qualifies students to work in the fields of geographic information systems, geodetic surveying, global positioning system, all areas, remote sensing, digital analysis and other sciences and technologies.�(Geomatics Specialist / Surveyor):\r\n�\r\nUsing GIS to analyze and interpret the characteristics of sites.\r\nProvide detailed information for planners, builders and cartographers.\r\nUse several tools for surveying including GPS systems:�GPS�In addition to traditional means.\r\nAnalyze the information thoroughly before delivering it to other specialists.\r\nLand survey and measurements including small and large drawing scales, angles and projections.\r\nCollect data on natural and man-made properties of the Earth through survey.\r\nData processing.\r\nAssume digital planning tasks.\r\nInterpret data using maps and graphs.\r\nEmploy data through a variety of sources including aerial photography, satellite scanning and measurement systems using laser beams.\r\nUsing computer-aided design softwareCAD) And other IT software to interpret data and provide information.\r\nAdvise customers.', 2),
(39, 'Geographic Information Systems', 'This specialization means studying software programs that are used to collect, store, analyze and display complex geographic information.�It focuses on the study and analysis of geospatial information and how to map and analyze maps, as well as exploring the applications of interactive GIS.�The (GIS Specialist):\r\n�\r\nMapping and data analysis.\r\nConvert paper maps to digital data.\r\nCollect geographic information and locate construction using GPS.\r\nDesign and maintain software for storing GIS data.\r\nDeveloping the necessary tools to download and transfer GIS data between different systems.\r\nDesign programs that convert the way geographic information is displayed from one format to another.\r\nDevelop web applications to display GIS data on corporate websites.\r\nCombine different sets of geographic data and create new information and research models.', 2),
(40, 'Education', 'This specialization means studying everything related to learning and teaching processes.�This specialization focuses on four main areas: (1) aspects of human growth (learning and knowledge), (2) social and political contexts affecting education, (3) information and communication systems for education, and (3) educational research and assessment.�It also aims to prepare educational cadres of teachers, principals, supervisors and researchers.�The Educational Specialist shall:\r\n�\r\nPlanning and coordination of general, professional and community educational programs.\r\nPlanning and developing curricula for educational programs and research.\r\nIdentify educational goals, objectives and teaching methods to achieve those goals.\r\nCoordinate the activities necessary to support the team and advise those interested in the procedures of implementing educational programs.\r\nOrganize and prepare classrooms, seminars, workshops and other educational services.\r\nDrafting, editing and developing indexes of courses, promotional materials, educational materials, training manuals, brochures and leaflets in line with educational programs.\r\nAttend educational science conferences and cooperate with colleagues in all fields.\r\nTraining and qualifying teachers to work in the educational field.\r\nConducting educational research in different branches of education sciences.\r\nGuiding students and educational work in schools and universities.\r\nEducational Measurement, Evaluation and Statistics.', 3),
(41, 'Primary education', 'This specialization means the study of scientific and educational methods to teach students in the primary stage.�This stage has many advantages, the most important of which is the most important stage in establishing the child\'s personality - in addition to the stage of early education.�The Primary Teacher:\r\n�\r\nBuilding a scientific background on the characteristics of children in the primary stage between the ages of (6-12) years in terms of psychological, educational and educational.\r\nBuilding a scientific background on the best methods of education and knowledge for children at this stage.\r\nAttention to the education of the student and acquire important life skills and develop his skills commensurate with age.\r\nDevelop interpersonal skills in classroom management and deal with unacceptable behaviors and communication skills with children\r\nWork to discover, support and guide the talented.\r\nCommunicate with the student\'s family to ensure that the student develops scientifically and educationally and listen to any observations made by parents about the child.\r\nEnsure that parents are involved in solving any behavioral change or solving any psychological problem related to the child to reach the best results.', 3),
(42, 'Educational Psychology', 'This specialization means the scientific study of human behavior in various educational situations.�It is a theoretical and practical branch of psychology that is mainly concerned with theoretical studies and practical procedures of the principles of psychology in the field of study and education of young people and the development of their potential and personalities and focuses in particular on the processes of teaching and learning.�Educational psychology seeks to integrate psychological knowledge with its theories, laws, principles and concepts in the personalities of all those working in the education profession, and facilitate ways of application and promotion in various areas of life, especially in the field of education at all levels of pre-university, university and graduate studies.�(Educational Psychologist):\r\n�\r\nEvaluate the learner and emotional needs and access to the best curricula that support the process of education and growth.\r\nDevelop and support behavior management and treatment programs.\r\nDesigning and developing courses for parents, teachers and others involved in the education of children and young people.\r\nWriting reports and documenting recommendations for action, including official reports.\r\nConducting active research and studies.\r\nProviding workers in the educational field with the necessary and important expertise in the field of educational psychology.\r\nEncourage critical and innovative thinking in finding appropriate solutions to psychological and educational problems.\r\nRecognize the strengths and weaknesses of the educational system and then carry out the appropriate and necessary evaluation.\r\nProviding cognitive and intellectual contributions in the field of educational psychology that help in finding innovative solutions to psychological and educational problems in the field of education.\r\nEvaluation of current teaching methods and the possibility of benefiting from educational psychology in development.\r\nAcquiring knowledge in the field of educational psychology with the aim of developing the educational process in general.\r\nEvaluate and analyze the internal and external environmental impacts on modern theories in educational psychology in order to develop future plans in the light of the Quran and Sunnah.', 3),
(43, 'Childhood Studies', 'This specialization means studying the methods of caring for children with disabilities and special needs psychologically, educationally, socially and culturally through the preparation of scientific cadres fully qualified scientific, educational, technical, social and cultural to provide care for children, whether educational, health or social, and seeks to develop ways of dealing with�child care institutions.�It also seeks to develop and improve ways to deal with various institutions interested in child care and achieve discrimination in the areas of childhood at the local and regional level and the integration of the concept of quality and continuous improvement in the educational system.�The Childhood Studies Specialist:\r\n�\r\nCaring for children with disabilities or special needs.\r\nPsychological and social counseling for children.\r\nPlanning educational, cultural, social and educational service programs.\r\nCooperation with institutions specialized in child care.\r\nDeveloping social interaction in children and communication skills.\r\nConducting research and studies in the field of childhood.\r\nDeveloping educational and recreational programs for children such as the Japanese program for child development and sustainable development programs for children.\r\nDeveloping strategies for cognitive, skill, and emotional development and methods of creative and critical thinking in children.', 3),
(44, 'learning difficulties', 'This specialization means studying how to work with families and educational institutions to ensure that every child with learning disabilities receives the services they deserve through specially designed educational programs.�The specialization focuses on helping students with learning difficulties and poor academic achievement to overcome their problems and help them to raise their academic achievement.�Students learn scientific and practical methods and tools through which family relationships and children\'s development are promoted in a healthy and healthy way.�The Learning Disability Specialist:\r\n�\r\nDevelop and develop all programs and service plans to help families caring for a child with learning difficulties and educational programs and plans directed to them.\r\nReport on the progress of the child\'s performance and document records according to the criteria for the performance of low-income assistance programs.\r\nWork in collaboration with families and educational bodies on issues related to model behaviors or development as well as the individual needs of children.\r\nIdentify community resources and secure necessary memorandums of understanding with all relevant organizations.\r\nWork to monitor and respond positively to community problems and issues facing children with learning disabilities and their families, and use scientific and research tools to study and evaluate these issues and provide effective solutions.\r\nCare to develop different aspects of the child\'s behavioral, social, intellectual and ethical personality,�and to acquire habits and address wrong behaviors.', 3),
(45, 'Talent Education', 'This specialization means studying the design of educational services for children or adults with exceptional talents and abilities, whether cognitive, motor, artistic or those who exhibit leaps in maturity or community leadership skills and the preparation of cadres that can teach these students.�The specialization includes studying how to identify, distinguish, educate and supervise gifted and talented students.�The Talent Education Specialist will:\r\n�\r\nIdentify and meet the needs and requirements of gifted and talented students.\r\nDeveloping and developing all service programs and plans to help families caring for the gifted and the children, programs and educational plans directed to them.\r\nWork in collaboration with families and educational bodies on issues related to model behaviors or development as well as the individual needs of children.\r\nCare to develop different aspects of the child\'s behavioral, social, intellectual and ethical personality, and to acquire habits and address wrong behaviors.\r\nApply modern curricula, special education, strengthening units and growth opportunities.\r\nMonitor and measure student progress.\r\nHelping children with high abilities to use their abilities in a positive and beneficial manner.\r\nReport on the progress of the child\'s performance and document the records according to the criteria for the performance of low-income assistance programs.', 3),
(46, 'Educational Technology', 'This specialization means the study of scientific and practical ways to use technology and its applications in the fields of education and knowledge transfer.�The Educational Technology Specialist:\r\n�\r\nIdentify computer programs with education-related applications.\r\nDevelop your technical skills in design, photography, drawing, building models, dealing with audio, video production and more\r\nCurriculum and curriculum design using modern interactive methods and methods to create a lasting education that leads to mastery, creativity and innovation.\r\nDesign and production of computer programs dealing with education.\r\nUsing new technologies developed by technology giants to acquire knowledge for students and adults and to create a virtual environment that enhances the educational process and encourages self-education.\r\nAdapting technology to create new ways to evaluate, motivate and communicate with students�.\r\nProviding technologies that help people with special needs to learn and acquire knowledge.\r\nCombining a deep understanding of teaching theories with practical applications of technology.\r\nWork to train and develop workers in large companies in the use of e-learning and the use of tools in staff development.', 3),
(47, 'Early Childhood (Kindergarten)', 'This specialization means the study of the overall development of the child in pre-school in terms of physical, social, emotional, moral and intellectual and identify any disorder and take the necessary to address them.�This is in addition to studying the scientific methods to teach a preschool child and the use of appropriate means in this.�The (Early Childhood Specialist) or (kindergarten school):\r\n�\r\nBuilding a theoretical background on the nature of the child\'s pre-school developmental stages and the factors influencing it, and the appropriate educational methods for this age.\r\nCare to develop the different aspects of the child\'s social, intellectual and moral personality, and address wrong behaviors.\r\nTo teach the child many basics such as colors, shapes, characters, etc. in a fun and enhanced atmosphere.\r\nPrepare a wide range of educational tools and materials that the child grabs, explores and learns from.\r\nConveniently prepare the classroom or place of activity.\r\nMonitor each child individually and identify any psychological, physical or educational difficulties and determine the need for any intervention.\r\nTake care of the creative aspects of every child.\r\nPreparing the child for the transition to general education.\r\nMeet the child\'s parents or caregivers to discuss their development and aspects that need to be given more attention.', 3),
(48, 'Art Education', 'This specialization means the study of scientific methods to teach students the art work in all its forms such as painting, sculpture and techniques used in it.�The (Art Education Teacher):\r\n�\r\nPreparing and presenting art education classes for middle and high school students.\r\nWork to train students to use the technical tools that help them to highlight their artwork in the way they want.\r\nDesign lessons and exercises that introduce students to different techniques to bring out their best technical skills.\r\nParticipates in school activities and student associations related to the arts.\r\nSupervises the technical aspect of the activities held at the school.\r\nDiscovering, supporting and guiding aspects of creativity among students who are technically distinguished.\r\nDesigning and executing various works of art for a variety of purposes, including personal items, to be exhibited in private or joint exhibitions, including items that meet the needs of another party', 3),
(49, 'Mathematics (Education)', 'This specialization means the preparation of teaching staff for mathematics.�In this specialization, the student studies in the field of (mathematics) in addition to several educational materials to enhance his abilities in teaching, classroom management, dealing with students and developing them.�The Math Teacher:\r\n�\r\nPreparation of an integrated plan for the method of teaching the material during the year and the distribution of classes and activities and method of evaluation and method of tests and others.\r\nTeaching the curriculum (mathematics) to students during the academic year.\r\nDesign and prepare aids to explain the material and bring it closer to the understanding of students.\r\nTo act as an educator and mentor for students in motivating and supporting them, raising the spirit of enthusiasm among them and dealing with any unacceptable behaviors issued by them.', 3),
(50, 'Islamic Studies (Education)', 'This specialization means the creation of teaching staff for various subjects of religion (jurisprudence, hadith, interpretation, ..).�In this specialization, the student studies in the field of (Islamic Studies) in addition to several educational materials to enhance his abilities in teaching, classroom management, dealing with students and developing them.�The Religious Instructor:\r\n�\r\nPreparation of an integrated plan for the method of teaching the material during the year and the distribution of classes and method of assessment and method of tests and others\r\nTeaching curriculum (Tafseer, Hadith, Jurisprudence and Islamic Culture) to students during the academic year.\r\nDesign and prepare aids to explain the material and bring it closer to the understanding of students.\r\nTo act as an educator and mentor for students in motivating and supporting them, raising the spirit of enthusiasm among them and dealing with any unacceptable behaviors issued by them.', 3);
INSERT INTO `subject` (`subjectID`, `name`, `discription`, `majorID`) VALUES
(51, 'special breeding', 'This specialization means studying the educational aspects related to children with special needs.�(Special Education Teacher):\r\n�\r\nEvaluate the student who is transferred to study in schools or classes with special needs, and ensure that it can benefit from this service.\r\nIdentify the most important problems and challenges facing the student (unacceptable behaviors, specific learning difficulties, obvious weakness in a subject, ..).\r\nStrive to teach the student acceptable social behavior, self-care and independent life skills through well-known educational methods.\r\nProviding the student with the scientific material in a suitable and varied manner so that they can easily understand and benefit from it.\r\nSupporting the student on every occasion in order to motivate them and overcome their difficulties.\r\nIt monitors, evaluates and records the development of each student individually, and meets parents to introduce them to the role required of them.\r\nIn addition, this specialization takes care of the needs of gifted students and supports them according to a scientific plan that supports their creativity and areas of excellence.', 3),
(52, 'Biology (Education)', 'This specialization means the preparation of teaching staff for biology.�In this specialization, the student studies in the field of (biology) in addition to several educational materials to enhance his abilities in teaching, classroom management, dealing with students and developing them.�The biology teacher will:\r\n�\r\nPreparing an integrated plan for the method of teaching the material during the year and distributing classes, activities, practical classes, evaluation method, tests method, etc.\r\nTeaching the curriculum (biology) to students during the academic year.\r\nDesign and prepare aids to explain the material and bring it closer to the understanding of students.\r\nSupervise students while performing scientific experiments and make sure they benefit from them.\r\nTo act as an educator and mentor for students in motivating and supporting them, raising the spirit of enthusiasm among them and dealing with any unacceptable behaviors issued by them.', 3),
(53, 'Family and childhood', 'This specialization means studying the family unit and its interdependence and its impact on the growth of its members and its relationship with society.�It also discusses childhood and youth and the development of the child in many aspects (mental, emotional, physical and social), how individuals grow within the family and society and how to form relationships during their lives.�Students�learn�scientific and practical methods and tools through which family relationships and children\'s development are promoted in a healthy and healthy way.�The Family and Childhood Specialist will:\r\n�\r\nBuilding a theoretical background on the nature of families and the relationships within them, their growth and the factors affecting them\r\nBuilding a theoretical background on the different stages of childhood and youth, the factors affecting them and the ways of influencing them\r\nWork to monitor the problems and issues of the family and society and interact with them positively, and the use of scientific and research tools to study and evaluate these issues and provide effective solutions to them\r\nCounseling for a wide range of people on all issues related to marriage, family building, education, dealing with children, etc.\r\nWork on planning, establishing and managing projects and works related to the family, children and youth in their various fields.\r\nCare to develop the different aspects of the child\'s personality and social, intellectual and moral character, and to acquire habits and address wrong behaviors.', 3),
(54, 'Arabic Language (Education)', 'This specialization means the preparation of teaching staff for the subject (Arabic language).�In this specialization, the student studies in the field of (Arabic) in addition to several educational materials to enhance his abilities in teaching, classroom management, dealing with students and developing them.�The Arabic Language Teacher:\r\n�\r\nPreparation of an integrated plan for the method of teaching the material during the year and the distribution of classes and method of assessment and method of tests and others\r\nTeaching the curriculum (Arabic) to students during the academic year.\r\nDesign and prepare aids to explain the material and bring it closer to the understanding of students.\r\nTo act as an educator and mentor for students in motivating and supporting them, raising the spirit of enthusiasm among them and dealing with any unacceptable behaviors issued by them.', 3),
(55, 'Speech disorders', 'This specialization means studying how to teach and guide children with speech disorders including stuttering or impaired speech and verbal expression that hinder them from communicating and effective learning, as well as designing appropriate educational services for them.�The focus of this specialization is on teaching students of special education sciences in general and specialization in speech and communication disorders, language development and teaching methods for students with speech difficulties.�Speech disorders specialist:\r\n�\r\nEncourage and accept any form of communication that children with speech difficulties may use, such as gestures, expressions by writing or drawing.\r\nTeaching active listening skills.\r\nAllow sufficient time to receive questions and answers and do not put pressure on the student because it is difficult to speak.\r\nUse voice recognition exercises.\r\nHelp students arrange and categorize words.\r\nUsing visual teaching aids such as images and objects to help students build their vocabulary.\r\nIdentify and distinguish students with speech disorders.\r\nTransfer students to specialized centers in case they need such intervention.\r\nWork to monitor and respond positively to community problems and issues facing children with learning disabilities and their families, and use scientific and research tools to study and evaluate these issues and provide effective solutions.\r\nPrepare reports on the progress of the child\'s performance and document the relevant records.\r\nMake plans for daily classroom activities that are compatible with speech disorders.', 3),
(56, 'Behavioral disorders and autism', 'This specialization means studying how to work with families and educational institutions to ensure that every child with behavioral and autism spectrum disorders - known as autism - receives the services they deserve through specially designed educational programs.�It also aims to study how these children grow within the family and society and how to form relationships during their lives.�Learners learn the scientific and practical ways and means by which family relationships and children\'s development are promoted in a healthy and healthy way.�Behavioral disorders and autism specialist:\r\n�\r\nDevelop and develop all service programs and plans to help families caring for a child with behavioral and autistic disorders and educational programs and plans directed to them.\r\nReport on the progress of the child\'s performance and document records according to the criteria for the performance of low-income assistance programs.\r\nWork in collaboration with families and educational bodies on issues related to model behaviors or development as well as the individual needs of children.\r\nIdentify community resources and provide necessary memoranda of understanding with all organizations.\r\nTo monitor and respond positively to societal problems and issues facing children with behavioral and autistic disorders and their families, and to use scientific and research tools to study and evaluate these issues and provide effective solutions.\r\nCare to develop different aspects of the child\'s behavioral, social, intellectual and ethical personality, and to acquire habits and address wrong behaviors.', 3),
(57, 'Visual impairment', 'This specialization means studying how to prepare and design educational services and provide them to those with visual or blind disabilities.�The study focuses on teaching and advising these people to develop their cognitive development and communication skills, thereby facilitating their livelihoods and developing the personal, social and intellectual aspects of visually impaired and blind students.�The (visual disability specialist):\r\n�\r\nTeaching students with visual impairments, whether visually impaired or totally blind.\r\nUse of technical equipment for the visually impaired.\r\nUse the Braille Reading Method to help students interact and learn.\r\nOrganize meetings to consult with parents, teachers, specialists and students to provide information and support to students.\r\nDevelop the objectives of educational programs and plans in line with the individual needs of children to ensure their relevance and practicality.\r\nClassroom management, organization and development of daily classroom activities based on oral communication that are commensurate with the abilities and needs of children with visual disabilities and in accordance with approved programs and plans.\r\nParticipate in the training of parents to deal with their children in cooperation with specialists, whether in the classroom or at home.\r\nEvaluate the capacities and possibilities of children with visual disabilities and then develop and organize them to implement appropriate classroom plans and activities on a case-by-case basis.\r\nThe use of applied behavioral analysis processes through observation, intervention, data collection and evaluation.\r\nPreparing and conducting tests to measure the level and attention and transitional tests in order to identify the levels of performance and evaluation of the educational process.', 3),
(58, 'Impaired hearing', 'This specialization means studying how to prepare and design educational services and provide them to those with hearing or deaf difficulties.�The study focuses on teaching and advising these people in order to develop their language development and communication skills, thereby facilitating their livelihoods and developing the personal, social and intellectual aspects of hearing and deaf students.�The Hearing Disability Specialist:\r\n�\r\nTeaching students with hearing impairments, whether hearing impaired or totally deaf.\r\nEmploying tools that are used to improve hearing.\r\nOrganize meetings to consult with parents, teachers, specialists and students to provide information and support to students.\r\nDevelop the objectives of educational programs and plans in line with the individual needs of children to ensure their relevance�and practicality.\r\nClassroom management, organization and development of daily classroom activities appropriate to the abilities and needs of children with hearing disabilities that are consistent with approved programs and plans.\r\nParticipate in the training of parents to deal with their children in cooperation with specialists, whether in the classroom or at home.\r\nAssess the capacities and possibilities of children with hearing disabilities and then develop and organize them to implement appropriate classroom plans and activities on a case-by-case basis.\r\nThe use of applied behavioral analysis processes through observation, intervention, data collection and evaluation.\r\nPreparing and conducting tests to measure the level and attention and transitional tests in order to identify the levels of performance and evaluation of the educational process.', 3),
(59, 'Home Economics (Education)', 'This specialization means the preparation of female teaching staff for the subject (Home Economics).�The student in this specialization study specialized in the field of (home economics) in addition to several educational materials to strengthen her abilities in teaching and classroom management and dealing with students and their development.�The School of Home Economics:\r\n�\r\nPreparation of an integrated plan for the method of teaching the material during the year and the distribution of classes and activities and method of evaluation and method of tests and others.\r\nTeaching the curriculum (home economics) to students during the academic year.\r\nDesign and prepare means to help explain the material and bring it closer to the understanding of students.\r\nSupervise the students while performing the practical activities of this course and make sure that they benefit from it.\r\nTo play the role of educator and directed to students in motivating and supporting them and raise the spirit of enthusiasm among them and deal with any unacceptable behaviors issued by them.', 3),
(60, 'mental handicap', 'This specialization means studying how to work with families and educational institutions to ensure that every child with mental disabilities and intellectual education receive the services they deserve through specially designed educational programs.�It also aims to study how these children grow within the family and society and how to form relationships during their lives.�Learners learn the scientific and practical ways and means through which family relationships are promoted and children grow healthy.�The mental health professional:\r\n�\r\nDeveloping and developing all service programs and plans to help families caring for a child with mental disabilities and educational programs and plans directed to them.\r\nReporting on the progress of the child and documenting the records according to the standards\r\nWork in collaboration with families and educational bodies on issues related to model behaviors or development as well as�the individual needs of children.\r\nIdentify community resources and provide necessary memoranda of understanding with all organizations.\r\nWork to monitor and respond positively to societal problems and issues facing children with mental disabilities and their families, and use scientific and research tools to study and evaluate these issues and provide effective solutions.\r\nCare to develop the different aspects of the child\'s personality, behavioral, social, intellectual and moral, and to acquire habits and address wrong behaviors.', 3),
(61, 'Geography', 'This specialization means studying the nature of a region in terms of its topography, climate and wealth, population distribution, and spatial distribution of natural and human manifestations.�(Geographical):\r\n�\r\nCollect and analyze all information and data pertaining to the surrounding environment and what it needs to be used in the planning and implementation of any useful project.\r\nAnalyze the geographical distribution of natural and cultural phenomena at the local, regional and international levels.\r\nDevelopment and operation of GISGIS).\r\nAssist in the creation, development and modification of maps and graphs through the use of computer programs specialized in geographic information.\r\nProviding consultations in the field of resource development and management, environmental risk analysis, business development, social planning for villages, etc.\r\nStudying the economic, political and cultural aspects of the population of an area.\r\nSupport for GIS used by government and private sectors.\r\nTeaching Geography.', 4),
(62, 'Agricultural Sciences', 'This specialization involves studying how to use the basic rules of agricultural research and production to solve problems in the applied fields of agricultural science.�These problems range from soil enrichment, agriculture and animal husbandry to the management of agricultural projects, and include research topics such as animal science, horticulture and irrigation, the application of economic theories to actual situations in agriculture and the development of agricultural production in terms of quantity and quality and environmental sciences and genetic engineering of agricultural products.�The Agricultural Science Specialist shall:\r\n�\r\nField work in the field of agricultural land care, agricultural processing and livestock.\r\nManagement of agricultural projects such as growing crops, raising livestock or gardening.\r\nWorking in the commercial fields of agriculture from buying and selling and providing useful advice in this field.\r\nWorking in the fields of food production, whether vegetarian or animal.\r\nWork in the field of scientific research and conduct agricultural research aimed at enriching theories and applied frameworks.', 4),
(63, 'Environmental Health', 'This specialization means studying the relationship between environmental risks and human health and safety.�In this specialization, students learn all the necessary procedures and methods to deal with issues such as: environmental and occupational hazards, toxic solid waste management, environmental pollution and climate change.�The Environmental Health Specialist will:\r\n�\r\nGuidance and awareness to ensure the safety and health of the environment.\r\nInspect food and ensure its safety and free of contaminants.\r\nInvestigate epidemics and reduce their spread.\r\nSampling water for drinking, swimming or farming.\r\nMonitoring radioactivity.\r\nConduct inspection visits to ensure that the specifications conform to safety and security standards and take the necessary measures to improve the environment.\r\nTake pictures, draw sketches, take samples and conduct interviews as part of his inspection work.\r\nDevelop, promote and implement relevant health policies.\r\nMaintain occupational safety, health, work environment and industrial security.\r\nSupervising the safe disposal and treatment of hazardous and solid industrial wastes.\r\nEnvironmental impact assessment for future projects.\r\nWater and effluent management, air quality characterization and assessment and control of pollutants.', 4),
(64, 'Agricultural Extension', 'This specialization means studying scientific methods of advising on agricultural issues effectively.�The Agricultural Guide:\r\n�\r\nPlanning, implementing and supervising agricultural extension programs.\r\nVisit the fields to find out about the most important problems that farmers suffer such as soil erosion, agricultural pests, etc.\r\nProviding agricultural and rural development advisory services.\r\nAnalysis and development of existing extension programs.\r\nWorking to provide means and aids for better agricultural extension.\r\nPutting the results of scientific research in the agricultural sector through extension programs.', 4),
(65, 'Meteorology', 'This specialization means studying the Earth\'s weather, trying to predict the weather, and studying the atmosphere�and climate change that we have all started to notice.�Meteorologist:\r\n�\r\nStudy of various weather phenomena such as rain, storms, drought, etc.\r\nGather information from many sources (satellites, sensors, ..) about the general state of the atmosphere.\r\nInterpret the information and images received about the weather and come up with a picture of it.\r\nStudying the impact of climate change on the economic, agricultural and other sectors.\r\nThe use of numerical models and the use of computers to study weather phenomena.\r\nSet forecasts for possible weather events such as torrents, hurricanes, thunderstorms, strong winds, fog and others.\r\nProviding this valuable information to sectors in need such as air and sea navigation, agricultural and urban sector and those responsible for city planning.\r\nScientific observation of the atmosphere and the study of problems such as ozone hole, acid rain, etc.\r\nSeek to develop advanced weather forecasting techniques for longer than two weeks and study long-term climate changes.', 4),
(66, 'agricultural engineering', 'This specialization aims to study the theories and applications of engineering and scientific and the development of modern technology methods in the fields of agriculture, water, food and the environment in a way that increases the agricultural area and improves production and ensures food sufficiency and progress of society.�The Agricultural Engineer shall:\r\n�\r\nDesign, operation, maintenance and management of agricultural machinery, tractors and equipment used in agricultural production processes.\r\nPlanning and designing traditional and modern irrigation methods for optimal utilization of water resources and rationalization of their use.\r\nPlanning and implementation of self-operation and automation systems in various agricultural activities.\r\nPlanning, design and management of agricultural land drainage networks.\r\nDesigning tools and devices used in the agricultural sector such as recording, measuring, sensors and others.\r\nKnowledge of agricultural and animal production techniques such as dates and dairy.\r\nDesign of facilities related to animal production, plant production, and grain storage of ventilation, cooling, heating, etc.\r\nPlanning and supervising the treatment and recycling of agricultural waste.', 4),
(67, 'animal production', 'This specialization means the study of scientific and practical ways to deal with animal production and protection and development and benefit from it.�The Animal Production Specialist shall:\r\n�\r\nSupervise the breeding and care of agricultural animals such as cattle, sheep, goats, poultry, camels and horses and supervise their nutrition, in addition to fish wealth.\r\nConducting research work with the aim of improving breeds and their products and applying advanced scientific techniques.\r\nCounseling in solving problems related to animal production.��\r\nMonitor the health of these animals and ask the veterinarian to examine them when needed or periodically in addition to adherence to the rules of health and safety in agricultural facilities.\r\nMonitor the storage of animal products according to the appropriate health rules.�In addition to writing lists of sales and warehouse and preparing reports and statistics for the management of the farm or facility.\r\nWorking in the field of marketing various animal products.', 4),
(68, 'Orchards', 'This specialization means the study of scientific techniques used in the cultivation and care of horticultural crops of fruits, vegetables, ornamental plants and so on.�The gardening specialist will:\r\n�\r\nApply the knowledge gained in the cultivation, care, harvesting, storage and protection of horticultural crops from deadly pests.\r\nDeveloping horticultural crop production methods and improving their ability to live in different soils and climates.\r\nProvide advice and guidance on how to grow horticultural crops and the appropriate times.\r\n� Doing specialization in one of the branches of horticulture or may deal with all types of horticultural crops.', 4),
(69, 'Water Resources Science and Management', 'This specialization means the study of various water resources such as surface and groundwater, and methods of use, conservation and discharge and so on.�The Water Resources Specialist will:\r\n�\r\nSupervising the available water resources such as ground and surface water and identifying their sources, movement, drains and components.\r\nClear mapping of available water resources through advanced technologies such as GISGIS) And others.\r\nRegulate the use of water resources for irrigation, industry, human and other use, as needed.\r\nRegulate the means of drainage used water.\r\nMonitoring the impact of environmental pollutants on water sources.', 4),
(70, 'Agricultural Biotechnology', 'This specialization means studying the methods and tools employed to understand and manipulate the genetic composition of plants leading to increased agricultural production.It focuses on genetic engineering and how to employ them to enhance plant and crop resistance to different environmental conditions, to improve plant breeds, increase their nutritional quality, and improve their taste, size and shape.�This specialization is also concerned with the study of biofuels and ways to reduce dependence on fertilizers, pesticides and other agrochemicals.�The Agricultural Biotechnology Specialist will:\r\n�\r\nModify the genes of agricultural crops to double their production.\r\nDevelopment of insect resistant crops.\r\nImprove animal feed.\r\nUse microorganisms and plants to clean water and contaminated land.\r\nFind alternative renewable energy sources such as biodiesel.\r\nManufacture of environmentally friendly raw materials such as: Manufacture of biodegradable plastics from plant starches.\r\nManufacture of biological powders and dyes for use in the textile industry.\r\nReproduction and production of enzymes for use in the food and beverage industry.', 4),
(71, 'agricultural economy', 'This specialization is concerned with studying the economic aspects of the agricultural sector and the issues associated with the management and marketing of agricultural products.�The Agricultural Economics Specialist shall:\r\n�\r\nWith a theoretical and practical background combining agricultural science and management skills.\r\nManage, organize and implement agricultural projects, analyze their problems and provide solutions.\r\nProviding advice aimed at reducing costs, increasing production, improving marketing and other trade issues related to agricultural commodities.\r\nWork as a salesman or a representative to market various agricultural products and related tools, fertilizers, machinery�and so on.\r\nParticipating in the formulation of the State\'s economic policies in the agricultural field.\r\nStudy the impact of local and global economic changes (financial crisis, global trade, ..) on the agricultural sector.', 4),
(72, 'Cultivation of arid areas', 'This specialization means the study of important agricultural methods and techniques in the arid and semi-arid areas spread in our beloved country.�(Dryland Specialist):\r\n�\r\nExtensive study of the potential and resources of arid and semi-arid areas.\r\nContinue work on land reclamation and resource development in these areas.\r\nProviding innovative and effective solutions for agricultural and animal production in dry areas.\r\nImprove water use in the field in arid areas.', 4),
(73, 'Marine Biology', 'This specialization means studying marine life and the organisms that live in it.�(Marine Biologist) does the following:\r\n�\r\nConducting scientific researches that are interested in discovering the exciting world of living in seas, oceans and rivers and developing human knowledge in this aspect.\r\nMonitoring changes in marine organisms when they undergo changes in various factors in the laboratory\r\nClassification and division of marine life\r\nCoordinate with other disciplines in marine studies (eg marine geology, petroleum engineers, drilling, etc.) within a team that provides services to various institutions such as oil companies that own offshore platforms.\r\nManagement of research projects targeting a specific aspect related to marine biology\r\nSampling and preparation of scientific reports on environmental aspects, toxins and pollution that may be exposed to the marine environment and contribute to the work of environmental protection and the enactment and follow-up of laws\r\nWork with companies operating in the marine food industry in performing whatever multi-industry development such as opening new areas or improving existing products', 4),
(74, 'Plant production and protection', 'This specialization means the study of scientific methods for the production and protection of agricultural crops, control of insects, animals, pests and weeds infecting plants and reduce the economic losses resulting from them�and control the environmental pollution associated with the spread of insects and protection from agricultural pests.�Plant Production Specialist:\r\n�\r\nSupervising the process of crop production from different aspects.\r\nWork to protect the plant from various pests that may become infected during its growth.\r\nDevelop plans for programs to control pests, insects and fungi that infect plants or agricultural crops and participate in the implementation\r\nInspect the health and protection of crops and plants to ensure that they are free from agricultural pests, weeds and insect infestations.\r\nPreparation of equipment, facilities and processes in agricultural institutions to ensure compliance with laws and regulations on quality, prevention and safety.\r\nSupervise handling of any epidemic or pest that may infect the plant.\r\nImproving crop quality through seed selection, soil improvement and more.\r\nSupervising the storage and transportation of various agricultural products.\r\nConduct research to identify ways to improve production in terms of quality, quantity, ambient conditions, plant protection and pest control methods\r\nAgricultural extension in relation to plant and plant production and protection programs.', 4),
(75, 'environment Science', 'This specialization means studying the elements of the environment in all its forms such as water, air, soil and pollution that may affect it and the way to deal with it.�The Environmental Specialist:\r\n�\r\nFollow up, monitor and study the problem of environmental pollution such as chemical, physical, biological and sound environmental pollution to protect the environment and to protect human health in which it lives.\r\nAttention to the suitability and suitability of water for various uses (industrial, agricultural, domestic).\r\nInspecting different establishments to ensure their compliance with environmental health and safety laws.\r\nSupervising the disposal of industrial and hazardous wastes in a scientific manner.\r\nParticipate in devising scientific methods to reduce environmental pollution in its various forms.\r\nTo preserve and protect animals from various environmental impacts and extinctions.', 4),
(76, 'Zoology', 'This specialization means studying the animal world in terms of biology (anatomy, physiology, cell, genetics, ..) and behavioral and to identify its classification and its relationship to the environment and other aspects of knowledge associated with�animals.�The Animal World:\r\n�\r\nBuild a theoretical and practical background on the vast animal world, its characteristics, its relationship to the environment and its cycle.\r\nConducting scientific research related to the animal world.\r\nAssist in solving problems facing the livestock sector.\r\nContribute to environmental conservation and protection activities.\r\nAdministrative work in institutions and companies operating in any sector related to the animal world.', 4),
(77, 'Microbiology', 'This specialization means the study of microorganisms of various types, such as bacteria, viruses, fungi, parasites and others.�The Microbiologist performs the following tasks:\r\n�\r\nBuilding a theoretical and practical scientific background to detect and deal with the microbiologist.\r\nWork in hospitals and clinics in the field of diagnosis of diseases related to bacteria, viruses, fungi and parasites.\r\nConducting scientific research related to microbiology.\r\nDeveloping methods of benefiting from microorganisms in pharmaceutical industry, agriculture, industrial aspects, oil and others.\r\nEngage in academic work in universities, colleges and institutes of microbiology.', 4),
(78, 'sea ??science', 'This specialization is concerned with the study of the marine environment physically (water temperature, wave movement, tides and sea currents, analysis and utilization), its chemical properties (salinity, density, pollution, non-living marine resources), and the biological world (living organisms living in water).�This specialization is also concerned with the various maritime studies needed by the workers in the ports, transport and commercial maritime sector.', 4),
(79, 'Biology', 'This specialization means the study of organisms of various types in terms of composition and function.�The biologist:\r\n�\r\nBuilding a strong theoretical background on living organisms (animals, plants and insects), their composition, functions and their relationship to the surrounding environment.\r\nConducting research related to the world of organisms, especially in genetics, biotechnology, etc.\r\nAssist in solving problems facing the agricultural, forestry, livestock and grazing sectors.\r\nContribute to environmental conservation and protection activities.\r\nAdministrative work in institutions and companies operating in any sector related to the world of biology.', 4),
(80, 'Veterinary medicine', 'This specialization means studying the diseases that affect domestic, productive and wild animals, and ways of treatment and prevention.�The veterinarian will:\r\n�\r\nBuilding a solid scientific background on anatomy, physiology and diseases of animals.\r\nUse different diagnostic methods such as radiology to identify the disease.\r\nApplying medical, diagnostic and therapeutic knowledge to develop a treatment plan for animal diseases and injuries.\r\nSupervise the program of vaccination of animals against infectious diseases.\r\nProviding animal health advice such as nutrition, subsistence and disease prevention methods.\r\nEngage in scientific research to develop diagnostic, therapeutic and preventive methods for various diseases.', 4),
(81, 'Plant', 'This specialization means studying everything related to the plant, how it grows, what its types, how it resembles and differs, what its behaviors, when it gets sick, and how a person can benefit from it.�This is in addition to the study of microorganisms associated with the plant and ecosystem and others.�(Plant specialist)\r\n�\r\nBuild a scientific and practical background about the botanical world and its characteristics and its relationship to the environment and its cycle.\r\nUnderstand the interaction between the plant world and other organisms and the ecosystem\r\nCarry out scientific studies related to the plant world and its environments and benefit from them and develop genes that protect them from diseases and increase their productivity.\r\nEngage in administrative work in wildlife protection, orchard management, forestry, etc.�In addition to working in institutions and companies working in any sector related to the plant world\r\nAssist in solving problems facing the agricultural and forestry sector.\r\nContribute to environmental conservation and protection activities.\r\nEnact legislation that protects the plant world and the ecosystem in general.\r\nMonitor the application of environmental standards and laws and protect them\r\nBotany science education in universities, institutes and public schools', 4),
(82, 'environmental engineering', 'This specialization means studying the engineering means and techniques necessary for the preservation of the environment and the disposal of waste and reduce pollution and ensure the availability of the necessary elements of life such as water and air at a certain level of quality to maintain human health and the environment.�The Environmental Engineer shall:\r\n�\r\nSupervising the works that serve the environment and protect it from all kinds of pollution including designing water networks, sewage, drainage and designing drinking water desalination plants.\r\nPlanning and supervising the means of treatment of wastewater and ways of dealing with and treatment according to international standards and standards.\r\nSupervision of industrial and public waste treatment methods, landfill design, etc.\r\nDisseminate environmental awareness and work to develop regulations and laws that reduce environmental pollution.', 4),
(83, 'Fitness', 'This specialization means the study of public health and fitness in many colors of sports and sports entertainment activities and sports training sciences, which qualifies students to work in the field of fitness and sports training or in the field of awareness of physical health, nutrition and weight control.�The fitness trainer will:\r\n�\r\nLead, train and motivate individuals or groups to engage in sports activities and exercises, including cardiovascular and cardiovascular exercises, strengthening and stretching exercises.\r\nExplain how to do various exercises and sports competitions.\r\nMonitor trainees while performing exercises and explain proper methods to reduce physical injuries and improve physical fitness.\r\nProvide appropriate training alternatives or additional training classes for a variety of levels of fitness and skill.\r\nMonitor the development of the trainees and prepare training programs to suit individual differences.\r\nExplain and apply safety rules and controls in exercise and recreational activities and the use of exercise tools.\r\nEducate the trainees about the rules of proper nutrition, weight control and lifestyle improvement.\r\nConduct first aid when necessary.', 5),
(84, 'Monuments and Museums', 'This specialization means the study of antiquities and museums with their civilizational and cultural dimension in the life of nations.�The archaeologist and museums are interested in:\r\n�\r\nTo build a scientific background on archeology, study it, determine its age and link it to known history.\r\nIdentify and evaluate areas with potential impacts and determine how best to investigate them.�\r\nApply many skills in the analysis and conservation of monuments such as restoration, photography, surveying, and mapping in an effort to preserve this cultural heritage.\r\nFind answers to many questions about the lives of the former through research in archaeological areas.\r\nDisplaying some artifacts in museums where he is interested in coordinating, displaying and classifying these objects in order to determine their age and uses and attract the public to view them.\r\nManage the various operations related to museums in order to make the most of them.', 5),
(85, 'Managing Hajj and Umrah', 'This specialization means studying everything related to the organization and marketing of Hajj and Umrah trips, from how to develop and implement a strong and active strategic marketing plan through how to provide logistical services related to this type of religious tourism to how to provide excellent customer service to pilgrims before and during travel.�The (Hajj and Umrah Management Specialist):\r\n�\r\nProvide advice regarding Hajj and Umrah trips.\r\nResponding to inquiries related to booking Hajj and Umrah trips.\r\nArranging visas and providing transfers.\r\nMake deals with airlines and hotels.\r\nMarketing of Hajj and Umrah trips through: phone, email, and social media to increase sales.\r\nAlong with pilgrims to answer their queries and meet their needs.', 5),
(86, 'Hotel and Tourism', 'This specialization means the study of administrative, service and development work related to the tourism sector.�The Tourism Specialist:\r\n�\r\nBuilding a scientific background on the assets and rules of work in the tourism sector.\r\nManage the various aspects of the business in the tourism sector in a way that provides a distinctive service to customers in various aspects such as travel, entertainment, etc.\r\nDeveloping opportunities and services provided to clients to attract them to benefit from the tourism sector.\r\nPlanning and implementing various programs to stimulate and develop the local tourism sector and meet its challenges.', 5),
(87, 'Tourism Guiding', 'This specialization means studying the foundations of knowledge and skills necessary for the process of tourist guidance.�The tour guide will:\r\n�\r\nBuilding a strong theoretical background about the places and monuments that guide tourists and its history and the most important events�that took place in relation to our present days.\r\nExplore new places with historical background, natural beauty or special charm that attracts tourists, explorers and curious people!\r\nDevelop advanced communication, speaking, storytelling skills and dealing with different types of people and their character.', 5),
(88, 'Sports Training', 'This specialization means the study of mathematical sciences that qualify to work in the field of sports training such as sports science courses, sports psychology, fitness, training techniques, theories and methods of sports training, sports medicine and injury prevention.�The sports coach helps professional athletes and professional or school sports teams.�The fitness trainer will:\r\n�\r\nEvaluate athletic performance and provide feedback and constructive criticism supported by positive and motivating.\r\nAssess the strengths and weaknesses of athletes\' performance to identify areas where development is needed.\r\nExplain how to do various exercises and sports competitions.\r\nPrepare customized training programs.\r\nRecord the trainees\' performance records.\r\nMarketing his sports services in case he is a self-employed.\r\nEncourage athletes to acquire and develop their skills, knowledge and methods.\r\nMonitor trainers while performing exercises and explain proper methods to reduce physical injuries and improve physical fitness.\r\nProvide appropriate training alternatives or additional training classes for a variety of levels of fitness and skill.\r\nWork on legal and ethical standards all the time, especially on issues such as child safety, health and prevention requirements.\r\nWorking in collaboration with IT resources to monitor and measure athletic performance.\r\nMonitor the development of the trainees and prepare training programs to suit individual differences.\r\nExplain and apply safety rules and controls in exercise and recreational activities and the use of exercise tools.\r\nConduct first aid when necessary.', 5),
(89, 'Sports and Recreation Management', 'This specialization means the study of management and marketing skills in the field of sports and recreation; focuses on the development of knowledge and skills necessary to start any project in the field of sports and recreation and how to manage it, as well as studying sports psychology and psychology of athletes as well as ethical considerations to work in the field.�(Sports and Recreation Management Specialist):\r\n�\r\nManagement of sports centers and health clubs.\r\nRecruitment, training and supervision of employees.\r\nOrganizing sports programs and fitness activities after ensuring that they comply with health and safety laws.\r\nBudget management and statistical and financial record keeping.\r\nMarketing the project and promoting it.\r\nParticipate in training on some sports activities.\r\nRespond to inquiries and deal with complaints and emergencies.\r\nMaintain quality level of customer service.\r\nPrepare monthly or weekly administrative reports.', 5),
(90, 'Tafsir and Quranic Sciences', 'This specialization means the study of the preparation of specialists and specialists who are scientifically competent in the Holy Quran and its Sciences and interpretation according to distinctive scientific standards. And within the framework of public understanding and awareness of the importance of the book of God, which is the first source and reference in every matter to keep the nation to maintain its entity aware of its responsibilities. Since the word of God is the most honorable information was the interpretation of science and the reasons for downloading and its meanings and interpretation Ashraf science. The (Specialist of Tafsir and Quranic Sciences): To\r\n\r\nmaster the memorization of the Koran performance, drawing and control.\r\nKnow the most important topics of science of the Koran and how to use them in the interpretation of the words of God Almighty.\r\nFollow a scientific approach to the interpretation of the Book of God based on exact mechanisms and rules.\r\nStudying the reality of Quranic studies in the world and foreseeing its future.\r\nEnriching Quranic studies with distinguished scientific research.\r\nInterpretation of the meanings of the Koran.\r\nAchieve the reasons for the revelation of verses and investigate the copyist and copied.\r\nChecking the interpretations of the Quranic texts.\r\nTeaching the provisions of recitation, intonation and interpretation if the specialist took the field of educational work.', 6),
(91, 'Social Service', 'This specialization means studying the scientific ways to provide service to people in the community.�The Social Worker shall:\r\n�\r\nAssess the psychosocial needs of individuals as individuals, groups or groups.\r\nWork to provide psychological and social support in the face of emergency conditions such as illness or loss of the host or in the face of a chronic problem such as disability or other.\r\nWork to create a supportive atmosphere for the client by including them in self-help groups and work with his family and the surrounding environment.\r\nGuiding the client to take advantage of the possibilities available in the community such as charities, social security bodies and others.\r\nProvide opinion and advice in the face of various social problems�faced by�any person of any category (children, orphans, unemployment, the elderly, patients, youth, ..).\r\nEngage in the administrative and executive work of governmental, non-profit and private social institutions.', 6),
(92, 'Islamic studies', 'This specialization means providing the student with information and knowledge in different branches of Islamic studies and Islamic law.�The aim of Islamic Studies specialization is to enrich the learner with Islamic science, and qualify him to carry out various legitimate Islamic tasks such as judiciary, da\'wah, Issuing Fatwas, leading the mosques and others on Noor and Burhan and creating a sound Islamic in the light of the tolerant Islamic doctrine.\r\n�\r\nStudying the issues from a legal point of view.\r\nSpread the correct awareness of the concepts of the Islamic religion.\r\nHelping people to�abide�by Islamic teachings and apply them.\r\nProficiency in memorizing the Quran performance, drawing and control.\r\nKnow the most important topics of Islamic culture science and how to use them in the interpretation of the words of God Almighty and the Sunnah of the Holy Prophet.\r\nFollow a scientific approach to the interpretation of the Book of God based on exact mechanisms and rules.\r\nStudying the reality of Islamic studies in a world and foreseeing its future.\r\nEnriching Islamic studies with distinguished scientific research.', 6),
(93, 'the invitation', 'This specialization means studying the legitimate ways of calling to God and communicating His message.�The Advocacy Specialist will:\r\nSupervise the programs of the call to God that address a large number of segments of society such as communities, youth,\r\nWorking in the field of rhetoric and leading the mosques and awareness activities and preaching.\r\nParticipates in Hesba activities (Promotion of Virtue and Prevention of Vice).', 6),
(94, 'Islamic faith', 'This specialization means the study of the Islamic faith and related faith in God, his angels, his apostles, the heavenly books, the Day of Resurrection, the judgment and destiny, and the study of related issues.�It is also exposed to the study of the curricula of boredom, difference, and various Islamic sects as well as the study of various currents of thought in an analytical and critical way.�The Islamic Creed Specialist:\r\n�\r\nCarry out various advocacy activities to spread the correct doctrine.\r\nAddressing serious intellectual and ideological challenges to society, and discussing the wrong intellectuals with clear-cut arguments and good advice.\r\nConducting scientific research and writing books in this important field', 6),
(95, 'Jurisprudence and its origins', 'This specialization means studying the legal provisions in the field of acts of worship, transactions, personal status and assets in Islamic jurisprudence such as book, Sunnah, consensus and measurement, and highlights the issues of legitimacy policy such as the system of government, money and management system in Islam and to identify contemporary issues in the fatwa and jurisprudence and the appropriate judgment.�The jurist:\r\n�\r\nDefinition of Shari\'ah concepts and terminology.\r\nThe link between the Koran and the Sunnah in the various legal provisions\r\nDefinition of jurisprudential and fundamentalist terms.\r\nEvaluation of political and international systems in the light of legitimate policy.\r\nAddressing emerging issues in the modern era in the fields of medicine, economics, politics and others in accordance with the provisions of the Sharia and the method of extraction and interpretation of texts.\r\nTeaching, advocacy and Issuing Fatwas.\r\nResearch work specialized in jurisprudence and its origins\r\nParticipate in the development of curricula consistent with the need of students in the field of jurisprudence', 6);
INSERT INTO `subject` (`subjectID`, `name`, `discription`, `majorID`) VALUES
(96, 'Quranic readings', 'This specialization means the study of the science of Quranic readings, which is concerned with the ten readings of the Koran, and Tajweed, and how to pronounce Quranic verses correctly and elaborate, and explain the provisions of the Koran; students study this subject such as: Introduction to the science of readings, recitation, and intonation, and explain�Shatbyp�, and stop and�begin�.�The Reading Specialist will:\r\n�\r\nTeaching the science of readings to Arab and international students.\r\nTeaching how to read the Koran in various readings and aspects.\r\nExplain how to improve the Koran and master the pronunciation of his words.\r\nExplain the provisions and science of the Koran.\r\nPrepare regulations and scientific and practical programs to keep pace with the curricula used in teaching the science of reading.\r\nLeave the students of this discipline related to the bond to the Prophet Muhammad - peace be upon him - in the seven readings of the seven major and minor.\r\nRecitation of the Holy Quran in mosques, radios, religious and�social�events�,�and�various�celebrations�.\r\nCarry out various advocacy activities to spread the correct doctrine.\r\nAddressing serious intellectual and ideological challenges to society, and discussing the wrong intellectuals with clear-cut arguments and good advice.\r\nConducting scientific research and writing books in this important field', 6),
(97, 'Quran and Sunnah', 'This specialization means the study of the basics of the Islamic religion, namely the Book and the Sunnah.\r\n�\r\nScientific research inherent in modern science novel and know-how.\r\nDive into the depths of the Quran and its various discussions\r\nInterpretation of the meanings of the Koran.\r\nFacilitate access to�Quranic�and Sunnah�sciences�and spread the correct and moderate understanding of the evidence of the Qur\'an and Sunnah away from excessive\r\nGraduating qualified scientific and research competencies in the field of Quran and Sunnah\r\nPreparing qualitative researches in the sciences of the Quran and Sunnah to serve the nation\'s local and global issues\r\nProvide scientific and advocacy services in the seasons of Hajj and Umrah\r\nProviding scientific consultations in the field of Quran and Sunnah sciences.\r\nProficiency in memorizing the Quran performance, drawing and control.\r\nStudying the reality of Quranic studies in the world and foreseeing its future, and enriching Quranic studies with distinguished scientific research.\r\nTeaching the provisions of recitation, intonation and interpretation if the specialist took the field of educational work.', 6),
(98, 'Anthropology (Anthropology)', 'This specialization is concerned with the study of man, his culture and his environment and how he lives and acts.�The student analyzes human cultures and societies from different social, economic and behavioral aspects.�The�anthropologist�:\r\n�\r\nBuild a strong scientific background about the human being, its origin and behavior according to its society, culture and institutions.\r\nIdentify the characteristics of each culture of ideas and beliefs that affect public health and�social�behavior�.�\r\nParticipate in research aimed at studying man and his societies in ancient and modern to build a perception of his growth and the development of his societies.\r\nConducting surveys based on selecting a suitable research sample that accurately represents the research community.\r\nProvide advice to governmental and voluntary organizations and private institutions on the programs they wish to offer in different countries and the expected interaction of these countries and their cultures with these programs.', 6),
(99, 'Sociology', 'This specialization means studying and explaining the phenomena, relationships and interactions between members of society.�Sociologist:\r\n�\r\nBuilding a solid scientific background on human relationships, social behavior and the emergence of societies.\r\nGather information related to the study of our behavior as human beings as social beings, and to study the rules and laws that bind people as individuals, as members of associations, groups and institutions.\r\nPlanning and conducting studies on various social issues such as crime, inter-group relations, poverty, youth, aging and many others.\r\nAnalyze emerging social phenomena and identify their causes, consequences and factors affecting them.\r\nPreparing scientific reports and studies and publishing them in local and international scientific journals and conferences.\r\nProvide social counseling to those who need it.\r\nManaging centers and social centers and upgrading the services provided therein.\r\nTo teach the principles and foundations of sociology to secondary and university students.', 6),
(100, 'Islamic Law', 'This specialization means the study of the provisions of Islamic law and literature in various areas of life in order to qualify and graduate scholars, preachers, the judiciary, forensic investigators and preachers, teachers, and specialized researchers.�The World of Sharia:\r\n�\r\nBuilding a solid scientific background about the provisions of the glue.\r\nWork to take note of the sources of legislation and its provisions.\r\nClarify what is hidden from the people of the provisions of Sharia in various cases.\r\nParticipate in issuing fatwa on contemporary and emerging issues after reaching advanced stages of science.\r\nWork in the field of the judiciary and law and achieve the application of the provisions of Islamic law.\r\nWork in the field of rhetoric and the imamate of mosques and sponsoring advocacy work\r\nTo teach the concepts of Islamic law and its issues in public and higher education.', 6),
(101, 'Quranic Studies (Education)', 'This specialization means the preparation of teaching staff for the subject of the Koran.�In this specialization, the student studies in the field of (Quranic Sciences) in addition to several educational materials to enhance his abilities in teaching, classroom management, dealing with students and developing them.�The teacher of the Holy Quran:\r\n�\r\nPreparation of an integrated plan for the method of teaching the material during the year and the distribution of classes and method of assessment and method of tests and others\r\nTeaching the curriculum to students during the academic year.\r\nDesign and prepare aids to explain the material and bring it closer to the understanding of students.\r\nTo act as an educator and mentor for students in motivating and supporting them, raising the spirit of enthusiasm among them and dealing with any unacceptable behaviors issued by them.', 6),
(102, 'psychology', 'This specialization means studying the human psyche, its behavior, functions, diseases, etc.�The psychologist shall:\r\n�\r\nBuilding a theoretical and practical background on the study of the human psyche, its behavior, diseases and patterns, the changes it is exposed to during its development, and so on.\r\nThe application of psychological tests based on clients such as tests of intelligence and personality patterns and many others.\r\nProviding psychotherapy in different schools in various forms such as marital therapy, family therapy, cognitive behavioral therapy and others.\r\nCounseling in dealing with various psychological variables such as work stress, anger, anxiety, self-development and more.���\r\nIdentify the psychological needs of clients of all ages, such as children, school students and the elderly, and advise them to help them cope with the new changes in their lives and to improve their quality.\r\nConduct scientific research or participate in research projects on many psychological issues in the branches of specialization.', 6),
(103, 'Libraries and Information', 'This specialization means the study of the scientific assets of the management of public and private libraries and the best ways to provide services to clients, in addition to studying how to deal with information in terms of collection, classification, classification and retrieval.�The librarian and information specialist shall:\r\n�\r\nBuilding a solid scientific background on how to deal with books, documents, data banks, databases and more.\r\nOrganize collections of books, magazines, documents, audio and visual materials available.\r\nSupervising the work of teaching aids such as video and recording halls and others.\r\nExplain how to make use of the library, its research tools and educational aids.\r\nIdentify the books needed by the attending class of the library and work to bring them and provide them.\r\nDeveloping a system of borrowing and alerting delayed subscribers in return.\r\nCommunicate with parents and community leaders and launch collective campaigns to encourage people to read, read and develop.\r\nSupervise the work of technicians who return books to their places and many other works.�\r\nBuilding a scientific background on data banks, methods of information preservation, retrieval, organization and research methods, and the technical development used for this purpose.', 6),
(104, 'Religion basics', 'This specialization means studying the sources of Islamic religion, its foundations and general rules, with a focus on the Qur\'an and its interpretation, the hadith, the Islamic faith, the study of contemporary intellectual doctrines, and refuting the similarities and wrongs that are directed to the Islamic faith or sources of legislation.�The World of Fundamentals of Religion:\r\n�\r\nBuilding a solid scientific background on the sources of Islamic religion and its assets and general rules.\r\nTo work on a comprehensive and broad understanding of the Holy Quran and its interpretation, and to the Hadith in full support.\r\nTeach people the origins of their religion and belief to ensure a correct religious practice that satisfies God Almighty and is in line with the right faith.\r\nWork in the field of rhetoric and the imamate of mosques and sponsoring advocacy work\r\nTo teach the concepts of the origins of religion and its curricula in public and higher education.\r\nWork in the graduation of the hadith and demonstrate the validity of the weakness of the according to the curriculum adopted.\r\nWorking in the field of authorship and preparing television and radio programs and electronic media to spread the teachings and values ??of Islam.', 6),
(105, 'History', 'This specialization means studying, analyzing and understanding events, ages and developments in the past.�The historian shall:\r\n�\r\nConducting important historical researches for the society through reviewing many sources. Extensive access to many sources (books of government and personal documents, films, pictures, ..) and then publishing the results of research in books and articles, and documentaries.\r\nReview�the historical development of science (economics, sociology, political science) and present it to specialists in order to understand this development.\r\nCollect and review sources in a case (books, audios, magazines, rare documents) and submit them to the concerned authority.\r\nReview any historical material (films, series, audios, articles) and give an opinion on its conformity with the truth.\r\nDisclose facts about any mysterious historical event in the recent or distant past.', 6),
(106, 'Modern Science', 'This specialization means the study of the prophet and the body of the hadith that was assigned to the Prophet, peace be upon him, and it is of great importance since that science has been keeping the Islamic religion from distortion and alteration and is interested in the development of the methodology taken by the first scientists to prove the Hadith and purify it from the intruder.�The focus of this specialization is to open the way for researchers to achieve the meanings of the content and awareness of its contents and then reassure to cite them in all different sciences.�The Modern Science Specialist:\r\n�\r\nSearch for support and Metn modern and ways of true and sick and�sick�.\r\nMurad discussed the Prophet peace be upon him from the Hadith in terms of its conception of the concept and what is meant.\r\nKnow what is accepted and what is received from�the�narrator and the narrator.\r\nPurification of modern evidence and rid it of tainted, which is not right to rely on.\r\nTake advantage of modern science in examining all knowledge transferred.\r\nRaise the variation and make the classifications and application groups uniform.', 6),
(107, 'Interior design (decoration)', 'This specialization means studying the design and coordination of any building from the inside.�The interior design engineer or interior designer shall:\r\n�\r\nMeet the client and understand his needs and reach an agreement covering style, budget and delivery time.\r\nPlanning, design and furnishing of interior spaces for buildings, offices, accommodation and others.\r\nAttention to interior design through the choice of colors, lighting, decoration, flooring, furniture distribution, etc. in aesthetic, pleasant and effective.\r\nWork to take into account many basic factors during the design of the design, such as the environmental and cultural aspects and uses of the place and increase productivity and others.', 7),
(108, 'Stage', 'This specialization means studying the dramatic activities associated with theater, including writing, theater literature, methods of theater criticism, directing, acting, etc.�Graduates of this specialization play one or more of the following roles:\r\n�\r\nDramatic Writing\r\nProducing and directing plays of all kinds\r\nManage theaters and associated art events\r\nThe study of theatrical literature throughout the ages\r\nWork on criticizing the quality of performance of the plays presented\r\nTheater design in terms of lighting, backgrounds, space distribution, decoration and more', 7),
(109, 'Islamic Arts', 'This specialization means studying Islamic art, its history and origins, in addition to studying the arts in general to prepare the student to become a professional in the fields of arts in general and the field of Islamic art in particular.�The artist:\r\n�\r\nBuilding a theoretical background on Islamic art and its origins, history and achievements.\r\nTo preserve, highlight and promote Islamic artistic heritage.\r\nDeveloping his skills in plastic art and its applications in various fields (printing, ceramics,�painting, ..�).\r\nProviding high-quality artworks to enjoy and enhance people\'s taste and fulfill their needs in the search for and enjoyment of beauty.\r\nUse different forms of materials to produce beautiful and creative works.\r\nCreating distinctive artistic techniques and performance methods using drawings, lines, color spaces, etc.\r\nContribute to the education of the new youth the origins and skills of plastic art, and focus on the rich Islamic heritage in this area.', 7),
(110, 'Clothing and Textile', 'This specialization means the study of a wide spectrum of clothing design arts and accessories and the technical uses of textile types.�The clothing and textile specialist:\r\n�\r\nArtistic conception of creative designs for fabric, clothing and accessories\r\nWork on the manufacture of knitting fabric and clothing and accessories of�bags�and others.\r\nUse auxiliary tools and devices to weave the fabric and beautify it in various ways.�\r\nFollow-up on everything new in the world of clothing design and manufacture by attending annual fashion shows and shows, and through follow-up to publications in this area.\r\nSupervise the implementation technicians and ensure the quality of work and their commitment to the design decision.\r\nTeaching skills and principles of the garment and textile industry.\r\nBuilding a scientific background on the history of clothing and its evolution and its impact on different ages.', 7),
(111, 'Fashion design', 'This specialization means studying the processes of designing clothes and�accessories�from the ground up.�These processes include drawing, cutting, computer-based design and more.�It also addresses the commercial aspects of the industry.�The Fashion Designer�:\r\n�\r\nLay out sketches and sketches of fashion and�accessories\r\nFinal design using computer design software\r\nDo sewing clothes\r\nWork to build the general style that the designs will run in a particular season\r\nIn-depth study of the types of textiles and fabrics\r\nIdentify the requirements of customers and understand the different tastes among them\r\nFollow the latest fashion launched by international fashion houses', 7),
(112, 'Graphic Design', 'This specialization is concerned with studying the methods of designing and producing optical products that meet the design goal.�The Graphic Designer:\r\n�\r\nMeet and listen to customers to understand what they want and the goal of the design.\r\nPreparation of designs, models and formats that serve a specific goal of the client.\r\nReview the exact details of the design such as size, formula, color and suitability for the desired target.\r\nDeveloping complex designs such as a website, animation, company logo, or exterior of a new product.\r\nDevelop his skills in dealing with computer programs that help produce distinctive designs.\r\nDevelop his artistic sense in order to produce more creative and influential works.', 7),
(113, 'Fine Arts', 'The term (Fine Arts) includes a number of university disciplines that are interested in various aspects of art.�These disciplines seek to prepare professionals who use their skills and knowledge to produce creative works of art and meet the needs of�different�clients,�as�well as discuss the theoretical frameworks of art development and history.��', 7),
(114, 'Leather Industries & Supplements', 'This specialization means studying the design and production of leather goods in small enterprises.�The dermatologist will�:\r\n�\r\nBuild a solid scientific background on the types of leather raw materials and how to convert them into finished leather.\r\nUse the latest technologies to develop and experiment with different dyes.\r\nTesting of samples by specialized devices and chemicals.\r\nInvestigate consumer tastes about leather products and supplements and design new products accordingly\r\nPlanning and managing small projects related to trade in leather industries and supplements.', 7),
(115, 'Product Design', 'This specialization means the study of modern tools and approaches to product design and development; it focuses on how to identify and define consumer needs and create new ideas, and how to industrial design of the product;\r\n�\r\n(Product Design Specialist)�:\r\n�\r\nDesign various products such as: furniture, cars, home appliances, toys.\r\nInnovate new practical products and suitable for manufacturing.\r\nConsult managers and consumers about design requirements.\r\nTesting product designs using prototypes and specialized software such as computer-aided design (CAD).\r\nAddress defects that may exist in the product.\r\nResearching suitable materials and production processes.\r\nProduce diagrams and design samples.\r\nNegotiate�and�agree on contracts, budgets, and time scale.\r\nCooperation with the sales, marketing and production departments.', 7),
(116, 'Judicial Studies', 'This specialization means studying the role of the judiciary�, public�prosecution�, and all legal professions.�It also explains the litigation system with its strengths and weaknesses.�The student also learns about the history of the judicial system, its organization, language and legal arguments.�The Judicial Studies Specialist shall:\r\n�\r\nHe presided over trials and litigation procedures.\r\nSeparation of the parties to the dispute in legal matters.\r\nHear the�claims of the�parties to the conflict and question witnesses.\r\nRuling on accepting or invalidating evidence.\r\nDefine defendants\' rights.\r\nGive opinion and adjudicate on various issues.\r\nResearching legal issues and regulations.\r\nSupervise the clerks and other court staff.\r\nMeeting�with lawyers to discuss cases and discuss settlement.', 12),
(117, 'Criminal Sciences', 'This specialization means studying the crime of all kinds and applying scientific and technical knowledge in the investigation and detection.�The criminal specialist shall:\r\n�\r\nAssume the task of detecting the crime from the moment of reporting and reaching the scene of the crime until the submission of the final report on its circumstances.\r\nWork on the use of scientific progress in the process of detecting the offender and prove it.\r\nAnalyzing the collected evidence and coming up with conclusions leads to help identify the culprit\r\nDealing with physical, biological and digital evidence in order to detect crime.\r\nTake note of the legal dimensions of forensic evidence and how to deal with them and the extent of their credibility and acceptance in court.\r\nProvide expert opinion in court about the evidence gathered in a case and the reliability of the conviction.', 12),
(118, 'Military Sciences', 'This specialization means studying scientific and field methods related to combat and war management.�The army officer shall:\r\n�\r\nFull�knowledge�of all types of weapons and how to use them, and mastery of field skills such as command and tactics, reading maps and others.\r\nAdministrative work in large sectors of the army.\r\nSupervising the training of soldiers in the institutes and training bases to qualify them to work in the various sectors of the army to protect the land, supply and the homeland.\r\nDevelop and review strategic plans and emergency intervention plans in cases of military attack on the country, God forbid.', 12),
(119, 'Studies and International Affairs', 'This specialization means studying the relations between states in all their political, geographical, historical, economic, humanitarian and other aspects.�It also includes a number of disciplines dealing with a comprehensive and intensive study of a civilization, region or region such as African studies, Middle Eastern studies, Near East, etc.�(International Affairs Specialist):\r\n�\r\nBuilding a strong scientific background on human civilizations and the history of peoples and their political, social and economic present.\r\nEngage in diplomatic action aimed at protecting his country\'s rights and reputation and clarifying his positions and attitudes.\r\nAnalyze the trends of international events in various fields (political, economic, ..) and identify their impact on your country, countries around you and the world at large.\r\nConducting specialized research on issues that concern the whole world such as security, energy, religion and others.\r\nIdentify in a specialized manner the affairs of a region of the world such as the Near East or the countries of Europe in order to build strategies to deal with these countries.', 12),
(120, 'Law', 'This specialization means studying the law that governs individuals and relationships within society, determines the authority of the state, governs financial transactions, civil rights, etc.�A lawyer can specialize in a particular type of case (civil, commercial, ..), or general practice.�The lawyer shall:\r\n�\r\nAdvise on any legal problem or issue.\r\nInterpretation of the law and its merits to individuals and institutions.\r\nRepresenting the client before the various law institutions, defending his interests and accusations against him.\r\nCompile and present evidence that supports the customer\'s perspective and protects his rights.\r\nPreparing drafts of laws and regulations governing a specific issue and submitting them to the concerned authority for studies and approval.', 12),
(121, 'Political Science', 'This specialization means studying political theories and their applications and describing political systems and their impact on the economy and people.�The political world:\r\n�\r\nBuilding a theoretical background on various political issues and topics.\r\nEngaging in scientific research that addresses various political issues such as international relations, the nature of political systems and much more.\r\nConceptualize and bring evidence on current, past or future political situations after reviewing documents, articles, analyzes, statistics, etc.\r\nPresenting the results of his studies and extrapolation of history, present and future to decision-makers, politicians, economists and those responsible for public planning.\r\nContribute to the preparation of drafts of laws and policies and submitted to the government for consideration and approval.\r\nCollect, analyze and interpret information and data from general elections or survey public opinion and reach conclusions and recommendations.\r\nTeaching the concepts of political science to students in universities and institutes.', 12),
(122, 'Public Law', 'This specialization means studying the laws related to the political and sovereign issues of the state.It focuses on organizing the role of the government in its various ministries and clarifying the rights and duties of government employees.It also regulates the relationship between the state and other states, between the state and its citizens, and between different states or provinces.�The Public Law Specialist shall:\r\n�\r\nDefend ministers and administrative officials in lawsuits against them or bring lawsuits as their representatives.\r\nProvide advice to government members and senior officials during the preparation of proposed bills such as tax, environmental, anti-discrimination or employment laws.\r\nDealing with civil and criminal cases.\r\nPreparation of legislation and drafting of secondary legislation.\r\nWriting legal documents.\r\nRepresenting the State in�international�meetings�.', 12),
(123, 'private law', 'This specialization means studying the laws that define, organize, and manage relations between individuals and each other, and between institutions and companies, ie laws that determine disputes between individuals or between an individual and a company, provided that the State is not involved in this dispute.�The private law specialist shall:\r\n�\r\nRepresent clients (both private and commercial) in courts and provide�legal�advice�.\r\nSearch issues.\r\nWriting legal documents and contracts.\r\nReview contracts�and agreements�before signing them.\r\nSupervising the implementation of the�agreements�.\r\nCooperate with third parties in solving complex disputes.\r\nNegotiation with liabilities.\r\nRepresenting the client in personal status issues such as divorce and custody settlements, writing wills, buying and selling, transfer of ownership, etc.\r\nRepresenting the client on commercial issues such as: assisting in the establishment of new projects, providing�legal�advice�on complex business transactions, etc.\r\nProtecting the rights of individuals by paying compensation to those affected by any public or private institution.', 12),
(124, 'Security Sciences', 'This specialization means the study of scientific and practical ways to preserve the security of the homeland and the people and to safeguard their interests, rights and public and private safety.�This specialization deals with a number of aspects of security such as road security, passport security, political security, criminal security, civil defense, etc.�The Security Officer shall:\r\n�\r\nBuilding a broad scientific and practical background on ways to maintain security and order and to identify any sabotage�such as�security�chaos�, breaking the system and�attacking�the rights, lives and property of others.\r\nReceive and verify any complaint or report of a breach of order and security.\r\nTake regular action against any spoiler and abide by restraint and prevent it from going too far.\r\nUse all technical means to control law and order and fight crime and chaos.\r\nSupervise the work of recruits subject to the same department or unit.\r\nTraining and teaching security science principles for officers, recruits and volunteers.', 12),
(125, 'Maths', '���� This specialization means studying the concepts of mathematics with its various branches.�Mathematics is the basis for the majority of science from engineering to computer to finance to many things that would not have been possible without mathematics such as banking, heavy industry, e-mail and many others.�(Athlete):\r\n�\r\nUsing mathematical methods to analyze any kind of problems and understand their origins and ways to solve them in the fields of business, engineering, science and others\r\nWork on the planning of any project according to the study of data and statistics collected.\r\nAssisting in conducting feasibility studies for various economic projects.\r\nWork in the education sector to teach students basic mathematical concepts.', 8),
(126, 'astronomy', 'This specialization means studying and analyzing astronomical phenomena and celestial bodies in order to increase our understanding of them and use this information to solve existing problems.�The astronomer:\r\n�\r\nAnalysis of cosmic phenomena using ground observation and telescopes released into the sky.\r\nMeasure the radiation emitted by cosmic objects such as X-rays, gamma, infrared and others.\r\nPreparing scientific reports and researches on the results of analyzing and studying these phenomena and publishing them in scientific journals and international conferences.\r\nContribute to the development of tools, hardware and software that assist in astronomical study.\r\nTeaching the principles and basics of astronomy.', 8),
(127, 'Medical Physics', 'This specialization means the study of the practical applications of physics in the medical field through the study of various medical devices as in (but not limited to) in the fields of radiation therapy (Radiotherapy(I.e., cancer treatment with ionizing radiation), medical imaging using x-rays, ultrasound, magnetic resonance and other devices, diagnostic radiography (i.e., radioisotopes) and devices used in the diagnosis of heart disease)ECG, ECHO, And so on.�Medical Physicist:\r\n�\r\nHelp the doctor develop a plan for the treatment of tumors by radioactive substances (RadiotherapyIt performs accurate calculations to ensure that radiation reaches the cancerous tumor and keeps it away from healthy tissues without tumors.\r\nWork on the use of radioisotopes in diagnostic imaging and determine how they are transported in the patient\'s organs according to the metabolic rates of each individual patient.\r\nEnsure the availability of diagnostic and radiotherapy devices to ensure their efficiency and error-free.\r\nPreserving radiation sources, controlling their devices and designing what is necessary to protect workers.\r\nWork in the research sector to develop advanced techniques in imaging and radiotherapy.\r\nTeaching medical physics curricula to medical, science and other students.', 8),
(128, 'physics', 'This specialization means studying the physical world around us and understanding the laws that govern it.�Physics is the basic science of many sciences.�Every technical advance is preceded by physical progress.�The physicist:\r\n�\r\nBuilding a broad background on the laws governing the material, its composition, properties, transformation and its applications in the industrial and technical fields.\r\nWork on the application of physical theories in solving problems in the fields of industry, energy, engineering and others.\r\nEngaging in scientific research dealing with the applications of physics in the fields of advanced technology such as laser, nanotechnology, and others.\r\nParticipate in teams that design, develop and test medical, industrial and electronic equipment.\r\nWork in the medical field in the installation and maintenance of medical devices and equipment (in the absence of medical physicist).\r\nObserve, study and predict natural astronomical and cosmological phenomena.\r\nWork in the education sector to teach students basic physical concepts.', 8),
(129, 'Applied Chemistry', 'This specialization means studying the application of chemical rules and theories to modern industries and arts.It also deals with researching and understanding the basic chemical properties of materials and raw materials and developing new materials and materials with different chemical properties and functions.This specialization is useful in the manufacture of clean materials using energy-saving methods and does not adversely affect the environment. Useful in the development of medicines and medical techniques for the prevention or treatment of incurable diseases.�The (Applied Chemistry Specialist):\r\n�\r\nDetermine the nature and chemical composition of materials.\r\nAnalyze samples using a range of techniques, such as spectroscopy.\r\nRely on a set of software and techniques in the work of research and analysis.\r\nDevelop new analytical techniques.\r\nWriting papers, reports, reviews, and abstracts.\r\nExplain and analyze data and present results.\r\nAuthenticate the product license.\r\nVerify the accuracy of data recording in accordance with the guidelines.\r\nEnsure compliance with health and safety standards.\r\nCollaborate with scientific and consumer staff as well.', 8),
(130, 'Biochemistry', 'This specialization means the study of chemical processes that take place within the organisms of organisms, most importantly human.�(Biochemist):\r\n�\r\nTo develop a theoretical and practical background on the complex chemical processes that occur within living organisms, and the ability to understand any change that a drug, food, chemical, hormones, etc. may have on biological processes at the cell and body level.\r\nEmploying an understanding of these processes in many areas such as pharmaceuticals, pharmaceuticals, etc.\r\nDeveloping medical tests and analyzes that help to perform better in detecting diseases and disorders affecting the body.\r\nWriting reports and researches containing conclusions and recommendations resulting from his work and research.', 8),
(131, 'Industrial chemistry', 'This specialization means studying the practical applications of chemistry in different factories.�The industrial chemist:\r\n�\r\nBuild a strong theoretical background about chemical reactions that are used in factories to produce chemicals important to people.\r\nPreparation of chemical solutions in manufacturing and balancing between us in the light of specific equations or the results of laboratory experiments.\r\nSupervise manufacturing processes that use chemical reactions.\r\nWork to improve and develop production by improving chemical manufacturing methods during the production stages.\r\nPerform chemical processes for a substance to acquire a new characteristic or property.\r\nEnsure product quality and quality control.\r\nWork on the disposal of chemical waste and reduce its effects on pollution.\r\nAttention to occupational safety and health procedures for workers.', 8),
(132, 'Chemistry', 'This specialization means the study of chemicals, laws, interactions and applications.�The chemist:\r\n�\r\nConducting analyzes of chemical materials and compounds in different laboratories and factories to identify their components, properties, composition, interactions and uses.\r\nTest and develop various chemical products and measure their quality and improve.\r\nWork on developing tools and devices used in the analysis and catalyzing chemical reactions.\r\nContribute with engineers and specialists in other sciences to build joint projects such as the development of a specific product or otherwise.\r\nEngage in scientific research that is interested in studying chemicals and finding new applications.\r\nTeaching chemical concepts to students in universities and institutes.', 8),
(133, 'Operations Research', 'This specialization means studying the scientific methods of data analysis and evaluating the course of operations in any major organization in order to improve performance and make big decisions.�The Operations Research Analyst will:\r\n�\r\nThe answer to the question: Is the methods of production or work method used to achieve the best productivity at the lowest cost.\r\nMathematical analysis of the methods and techniques used in the production or development of any large project.\r\nContribute to the planning and distribution of work and scheduling projects and business.\r\nCooperate with the rest of the organization to ensure the correctness of a decision or solution to a problem to be followed by any organization by studying it using mathematical analysis methods.\r\nAnalyze data and information received from management in order to analyze any disruption in production or processes.\r\nStudy other options for the method of work and determine their effectiveness.\r\nPrepare reports that explain to the management the reasons for any problem in the work system and the proposed solutions.', 8),
(134, 'Communications Engineering', 'This specialization means the study of scientific methods to transmit information by electrical impulses or electromagnetic waves from the transmitter to one or several receivers.�The Communications Engineer shall:\r\n�\r\nSupervising the tools, equipment and communication devices, including ensuring that they comply with the required technical specifications.\r\nInstallation, operation, maintenance and repair of used telecommunication equipment in accordance with the relevant technical instructions.\r\nParticipating in the preparation of regular and emergency operation and maintenance programs for the used communication equipment.\r\nStudy the offers submitted by offices and companies related to the maintenance and modernization of telecommunications equipment.\r\nAccess to and benefit from the latest technological developments in the field of telecommunication engineering.', 8),
(135, 'Mechatronics Engineering', 'This specialization combines mechanical and electronic engineering with computer applications with the aim of designing and manufacturing flexible production machines and systems to ensure higher productivity and on demand.�This specialization means the basis of analysis and design of mechanical devices based on computer and electronic circuits, as well as the maintenance of advanced engineering machines and automatic production lines.�The Mechatronics Engineer:\r\n�\r\nDesign, use and implementation of advanced electronic control circuits, which are used in the automation of mechanical units to control them to suit the requirements of the industrial process in terms of accuracy and efficiency.\r\nSupervision and follow-up control systems of industrial processes through the governors programmed through special languages.\r\nDesign, use and maintenance of various types of motors that rely on electronic circuits in the design of their mechanical systems.', 8),
(136, 'Petrol Engineering', 'This specialization means studying the methods of research and extraction of oil and natural gas around the world.�The Oil Engineer shall:\r\n�\r\nAnalysis of geological data in order to identify oil and natural gas reservoirs��\r\nEvaluation of oil and natural gas wells in terms of production cost, production capacity and product quality.\r\nDetermine the optimal method for extracting oil and natural gas without waste\r\nSupervising the steps of oil and gas extraction from wells.\r\nHelp and support the technical staff in overcoming the problems they face during the operation.\r\nSupervising the transport and storage of petroleum and natural gas by known scientific methods.\r\nAttention to the safety of the working group and achieve quality and safety standards in dealing with machines and the selection of methods used in the completion of work.', 8),
(137, 'Radiation Protection Engineering', 'This specialization means the study of scientific methods to prevent radiation and reduce its risks while using radioactive elements in industry, medicine and others.�The Radiological Protection Engineer shall:\r\n�\r\nObserve the radiation level in plants that use nuclear energy in any form.\r\nApply safety and radiation protection rules and monitor their application.\r\nAnalyze different industrial samples to estimate their radiation and ensure compliance with standards.\r\nPrepare reports on radiation protection systems and submit them to the organizers of this work.\r\nEngage in scientific research that develops radiation protection mechanisms and systems.', 8),
(138, 'Thermal engineering and desalination technology', 'This specialization means the study of scientific methods for the design, manufacture and maintenance of thermal systems.�Thermal systems are involved in refrigeration and air conditioning engineering, water desalination and power generation.�This specialization is part of the specialty of Mechanical Engineering.�The Engineer of Thermal Systems and Desalination here:\r\n�\r\nApply scientific knowledge and engineering applications in the design, manufacture and maintenance of thermal systems and desalination plants.\r\nGathering daily information about the station and keeping it according to a file system and using the computer.\r\nAnalyze information and monitor the efficiency of desalination plants and units\r\nCarry out the performance tests of the units of the station or system and make suggestions for necessary corrective actions.\r\nSave records of various tests\r\nCollect information on efficiency, prepare daily production reports and prepare monthly forecasts on fuel consumption, water production, energy and export\r\nDesigning and maintaining air conditioning and refrigeration systems.\r\nMaintain the safety of workers and observe the occupational safety regulations', 8),
(139, 'the industrial engineering', 'This specialization means studying the administrative and engineering methods necessary for the management and operation of factories.�It is clear that (industrial engineer) blends management with engineering so as to design and develop systems and methods of work and management of people in order to get the best results at the lowest cost.�The Industrial Engineer shall:\r\n�\r\nDesign and development of industrial systems in production and services to give high efficiency and to reduce the volume of labor required.\r\nPlanning for project site selection, production planning, maintenance, warehouse management, etc.\r\nSupervising the industrial work and determining its details such as controlling product quality and controlling industrial processes and technology applications in the industry.\r\nDeveloping industrial methods and organizing work teams in order to achieve better production at lower cost.\r\nCarry out administrative work to conduct the work as the number of workers required to be produced in order to produce the commodity and other detailed issues.', 8),
(140, 'Mining Engineering (Metals)', 'This specialization means the study of scientific methods to detect, extract, extract and purify minerals.�The Mining Engineer shall:\r\n�\r\nBuilding a scientific and practical background on the presence of minerals and methods of detection and extraction.\r\nUse advanced scientific methods and methods to determine the right place to conduct exploration on minerals (such as gold, coal and others).\r\nOversee and guide these processes and solve the challenges that stand in their way.\r\nEvaluate the offers submitted by the contracting companies in the project to determine the best and best company to do the work.\r\nWriting reports that explain the steps of work, expected costs, expected problems, etc. and raising it to higher administrative levels.\r\nEnsure the safety of workers from work hazards.', 8),
(141, 'Applied mathematics', 'This specialization means studying the application of mathematics to explain and explain problems that arise in various fields such as biological and physical sciences, social sciences, engineering, and others.�It also seeks to develop methods to anticipate the occurrence of these problems and to devise new methods to meet any future challenges; solving problems in various fields requires extensive knowledge of various branches of mathematics such as: mathematical analysis and differential equations.�The (Applied Mathematics Specialist):\r\n�\r\nApplying mathematical laws and theories to solve practical problems in various fields such as project management, engineering, science and so on.\r\nCollaborate with other professionals to solve these problems, for example: May cooperate with chemical engineers to analyze the effectiveness of new drugs.\r\nDevelopment of mathematical and statistical models for data analysis.\r\nExploit data analysis to support and develop business decisions.\r\nEmploy mathematical formulas and models to prove or refute theories.\r\nIncrease knowledge in mathematical fields such as: algebra and geometry through the development of new mathematical laws and theories.', 8),
(142, 'Financial and Actuarial Mathematics', 'This specialization means studying the application of mathematical models in the analysis of financial crises, and focuses on methods of using and using statistics and data and how to predict the economic situation as well.�(Financial Mathematics and Actuaries):\r\n�\r\nUsing statistical techniques and computational skills in estimating potential crises and their financial implications.\r\nStatistical data analysis.\r\nWriting reports and preparing presentations.\r\nInform managers, customers and stakeholders of its findings.\r\nEnsure that the premium rates are accurately determined and that there is adequate funding to meet the various requirements.', 8),
(143, 'Earth Sciences (Geology)', 'This specialization means studying the subsoil in terms of its structures and components and the chemical, biological and physical processes that occur in it, in addition to studying the history of the earth through the ages.�The geologist:\r\n�\r\nAnalyze geological, geochemical and geophysical data from different sources and use specialized computer programs for this purpose.\r\nParticipate in the determination of oil, gas and water reservoirs in the ground.\r\nConducting field studies by collecting samples and surveys for research and exploration.\r\nPrepare and review environmental, technical and historical reports on where the study is being conducted.\r\nEngage in the education sector to teach Earth science in secondary schools.', 8),
(144, 'Mechanical engineering', 'This specialization means studying the design, operation, development and maintenance of machines around us.�The mechanical engineer is involved in all stages of production, from research and development, to design and manufacturing, to testing, installation and commissioning.�The Mechanical Engineer shall:\r\n�\r\nDesign, operation and maintenance of engines and machinery in many factories and industrial and productive sectors.\r\nIdentify the parts of machines and machines, and study methods of design, development and maintenance of these parts by the�usual�traditional methods�as well as using computers.\r\nBuild a solid scientific background on the different mechanics of motion and the laws affecting them, dynamics (ie, the relationship between forces and motion) and thermodynamics (ie, the relationship between energy, power and motion)\r\nQuality control, systems development and more.\r\nFollow up and supervise all different stages of manufacturing.\r\nIdentify the mechanical properties of materials (hardening - annealing - return - coordination ....).', 8),
(145, 'Electronic Engineering', 'This specialization means the study of scientific methods for the design of electronic circuits and their basic components of conductors, insulators, semiconductors and capacitors, and take advantage of the many applications of these circuits in the manufacture and maintenance of various electronic devices.�This science has revolutionized the transistor and then the digital technology and other technologies that we rely on in all aspects of our lives, such as computers, mobile phones, military and medical devices and even toys.�The Electronic Engineer shall:\r\n�\r\nPlanning and supervising the design, manufacture, establishment, testing and maintenance of various electronic devices (medical, industrial, military, etc.).\r\nDeveloping electronic devices and improving their performance and quality.\r\nProvide technical support to the beneficiary in dealing with these devices.\r\nAnalyze customer needs, order and cost in order to arrive at an acceptable and applicable business plan.\r\nSee the latest technological developments in the field of electronic engineering and benefit from them.', 8),
(146, 'Biomedical Engineering', 'This specialization means studying the design, development and maintenance of devices and equipment used for medical purposes.�The Biomedical Engineer will:\r\n�\r\nForming a theoretical and practical background about the engineering principles and their applications in all medical devices, equipment and tools of all kinds.�In addition to the basic medical sciences such as anatomy, physiology (physiology), biochemistry, pathology and so on.�\r\nWorking in the fields of manufacturing, developing, programming and repairing devices.\r\nEnsure the quality and readiness of the machines, devices and medical equipment in the hospital.\r\nSupervising the design and development of devices that assist the disabled and those with special needs.\r\nSearch for materials used in various medical products such as artificial organs and others.\r\nEngage in research work to develop technological applications in the medical field.', 8);
INSERT INTO `subject` (`subjectID`, `name`, `discription`, `majorID`) VALUES
(147, 'electrical engineering', 'This specialization means the study of scientific methods for the production, transmission and distribution of electrical energy, in addition to dealing with all the devices used in this, such as generators, transformers, etc.�This specialization is also concerned with engine engineering that converts electrical energy by electrical machines into mechanical energy.�The Electrical Engineer shall:\r\n�\r\nOversee the process of energy production and transmission and ensure its access to the general public.\r\nDesigning, developing and analyzing the performance of generators and electric motors of all types, sizes and capacities.\r\nPlanning and supervising the design, installation and testing of electrical appliances in various fields.\r\nDevelop electrical devices to improve their performance and improve their quality.\r\nSupervise the maintenance of all devices that use electricity in their operation.�\r\nSee the latest technological developments in the field of electrical engineering and benefit from them.', 8),
(148, 'Earth Physics (Geophysics)', 'This specialization means studying the Earth\'s interior and atmosphere by studying its physical properties (gravity, magnetic field, ..).�The (physicist) will:\r\n�\r\nUse equipment to collect information about the physical components of the area under study.\r\nWork to determine the presence of groundwater and follow the movement of oil and migration and natural gas sources, and so on.\r\nPreparation of geological maps and cross sections of the layers under study.\r\nWorking on the study of the oceans and monitoring of earthquakes, climate change and others.', 8),
(149, 'Nuclear Engineering', 'This specialization means the study of theoretical origins and scientific methods of nuclear energy in order to develop the ability to utilize nuclear energy in manufacturing and energy and dealing with medical materials and applications.�This is in addition to control and then disposal of hazardous waste.�The nuclear engineer shall:\r\n�\r\nStudy, installation, operation and maintenance of nuclear reactors.\r\nConducting scientific studies on acceptable methods of using nuclear energy, disposing of its wastes, and increasing its safety.\r\nRecognize the environmental, social and ethical dimensions of dealing with nuclear energy\r\nWork to develop all necessary precautions for safety and radiation protection and prevent possible accidents.\r\nSupervising the treatment and disposal of radioactive waste.', 8),
(150, 'Engineering Management', 'This specialization means the application of engineering concepts in the world of management.�Notice how engineering, i.e. engineering skills in problem solving using technology, combines the organization, planning and operations management that we learn from management.�This specialization is evident in many areas such as production, product development, construction, manufacturing, engineering design, etc.�The Engineering Manager:\r\n�\r\nEnsure product quality and compliance with standards.\r\nDevelop detailed plans to reach the desired goal and ensure the integration of technical processes\r\nSupervise the manufacturing processes and make sure they are going\r\nFollow up, review and approve the design of a product and any change in it.\r\nAnalyze the required raw materials, necessary technical and market requirements to ensure the success of the project.', 8),
(151, 'Statistics', 'This specialization means studying methods of data collection, analysis, and reaching significant results.�(Statistical):\r\n�\r\nOrganize the process of data collection, organization and analysis through the use of reliable mathematical and statistical methods.\r\nCarry out statistical surveys to serve different purposes.\r\nThe use of computer programs that facilitate many statistical operations.\r\nReaching results helps solve a problem, evaluate a project or make a decision.\r\nProviding statistical support to workers in different research fields (medical, pharmaceutical, engineering, educational, etc.).\r\nWorking in the training sector to teach university students, graduate students and researchers the basics of statistics.', 8),
(152, 'Chemical Engineering', 'This specialization means the study of the design and development of industrial or manufacturing chemical processes, and the design and construction of plants where the main process is chemical reactions.�These industrial processes are concerned with the conversion of raw materials into useful products.�The chemical engineer takes the chemist\'s ideas and turns them into reality that is commensurate with the use of people.�The Chemical Engineer shall:\r\n�\r\nDesign and supervise the production, transportation and storage processes in the chemical industries.\r\nDetermine the industrial path to which the material will be subjected until it is transformed from a raw material to a value and the devices used in it.\r\nDetermine the size and weights of the chemicals required to manufacture the chemical product.\r\nIdentify some important chemical and physical factors during the manufacturing process such as temperature, pressure, etc.\r\nCalculate the economic feasibility of all processes involved in production.\r\nConduct research to improve the performance of the manufacturing process and its outputs.\r\nPrepare reports showing production costs and stages and submit it to the Department.\r\nEnsure the safety of workers in different production lines.', 8),
(153, '�Information Systems', 'This specialization means the analysis and development of information systems to serve the objectives of the company and meet the needs of customers.�This work encompasses a wide range of areas such as databases, designing systems used to perform a specific task, evaluating the performance of existing systems and developing their performance.�The (Information Systems Specialist):\r\n�\r\nDesign and development of computer systems used by companies to serve the daily tasks of work and to serve the needs of customers\r\nProvide solutions related to information systems for the problems faced by companies\r\nMonitor the performance of existing information systems and analyze their quality and efficiency\r\nMake software modifications that address any problem faced by the systems used in the company\r\nBuild, develop and manage database systems in the organization that collect, store and transform data into information.\r\nPrepare the necessary documents to clarify the steps of testing and evaluation of new systems\r\nProvide training to other employees on how to deal with the information systems applied in the company and how to benefit from them', 9),
(154, 'Management information systems', 'This specialization means the analysis and development of computer applications to serve the various departments in commercial enterprises.�(MIS Specialist) has a good background on the concepts and skills of computer science, in addition to being able to concepts of the field of management and commercial applications, accounting and others.�Management Information Systems (MIS) is the link between computer science and management. It supervises the use of computers in all financial, commercial and administrative operations required by the company or facility.�The MIS Specialist will:\r\n�\r\nDetermining the requirements of the organization of systems and information technology.\r\nDesign and development of computer applications and techniques in the field of management, finance, accounting and others.\r\nDesign, analysis, planning and development of information systems within the organization, which makes it easier for administrators to take advantage of the information provided by the system in planning and decision-making about the administrative processes of accounting, marketing and human resources\r\nManagement of enterprise database systems.\r\nProvide support to all sections of the company in order to ensure that they benefit from the information system in the company as much as possible\r\nIssuing reports from the system which shows and summarizes the most important data that the manager should know in order to improve the work�', 9),
(155, 'computer engineering', 'This specialty means the design, construction and operation of the computer from the inside (hardware)�Hardware) In addition to the devices attached to it, and all devices that use the computer as its basis.�(Computer Engineer):\r\n�\r\nDesigning the inside of the computer and setting the specifications for the computers and peripheral devices attached to it, and supervising their installation, operation and testing.\r\nDesign, construction and maintenance of networks.\r\nProvide technical support for computers in companies and factories.\r\nDesign of computer-related electronic devices of various types and uses.\r\nDesigning microprocessor systems and developing automated systems for automatic control in factories and factories.\r\nDesign, operation and maintenance of database systems.', 9),
(156, 'computer networks', 'This specialization means studying how to design, operate, analyze, and evaluate network systems that connect computers to each other.�This specialization is concerned with hardware and software related to networks that connect computers to ensure smooth and secure workflow.�(Computer Networks Specialist):\r\n�\r\nNetwork management and support.\r\nConnect different computers to create a fast, efficient network, and networks vary by size.LANs(Which may connect a group of computers in a small office, and there are WANs)WANs) That connects hundreds of computers in multiple locations.\r\nMaintenance of connections and solving any problem that may occur in the computer network.\r\nConsult with clients to determine the requirements of network systems and proposed design solutions.\r\nMaintenance of computers and software and update the old ones.\r\nWorking side by side with IT support staff.\r\nDetermine the costs of the devices and their installation.', 9),
(157, 'computer science', 'This specialization means studying everything related to computer applications and uses.�With the advent of computers in all walks of life, this science has expanded dramatically.�Upon graduation, the student should be able to:\r\n�\r\nAnalyze, design, implement and develop high quality software solutions to the challenges and problems of everyday life that guide us.\r\nCreate new applications for computers to contribute to the development of our lives and our business.�\r\nParticipate in the design and development of computer programs and systems.\r\nTesting and testing of computer programs and systems.\r\nStudy and develop the effectiveness of computer systemssystem performance)\r\nDevelopment of artificial intelligence systems, parallel and distributed processing and embedded systems\r\nFollow up the work of operating systems, networks and database systems.\r\nSecuring and protecting information and its systems.', 9),
(158, 'Computer (Education)', 'This specialization means the preparation of teaching staff for the subject of computer.�In this specialization, the student is studying specialized in the field of (computer) in addition to several educational materials to enhance his abilities in teaching, classroom management, dealing with students and developing them.�The (Computer Teacher):\r\n�\r\nPreparation of an integrated plan for the method of teaching the material during the year and the distribution of classes and method of assessment and method of tests and others\r\nTeaching the curriculum (computer) to students during the academic year.\r\nSupervise the students while they are in the computer lab and make sure they benefit from them.\r\nDesign and prepare aids to explain the material and bring it closer to the understanding of students.\r\nTo act as an educator and mentor for students in motivating and supporting them, raising the spirit of enthusiasm among them and dealing with any unacceptable behaviors issued by them.', 9),
(159, 'information technology', 'This specialization means a comprehensive study of various aspects of computer technology, in addition to the study of some administrative aspects.�The (IT Specialist):\r\nAssisting individuals and institutions to develop their programs by providing adequate information on technical solutions and how to implement them in the best way.\r\nAssume the implementation and follow-up of ready-made programs purchased by companies to facilitate their work.\r\nEffective management of IT resources for individuals and institutions.\r\nContinuous follow-up of developments in the field of information technology and the application of these developments (updates) to individuals and institutions concerned\r\nProvide technical support to members of an organization to ensure the continuity of their work without disruption.�Umm Al - Qura University - Qunfudah', 9),
(160, 'Information Studies', 'This specialization means studying the management of the acquisition, provision and sharing of information within an institution or sector of an institution in order to allow the free circulation of such information.�This specialization gives students a deep understanding of information and knowledge management in a contemporary context.�The (Information Studies Specialist):\r\n�\r\nEvaluating, organizing, indexing, classifying, managing and distributing information in a variety of forms.\r\nCreate databases and participate in the design of websites and social networking sites.\r\nEnsure that the information is up to date and that it keeps pace with the high speed of information circulation.\r\nEnsure compliance with information protection and transparency laws.\r\nAssist in the establishment of internal networks for use by the teams in the organization.\r\nImplement the requirements of freedom of information.\r\nDocumenting statistical and financial records in the field of work in commercial companies.\r\nWriting reports, editing publications and content of websites.\r\nSupervising the development of new information systems.\r\nAwareness of the user through leaflets, websites and tours in libraries or information rooms.\r\nUsing specialized applications of computer programs.\r\nOrganize information circulation and digital reading circles.\r\nCreate, update and manage electronic and printed information sources.\r\nAssist researchers in conducting their research using databases, information sources and the Internet.', 9),
(161, 'Information Security', 'This specialization is intended to prepare professionals in dealing with information security and protecting computers and networks from cyberattacks.�The (Information Security Specialist):\r\n�\r\nAssess the security needs of computer systems and networks.\r\nBuild and propose solutions to protect against cyberattacks\r\nEncrypt data during transfer and erect firewalls to hide confidential information\r\nDevelop and review systems and procedures for the protection of information and data, including instructions in programming, systems analysis, networks, encryption, etc.\r\nAssess potential risks, review violations of unintended information security measures, and discuss procedures with violators to ensure that such violations do not recur\r\nDevelop contingency plans if they occur', 9),
(162, 'Computer Software Engineering', 'This specialization means building and developing large software projects such as computer programs in hospitals, factories, airplanes and others.�The need for this specialization has arisen because of the emergence of expensive and highly important programs, and the need for continuous development and ensure that their performance and safety from errors.�The Software Engineer:\r\n�\r\nCommunicate with customers to understand their needs and advise you to better use the system.\r\nAnalyze the data received to build the business plan in a new system or introduce changes in an existing system.\r\nWorking in a team to design and build software systems with high efficiency and ability to meet the complex needs of customers, and follow-up maintenance when needed.\r\nDeveloping these systems in a way that suits the evolving needs of the client.\r\nFollow up on system quality issues�Quality Assurance�And its efficiency and cost issues, and reliability�Reliability�Security and so on.', 9),
(163, 'Health�Informatics', '�\r\n�\r\n��������������This specialization means ways to provide the data, information and knowledge needed by the medical, administrative and financial management in the healthcare sector in order to ensure a more efficient and secure service.�Health informatics uses a variety of means to achieve its goal, including information and communications technology, medical manuals and standardized medical languages.�The Health Informatics Specialist will:\r\n�\r\nBuilding a theoretical and practical background on technical systems, communication systems, networks and databases used in all areas of health care (medicine, dentistry, files, pharmacy, nursing, ..)\r\nDesign, review, manage and evaluate health information systems used or required to help health practitioners provide better service\r\nAnalyze customer requirements and needs within the organization\r\nIdentify potential problems and opportunities for improvement\r\nUnderstanding the mechanism of work in�medical�departments�workflow�And how to redraw the work flow better.\r\nFollow up on all new in the field of technology and search for new applications in the field of health and health care', 10),
(164, 'Human Medicine', 'This specialization means an in-depth study of the structure and functions of the human body and the identification of diseases that may affect every organ of the body and the forms of possible injuries and ways of treatment and prevention and rehabilitation of the patient to return to a healthy life and wellness.�Your doctor will:\r\n�\r\nBuilding an integrated scientific background on the human body and the nature of diseases that afflict it.\r\nListen to the patient\'s complaint and identify the most important reasons that may cause this complaint.\r\nCarry out an integrated clinical examination to gain access to key information in the diagnosis of the disease.\r\nCarry out laboratory tests that help detect any changes in blood, body fluids or tissues.\r\nAccess to the diagnosis of the cause and identify the therapeutic method that helps to overcome.\r\nConducting clinical, surgical, radiological and rehabilitation therapeutic interventions based on scientific evidence in order to treat or mitigate the disease and its effects.\r\n� Conduct scientific research that increases our understanding of human health and diseases that may affect it and ways of treatment.', 10),
(165, 'dentist', 'This specialization means the study of anatomy, physiology and diseases of the mouth and teeth and methods of treatment.�The dentist will:\r\n�\r\nInspect and diagnose diseases, deformities and injuries to the mouth and teeth.\r\nBuild a treatment plan for diseases of the mouth and teeth.\r\nAdvise in the prevention of these diseases.\r\nEngage in scientific research on oral diseases and techniques and tools used in medical work.\r\nSupervise the course of work at the center or clinic, and coordinate work among team members.', 10),
(166, 'the pharmacy', 'This specialization means the study of everything related to the drug and its impact on the body and the vital processes that are exposed to it since entering the body to get him out of it.�The pharmacist will:\r\n�\r\nBuild a theoretical and practical base on drugs, their compounds, their interactions and their effects on the body.\r\nHe dispenses the correct medication to the patient according to the prescriptions of the doctor.\r\nProvide the patient with integrated and scientific information on the method of taking the treatment and the expected side effects and what should be done about them and other background information.\r\nWork on the composition of medicines according to scientific equations and known components and in the allowed conditions.\r\nAnswer doctors\' questions about medications, their side effects, signs of poisoning, etc. through the Information Center at major hospitals.����\r\nFollowing up some administrative work such as making sure the availability of the medicine or the like and requesting it from the companies, drawing up lists of essential medicines, supervising the storage and transport of the drug and so on.\r\nWorking in pharmaceutical companies that market new drugs and educate doctors about them.', 10),
(167, 'Clinical Pharmacy (Pharmacist)', 'This specialization means an in-depth study of drugs at the clinical level, ie, the appropriateness of the drug to the patient and its side effects and interactions with other drugs.�The need for this specialization arose because of the amazing advances in medicines and their complex uses in various diseases, especially chronic and serious diseases such as cancer and others.�(Pharmacist):\r\n�\r\nBuilding a deep scientific background on diseases and their types on the one hand and about drugs and their effects and interactions on the other.', 10),
(168, 'Nursing', 'This specialization means the study of basic medical and clinical sciences that qualify the student to conduct a medical assessment and follow-up the health of patients and do or assist in many different medical procedures.�The nurse will:\r\n�\r\nBuilding a solid scientific base in various clinical specialties (clinical)\r\nMonitor the patient\'s condition continuously and record vital signs and all information and observations in the patient\'s file continuously.\r\nComply with the doctor\'s instructions and cooperate with members of the medical team to implement the agreed treatment plan.\r\nTaking care of important aspects of patient care such as food, movement, personal hygiene, etc.\r\nPrepare the patient for clinical examination or any medical work such as radiology and surgery.\r\nSupervise and train less experienced or less skilled nurses.', 10),
(169, 'Radiology', 'This specialization means the study of scientific and practical ways to take radiological images necessary for the diagnosis of medical diseases, (radiologist):\r\n�\r\nExplain the nature and steps of the patient\'s radiation procedure, monitor and make sure he is satisfied.\r\nConducting different radiographs in the radiology department, in the emergency room and operations, or in the patient\'s location in his bed using different imaging techniques such as X-rays, ultrasound, magnetic resonance imaging, etc.\r\nEnsure safety of the patient during radiation exposure.\r\nDevelop a system within the radiology room to ensure the flow of work and service to the largest number of patients.\r\nTraining radiographers to do their work.\r\nFollow up the performance of medical imaging equipment and inform the responsible in case of any technical defect.', 10),
(170, 'Occupational Therapy', 'This specialization means the study of scientific methods to improve the quality of life of the patient and reach independence in the management of various life affairs.�The Functional Wizard:\r\n�\r\nWork on assessing the�status of the�patient to see his abilities and difficulties�faced�.\r\nRehabilitation of patients with disabilities and those with different disabilities in order to develop their life skills (motor, sensory, independence in daily activities, thinking skills, analysis and logical reasoning in proportion to their generation, skills to use tools associated with his daily life inside the home, skills to use various devices associated with rehabilitation Professionally like computer, phone, credit card, etc.) so they live without the need of help as much as possible.\r\nRehabilitation of patients with mental disabilities (mental retardation, autism and mental disability such as schizophrenia) in order to improve their abilities and skills to the maximum extent possible.\r\nEvaluate the patient\'s environment and propose some adjustments that make the patient\'s life easier and safe.', 10),
(171, 'natural therapy', 'This specialization means the study of everything related to motor difficulties that affect a person due to injury, aging or disease.�Physiotherapists work on the treatment and rehabilitation of patients through the use of physical and motor methods based on scientific studies.�The specialist also works to prevent any permanent complications after an injury, relieve pain and increase the speed of recovery from some injuries.�As a physiotherapist significant role in�Alttev�and awareness for the�prevention of various injuries.', 10),
(172, 'Anesthesia technique', 'This specialty means the preparation of qualified specialists who assist surgeons and anesthesiologists in giving the patient accurate doses of effective and powerful anesthetics in a safe manner.�An anesthesiologist studies the basics of pharmacology and sterilization procedures.�The Anesthesiologist will:\r\n�\r\nPreparation and equipping of anesthesia instruments and equipment in the surgery room.\r\nPreparation of appropriate doses of drugs and anesthetic gases in surgery rooms.\r\nGive anesthesia drugs under the direct supervision of the anesthesia consultant.\r\nPreparation and follow-up of ventilators in surgery rooms.\r\nPrepare patient status according to the required procedures.\r\nAssist the anesthesiologist in all steps of total, half and local anesthesia, and in emergency resuscitation.\r\nFollow up and monitor the patient\'s vital signs during anesthesia.\r\nCommunicate with patients to explain the nature and quality of anesthesia.\r\nDispose of used tools and replace those used with other sterile tools.\r\nEnsure the availability of all tools, drugs, etc.', 10),
(173, 'Basic Medical Sciences', 'There are a number of undergraduate specializations that fall under this topic.�These disciplines are concerned with the study of basic sciences underpinning various medical practices.�We cannot cure diseases unless we understand how the body functions (physiology)Physiology(We can\'t develop surgery unless we know anatomy)Anatomy) Accurately and so.�These are the most basic medical specialties:\r\n�\r\nAnatomy���Anatomy\r\nPhysiology����Physiology\r\nHistology�������Histology\r\ncytology�����Cytology\r\nEmbryology������Embryology\r\nImmunology�����Immunology\r\nGenetics�������Genetics\r\nThe specialist in one of the basic fields of medical science:\r\nBuilding a strong scientific background on the medical field in which he specializes.\r\nConducting specialized scientific research to develop science and research its clinical applications.\r\nTeaching these sciences to students of medicine, dentistry, pharmacy and applied medical specialties.\r\nThe development of scientific methods to further uncover the subtleties of the work of the human body created by God in the best composition.', 10),
(174, 'Radiotherapy', 'This specialization has studied the use of high-energy rays to treat diseases where they destroy cancer cells at the site of exposure.�The radiotherapy specialist assists the doctor in diagnosing and developing treatment plans.�The radiologist will:\r\n�\r\nGive specific radiation doses to each organ of the body using radiotherapy devices in accordance with standard standards and practices.\r\nAdjust the exact dosages according to the patient\'s condition.\r\nEnter data into the computer and prepare controls for operating and configuring devices and adjust doses.\r\nFollow specific principles of radiation protection to protect himself, patients and others.\r\nKeep necessary records, reports and files that include radiation dosage information, equipment preparation and patient interaction.\r\nReview prescriptions, diagnosis, patient record and definition.\r\nMost treatment sessions are administered independently according to long-term treatment plans and as directed by the attending physician.\r\nExamine radiotherapy devices for effectiveness.\r\nMonitor and reassure patients during treatment and inform the attending physician of any unusual reactions or shut down the device as soon as any unwanted reaction occurs.', 10),
(175, 'nutrition', 'This specialization meant studying the forms of food, its contents, what we need from them, their interaction in the body, the nutrition of patients, groups and more.�Nutritionist means:\r\n�\r\nAssess the nutritional status of the healthy and sick person and determine their needs.\r\nPlanning and monitoring the nutritional status of inpatients in hospitals, especially critical cases requiring specialized intervention.\r\nPreparing an integrated food plan for those suffering from obesity, wasting or other problems.\r\nPrepare an integrated plan about the nutrition that the patient should receive in various diseases.\r\nAdvise in dietary habits and clarify good and harmful ones.\r\nSupervising the safety and comprehensiveness of nutrition services provided to groups (students, hospitals, orphanages, ..).\r\nParticipate in public campaigns aimed at raising community awareness of healthy nutrition.\r\nEvaluate contracts submitted by food suppliers and ensure their suitability and comprehensiveness.\r\nComments', 10),
(176, 'Prosthetics and splints', 'This specialization means the study of scientific methods to take advantage of prosthetics for those who have lost one of his limbs (legs or hands) in addition to dealing with splints that we need when injury to bones, joints or ligaments in the human body.�The Prosthetist:\r\n�\r\nReceive the patient referred to the service and listen to his story and examined clinically.\r\nMake sure the patient needs the prosthesis or splint and explain it to the patient.\r\nTake the necessary sizes to manufacture the limb and make sure that there is no barrier to fixing it.\r\nEnsure its effectiveness and the ability of the patient to twins with him', 10),
(177, 'Clinical Nutrition', 'This specialization means the study of the relationship between food and healthy body, it can be defined as the science of the study of nutrients: how to digest and absorb, transport, metabolism and storage and then expelled from the body.�This specialization is also exposed to the impact of the environment on the quality and safety of food; hence the impact of these factors on human health and the ability of nutrients to prevent�or treat diseases.�It is very helpful in helping malnourished, obese, and�metabolic�responders�in cases of injury or chronic illness.�Clinical Dietitian:\r\n�\r\nDevelop preventive or therapeutic food programs, short-term or long-term to improve and maintain patient health.\r\nProvide�counseling�to the�patient with regard to�changing the�diet to suit his health.\r\nConsult with the doctor in charge of diagnosis and treatment plan to determine the optimal diet of the patient.\r\nPeriodically assess the patient\'s nutritional health by reviewing laboratory analyzes required by both the clinical dietitian and the physician.\r\nDescribe dietary supplements for patients who may lack certain nutrients.\r\nConsult with your physician and pharmacist to avoid any possible adverse reactions during drug therapy.', 10),
(178, 'health education', 'This specialization meant studying the scientific methods of designing programs aimed at increasing the awareness of individuals and society on health issues as a pillar of preventive medicine.�The (Health Education Specialist):\r\n�\r\nAssess the needs of individuals, groups and society for health education and patient education.\r\nPlanning preventive and curative health education programs.\r\nThe implementation of programs and the application of innovative educational methods and attractive individual, collective, media, communication and community\r\nPreparation, testing, use and evaluation of educational material and teaching aids.\r\nProvide educational programs and public campaigns in all areas of health education and targeted to different segments of society: in school, workplaces, public places and others\r\nManagement of health education programs and activities\r\nConducting research and studies related to health education\r\nWork as a reference for health education and health information\r\nCoordination of cooperation between the authorities and organizations concerned with health education and patient education\r\nEnsure the application of quality standards in educational services', 10),
(179, 'Neurological diagnosis technique', 'This specialization means studying the recording and study of electrical activity of the brain and the nervous system.�The neurologist helps diagnose problems related to the brain, nervous system and sleep problems, allowing the physician to diagnose and treat.�The neurosurgeon technician:\r\n�\r\nConduct brain planning for patients with neurological diseases, such as head, limb or epileptic injuries.\r\nConduct muscle planning for those who suffer from muscle weakness due to certain genetic diseases.\r\nExamination of the efficiency of nerve work for diabetics.\r\nMonitor brain power during and after surgical brain operations.\r\nOphthalmic examination for diabetics or those with eye diseases.\r\nEvaluation of the patient in terms of muscular and neurological performance after surgery or after rehabilitation.\r\nMonitor the patient in terms of blood pressure and heart rate during the examination.\r\nPrepare diagnostic reports for your doctor to interpret', 10),
(180, 'Epidemiology', 'This specialization is concerned with the scientific study of epidemiological diseases and disabilities occurring within the community or a group of it, using scientific development in the fields of biostatistics, biochemistry, microbiology, immunology, determinants of epidemiology, injuries, genetics, disability factors, behavioral studies, health management, environmental diseases, injury factors and population studies.�The World of Epidemics:\r\n�\r\nMonitoring, recording and accidents related to infectious diseases of the health authorities in the region and the country.\r\nTo investigate the causes of the spread of a particular disease or injury within a group of people and identify the behaviors that promote its spread and develop a plan to combat it.\r\nProvide expert opinion on the design, preparation and implementation of public health questionnaires and health practice protocol studies.\r\nSupervising relevant public health research, conducting the necessary statistical analysis, and establishing disease surveillance systems and following up their development.\r\nPlanning and follow-up studies that are interested in tracking human and animal diseases and finding ways to prevent and treat them.\r\nConduct research on the development of medical methods and procedures that promote prevention and prevent the spread of diseases.\r\nProvide scientific research to health practitioners and decision-making bodies in the government.\r\nTo teach health practitioners and the general public what to know about ways of spreading epidemics and prevention.', 10),
(181, 'Nuclear Medicine Techniques', 'This specialization means the study of the use of radioactive substances, which are effective as drugs, to imaging the organs of the human body or the study of its vital functions and analysis of samples and treatment of diseases.�It aims to apply diagnostic and therapeutic imaging techniques and skills through the safe and effective use of radioactive particles.�Nuclear Medicine Technician / Technician:\r\n�\r\nOperation of medical devices and equipment that imaging parts of the human body using drugs of radioactivity and injection of the patient.\r\nExplain the procedure of radiography of the patient and answer his inquiries.\r\nFollow safety procedures to prevent overexposure.\r\nInspect devices for safety.\r\nPreparing radiological drugs and injecting the patient with them.\r\nOperating a gamma-ray camera and scanning machine that gives the symbols of the radiotherapy processor as soon as it passes or stabilizes the patient\'s body.\r\nMonitor the patient to make sure there is no allergy to the drugs.\r\nMaintain detailed records of procedures and record the quantity and quality of radiological patient segments.\r\nFollowing up the disposal of radioactive materials in accordance with safety standards.', 10),
(182, 'Medical Laboratory Sciences', 'This specialization means the study of all analyzes and procedures that were implemented in medical laboratories in order to diagnose diseases and follow-up their development and early detection.�The Laboratory Specialist:\r\n�\r\nReceiving sampling or sampling requests for analysis.\r\nSupplying various samples according to the approved scientific methods.\r\nCarry out various types of analyzes of body fluids and samples of body organs.�In order to reach a result allows the doctor to know the defect, and help him to diagnose and treat the disease.\r\nPrepare and use different devices and solutions to carry out these analyzes.���\r\nEnter the data resulting from the medical tests in the patient\'s computer system or record.\r\nFollow-up the quality of work devices used in medical laboratories.\r\nFollow up scientific developments in medical analysis in order to work more effectively for the detection and diagnosis of diseases.', 10),
(183, 'Cardiac technique - cardiac catheterization', 'This specialization means the preparation of competent professionals to assist in the conduct of cardiac catheterization operations, whether diagnostic or interventional therapeutic and accompanying procedures.�Cardiac catheterization technician:\r\n�\r\nPrepare the patient for catheterization which may be emergency and urgent and may be non-emergency\r\nProcessing equipment for catheter operations\r\nProviding assistance during the catheterization process as an assistant to the cardiologist who enters a medical catheter into the patient\'s heart through the artery in order to make sure that the vessels are not clogged and then install medical stents in the event of a blockage in the arteries of the heart\r\nOperation of medical devices for heart technologies such as ultrasound and electrocardiograph.\r\nCare and reassurance of patients before and during the procedure.', 10),
(184, 'Teeth health', 'This specialization means the study of scientific and practical ways to maintain oral health and prevention of diseases, in addition to educating people about it.�The (Dental Hygienist) work on three levels (treatment, prevention, education) where:\r\n�\r\nIt examines the mouth and teeth and perform some therapeutic and preventive measures such as removal of limestone deposits and the application of topical fluoride and fill cracks and so on.\r\nTo educate people about oral health through various methods.\r\nDirect talk with patients in order to identify ways to prevent oral and dental diseases and their problems.', 10),
(185, 'Heart Technology - Cardiac imaging', 'This specialization means providing medical services to cardiac patients using diagnostic ultrasound (ECO), cardiac stress measurement or electrocardiogram.�The cardiologist / technician will:\r\n�\r\nAssistance in carrying out a�broad spectrum of cardiac imaging techniques according to�need the�patient and according to the�possibilities available in the�center where he works (such as imaging the�heart echo -aako- imaging�Alnwori�of the�heart, normal heart or effort planning, or recording ECG for 24 hours, ..)\r\nMeasure and monitor the patient\'s pulse and pressure and other vital signs during the various tests.\r\nRecord patient appointments and examinations in schedules, and explain the procedures used during the examinations for patients.\r\nRead and interpret the results of ultrasound, electrocardiogram and interval measurement.\r\nAssist the doctor in the process of diagnosis or therapeutic intervention using cardiac imaging.\r\nOperate medical devices for cardiac technologies such as ultrasound, electrocardiogram and stress test, monitor any defects in operation, and communicate with service engineers for maintenance.\r\nMonitor the scanner screen to distinguish anomalies in reading, verify data and print to the doctor.\r\nCare and reassurance of patients before and during the procedure.', 10),
(186, 'Respiratory Therapy', 'This specialization means the study of scientific methods for any diagnostic or therapeutic intervention non-pharmacological or surgical patients need.�The respiratory therapist:\r\n�\r\nProviding respiratory care to patients in general and respiratory patients in particular.\r\nIntervention in emergency cases for oxygenation of the patient in respiratory failure or pulmonary heart failure.\r\nThe work of diagnostic tests specialized in the respiratory system.\r\nOperate artificial respiratory systems and ensure their effectiveness.\r\nMonitoring the patient\'s response to respiratory therapy by measuring vital signsVital Signs), Arterial blood gas, blood chemistry, etc., record it and present it as a report to the attending physician.��������\r\nHelping a group of patients to improve their breathing after surgery, fainting or breathing difficulties.\r\nSupervising (respiratory technicians) to train them and make sure they implement the prescribed plan.\r\nClarify the respiratory treatment plan for the patient and his family to cooperate with him and to do some exercises that enhance respiratory function.', 10),
(187, 'Optics', 'This specialization means studying ophthalmology and diseases, vision problems and how to diagnose and treat them.�OptometristOptometristIt is one of the pillars of the medical team treating eye diseases.�Where:\r\n�\r\nBuild a solid scientific background around the eye, its anatomy, function, and ills.\r\nWork to examine the visual field (middle and peripheral) and determine the type of shortness of vision.\r\nDescription and installation of contact lenses for special conditions such as keratoconus.\r\nDiagnose the pathological conditions of the eyes and associated parts, and refer them to the ophthalmologist.\r\nEarly treatment of refractive errors such as amblyopia, laziness of the eye and defects of lens adaptation.\r\nIdentify visual impairment that is associated with some chronic diseases such as diabetes, hypertension,�glaucoma�, etc.\r\nRehabilitation of patients with severe vision impairment to adapt to the remaining vision, by rehabilitating and follow-up and prescribe special magnifying lenses for each case individually.\r\nCorneal imagingcorneal topography) And taking ocular rays.\r\nParticipate in scientific researches interested in this field.', 10),
(188, 'Dental Technology', 'This specialization means the study of scientific methods for the processing of dental prostheses required in dental clinics.�No dentist can do without a dental technician because he is his right forearm to get the job done properly.�The dental technician will:\r\n�\r\nPreparation of various dental structures such as partial and complete, fixed and mobile.\r\nEquip the orthodontic device in various forms according to certain measurements.\r\nEquipping complete and partial dentures.\r\nWork to train new technicians in order to acquire the required skills.', 10),
(189, 'Health Information Management', 'This specialization means the study of scientific methods of health information management in terms of planning, collection, storage, retrieval, transfer, renewal and protection of health information.�The Health Information Management Specialist will:\r\n�\r\nBuilding a theoretical and practical background on the mechanisms and methods of dealing with health information systems.\r\nDevelop effective plans and systems for the effective management of the information system within health facilities (eg storage, retrieval, retrieval and updating of information) leading to improved quality of health services provided.\r\nThe use of advanced information technologies in this vital and important work.\r\nEstablish effective mechanisms to protect and maintain health information.\r\nWork on medical retrieval that is taken by a doctor, technicians or others.\r\nSupervising health information that is disclosed to others such as medical reports and others.\r\nSupervise the development of a disease diagnosis system and include each patient under a specific diagnostic group.', 10),
(190, 'Speech, speech and hearing impairments', 'This specialization means the preparation of professionals in the areas of examination and measurement of hearing and diagnosis of the type of dysfunction, in addition to studying the ills that affect the�ability�to�receive�or output speech resulting from speech disorder or disturbed sound or disorder in speech or language disorder.�It is also concerned with swallowing disorders.�The Speech, Speech and Hearing Specialist:\r\n�\r\nBuild a discreet scientific background on the anatomy of the ear, mouth, pharynx, nervous, auditory and speech system, the mechanism of their work and the diseases they may be exposed to.\r\nReceive, examine and evaluate the patient and make the appropriate diagnosis and ensure the ability of the therapist to provide service to him.\r\nConduct the necessary tests to determine the quality and degree of auditory impairment.\r\nBuilding an integrated therapeutic and rehabilitation plan and setting a schedule for therapeutic sessions and planning their details for hearing impaired and speech-impaired patients.\r\nWork to describe the appropriate hearing aid (stethoscope) if necessary.\r\nPreparation of the patient and rehabilitation for implant cochlear.\r\nTransfer the patient to other specialties to provide support service (psychiatry, pediatrics, centers for people with special needs ..).\r\nParticipate in scientific researches interested in this field.', 10),
(191, 'Bachelor Assistant Dentist', 'This specialization means the study of theoretical knowledge and practical skills necessary to prepare professionals in the field of dentist assistance, and focuses on training students to care for patients and provide clinical assistance as well as training in their role in dental clinics, and how to use radiology, as well as administrative�and office�work�. ) In:\r\n�\r\nAssist the dentist before, during and after the treatment,�from�sterilizing the tools to the completion of the patient\'s treatment.\r\nCarry out health education and prevention of oral and dental diseases by giving instructions and advice to patients in the dental clinic.\r\nHelp patients feel comfortable and reduce anxiety.\r\nCarry out secretarial work such as organizing files and appointments, receiving patients, mixing materials, taking rays and developing them.\r\nSupervise the cleanliness and maintenance of dental equipment and equipment.\r\nApply the principles and rules of public safety during work.\r\nPromotion and marketing of dental materials and medical devices.', 10),
(192, 'Occupational Health', 'This specialization means the study of scientific methods to monitor and evaluate the health and safety standards related to the work environment in commercial institutions, factories, fields, facilities and other workplaces.�It also seeks to promote the physical, psychological and social health of workers and to contain and prevent risks.�The (Occupational Health Specialist):\r\n�\r\nStudy the potential health risks in the work environment and methods of measurement and evaluation\r\nTesting the potential risks of equipment operation and maintenance\r\nStudy of different aspects of industrial toxins\r\nReferring medical conditions related to work environment hazards to medical services and follow up\r\nStudy the practices and behavior of workers in the work environment\r\nTraining workers on tools and equipment that provide them with prevention and protection\r\nDeveloping occupational health standards and regulations in different professions and work environments and following up their application\r\nSee the latest medical and technical developments in the field of occupational health', 10),
(193, 'Emergency Medical Services', 'This specialization means the study of scientific methods to deal with emergency medical and emergency cases such as injuries, wounds, fractures and fainting and conduct cardiopulmonary resuscitation and other operations.�The�Emergency and�Ambulance�Specialist�:\r\n�\r\nAssess cases of injury or emergency requiring medical intervention, and prioritize service delivery.\r\nProviding first aid services and life-saving care for patients who have been exposed to accidents or emergencies before their arrival at the hospital.\r\nMastering different ambulance techniques and presenting them to the patient effectively and safely.\r\nTransfer the patient with an emergency to the hospital safely and properly.\r\nMonitor, record and clarify the patient\'s condition to the attending physician in the hospital.\r\nCalm, reassure and support the patient as much as possible until arrival at the hospital.', 10);
INSERT INTO `subject` (`subjectID`, `name`, `discription`, `majorID`) VALUES
(194, 'Health Services Department', 'This specialization means the study of scientific methods to manage the resources and procedures of work in different health institutions in order to meet the needs of individuals of the health system.�The need for a separate discipline concerned with health management (or hospital management) has arisen because of the large number and diversity of work procedures in health institutions and because of the sensitivity and importance of the health services provided to the individual and society under the�particular�economic�conditions�of the whole world where support for the health system has diminished.�The (Health Management Specialist):\r\n�\r\nDevelop plans, procedures and regulations governing health care institutions such as hospitals, clinics, rehabilitation centers and others.\r\nManaging the work in health facilities in order to achieve the best results at the lowest cost.\r\nFollow up the completion of health work according to the comprehensive quality standards adopted by the health system.\r\nSupervising the evaluation, recruitment and recruitment of distinguished employees to work in the establishment.\r\nDesign training programs for health management personnel.', 10),
(195, 'Molecular Biology and Biotechnology', 'This specialization means the use of biological systems and living organisms or materials thereof in the development or design of new technologies and products in areas such as medicine (development of new drugs and therapies), agriculture (development of genetically modified plants, biofuels, biological therapy and disease-resistant livestock) or industrial (production of chemicals, paper and textiles). And food).�The biotechnologist performs the following tasks:\r\n�\r\nFirst, in the field of environmental biotechnology:\r\n�\r\nDevelopment of plants and microorganisms to clean contaminated water or land.\r\nGenerate alternative energy sources, such as biofuels.\r\nProducing environmentally friendly raw materials for use in industry, such as biodegradable plastics.\r\nSecond, in the field of industrial biotechnology:\r\n�\r\nProduction of enzymes for use in the manufacture of foods and beverages.\r\nProduction of biological cleaners.\r\nImproving livestock feed.\r\nDevelopment of pest resistant crops.\r\nGenetically modified products to increase productivity.\r\nThird, in the field of medical and pharmaceutical biotechnology:\r\n�\r\nStudy genes, proteins, antibodies, viruses, bacteria and fungi and look for treatments for diseases such as cancer.\r\nDevelop treatments, vaccinations and hormones to treat the cause of the disease.\r\nProducing drugs using techniques such as genetic modification and cell transplantation.\r\nFourth, in the laboratories:\r\n�\r\nUse laboratory instruments and equipment to conduct experiments.\r\nData logging and reporting.\r\nSenior researchers design research studies, analyze data and develop new research methods.', 10),
(196, 'public health', 'This specialization means studying scientific methods to improve public or community health through a number of measures such as monitoring, preparing statistics and taking preventive measures.�The (Public Health Specialist) will:\r\n�\r\nIdentify the health needs of an area or specific category.\r\nPlanning health services that are provided in an area or town\r\nStudy a specific health problem that affects a group of society and develop solutions to eliminate this problem.\r\nPlan and monitor the implementation of all measures to prevent the spread of infectious diseases\r\nDevelop plans to combat any pandemic before, during and after it occurs.\r\nPromote healthy and protective behaviors and habits at the individual, family and community levels\r\nEnsure the occupational safety of workers in a place such as a factory, field or other.', 10),
(197, 'Industrial security and occupational safety', 'This specialization means studying engineering and technical methods to enforce safety standards, correct unsafe work environment and avoid hazards that may occur in the workplace.�The Industrial Safety and Occupational Safety Specialist shall:\r\n�\r\nMonitor equipment, machinery and machinery to repair any defect that may result in damage of any kind.\r\nEnsure the application of occupational safety laws that protect workers from any potential hazards.\r\nExplain and interpret safety laws adopted for employees and those responsible for safety control within the facility.\r\nProvide advice to various organizations on the ability of their response to any emergency, especially in the departments of emergency intervention and fire departments and others.\r\nReview accident reports from different departments or through safety monitors to identify any defect in the safety system within the facility.', 10),
(198, 'Marketing', 'This specialization means studying basic concepts in marketing such as consumer behavior, product management, distribution, pricing, promotion, marketing research, planning, and control in marketing.�The Marketing Specialist will:\r\n�\r\nBuilding a scientific background on human behavior, the nature of the market and its requirements.\r\nConducting market research on the product and market need.\r\nDevelop an integrated marketing plan for the product (such as advertising, marketing campaigns, arranging sales outlets and building the working group).\r\nSupervising and following up on these works, and evaluating and measuring their effectiveness.\r\nRecruitment and training of workers in the marketing sector, especially salesmen.\r\nParticipate in product development in a way that balances consumer satisfaction with material return.\r\nReporting on marketing actions and presenting them to higher management levels.', 11),
(199, 'E-Commerce', 'This specialization means the study of scientific methods to manage business processes, services and products offered via the Internet.�The Ecommerce Specialist will:\r\n�\r\nPlan, implement, lead and follow-up the operations of online business in small and large sites.\r\nFollow up all technical aspects related to the platform used in e-commerce\r\nAnalyze the information received about users and the sequence of operations performed on the site and use it in planning and decision making.\r\nBuilding a solid scientific background on contracts, laws and regulations applicable in e-commerce\r\nFollow up and discuss issues related to the design and ease of use of the e-commerce platform\r\nEnsure that the highest security is applied to the flow of money to and from the e-commerce platform\r\nContinuous search for suitable products to be added to the platform in accordance with its policy\r\nFollowing up the sales and customer services provided through the platform\r\nCoordinate and follow up the marketing work through social media networks using various tools\r\nTeam building in different disciplines and coordination between them in order to set priorities and solve everyday problems', 11),
(200, 'Finance and Investment', 'This specialization means studying key products, investment strategies and risks that currently threaten financial markets.�The finance and investment specialist:\r\n�\r\nMeet clients to help them determine their short-term and long-term financial goals.\r\nMonitor accounts and inform customers of any necessary adjustments.\r\nSelling certificates of deposit and insurance policies.\r\nCalculate costs, revenues and financial offers.\r\nStudy of business trends.\r\nDiscuss the economic conditions and the performance of companies', 11),
(201, 'Banking Science (Banking)', 'This specialization means the study of scientific and practical ways to play different roles in banks, banks and financial institutions and investment.�The Bank performs the following tasks:\r\n�\r\nProviding various services to the pioneers of banks, banks and financial and investment institutions such as opening accounts, exchange, transfer and other services.\r\nDesigning, launching and developing products offered by banks such as financing solutions, credit cards, etc.\r\nReview and evaluate applications for miscellaneous loans and grants that comply with the conditions.\r\nControl accounts in the bank\r\nMeet people and small and large companies to discuss their financial requirements and provide appropriate solutions.\r\nMonitor the overall financial situation and take appropriate action\r\nSupervising the recruitment and training of new employees in different departments.', 11),
(202, 'international Business Administration', 'This specialization is concerned with the study of theories of management science and its applications in various areas of management with a focus on dealing with global markets and international multinational companies and the study of obstacles to the conduct of business outside the country of origin.�(International Business Specialist):\r\n�\r\nUse all knowledge and skills in management to conduct various business\r\nIdentify the business world environments in different countries of the world.\r\nUnderstand their economics, forms of practice, and the international laws governing them.\r\nKnowledge of import and export issues, taxation, international financial matters, etc.\r\nIdentify business opportunities and prospects in those countries.\r\nEngage in the business of large corporations and multinational corporations.', 11),
(203, 'Accounting', 'This specialization means the study of scientific methods to control, organize, summarize and interpret the economic activity of any enterprise, no matter how small or large.�The accountant shall:\r\n�\r\nControlling and recording the company\'s financial operations.\r\nAnalyze the entity\'s financial statements and prepare financial and budget reports showing assets, profits, losses, debts, etc.\r\nPrepare budget reports showing the expected expenses and compare them with the real expenses of any project or work.\r\n� Providing audit and auditing services to individuals and institutions\r\nProvide guidance and advice to the client on compensation, the company\'s accounting system, dealing with taxes and more', 11),
(204, 'Insurance and Risk Management', 'This specialization means a scientific study of the insurance sector in all its administrative, legal and economic feasibility.�An important aspect of the work of the insurance sectors is to assess the expected risks of any commodity in order to determine the insurance amounts necessary to cover these risks.�Suppose the insurance company would like to introduce a home insurance program.�The amount of insurance required will be determined by examining the potential risks and costs to be covered.�The insurance and risk management specialist:\r\n�\r\nBuilding a theoretical and practical background about the insurance sector, its challenges and ways of dealing with them.\r\nMarketing the products of insurance companies such as insurance on vehicles, homes or other.\r\nAn extensive study of the Company\'s assets, past expenses and liabilities to determine its ability to pay future dues.', 11),
(205, 'Human Resource Management', 'This specialization means studying the scientific methods of managing, planning and organizing human potential in any organization.�The Human Resources Specialist will:\r\n�\r\nAct as a link between management and employees in solving administrative problems, contract issues and others.\r\nProviding consultations on the training of employees and developing their skills and ways to benefit from their various capabilities.\r\nWork to discover and develop the strengths of employees to serve the organization.\r\nEstablishing a system of incentives, promotions and allowances for employees in the establishment.\r\nManaging the administrative affairs of employees such as vacations, arranging travel and following up their different rights.\r\nProviding consultations on the training of employees and developing their skills and ways to benefit from their various capabilities.\r\nProvide advice on the career path of employees within the organization or as special consultations for those who request it.\r\nWork to discover and develop the strengths of employees to serve the organization.\r\nCarry out recruitment work at various stages.\r\nTaking care of issues related to workers such as stress and personal relationships between employees and entertainment and others.\r\nEvaluate staff performance and develop proposals for its development.', 11),
(206, 'Business Management', 'This specialization means studying the scientific methods of managing work in various institutions and small and large companies.�The (Administrative):\r\n�\r\nPlan, implement, lead and follow-up work on any project or company in order to achieve the best results.\r\nAnalyze the information received and use it in planning and decision making.\r\nEstablish business objectives and benchmarks to measure achievement of these goals.\r\nConceive of challenges and opportunities that may face any work and seek to overcome or exploit.\r\nAssign tasks to other team members according to their abilities and strengths.\r\nEnliven the enthusiasm of team members to reach the goals set.\r\nSetting priorities and solving everyday problems.', 11),
(207, 'Housing and Institutions Department', 'This specialization means studying the use of modern technology and advanced sciences in the management of housing and institutions in a way that contributes to solving family and community problems; it focuses on training students to make decisions according to scientific principles and how to prepare scientific and applied research, in addition to providing them with the information, skills and experience necessary to qualify the labor market with its current and future needs. .�The (Housing and Institutional Management Specialist):\r\n�\r\nManage installations on behalf of local authorities, housing associations, charities and private sector companies.\r\nRemove slums and untapped assets.\r\nEmploying, training and supervising the establishment\'s employees.\r\nSupervise the implementation and renewal of landlords and tenants contracts.\r\nCommunicate with landlords and tenants periodically and determine rents and installments and supervise their collection.\r\nDevelop policies to deal with arrears and debt and work to reduce them.\r\nResponding to and investigating population complaints.\r\nImplement and develop local authority policies.\r\nManagement of development grants and loans.\r\nDevelop new housing plans by reusing assets or managing new assets.\r\nIdentify facilities needs and manage repair and maintenance programs.\r\nDealing with squatters.\r\nRecord keeping and reporting.', 11),
(208, 'Logistics and Supply Chain Management', 'This specialization means studying practical ways to plan, manage and coordinate all supply operations (Logistics) In a company started from the purchase of raw materials and access to the factory and then transport the product, storage and distribution to the sales outlets or delivery to the client .. This specialization deals with the transfer of goods and products, systems and networks.�It also deals with specialization and communication between supply chain managementSupply Chain ManagementWithin the Organization, the Director of Supply and Transport:\r\n�\r\nPlanning and managing all activities related to product sourcing, procurement and supplies necessary for manufacturing.\r\nCoordination and cooperation between all parties involved in the supply chain of suppliers, intermediaries, service providers and customers.\r\nCreate integration of demand and supply of the product so that no more is produced than consumed or marketed.\r\nWorking to manage stores effectively.\r\nWork to establish and manage an effective system for the transport of goods without delay.', 11),
(209, 'General Administration', 'This specialization means the study of scientific theories and practical applications of management science in the work of the public sector (government) of various types.�(General Management Specialist):\r\n�\r\nManage business and daily government tasks to manage people\'s interests and walk their lives.\r\nWork on the preparation, submission and approval of government policies that regulate the rights of citizens and preserve their rights and clarify their duties and explain the role of state bodies in the management of their affairs.\r\nEstablish mechanisms to monitor government performance and improve its quality.\r\nWork to develop administrative laws that regulate government work and make sure that they are applied properly.\r\nEstablishing and developing NGOs and civil society organizations.������', 11),
(210, 'leading businesses', 'This specialization means developing the knowledge and skills necessary to build small personal projects.�This specialization is concerned with developing the planning, marketing, management and development skills we employ in the business world.�An entrepreneurEntrepreneur) In:\r\n�\r\nDevelop an innovative business idea that meets people\'s needs and desires.\r\nWork on a business planBusiness Plan) To build the project.\r\nIdentify the needs that need to be met and the persons that require their employment.\r\nCarry out legal procedures to ensure the safety and legality of work\r\nDevelop a marketing plan for the project and determine the cost.\r\nDevelop personal skills to improve personal performance.\r\nContinuous monitoring of the daily work of the project.', 11),
(211, 'Economy', 'This specialization means studying various economic resources and how to manage and develop them, and to identify ways to address economic problems and understand the developments that may occur in the economy in different circumstances and understand their social and political effects.�The Economist:\r\n�\r\nCollect and analyze information, statistics and figures from multiple sources on the economic situation of a sector (business market, oil, stock market, agriculture, ..).\r\nPredict future trends of the general or sector-specific economy.\r\nProvide advice and guidance on economic policy-making and problem-solving to improve the overall economic situation or in a particular sector based on studies and analysis results.\r\nStudy the economic feasibility of a project and the possibility of investing in it.\r\nWriting reports and giving lectures on different economic conditions.', 11),
(212, 'Finance', 'This specialization means studying the practical ways of movement of money, investment and finance within major companies, banks, capital markets and stocks.�The Finance Specialist:\r\n�\r\nReviewing and analyzing the financial statements of the company and writing financial reports that are useful in making important administrative decisions in investment, marketing, etc.\r\nAssist in making financial decisions such as company expenses and the possibility of granting an increase to employees and other small and large decisions.\r\nProvide useful suggestions in the management of money in the company, such as ways to increase the capital of the company or employ and invest better or otherwise.\r\nIdentify risk factors in projects that the entity intends to comply with.\r\nWorking to follow the conditions of financial and business markets and the course of the global and local economy through the follow-up of financial and economic bulletins and reports issued by governmental and international bodies, the banking sector, banks, major investment companies and others.', 11),
(213, 'Quality Management', 'This specialization means the study of practical ways to control and follow the quality of practice in various private and public institutions in all sectors (medical - commercial - educational - engineering - factories - .. etc) .. The quality specialist to:\r\n�\r\nDevelop and circulate quality procedures in the company as well as standards and specifications\r\nReview customer needs and ensure they are met\r\nWork with procurement staff to determine the quality requirements of external suppliers\r\nSet standards for quality as well as health and safety\r\nEnsure that the manufacturing or production process is subject to international and local standards\r\nDefining quality procedures in cooperation with operating staff\r\nDevelop and manage control and documentation procedures\r\nMonitoring performance by collecting relevant data and writing statistical reports\r\nPrepare explanatory documents such as customer documents', 11);

-- --------------------------------------------------------

--
-- بنية الجدول `subject_universty`
--

CREATE TABLE `subject_universty` (
  `subjectID` int(11) NOT NULL,
  `univID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `subject_universty`
--

INSERT INTO `subject_universty` (`subjectID`, `univID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(7, 3),
(8, 2),
(8, 3),
(9, 3),
(9, 4),
(9, 5),
(10, 1),
(11, 1),
(12, 6),
(12, 7),
(12, 5),
(12, 8),
(12, 9),
(12, 10),
(13, 2),
(13, 11),
(13, 3),
(13, 1),
(13, 4),
(13, 5),
(13, 12),
(14, 2),
(14, 13),
(14, 3),
(14, 1),
(14, 4),
(14, 14),
(14, 15),
(15, 3),
(15, 4),
(15, 16),
(16, 17),
(16, 18),
(17, 3),
(17, 4),
(17, 5),
(18, 1),
(18, 8),
(18, 9),
(19, 1),
(19, 8),
(19, 10),
(20, 17),
(20, 19),
(20, 20),
(21, 2),
(21, 7),
(21, 3),
(21, 1),
(21, 4),
(21, 18),
(22, 4),
(23, 2),
(23, 1),
(23, 4),
(23, 23),
(23, 14),
(23, 24),
(23, 25),
(23, 27),
(23, 26),
(24, 1),
(24, 4),
(24, 23),
(24, 27),
(25, 27),
(25, 23),
(26, 66),
(27, 66),
(28, 4),
(28, 27),
(28, 29),
(29, 4),
(29, 30),
(30, 6),
(30, 23),
(30, 31),
(30, 24),
(30, 25),
(30, 32),
(30, 27),
(30, 33),
(31, 4),
(31, 23),
(32, 27),
(32, 34),
(33, 4),
(33, 9),
(34, 21),
(34, 86),
(35, 2),
(35, 6),
(35, 3),
(35, 1),
(35, 4),
(35, 23),
(35, 35),
(35, 36),
(36, 26),
(37, 26),
(38, 4),
(39, 4),
(39, 27),
(40, 40),
(41, 42),
(41, 22),
(41, 5),
(41, 31),
(41, 27),
(41, 37),
(42, 31),
(42, 37),
(43, 6),
(44, 5),
(44, 31),
(44, 24),
(44, 36),
(44, 51),
(44, 39),
(45, 31),
(45, 39),
(45, 37),
(45, 10),
(45, 41),
(46, 35),
(47, 1),
(47, 35),
(47, 22),
(47, 5),
(47, 43),
(48, 2),
(48, 6),
(48, 1),
(48, 35),
(48, 45),
(49, 22),
(50, 43),
(51, 6),
(51, 3),
(51, 1),
(51, 22),
(52, 1),
(52, 6),
(53, 4),
(53, 22),
(53, 39),
(54, 4),
(55, 25),
(56, 39),
(56, 37),
(56, 49),
(56, 10),
(56, 41),
(57, 5),
(57, 31),
(58, 31),
(58, 24),
(58, 52),
(59, 4),
(59, 2),
(59, 11),
(59, 35),
(59, 22),
(59, 5),
(60, 5),
(60, 31),
(60, 24),
(60, 15),
(60, 56),
(61, 6),
(61, 3),
(61, 1),
(61, 4),
(61, 35),
(61, 31),
(61, 59),
(61, 27),
(62, 64),
(63, 4),
(63, 2),
(63, 31),
(63, 27),
(63, 24),
(64, 1),
(65, 4),
(66, 1),
(66, 35),
(67, 1),
(67, 35),
(67, 22),
(68, 1),
(69, 4),
(70, 1),
(71, 35),
(71, 1),
(72, 35),
(73, 4),
(74, 1),
(74, 22),
(75, 4),
(75, 35),
(75, 59),
(76, 1),
(76, 4),
(76, 43),
(76, 10),
(77, 2),
(77, 1),
(77, 4),
(77, 43),
(77, 39),
(77, 10),
(78, 4),
(78, 9),
(79, 2),
(79, 11),
(79, 3),
(79, 35),
(79, 22),
(79, 6),
(79, 5),
(79, 31),
(80, 35),
(80, 22),
(81, 4),
(81, 1),
(81, 43),
(81, 10),
(82, 2),
(82, 27),
(82, 10),
(82, 34),
(83, 1),
(84, 1),
(85, 2),
(86, 2),
(86, 1),
(86, 31),
(86, 24),
(86, 72),
(87, 1),
(87, 31),
(88, 1),
(89, 1),
(90, 73),
(90, 6),
(90, 1),
(90, 35),
(91, 2),
(91, 3),
(91, 1),
(91, 4),
(91, 35),
(91, 31),
(91, 27),
(92, 2),
(92, 6),
(92, 3),
(92, 1),
(92, 4),
(92, 35),
(92, 22),
(93, 2),
(94, 2),
(94, 73),
(94, 39),
(95, 31),
(95, 3),
(95, 39),
(96, 2),
(96, 73),
(96, 6),
(96, 22),
(96, 6),
(96, 43),
(96, 37),
(97, 2),
(97, 73),
(97, 39),
(98, 2),
(98, 73),
(98, 39),
(99, 3),
(99, 1),
(99, 4),
(99, 34),
(99, 31),
(100, 2),
(100, 73),
(100, 3),
(100, 4),
(100, 22),
(100, 5),
(100, 43),
(100, 24),
(100, 15),
(101, 22),
(101, 27),
(102, 3),
(102, 1),
(102, 4),
(102, 22),
(102, 5),
(102, 31),
(102, 59),
(102, 9),
(102, 10),
(103, 27),
(103, 37),
(104, 3),
(104, 5),
(104, 32),
(105, 2),
(105, 6),
(105, 3),
(105, 1),
(105, 4),
(105, 35),
(105, 22),
(105, 5),
(105, 31),
(106, 2),
(106, 6),
(106, 3),
(106, 1),
(106, 4),
(106, 35),
(107, 2),
(107, 6),
(107, 4),
(107, 43),
(107, 24),
(107, 25),
(107, 27),
(108, 97),
(108, 46),
(109, 64),
(110, 4),
(110, 43),
(110, 39),
(110, 59),
(110, 9),
(111, 2),
(111, 6),
(111, 4),
(111, 22),
(111, 25),
(111, 59),
(112, 2),
(112, 3),
(112, 43),
(112, 27),
(112, 37),
(112, 33),
(112, 86),
(112, 20),
(112, 41),
(113, 4),
(113, 43),
(113, 24),
(113, 37),
(114, 59),
(115, 1),
(115, 27),
(115, 37),
(116, 2),
(117, 4),
(117, 2),
(118, 4),
(118, 2),
(119, 4),
(119, 2),
(120, 2),
(120, 6),
(120, 3),
(121, 1),
(121, 4),
(121, 29),
(122, 4),
(122, 29),
(123, 29),
(124, 29),
(125, 2),
(125, 73),
(125, 6),
(125, 3),
(125, 1),
(125, 4),
(125, 28),
(125, 35),
(125, 22),
(126, 4),
(127, 4),
(127, 27),
(128, 2),
(128, 73),
(128, 6),
(128, 3),
(128, 1),
(128, 4),
(128, 28),
(128, 35),
(128, 22),
(129, 27),
(129, 37),
(129, 10),
(130, 1),
(130, 4),
(130, 9),
(130, 10),
(131, 28),
(132, 2),
(132, 73),
(132, 6),
(132, 3),
(132, 1),
(132, 4),
(132, 28),
(132, 35),
(133, 1),
(134, 2),
(134, 4),
(134, 22),
(134, 51),
(134, 39),
(134, 49),
(134, 17),
(134, 34),
(134, 86),
(134, 17),
(135, 39),
(135, 86),
(135, 17),
(136, 1),
(136, 28),
(137, 4),
(138, 4),
(138, 49),
(139, 2),
(139, 11),
(139, 1),
(139, 4),
(139, 28),
(139, 5),
(139, 31),
(139, 24),
(140, 4),
(140, 52),
(141, 2),
(141, 27),
(142, 1),
(142, 28),
(143, 6),
(143, 1),
(143, 4),
(143, 28),
(144, 2),
(144, 73),
(144, 11),
(144, 3),
(144, 1),
(144, 4),
(144, 28),
(144, 35),
(145, 2),
(145, 4),
(145, 22),
(145, 51),
(145, 39),
(145, 49),
(145, 52),
(145, 86),
(146, 1),
(146, 4),
(146, 35),
(146, 5),
(146, 27),
(146, 17),
(146, 49),
(147, 2),
(147, 37),
(147, 11),
(147, 3),
(147, 1),
(147, 4),
(147, 28),
(147, 35),
(147, 22),
(148, 1),
(148, 4),
(148, 28),
(149, 4),
(150, 4),
(150, 28),
(151, 1),
(151, 4),
(151, 28),
(151, 22),
(151, 43),
(151, 59),
(151, 9),
(151, 27),
(151, 37),
(152, 6),
(152, 3),
(152, 1),
(152, 4),
(152, 28),
(152, 35),
(152, 5),
(152, 31),
(153, 2),
(153, 73),
(153, 3),
(153, 1),
(154, 6),
(154, 7),
(154, 1),
(155, 2),
(155, 6),
(155, 7),
(156, 1),
(156, 35),
(156, 5),
(156, 24),
(156, 59),
(157, 2),
(157, 7),
(158, 7),
(159, 2),
(159, 73),
(159, 7),
(160, 6),
(160, 3),
(160, 1),
(160, 4),
(161, 27),
(161, 49),
(161, 10),
(161, 7),
(162, 1),
(162, 28),
(162, 31),
(162, 59),
(163, 2),
(163, 22),
(163, 31),
(163, 24),
(163, 27),
(163, 1),
(163, 17),
(163, 92),
(164, 2),
(164, 6),
(164, 3),
(164, 1),
(165, 2),
(165, 6),
(165, 1),
(165, 4),
(165, 35),
(166, 2),
(166, 6),
(166, 1),
(166, 5),
(166, 15),
(167, 6),
(167, 1),
(167, 4),
(167, 35),
(167, 22),
(168, 2),
(168, 6),
(168, 1),
(168, 4),
(168, 35),
(169, 6),
(169, 1),
(169, 4),
(169, 22),
(170, 6),
(170, 1),
(170, 32),
(170, 37),
(170, 1),
(171, 2),
(171, 6),
(171, 1),
(171, 4),
(171, 22),
(172, 2),
(172, 1),
(172, 27),
(172, 1),
(173, 5),
(174, 37),
(175, 6),
(175, 1),
(175, 4),
(175, 35),
(175, 22),
(176, 6),
(177, 2),
(177, 6),
(177, 1),
(177, 4),
(177, 22),
(178, 2),
(178, 1),
(178, 24),
(178, 37),
(179, 27),
(180, 2),
(180, 24),
(180, 37),
(181, 37),
(181, 96),
(182, 2),
(182, 6),
(182, 1),
(182, 4),
(182, 22),
(182, 5),
(182, 43),
(183, 27),
(184, 1),
(184, 22),
(184, 25),
(184, 97),
(184, 96),
(185, 27),
(186, 6),
(186, 5),
(186, 24),
(186, 27),
(186, 1),
(186, 98),
(186, 96),
(187, 1),
(187, 22),
(187, 5),
(187, 25),
(188, 1),
(188, 44),
(188, 5),
(188, 97),
(189, 43),
(189, 100),
(190, 6),
(190, 1),
(190, 22),
(190, 5),
(190, 32),
(190, 37),
(190, 41),
(191, 97),
(192, 2),
(193, 2),
(193, 1),
(193, 5),
(193, 24),
(193, 27),
(193, 95),
(193, 98),
(194, 2),
(194, 4),
(194, 22),
(194, 43),
(194, 101),
(194, 25),
(194, 10),
(195, 4),
(195, 96),
(196, 2),
(196, 35),
(196, 22),
(196, 5),
(196, 25),
(196, 92),
(197, 2),
(197, 35),
(197, 22),
(197, 5),
(198, 2),
(198, 6),
(198, 7),
(198, 1),
(198, 4),
(199, 5),
(199, 24),
(199, 7),
(200, 7),
(201, 3),
(202, 4),
(203, 7),
(203, 2),
(203, 6),
(203, 3),
(204, 2),
(204, 3),
(204, 35),
(204, 43),
(205, 4),
(205, 35),
(205, 5),
(206, 2),
(206, 6),
(206, 7),
(206, 3),
(207, 2),
(207, 6),
(207, 4),
(207, 43),
(207, 39),
(208, 86),
(209, 4),
(209, 39),
(209, 32),
(210, 19),
(211, 2),
(211, 6),
(211, 7),
(211, 3),
(212, 2),
(212, 7),
(212, 3),
(212, 1),
(213, 5),
(213, 6),
(213, 1),
(213, 4);

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
  `conditions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `universty`
--

INSERT INTO `universty` (`univID`, `name`, `contry`, `address`, `type`, `rank`, `link`, `conditions`) VALUES
(1, 'King Saud University', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(2, 'Umm Al Qura University', 'saudi arabia', 'Adham', 'traditional', NULL, NULL, NULL),
(3, 'Imam Muhammad bin Saud Islamic University', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(4, 'King Abdulaziz University', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(5, 'King Khalid University', 'saudi arabia', 'Abha', 'traditional', NULL, NULL, NULL),
(6, 'Taibah University', 'saudi arabia', NULL, 'traditional', NULL, NULL, NULL),
(7, 'Arab Open University', 'saudi arabia', 'Jeddah', 'home', NULL, NULL, NULL),
(8, 'Jazan University', 'saudi arabia', 'Aldair', 'traditional', NULL, NULL, NULL),
(9, 'University of Tabuk', 'saudi arabia', 'Tabuk', 'traditional', NULL, NULL, NULL),
(10, 'University of Jeddah�', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(11, 'University of Thebes', 'saudi arabia', NULL, 'traditional', NULL, NULL, NULL),
(12, 'Imam Abdul Rahman bin Faisal University�', 'saudi arabia', 'Dammam', 'traditional', NULL, NULL, NULL),
(13, 'Islamic University�', 'saudi arabia', 'Madina', 'traditional', NULL, NULL, NULL),
(14, 'Qassim University�', 'saudi arabia', 'Buraidah', 'traditional', NULL, NULL, NULL),
(15, 'Jouf University�', 'saudi arabia', 'Qurayyat', 'traditional', NULL, NULL, NULL),
(16, 'University of Business and Technology', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(17, 'Prince Sultan University', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(18, 'Qassim National Colleges', 'saudi arabia', '�Buraidah', 'traditional', NULL, NULL, NULL),
(19, 'Effat University', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(20, 'Jeddah International College', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(21, 'Umm Al - Qura University', 'saudi arabia', 'Qunfudah', 'traditional', NULL, NULL, NULL),
(22, 'Qassim University', 'saudi arabia', 'Nabhaniyah', 'traditional', NULL, NULL, NULL),
(23, 'King Fahd University of Petroleum and Minerals', 'saudi arabia', 'Dhahran', 'traditional', NULL, NULL, NULL),
(24, 'University of Jazan', 'saudi arabia', 'Jazan', 'traditional', NULL, NULL, NULL),
(25, 'Al Baha University', 'saudi arabia', 'Al Baha', 'traditional', NULL, NULL, NULL),
(26, 'Prince Sultan University', 'saudi arabia', '�Riyadh', 'traditional', NULL, NULL, NULL),
(27, 'Imam Abdul Rahman bin Faisal University', 'saudi arabia', 'Dammam', 'traditional', NULL, NULL, NULL),
(28, 'King Fahd University of Petroleum and Minerals', 'saudi arabia', '�Dhahran', 'traditional', NULL, NULL, NULL),
(29, 'Al - Yamamah University Riyadh', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(30, 'University of Tabuk', 'saudi arabia', 'Al Wajh', 'traditional', NULL, NULL, NULL),
(31, 'University of Hail', 'saudi arabia', 'Hail', 'traditional', NULL, NULL, NULL),
(32, 'Najran University', 'saudi arabia', 'Najran', 'traditional', NULL, NULL, NULL),
(33, 'Dar Al Uloom University', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(34, 'Prince Mohammed bin Fahd University', 'saudi arabia', NULL, 'traditional', NULL, NULL, NULL),
(35, 'King Faisal University�', 'saudi arabia', 'Ahsa', 'traditional', NULL, NULL, NULL),
(36, 'Jouf University', 'saudi arabia', 'Sakaka', 'traditional', NULL, NULL, NULL),
(37, 'Princess Noura University', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(38, 'Northern Borders University�', 'saudi arabia', 'Arar', 'traditional', NULL, NULL, NULL),
(39, 'Northern Borders University', 'saudi arabia', 'Arar', 'traditional', NULL, NULL, NULL),
(40, 'University of Jeddah', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(41, 'Dar Al Hikma University', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(42, 'Qassim University', 'saudi arabia', 'Buraidah', 'traditional', NULL, NULL, NULL),
(43, 'Taif University', 'saudi arabia', 'Taif', 'traditional', NULL, NULL, NULL),
(44, 'King Saud University�', 'saudi arabia', '�Riyadh', 'traditional', NULL, NULL, NULL),
(45, 'University of Bisha', 'saudi arabia', 'Bisha', 'traditional', NULL, NULL, NULL),
(46, 'Imam Muhammad bin Saud Islamic University�', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(47, 'Qassim University�', 'saudi arabia', 'Unaizah', 'traditional', NULL, NULL, NULL),
(48, 'Northern Borders University�', 'saudi arabia', '�Rafha', 'traditional', NULL, NULL, NULL),
(49, 'Majmaah University�', 'saudi arabia', '�Majmaah', 'traditional', NULL, NULL, NULL),
(50, 'University of Hail�', 'saudi arabia', '�Hail', 'traditional', NULL, NULL, NULL),
(51, 'Al Baha University�', 'saudi arabia', '�Al Baha', 'traditional', NULL, NULL, NULL),
(52, 'Dig subcontractors University�', 'saudi arabia', '�drilling sub', 'traditional', NULL, NULL, NULL),
(53, 'Umm�Al�Qura University�', 'saudi arabia', '�Qunfudah', 'traditional', NULL, NULL, NULL),
(54, 'King Khalid University�', 'saudi arabia', '�Abha', 'traditional', NULL, NULL, NULL),
(55, 'University of Jazan�', 'saudi arabia', '�Jazan', 'traditional', NULL, NULL, NULL),
(56, 'Hafr Al', 'saudi arabia', 'Batin University', 'traditional', NULL, NULL, NULL),
(57, 'Imam Muhammad bin Saud Islamic University', 'saudi arabia', 'Ahsa', 'traditional', NULL, NULL, NULL),
(58, 'King Faisal University�', 'saudi arabia', '�Ahsa', 'traditional', NULL, NULL, NULL),
(59, 'Shaqra University�', 'saudi arabia', '�Dawadmi', 'traditional', NULL, NULL, NULL),
(60, 'Imam Abdul Rahman bin Faisal University�', 'saudi arabia', '�Dammam', 'traditional', NULL, NULL, NULL),
(61, 'King Abdulaziz University�', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(62, 'Qassim University�', 'saudi arabia', '�Buraidah', 'traditional', NULL, NULL, NULL),
(63, 'King Abdulaziz University�', 'saudi arabia', '�Jeddah', 'traditional', NULL, NULL, NULL),
(64, 'King Abdulaziz University�', 'saudi arabia', '�Rabigh', 'traditional', NULL, NULL, NULL),
(65, 'University of Jeddah�', 'saudi arabia', '�Khulais', 'traditional', NULL, NULL, NULL),
(66, 'King Abdulaziz University', 'saudi arabia', 'Rabigh', 'traditional', NULL, NULL, NULL),
(67, 'University of Tabuk�', 'saudi arabia', 'Al�Wajh', 'traditional', NULL, NULL, NULL),
(68, 'Taibah University�', 'saudi arabia', '�Yanbu', 'traditional', NULL, NULL, NULL),
(69, 'Taif University�', 'saudi arabia', '�Taif', 'traditional', NULL, NULL, NULL),
(70, 'University of Jeddah', 'saudi arabia', 'Khulais', 'traditional', NULL, NULL, NULL),
(71, 'Prince Mohammed Bin Fahd University��News', 'saudi arabia', '�Laith', 'traditional', NULL, NULL, NULL),
(72, 'Ibn Rushd College', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(73, 'Islamic University', 'saudi arabia', 'Medina', 'traditional', NULL, NULL, NULL),
(74, 'Taibah University', 'saudi arabia', 'Yanbu', 'traditional', NULL, NULL, NULL),
(75, 'Umm Al', 'saudi arabia', 'Qura University', 'traditional', NULL, NULL, NULL),
(76, 'Jouf University�', 'saudi arabia', '�Sakaka', 'traditional', NULL, NULL, NULL),
(77, 'University of Shaqra�', 'saudi arabia', 'Laith', 'traditional', NULL, NULL, NULL),
(78, 'University of Tabuk�', 'saudi arabia', '�Tabuk', 'traditional', NULL, NULL, NULL),
(79, 'University of Jeddah�', 'saudi arabia', '�Jeddah', 'traditional', NULL, NULL, NULL),
(80, 'Shaqra University', 'saudi arabia', 'Dawadmi', 'traditional', NULL, NULL, NULL),
(81, 'Shaqra University', 'saudi arabia', 'Afif', 'traditional', NULL, NULL, NULL),
(82, 'Al Baha University', 'saudi arabia', 'Baha', 'traditional', NULL, NULL, NULL),
(83, 'King Fahd University of Petroleum and Minerals�', 'saudi arabia', '�Dhahran', 'traditional', NULL, NULL, NULL),
(84, 'King Fahd University of Petroleum and Minerals', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(85, 'Prince Sultan University�', 'saudi arabia', '�Riyadh', 'traditional', NULL, NULL, NULL),
(86, 'University of Business and Technology�', 'saudi arabia', '�Jeddah', 'traditional', NULL, NULL, NULL),
(87, 'Islamic University�', 'saudi arabia', '�Medina', 'traditional', NULL, NULL, NULL),
(88, 'Imam Muhammad bin Saud Islamic University', 'saudi arabia', '�Riyadh', 'traditional', NULL, NULL, NULL),
(89, 'Imam Abdul Rahman�bin Faisal�University�', 'saudi arabia', '�Dammam', 'traditional', NULL, NULL, NULL),
(90, 'Arab Open University', 'saudi arabia', '�Kharj', 'home', NULL, NULL, NULL),
(91, 'King Saud University between Abdulaziz for Health ', 'saudi arabia', '�Riyadh', 'traditional', NULL, NULL, NULL),
(92, 'Saudi Electronic University�', 'saudi arabia', '�Riyadh', 'traditional', NULL, NULL, NULL),
(93, 'Saudi Electronic University�', 'saudi arabia', '�Dammam', 'traditional', NULL, NULL, NULL),
(94, 'Saudi Electronic University', 'saudi arabia', 'Jeddah', 'traditional', NULL, NULL, NULL),
(95, 'King Saud University between Abdulaziz for Health ', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(96, 'Private Medical Care College', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(97, 'Riyadh Colleges of Dentistry and Pharmacy', 'saudi arabia', 'Riyadh', 'traditional', NULL, NULL, NULL),
(98, 'Knowledge Colleges�', 'saudi arabia', '�Riyadh', 'traditional', NULL, NULL, NULL),
(99, 'Private Medical Care College�', 'saudi arabia', '�Riyadh', 'traditional', NULL, NULL, NULL),
(100, 'Saad College of Nursing and�Health Sciences', 'saudi arabia', '�Kbralohlih', 'traditional', NULL, NULL, NULL),
(101, 'Batterjee College of Medical Sciences and Technolo', 'saudi arabia', '�Jeddah', 'traditional', NULL, NULL, NULL),
(102, 'Saudi Electronic University�', 'saudi arabia', '�Jeddah', 'traditional', NULL, NULL, NULL);

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
  ADD PRIMARY KEY (`jobID`),
  ADD KEY `foreign key` (`majorID`) USING BTREE,
  ADD KEY `job-per` (`personID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD KEY `pk` (`majorID`);

--
-- Indexes for table `personalaty`
--
ALTER TABLE `personalaty`
  ADD PRIMARY KEY (`personID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectID`),
  ADD KEY `FK` (`majorID`);

--
-- Indexes for table `subject_universty`
--
ALTER TABLE `subject_universty`
  ADD KEY `inv` (`univID`),
  ADD KEY `sub` (`subjectID`);

--
-- Indexes for table `universty`
--
ALTER TABLE `universty`
  ADD PRIMARY KEY (`univID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employ`
--
ALTER TABLE `employ`
  MODIFY `empID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `majorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `universty`
--
ALTER TABLE `universty`
  MODIFY `univID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `employ`
--
ALTER TABLE `employ`
  ADD CONSTRAINT `univ` FOREIGN KEY (`univID`) REFERENCES `universty` (`univID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `iob-maj` FOREIGN KEY (`majorID`) REFERENCES `major` (`majorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job-per` FOREIGN KEY (`personID`) REFERENCES `personalaty` (`personID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`majorID`) REFERENCES `major` (`majorID`);

--
-- القيود للجدول `subject_universty`
--
ALTER TABLE `subject_universty`
  ADD CONSTRAINT `inv` FOREIGN KEY (`univID`) REFERENCES `universty` (`univID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub` FOREIGN KEY (`subjectID`) REFERENCES `subject` (`subjectID`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- بنية الجدول `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- إرجاع أو استيراد بيانات الجدول `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('khotak', 'link', 'varchar', '255', 'utf8_general_ci', 1, ',', '');

-- --------------------------------------------------------

--
-- بنية الجدول `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- إرجاع أو استيراد بيانات الجدول `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- بنية الجدول `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- إرجاع أو استيراد بيانات الجدول `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'khotak', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"employ\",\"job\",\"major\",\"subject\",\"universty\"],\"table_structure[]\":[\"employ\",\"job\",\"major\",\"subject\",\"universty\"],\"table_data[]\":[\"employ\",\"job\",\"major\",\"subject\",\"universty\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (ØªØ§Ø¨Ø¹)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (ØªØ§Ø¨Ø¹)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'server', 'kotak', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"khotak\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (ØªØ§Ø¨Ø¹)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (ØªØ§Ø¨Ø¹)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- بنية الجدول `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- إرجاع أو استيراد بيانات الجدول `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[{\"db\":\"khotak\",\"table\":\"test\"},{\"db\":\"khotak\",\"table\":\"disc\"}]');

-- --------------------------------------------------------

--
-- بنية الجدول `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- إرجاع أو استيراد بيانات الجدول `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"khotak\",\"table\":\"personalaty\"},{\"db\":\"khotak\",\"table\":\"subject\"},{\"db\":\"khotak\",\"table\":\"job\"},{\"db\":\"khotak\",\"table\":\"major\"},{\"db\":\"khotak\",\"table\":\"universty\"},{\"db\":\"khotak\",\"table\":\"test\"},{\"db\":\"khotak\",\"table\":\"subject_universty\"},{\"db\":\"khotak\",\"table\":\"employ\"},{\"db\":\"khotak\",\"table\":\"pesonalaty\"},{\"db\":\"mysql\",\"table\":\"columns_priv\"}]');

-- --------------------------------------------------------

--
-- بنية الجدول `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- إرجاع أو استيراد بيانات الجدول `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('khotak', 'employ', 'name'),
('khotak', 'job', 'name'),
('khotak', 'personalaty', 'personID'),
('khotak', 'universty', 'name');

-- --------------------------------------------------------

--
-- بنية الجدول `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- إرجاع أو استيراد بيانات الجدول `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'khotak', 'job', '{\"CREATE_TIME\":\"2019-11-27 09:38:26\",\"sorted_col\":\"`personID` ASC\"}', '2019-12-04 20:32:54'),
('root', 'khotak', 'personalaty', '[]', '2019-11-30 01:17:16'),
('root', 'khotak', 'subject', '{\"sorted_col\":\"`subject`.`subjectID`  ASC\"}', '2019-12-03 02:26:25'),
('root', 'khotak', 'subject_universty', '{\"sorted_col\":\"`subject_universty`.`subjectID` ASC\"}', '2019-12-02 23:54:06'),
('root', 'khotak', 'universty', '{\"sorted_col\":\"`universty`.`univID`  DESC\"}', '2019-12-03 02:42:35');

-- --------------------------------------------------------

--
-- بنية الجدول `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- إرجاع أو استيراد بيانات الجدول `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-12-05 00:34:10', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ar\"}');

-- --------------------------------------------------------

--
-- بنية الجدول `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- بنية الجدول `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
