-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 09:19 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minerva2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappcontacts`
--

CREATE TABLE `tblappcontacts` (
  `ContactID` int(11) NOT NULL,
  `fkPersonID` int(11) NOT NULL,
  `Value` varchar(48) DEFAULT NULL,
  `Ext` int(8) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `ContactType` varchar(24) NOT NULL,
  `IsPreferred` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappcontacts`
--

INSERT INTO `tblappcontacts` (`ContactID`, `fkPersonID`, `Value`, `Ext`, `Description`, `ContactType`, `IsPreferred`) VALUES
(1, 2245, 'jackandjill@mail.com', NULL, 'Test', 'phone-home', 1),
(5, 2263, 'phelps@mail.com', NULL, 'email', 'email-home', 0),
(6, 2249, 'gregson@mail.com', NULL, 'email', 'email-home', 1),
(7, 2250, 'donald@mail.com', NULL, 'email', 'email-home', 1),
(8, 2251, 'bertha@mail.com', NULL, 'email', 'email-home', 1),
(9, 2252, 'porker@mail.com', NULL, 'email', 'email-home', 1),
(10, 2253, 'wermhat@mail.com', NULL, 'email', 'email-home', 1),
(11, 2254, 'johnson@mail.com', NULL, 'email', 'email-home', 1),
(12, 2255, 'private@mail.com', NULL, 'email', 'email-home', 1),
(13, 2256, 'james@mail.com', NULL, 'email', 'email-home', 1),
(14, 2264, 'harvey@mail.com', NULL, 'email', 'email-home', 1),
(15, 2258, 'vonson@mail.com', NULL, 'email', 'email-home', 1),
(16, 2259, 'porter@mail.com', NULL, 'email', 'email-home', 1),
(17, 2248, 'roald@mail.com', NULL, 'email', 'email-home', 1),
(18, 2261, 'status@mail.com', NULL, 'email', 'email-home', 1),
(19, 2262, 'app@mail.com', NULL, 'email', 'email-home', 1),
(20, 2265, 'gita.phelps@gmail.com', NULL, 'email', 'email-home', 1),
(21, 2267, '4445556666', NULL, 'fred-phone', 'phone-home', 1),
(22, 2267, 'fredcontact@email.com', NULL, 'fred-email', 'email-home', 0),
(23, 2268, '1238888888', NULL, 'janesphone', 'phone-home', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblappdocs`
--

CREATE TABLE `tblappdocs` (
  `dateUploaded` date NOT NULL,
  `applicantID` int(255) NOT NULL,
  `docType` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `filePath` varchar(255) CHARACTER SET utf8 NOT NULL,
  `documentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappdocs`
--

INSERT INTO `tblappdocs` (`dateUploaded`, `applicantID`, `docType`, `note`, `filePath`, `documentID`) VALUES
('2019-04-24', 12, 'Education_Plan_Documentation', 'Testing123', '../mentorFiles/12apple.jpg', 1),
('2019-04-24', 12, 'Medical_Insurance_Forms', 'Testing123', '../mentorFiles/pdfTry.pdf', 3),
('2019-04-24', 12, 'Medical_History_Forms', 'Testing123', '../mentorFiles/12chicken.jpeg', 7),
('2019-05-06', 3, 'Education_Plan_Documentation', 'Screenshot from 2017-03-15 10-35-46.png', '../mentorFiles/12apple.jpg', 1),
('2019-04-24', 12, 'Mentor_Application', 'Testing123', '../mentorFiles/12chicken.jpeg', 10),
('2019-05-06', 1, 'Education_Plan_Documentation', '4320_ScrenMockups.docx', '../mentorFiles/12apple.jpg', 1),
('2019-05-07', 5, 'School_Behavioral_&_Attendance_Records', '20190220_145223(0).jpg', '../mentorFiles/120190220_145223.jpg', 2),
('2019-05-07', 3, 'Medical_Insurance_Forms', '20190220_145223(0).jpg', '../mentorFiles/pdfTry.pdf', 3),
('2019-05-07', 1, 'Medical_Insurance_Forms', '20190220_145223(0).jpg', '../mentorFiles/pdfTry.pdf', 3),
('2019-05-07', 4, 'Medical_Insurance_Forms', '20190220_145223(0).jpg', '../mentorFiles/pdfTry.pdf', 3),
('2019-05-07', 5, 'Medical_Insurance_Forms', '20190220_145223(0).jpg', '../mentorFiles/pdfTry.pdf', 3),
('2019-05-08', 1, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 5, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 3, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 4, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 6, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 7, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 8, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 9, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 10, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 11, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpg', 12),
('2019-05-08', 12, 'Government_Issued_ID', '', '../mentorFiles/12chicken.jpeg', 12),
('2019-05-08', 3, 'Unofficial_Academic_Transcript', '', '../mentorFiles/120190220_145223.jpg', 5),
('2019-05-08', 3, 'Medical_History_Forms', '', '../mentorFiles/120190220_145223.jpg', 7),
('2019-05-08', 3, 'Mental_Health_Information_Form', '', '../mentorFiles/mental.pdf', 13),
('2019-05-08', 12, 'Immunization_Record', '', '../mentorFiles/12chicken.jpg', 4),
('2019-05-08', 1, 'Copy_of_Social_Security_Card', '', '../mentorFiles/120190220_145223.jpg', 11),
('2019-05-08', 1, 'Copy_of_Birth_Certificate', '', '../mentorFiles/birth.pdf', 8),
('2019-05-08', 3, 'Mentor_Application', '', '../mentorFiles/120190220_145223.jpg', 10),
('2019-05-09', 21, 'Education_Plan_Documentation', '44320_ScrenMockups.docx', '../mentorFiles/12apple.jpg', 1),
('2019-05-09', 21, 'Copy_of_Birth_Certificate', 'Birth certificate.docx', '../mentorFiles/birth.pdf', 8),
('2019-05-13', 6, 'Education_Plan_Documentation', 'hello.ada', '../mentorFiles/12apple.jpg', 1),
('2019-05-13', 22, 'Education_Plan_Documentation', 'hw_apr3.docx', '../mentorFiles/12apple.jpg', 1),
('2019-07-23', 1, 'Mental_Health_Information_Form', 'IMG_7131.jpg', '../mentorFiles/mental.pdf', 13),
('2019-08-17', 6, 'Education_Plan_Documentation', '', '../mentorFiles/12apple.jpg', 1),
('2019-08-17', 6, 'Medical_Insurance_Forms', '', '../mentorFiles/pdfTry.pdf', 3),
('2019-08-17', 6, 'Medical_Insurance_Forms', 'TheSamaritanAugust2019.pdf', '../mentorFiles/pdfTry.pdf', 3),
('2019-08-17', 24, 'Education_Plan_Documentation', 'recruit2.txt', '../mentorFiles/12apple.jpg', 1),
('2019-08-17', 24, 'Education_Plan_Documentation', 'recruit2.txt', '../mentorFiles/12apple.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblappguardians`
--

CREATE TABLE `tblappguardians` (
  `GuardianID` int(11) NOT NULL,
  `ApplicantID` int(11) NOT NULL,
  `fName` varchar(255) DEFAULT NULL,
  `lName` varchar(255) DEFAULT NULL,
  `Relationship` varchar(48) DEFAULT NULL,
  `PhoneNum` varchar(15) DEFAULT NULL,
  `Email` varchar(48) DEFAULT NULL,
  `IsLegalGuard` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblappguardians`
--

INSERT INTO `tblappguardians` (`GuardianID`, `ApplicantID`, `fName`, `lName`, `Relationship`, `PhoneNum`, `Email`, `IsLegalGuard`) VALUES
(4, 19, 'Guard1', 'One', 'Father', '1111111', '', 1),
(5, 19, 'Guard2', 'Two', 'Mother', '', 'wmail', 0),
(6, 20, 'test_gard', 'gard', 'dad', '', '', 0),
(7, 20, 'test_gard2', '', '', '', '', 0),
(8, 23, 'betty-jean', 'rubble', 'sister', '222222222', 'betty-jean.rubble@bedrock.com', 1),
(9, 23, 'barney-boy', 'milton', 'brother', '33333333', '', 0),
(10, 24, 'Lewis', 'Honeycut', 'uncle', '1110003333', 'unclelewis@auntsusiehouse.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicantforms`
--

CREATE TABLE `tblapplicantforms` (
  `formID` int(99) NOT NULL,
  `formName` varchar(255) NOT NULL,
  `formText` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblapplicantforms`
--

INSERT INTO `tblapplicantforms` (`formID`, `formName`, `formText`) VALUES
(2, 'Rejected', 'We regret to inform you that you have not been accepted, {lastname}.\n        '),
(18, 'CallBack', 'Dear {firstname} {lastname},\r\n   Please call back at 67833332233\r\n        \r\n        '),
(22, 'Accepted', 'Dear {firstname} {lastname},\nCongratulations! You made it!\n\nYour email is {email}.\nThis is an update.\n\n        \n        \n        '),
(30, 'liuform', '{firstname} hello {lastname} {email}');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicants`
--

CREATE TABLE `tblapplicants` (
  `ApplicantID` int(11) NOT NULL,
  `ApplicantStatus` int(4) NOT NULL,
  `fkPersonID` int(11) NOT NULL,
  `Income` int(11) DEFAULT NULL,
  `ReferralSource` varchar(48) NOT NULL,
  `PrevSchool` varchar(48) NOT NULL,
  `PrevSchoolCity` varchar(48) NOT NULL,
  `PrevSchoolState` varchar(48) NOT NULL,
  `StudentClassification` varchar(48) NOT NULL,
  `AcademicCredits` int(4) NOT NULL,
  `Withdrawl` tinyint(1) NOT NULL,
  `HighestEducation` varchar(48) NOT NULL,
  `EmploymentStatus` varchar(48) NOT NULL,
  `LegalStatus` tinyint(1) NOT NULL,
  `LivingWith` varchar(48) NOT NULL,
  `Status` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblapplicants`
--

INSERT INTO `tblapplicants` (`ApplicantID`, `ApplicantStatus`, `fkPersonID`, `Income`, `ReferralSource`, `PrevSchool`, `PrevSchoolCity`, `PrevSchoolState`, `StudentClassification`, `AcademicCredits`, `Withdrawl`, `HighestEducation`, `EmploymentStatus`, `LegalStatus`, `LivingWith`, `Status`) VALUES
(2, 0, 2264, 0, '', '', '', '', '', 0, 0, '', '', 0, '', 'Submitted'),
(3, 0, 2262, 0, 'Testing', '', '', '', '', 0, 0, '', '', 0, '', 'Submitted'),
(4, 1, 2248, 455555, 'source', 'baldwin high', '', '', '', 15, 0, '12th grade', 'Employed', 1, '', 'InReview'),
(5, 0, 2249, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', 'InReview'),
(6, 0, 2250, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', 'InReview'),
(7, 0, 2251, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', 'InReview'),
(8, 3, 2252, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', 'InReview'),
(9, 0, 2253, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', 'InReview'),
(10, 2, 2254, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', 'InReview'),
(11, 0, 2255, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', 'InReview'),
(12, 2, 2263, 45, 'Me', 'GCSU', 'Atlanta', 'GA', '45', 45, 0, 'Some', 'Yes', 1, 'Father', 'Submitted'),
(21, 3, 2265, 0, '', '', '', '', '', 0, 0, '', '', 0, '', 'Submitted'),
(22, 0, 2266, 1000000, '', '', '', '', '', 0, 0, '', '', 0, '', 'Submitted'),
(23, 0, 2267, 555, 'Fred Referral', 'FredSchool', 'FredSchoolCity', 'GA', 'FredSchoolClass', 3, 0, 'HighEd', 'EmpStatus', 1, 'LivingWith', 'InReview'),
(24, 1, 2268, 12345, 'referral', 'peach county high schoo', 'Fort valle', 'Ga', 'Sophomore', 12, 1, '12', 'burgerking', 1, 'aunt susie', 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `tblpeople2`
--

CREATE TABLE `tblpeople2` (
  `PersonID` int(11) NOT NULL,
  `PSalutation` varchar(10) DEFAULT NULL,
  `PersonFN` varchar(25) DEFAULT NULL,
  `PersonMN` varchar(25) DEFAULT NULL,
  `PersonLN` varchar(40) DEFAULT NULL,
  `PersonGenQual` varchar(5) DEFAULT NULL,
  `PersonAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  `PersonNotes` longtext DEFAULT NULL,
  `PAddress` varchar(100) DEFAULT NULL,
  `PAddress2` varchar(100) DEFAULT NULL,
  `PCity` varchar(35) DEFAULT NULL,
  `PState` varchar(2) DEFAULT NULL,
  `PZip` varchar(5) DEFAULT NULL,
  `PMailAddress` varchar(100) DEFAULT NULL,
  `PMailAddress2` varchar(100) DEFAULT NULL,
  `PMailCity` varchar(35) DEFAULT NULL,
  `PMailState` varchar(2) DEFAULT NULL,
  `PMailZip` varchar(5) DEFAULT NULL,
  `PCounty` varchar(25) DEFAULT NULL,
  `PUrbanization` varchar(255) DEFAULT NULL,
  `PEmail` varchar(255) DEFAULT NULL,
  `PDOB` datetime DEFAULT NULL,
  `PSSN` varchar(9) NOT NULL DEFAULT '',
  `PGender` varchar(1) NOT NULL DEFAULT '',
  `PEthnicityIsHispanic` tinyint(1) DEFAULT 0,
  `EXISTING_PersonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpeople2`
--

INSERT INTO `tblpeople2` (`PersonID`, `PSalutation`, `PersonFN`, `PersonMN`, `PersonLN`, `PersonGenQual`, `PersonAdded`, `PersonNotes`, `PAddress`, `PAddress2`, `PCity`, `PState`, `PZip`, `PMailAddress`, `PMailAddress2`, `PMailCity`, `PMailState`, `PMailZip`, `PCounty`, `PUrbanization`, `PEmail`, `PDOB`, `PSSN`, `PGender`, `PEthnicityIsHispanic`, `EXISTING_PersonID`) VALUES
(2247, '\n         ', 'Duncan', NULL, 'Williams', '\n    ', '2019-05-06 14:07:52', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2249, NULL, 'Greg', NULL, 'Gregson', NULL, '2019-05-06 19:52:38', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2250, NULL, 'Charlie', NULL, 'Donald', NULL, '2019-05-06 19:53:33', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2251, NULL, 'Beth', NULL, 'Bertha', NULL, '2019-05-06 20:04:36', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2252, NULL, 'Peter', NULL, 'Porker', NULL, '2019-05-06 20:06:09', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2253, NULL, 'Hans', NULL, 'Wermhat', NULL, '2019-05-06 20:13:32', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2254, NULL, 'Samuel', NULL, 'Johnson', NULL, '2019-05-06 20:16:02', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2255, NULL, 'Marlo', NULL, 'Private', NULL, '2019-05-06 20:16:18', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2256, NULL, 'Rick', NULL, 'James', NULL, '2019-05-06 20:18:28', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2257, NULL, 'Harold', NULL, 'Harvey', NULL, '2019-05-06 20:26:03', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2258, NULL, 'Daniel', NULL, 'Vonson', NULL, '2019-05-06 20:28:41', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2259, NULL, 'Eric', NULL, 'Porter', NULL, '2019-05-06 20:31:17', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2260, NULL, 'Quinn', NULL, 'Roald', NULL, '2019-05-06 20:33:03', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2261, NULL, 'Test', NULL, 'Status', NULL, '2019-05-06 20:48:15', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2263, NULL, 'For Dr', NULL, 'Phelps', NULL, '2019-05-06 21:00:17', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, 'Something', '\n                        Metro\n                        ', 'email@hotmail.com', '2019-05-01 04:00:00', '444444444', 'F', 0, NULL),
(2265, '\n         ', 'George', NULL, 'Zellner', NULL, '2019-05-09 14:38:51', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2266, NULL, 'Brian', NULL, 'Williams', NULL, '2019-05-13 02:44:52', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '', '', 0, NULL),
(2267, NULL, 'Fred', 'G', 'Flintstone', NULL, '2019-08-15 11:27:57', 'THis is fred flintstone note', 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', '123 PO Box', 'UPS A', 'Slaters ', 'FL', '22222', 'Dinosaur', NULL, 'email@hotmail.com', '0000-00-00 00:00:00', '111222333', 'M', 0, NULL),
(2268, '\n         ', 'Jane', 'Jerica', 'Jones', '\n    ', '2019-08-16 23:32:47', NULL, 'XXXXXX', 'YYYYYYYYYYY', 'city', 'GA', '31061', '200 Pobox', 'Apt2', 'Hickam', 'HI', '88888', 'peach', '\n                        City\n                        ', 'email@hotmail.com', '2003-01-02 05:00:00', '11223333', 'F', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tlkpapplicationfiles`
--

CREATE TABLE `tlkpapplicationfiles` (
  `AutoID` int(11) NOT NULL,
  `isRequired` tinyint(4) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Notes` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlkpapplicationfiles`
--

INSERT INTO `tlkpapplicationfiles` (`AutoID`, `isRequired`, `Description`, `Notes`) VALUES
(1, 0, 'Education_Plan_Documentation', ''),
(2, 0, 'School_Behavioral_&_Attendance_Records', ''),
(3, 0, 'Medical_Insurance_Forms', 'provide medical history'),
(4, 0, 'Immunization_Record', 'new plan'),
(5, 0, 'Unofficial_Academic_Transcript', 'newer plan'),
(6, 0, 'Candidate_Application_Document_Form', ''),
(7, 0, 'Medical_History_Forms', ''),
(8, 1, 'Copy_of_Birth_Certificate', ''),
(9, 0, 'Legal_History_Form', ''),
(10, 0, 'Mentor_Application', ''),
(11, 1, 'Copy_of_Social_Security_Card', ''),
(12, 0, 'Government_Issued_ID', ''),
(13, 0, 'Mental_Health_Information_Form', ''),
(14, 1, 'new type', 'this is  ademo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappcontacts`
--
ALTER TABLE `tblappcontacts`
  ADD PRIMARY KEY (`ContactID`);

--
-- Indexes for table `tblappguardians`
--
ALTER TABLE `tblappguardians`
  ADD PRIMARY KEY (`GuardianID`);

--
-- Indexes for table `tblapplicantforms`
--
ALTER TABLE `tblapplicantforms`
  ADD PRIMARY KEY (`formID`);

--
-- Indexes for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  ADD PRIMARY KEY (`ApplicantID`);

--
-- Indexes for table `tblpeople2`
--
ALTER TABLE `tblpeople2`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID` (`PersonID`),
  ADD KEY `EXISTING_PersonID` (`EXISTING_PersonID`),
  ADD KEY `PDOB` (`PDOB`),
  ADD KEY `PersonLN` (`PersonLN`),
  ADD KEY `PSSN` (`PSSN`);

--
-- Indexes for table `tlkpapplicationfiles`
--
ALTER TABLE `tlkpapplicationfiles`
  ADD PRIMARY KEY (`AutoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappcontacts`
--
ALTER TABLE `tblappcontacts`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblappguardians`
--
ALTER TABLE `tblappguardians`
  MODIFY `GuardianID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblapplicantforms`
--
ALTER TABLE `tblapplicantforms`
  MODIFY `formID` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  MODIFY `ApplicantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblpeople2`
--
ALTER TABLE `tblpeople2`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2269;

--
-- AUTO_INCREMENT for table `tlkpapplicationfiles`
--
ALTER TABLE `tlkpapplicationfiles`
  MODIFY `AutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
