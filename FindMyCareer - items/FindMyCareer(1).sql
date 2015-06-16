-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2015 at 01:43 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `FindMyCareer`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryDesc` varchar(45) DEFAULT NULL,
  `Industry_industryID` int(11) NOT NULL,
  PRIMARY KEY (`categoryID`),
  UNIQUE KEY `categoryID_UNIQUE` (`categoryID`),
  KEY `fk_Category_Industry_idx` (`Industry_industryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`categoryID`, `categoryDesc`, `Industry_industryID`) VALUES
(1, 'Accounting', 1),
(2, 'Sub-Creative', 2),
(3, 'Business', 1),
(4, 'Human Resources', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE IF NOT EXISTS `Course` (
  `courseID` int(11) NOT NULL AUTO_INCREMENT,
  `courseDesc` varchar(45) DEFAULT NULL,
  `Sub-Pathway_subPathwayID` int(11) NOT NULL,
  PRIMARY KEY (`courseID`),
  KEY `fk_Course_Sub-Pathway1_idx` (`Sub-Pathway_subPathwayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Industry`
--

CREATE TABLE IF NOT EXISTS `Industry` (
  `industryID` int(11) NOT NULL AUTO_INCREMENT,
  `industryDesc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`industryID`),
  UNIQUE KEY `industryID_UNIQUE` (`industryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Industry`
--

INSERT INTO `Industry` (`industryID`, `industryDesc`) VALUES
(1, 'Business'),
(2, 'Creative industries');

-- --------------------------------------------------------

--
-- Table structure for table `Job`
--

CREATE TABLE IF NOT EXISTS `Job` (
  `jobID` int(11) NOT NULL AUTO_INCREMENT,
  `jobDesc` varchar(45) DEFAULT NULL,
  `Course_courseID` int(11) NOT NULL,
  PRIMARY KEY (`jobID`),
  KEY `fk_Job_Course1_idx` (`Course_courseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Pathway`
--

CREATE TABLE IF NOT EXISTS `Pathway` (
  `pathwayID` int(11) NOT NULL AUTO_INCREMENT,
  `pathwayDesc` varchar(22) DEFAULT NULL,
  `Category_categoryID` int(11) NOT NULL,
  `Industry_industryID` int(11) NOT NULL,
  PRIMARY KEY (`pathwayID`),
  KEY `fk_Pathway_Category1_idx` (`Category_categoryID`),
  KEY `fk_Pathway_Industry1_idx` (`Industry_industryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Pathway`
--

INSERT INTO `Pathway` (`pathwayID`, `pathwayDesc`, `Category_categoryID`, `Industry_industryID`) VALUES
(1, 'Career Pathways', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Search`
--

CREATE TABLE IF NOT EXISTS `Search` (
  `searchID` int(11) NOT NULL AUTO_INCREMENT,
  `searchTerm` varchar(100) DEFAULT NULL,
  `searchDate` datetime DEFAULT NULL,
  `User_UserID` int(11) NOT NULL,
  PRIMARY KEY (`searchID`),
  KEY `fk_Search_User1_idx` (`User_UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Sub-Pathway`
--

CREATE TABLE IF NOT EXISTS `Sub-Pathway` (
  `subPathwayID` int(11) NOT NULL AUTO_INCREMENT,
  `subPathwayDesc` varchar(45) DEFAULT NULL,
  `Pathway_pathwayID` int(11) NOT NULL,
  `Category_categoryID` int(11) NOT NULL,
  `Industry_industryID` int(11) NOT NULL,
  PRIMARY KEY (`subPathwayID`),
  KEY `fk_Sub-Pathway_Pathway1_idx` (`Pathway_pathwayID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Sub-Pathway`
--

INSERT INTO `Sub-Pathway` (`subPathwayID`, `subPathwayDesc`, `Pathway_pathwayID`, `Category_categoryID`, `Industry_industryID`) VALUES
(3, 'Cert IV in Business', 1, 1, 1),
(4, 'Diploma of Business', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `accountType` varchar(9) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `middleName` varchar(20) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dateOfBirth` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `landLine` varchar(15) NOT NULL,
  `educationLevel` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `accountType`, `firstName`, `lastName`, `middleName`, `gender`, `dateOfBirth`, `address`, `phoneNumber`, `landLine`, `educationLevel`, `email`, `password`) VALUES
(1, 'Admin', 'test1', 'test', '', 'Male', 'test', 'test', '1', '1', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `UserHistory`
--

CREATE TABLE IF NOT EXISTS `UserHistory` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `Search_searchID` int(11) NOT NULL,
  `Course_courseID` int(11) NOT NULL,
  `Job_jobID` int(11) NOT NULL,
  `Sub-Pathway_subPathwayID` int(11) NOT NULL,
  `Pathway_pathwayID` int(11) NOT NULL,
  `Category_categoryID` int(11) NOT NULL,
  `User_UserID` int(11) NOT NULL,
  `Industry_industryID` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `fk_UserHistory_Search1_idx` (`Search_searchID`),
  KEY `fk_UserHistory_Course1_idx` (`Course_courseID`),
  KEY `fk_UserHistory_Job1_idx` (`Job_jobID`),
  KEY `fk_UserHistory_Sub-Pathway1_idx` (`Sub-Pathway_subPathwayID`),
  KEY `fk_UserHistory_Pathway1_idx` (`Pathway_pathwayID`),
  KEY `fk_UserHistory_Category1_idx` (`Category_categoryID`),
  KEY `fk_UserHistory_User1_idx` (`User_UserID`),
  KEY `fk_UserHistory_Industry1_idx` (`Industry_industryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Category`
--
ALTER TABLE `Category`
  ADD CONSTRAINT `fk_Category_Industry` FOREIGN KEY (`Industry_industryID`) REFERENCES `Industry` (`industryID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Course`
--
ALTER TABLE `Course`
  ADD CONSTRAINT `fk_Course_Sub-Pathway1` FOREIGN KEY (`Sub-Pathway_subPathwayID`) REFERENCES `Sub-Pathway` (`subPathwayID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Job`
--
ALTER TABLE `Job`
  ADD CONSTRAINT `fk_Job_Course1` FOREIGN KEY (`Course_courseID`) REFERENCES `Course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Pathway`
--
ALTER TABLE `Pathway`
  ADD CONSTRAINT `fk_Pathway_Category1` FOREIGN KEY (`Category_categoryID`) REFERENCES `Category` (`categoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pathway_Industry1` FOREIGN KEY (`Industry_industryID`) REFERENCES `Industry` (`industryID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Search`
--
ALTER TABLE `Search`
  ADD CONSTRAINT `fk_Search_User1` FOREIGN KEY (`User_UserID`) REFERENCES `User` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Sub-Pathway`
--
ALTER TABLE `Sub-Pathway`
  ADD CONSTRAINT `fk_Sub-Pathway_Pathway1` FOREIGN KEY (`Pathway_pathwayID`) REFERENCES `Pathway` (`pathwayID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `UserHistory`
--
ALTER TABLE `UserHistory`
  ADD CONSTRAINT `fk_UserHistory_Category1` FOREIGN KEY (`Category_categoryID`) REFERENCES `Category` (`categoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UserHistory_Course1` FOREIGN KEY (`Course_courseID`) REFERENCES `Course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UserHistory_Industry1` FOREIGN KEY (`Industry_industryID`) REFERENCES `Industry` (`industryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UserHistory_Job1` FOREIGN KEY (`Job_jobID`) REFERENCES `Job` (`jobID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UserHistory_Pathway1` FOREIGN KEY (`Pathway_pathwayID`) REFERENCES `Pathway` (`pathwayID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UserHistory_Search1` FOREIGN KEY (`Search_searchID`) REFERENCES `Search` (`searchID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UserHistory_Sub-Pathway1` FOREIGN KEY (`Sub-Pathway_subPathwayID`) REFERENCES `Sub-Pathway` (`subPathwayID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UserHistory_User1` FOREIGN KEY (`User_UserID`) REFERENCES `User` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
