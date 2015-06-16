-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 15, 2015 at 05:00 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycareer`
--

-- --------------------------------------------------------

--
-- Table structure for table `career_path`
--

CREATE TABLE IF NOT EXISTS `career_path` (
  `career_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `career_path_name` varchar(45) DEFAULT NULL,
  `categories_category_id` int(11) NOT NULL,
  `industries_industry_id` int(11) NOT NULL,
  PRIMARY KEY (`career_path_id`,`categories_category_id`),
  KEY `fk_career_path_categories1_idx` (`categories_category_id`),
  KEY `fk_career_path_industry1_idx` (`industries_industry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `career_path`
--

INSERT INTO `career_path` (`career_path_id`, `career_path_name`, `categories_category_id`, `industries_industry_id`) VALUES
(1, 'Certificate in Accounting', 1, 1),
(2, 'Diploma in Accounting', 1, 1),
(3, 'Bachelor of Accounting', 1, 1),
(4, 'Certificate in Business', 2, 1),
(5, 'Diploma of Business', 2, 1),
(6, 'Bachelor of Business', 2, 1),
(7, 'Certificate in Human Resources', 3, 1),
(8, 'Diploma of Human Resources', 3, 1),
(9, 'Bachelor of Human Resources', 3, 1),
(10, 'Certificate IV in IT', 4, 1),
(11, 'Diploma of Software Development', 4, 1),
(12, 'Diploma of Networking', 4, 1),
(13, 'Certificate in Management', 5, 1),
(14, 'Diploma of Management', 5, 1),
(15, 'Bachelor of Management', 5, 1),
(16, 'Certificate in Tourism & Hospitality', 6, 1),
(17, 'Diploma of Tourism & Hospitality', 6, 1),
(18, 'Bachelor of Tourism & Hospitality', 6, 1),
(19, 'Certificate in Creative Industries sub 1', 7, 2),
(20, 'Diploma of Creative Industries sub 1', 7, 2),
(21, 'Bachelor of Creative Industries sub 1', 7, 2),
(22, 'Certificate in Creative Industries sub 2', 8, 2),
(23, 'Diploma of Creative Industries sub 2', 8, 2),
(24, 'Bachelor of Creative Industries sub 2', 8, 2),
(25, 'Certificate in Creative Industries sub 3', 9, 2),
(26, 'Diploma of Creative Industries sub 3', 9, 2),
(27, 'Bachelor of Creative Industries sub 3', 9, 2),
(28, 'Certificate in Health sub 1', 10, 3),
(29, 'Diploma of Health sub 1', 10, 3),
(30, 'Bachelor in Health sub 1', 10, 3),
(31, 'Certificate in Health sub 2', 11, 3),
(32, 'Diploma of Health sub 2', 11, 3),
(33, 'Bachelor of Health sub 2', 11, 3),
(34, 'Certificate in Health sub 3', 12, 3),
(35, 'Diploma of Health sub 3', 12, 3),
(36, 'Bachelor of Health sub 3', 12, 3),
(37, 'Certificate in Community Services sub 1', 13, 4),
(38, 'Diploma of Community Services sub 1', 13, 4),
(39, 'Bachelor of Community Services sub 1', 13, 4),
(40, 'Certificate in Community Services sub 2', 14, 4),
(41, 'Diploma Community Services sub 2', 14, 4),
(42, 'Bachelor of Community Services sub 2', 14, 4),
(43, 'Certificate in Community Services sub 3', 15, 4),
(44, 'Diploma of Community Services sub 3', 15, 4),
(45, 'Bachelor of Community Services sub 3', 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  `industries_industry_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`industries_industry_id`),
  KEY `fk_categories_industries1_idx` (`industries_industry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `industries_industry_id`) VALUES
(1, 'Accounting', 1),
(2, 'Business', 1),
(3, 'Human Resources', 1),
(4, 'Information Technology', 1),
(5, 'Management', 1),
(6, 'Tourism & Hospitality', 1),
(7, 'Creative Industry sub1', 2),
(8, 'Creative Industry sub2', 2),
(9, 'Creative Industry sub3', 2),
(10, 'Health sub1', 3),
(11, 'Health sub2', 3),
(12, 'Health sub3', 3),
(13, 'Community Services sub1', 4),
(14, 'Community Services sub2', 4),
(15, 'Community Services sub3', 4);

-- --------------------------------------------------------

--
-- Table structure for table `emp_skills`
--

CREATE TABLE IF NOT EXISTS `emp_skills` (
  `emp_skills_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_skill_name` varchar(45) DEFAULT NULL,
  `categories_category_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_skills_id`,`categories_category_id`),
  KEY `fk_employability_skills_categories1_idx` (`categories_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `emp_skills`
--

INSERT INTO `emp_skills` (`emp_skills_id`, `emp_skill_name`, `categories_category_id`) VALUES
(1, 'Communication ', 1),
(2, 'Teamwork', 1),
(3, 'Problem solving', 1),
(4, 'Self-management', 1),
(5, 'Communication', 2),
(6, 'Teamwork', 2),
(7, 'Problemsolving', 2),
(8, 'Initiative and enterprise', 2),
(9, 'Planning and organising', 2),
(10, 'Self-managements', 2),
(11, 'Communication', 3),
(12, 'Teamwork', 3),
(13, 'Problem solving', 3),
(14, 'Planing and organising', 3),
(15, 'Self-management', 3),
(16, 'Communication', 4),
(17, 'Teamwork', 4),
(18, 'Problemsolving', 4),
(19, 'Self-management', 4),
(20, 'Learning', 4),
(21, 'Technology', 4),
(22, 'Communication', 5),
(23, 'Teamwork', 5),
(24, 'Problem solving', 5),
(25, 'Planning and organising', 5),
(26, 'Self-management', 5),
(27, 'Learning', 5),
(28, 'Planing and organising', 6),
(29, 'Communication', 6),
(30, 'Teamwork', 6),
(31, 'Communication', 7),
(32, 'Problem solving', 7),
(33, 'Teamwork', 7),
(34, 'Communication', 8),
(35, 'Problem solving', 8),
(36, 'Teamwork', 8),
(37, 'Communication', 9),
(38, 'Problem Solving', 9),
(39, 'Teamwork', 9),
(40, 'Communication', 10),
(41, 'Teamwork', 10),
(42, 'Initiative and enterprise', 10),
(43, 'Planning and organising', 10),
(44, 'Self-management', 10),
(45, 'Communication', 11),
(46, 'Teamwork', 11),
(47, 'Initiative and enterprise', 11),
(48, 'Planning and organising', 11),
(49, 'Self-management', 11),
(50, 'Communication', 12),
(51, 'Teamwork', 12),
(52, 'Initiative and enterprise', 12),
(53, 'Planning and organising', 12),
(54, 'Self management', 12),
(55, 'Communication', 13),
(56, 'Problem solving', 13),
(57, 'Self-management', 13),
(58, 'Communication', 14),
(59, 'Problem solving', 14),
(60, 'Self management', 14),
(61, 'Communication', 15),
(62, 'Problem solving', 15),
(63, 'Self management', 15);

-- --------------------------------------------------------

--
-- Table structure for table `emp_skill_req`
--

CREATE TABLE IF NOT EXISTS `emp_skill_req` (
  `emp_skill_req_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_description` varchar(300) DEFAULT NULL,
  `emp_skills_emp_skills_id` int(11) NOT NULL,
  `emp_skills_categories_category_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_skill_req_id`,`emp_skills_emp_skills_id`,`emp_skills_categories_category_id`),
  KEY `fk_emp_skill_req_emp_skills1_idx` (`emp_skills_emp_skills_id`,`emp_skills_categories_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `emp_skill_req`
--

INSERT INTO `emp_skill_req` (`emp_skill_req_id`, `req_description`, `emp_skills_emp_skills_id`, `emp_skills_categories_category_id`) VALUES
(1, '- Communicating clear concepts and solutions for complex issues to colleagues and clients', 1, 1),
(2, '- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information \n\n', 1, 1),
(3, '- Delegating roles and responsibilities to team members for the implementation of project plans', 2, 1),
(4, '- Determining the system design audit technique or methodology that will be followed\n\n- Analysing and planning approaches to technical problems or management requirements', 3, 1),
(5, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 4, 1),
(6, '- Writing and presenting complex technical reports with supporting documentation for business', 5, 2),
(7, '- Coordinating groups and teams', 6, 2),
(8, '- Analysing and planning approaches to technical problems or management requirements', 7, 2),
(9, '- Transferring and applying theoretical concepts and technical or creative skills to a range of situations', 8, 2),
(10, '- Using project planning skills in relation to project scope, time, cost, quality, communications and risk management', 9, 2),
(11, '- Taking personal responsibility and autonomy in performing complex technical operations or organizing others', 10, 2),
(12, '- Writing and presenting complex technical reports with supporting documentation for business', 11, 3),
(13, '- Coordinating groups and teams', 12, 3),
(14, '- Analysing and planning approaches to technical problems or management requirements', 13, 3),
(15, '- Using project planning skills in relation to project scope, time, cost, quality, communications and risk management', 14, 3),
(16, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 15, 3),
(17, '- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information', 16, 4),
(18, '- Delegating roles and responsibilities to team members for the implementation of project plans', 17, 4),
(19, '- Determining the system design audit technique or methodology that will be followed\n\n- Using a debugger to detect logical and coding errors', 18, 4),
(20, '- Taking personal responsibility and autonomy in performing complex technical operations or organising other', 19, 4),
(21, '- Extending own skills and knowledge of software development tools and applications and the goods and services provided\n\n- Providing learning and development opportunities for project team members', 20, 4),
(22, '- Identifying technology needs\n\n- Sourcing, purchasing, installing, configuring and testing software components, including hardware', 21, 4),
(23, '- Communicating clear concepts and solutions for complex issues to colleagues and clients', 22, 5),
(24, '- Participating in teams concerned with planning and evaluation functions', 23, 5),
(25, '- Analysing and planning approaches to technical problems or management requirements', 24, 5),
(26, '- Using project planning skills in relation to project scope, time, cost, quality, communications and risk management', 25, 5),
(27, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 26, 5),
(28, '- Providing learning and development opportunities for project team members', 27, 5),
(29, '- Using project planning skills in relation to project scope, time, cost, quality, communications and risk management', 28, 6),
(30, '- Communicating clear concepts and solutions for complex issues to colleagues and clients', 29, 6),
(31, '- Participating in teams concerned with planning and evaluation functions', 30, 6),
(32, '- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information', 31, 7),
(33, '- Analysing and planning approaches to technical problems or management requirements', 32, 7),
(34, '- Coordinating groups and teams', 33, 7),
(35, '- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information', 34, 8),
(36, '- Analysing and planning approaches to technical problems or management requirements', 35, 8),
(37, '- Coordinating groups and teams', 36, 8),
(38, '- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information', 37, 9),
(39, '- Analysing and planning approaches to technical problems or management requirements', 38, 9),
(40, '- Coordinating groups and teams', 39, 9),
(41, '- Communicating clear concepts and solutions for complex issues to colleagues and clients\r\n\r\n- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information\r\n\r\n- Analysing and evaluating information', 40, 10),
(42, '- Participating in teams concerned with planning and evaluation functions', 41, 10),
(43, '- Transferring and applying theoretical concepts and technical or creative skills to a range of situations', 42, 10),
(44, '- Using project planning skills in relation to project scope, time, cost, quality, communications and risk management', 43, 10),
(45, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 44, 10),
(46, '- Communicating clear concepts and solutions for complex issues to colleagues and clients\r\n\r\n- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information\r\n\r\n- Analysing and evaluating information', 45, 11),
(47, '- Participating in teams concerned with planning and evaluation functions', 46, 11),
(48, '- Transferring and applying theoretical concepts and technical or creative skills to a range of situations', 47, 11),
(49, '- Using project planning skills in relation to project scope, time, cost, quality, communications and risk management', 48, 11),
(50, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 49, 11),
(51, '- Communicating clear concepts and solutions for complex issues to colleagues and clients\r\n\r\n- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information\r\n\r\n- Analysing and evaluating information', 50, 12),
(52, '- Participating in teams concerned with planning and evaluation functions', 51, 12),
(53, '- Transferring and applying theoretical concepts and technical or creative skills to a range of situations', 52, 12),
(54, '- Using project planning skills in relation to project scope, time, cost, quality, communications and risk management', 53, 12),
(55, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 54, 12),
(56, '- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information', 55, 13),
(57, '- Analysing and planning approaches to technical problems or management requirements', 56, 13),
(58, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 57, 13),
(59, '- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information', 58, 14),
(60, '- Analysing and planning approaches to technical problems or management requirements', 59, 14),
(61, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 60, 14),
(62, '- Using plain English, literacy and communication skills in relation to analysis, evaluation and presentation of information', 61, 15),
(63, '- Analysing and planning approaches to technical problems or management requirements', 62, 15),
(64, '- Taking personal responsibility and autonomy in performing complex technical operations or organising others', 63, 15);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT NULL,
  `users_user_id` int(11) NOT NULL,
  `job_outcomes_job_outcomes_id` int(11) NOT NULL,
  `job_outcomes_career_path_career_path_id` int(11) NOT NULL,
  `emp_skill_req_emp_skill_req_id` int(11) NOT NULL,
  `emp_skill_req_emp_skills_emp_skills_id` int(11) NOT NULL,
  `emp_skill_req_emp_skills_categories_category_id` int(11) NOT NULL,
  `industries_industry_id` int(11) NOT NULL,
  `skilled_occupations_occupation_code` int(11) NOT NULL,
  `skilled_occupations_categories_category_id` int(11) NOT NULL,
  `skilled_occupations_categories_industries_industry_id` int(11) NOT NULL,
  PRIMARY KEY (`log_id`,`users_user_id`,`job_outcomes_job_outcomes_id`,`job_outcomes_career_path_career_path_id`,`emp_skill_req_emp_skill_req_id`,`emp_skill_req_emp_skills_emp_skills_id`,`emp_skill_req_emp_skills_categories_category_id`,`industries_industry_id`,`skilled_occupations_occupation_code`,`skilled_occupations_categories_category_id`,`skilled_occupations_categories_industries_industry_id`),
  KEY `fk_history_users1_idx` (`users_user_id`),
  KEY `fk_history_job_outcomes1_idx` (`job_outcomes_job_outcomes_id`,`job_outcomes_career_path_career_path_id`),
  KEY `fk_history_emp_skill_req1_idx` (`emp_skill_req_emp_skill_req_id`,`emp_skill_req_emp_skills_emp_skills_id`,`emp_skill_req_emp_skills_categories_category_id`),
  KEY `fk_history_industries1_idx` (`industries_industry_id`),
  KEY `fk_history_skilled_occupations1_idx` (`skilled_occupations_occupation_code`,`skilled_occupations_categories_category_id`,`skilled_occupations_categories_industries_industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE IF NOT EXISTS `industries` (
  `industry_id` int(11) NOT NULL AUTO_INCREMENT,
  `industry_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`industry_id`, `industry_name`) VALUES
(1, 'Business'),
(2, 'Creative Industries'),
(3, 'Health'),
(4, 'Community Services');

-- --------------------------------------------------------

--
-- Table structure for table `job_outcomes`
--

CREATE TABLE IF NOT EXISTS `job_outcomes` (
  `job_outcomes_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary` varchar(45) DEFAULT NULL,
  `job_description` varchar(200) DEFAULT NULL,
  `career_path_career_path_id` int(11) NOT NULL,
  `career_path_categories_category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`job_outcomes_id`,`career_path_career_path_id`,`career_path_categories_category_id`),
  KEY `fk_job_outcomes_career_path1_idx` (`career_path_categories_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `job_outcomes`
--

INSERT INTO `job_outcomes` (`job_outcomes_id`, `salary`, `job_description`, `career_path_career_path_id`, `career_path_categories_category_id`) VALUES
(1, '$40K - $45K', 'Level 1 Help Desc Support\r\n', 1, 1),
(2, '$45K - $50K', 'Accountant (General)', 1, 1),
(3, '$45K - 50K', 'Taxation Accountant', 1, 1),
(4, '$45K - $50K', 'Senior Accountant', 2, 1),
(5, '$65K - $90K', 'Charged Accountant ', 3, 1),
(6, '$35K - $40K', 'Office Administrator', 1, 2),
(7, '$35K - $40K', 'Executive Assistant', 4, 2),
(8, '$40K - $55K', 'Personal Assistant', 4, 2),
(9, '$50K - $55K', 'Administration Manager', 5, 2),
(10, '$50K - $55K', 'Customer Service Manager ', 5, 2),
(11, '$50K - $60K', 'Business Consultant', 6, 2),
(12, '$50K - $60K', 'Strategic Planning', 6, 2),
(13, '$35K - $40K', 'Recruitment Coordinator', 7, 3),
(14, '$35K - $40K', 'HR Officer', 7, 3),
(15, '$40K - $45K', 'HR Administrator', 8, 3),
(16, '$40K - $45K', 'HR Manager ', 8, 3),
(17, '$50K - $70K', 'HR Director', 9, 3),
(18, '$35K - $40K', 'Lvl 2 Hepl Desc Support', 10, 4),
(19, '$35K - $40K', 'Computer Network and Systems Engineer', 10, 4),
(20, '$35K - $40K', 'Programming Support Role', 10, 4),
(21, '$45K - $50K', 'Analyst Programmer', 11, 4),
(22, '$45K - $50K', 'Developer Programmer', 11, 4),
(23, '$40K - $45K', 'Trainee Web Developer', 11, 4),
(24, '$40K - $50K', 'Software Engineer', 11, 4),
(25, '$50K - $60K', 'Junior Web Developer', 12, 4),
(26, '$50K - $60K', 'Junior Programming Tester', 12, 4),
(27, '$45K - $60K', 'Junior Web Developer', 12, 4),
(28, '$50K - $65K', 'Junior Java Developer', 12, 4),
(29, '$50K - $65K', 'Junior Programming Tester', 12, 4),
(30, '$60K - $75K', 'Junior .NET Developer', 12, 4),
(31, '$35K - $45K', 'Venue Co-ordinator', 13, 5),
(32, '$60K - $75K', 'Hospitality Co-ordinator', 13, 5),
(33, '$50K - $70K', 'Personal Staff Co-ordinator', 14, 5),
(34, '$45K - $60K', 'Equipment Co-ordinator', 14, 5),
(35, '$70K - $90K', 'Event Director', 15, 5),
(36, '$35K - $40K', 'Corporate Travel Consultant', 16, 6),
(37, '$35K - $40K', 'Cruise Consultant', 16, 6),
(38, '$45K - $50K', 'International Travel Consultant ', 17, 6),
(39, '$45K - $50K', 'Leisure Consultant', 17, 6),
(40, '$45K - $50K', 'Private Event Manager', 18, 6),
(41, '$60K - $70K', 'Hospitality Operation Manager', 18, 6),
(42, '$40K - $60K', 'Film Composer', 19, 7),
(43, '$40K - $60K', 'Media Industry Specialist', 19, 7),
(44, '$40K - $60K', 'Journalist', 19, 7),
(45, '$40K - $60K', 'Multimedia Designer', 20, 7),
(46, '$40K - $60K', 'Music Technologist', 20, 7),
(47, '$40K - $60K', 'Organisational Communication Specialist', 20, 7),
(48, '$40K - $60K', 'Policy Officer', 20, 7),
(49, '$60K - $150K', 'Film/Television Producer', 21, 7),
(50, '$60K - $90K', 'Public Relations Officer/Consultant', 21, 7),
(51, '$50K - $60K', 'Art Writer', 22, 8),
(52, '$50K - $60K', 'Actor', 22, 8),
(53, '$50K - $60K', 'Advertising Professional', 23, 8),
(54, '$50K - $60K', 'D.J.', 23, 8),
(55, '$50K - $70K', 'Dance Teacher', 24, 8),
(56, '$50K - $70K', 'Dancer', 24, 8),
(57, '$45K - $60K', 'Digital Composer', 25, 9),
(58, '$45K - $100K', 'Music Agent', 25, 9),
(59, '$45K - $150K', 'Music Manager', 26, 9),
(60, '$45K - $150K', 'Market Research Manager', 26, 9),
(61, '$45K - $150K', 'Arts Administrator', 26, 9),
(62, '$70K - $250K', 'Music Director', 27, 9),
(63, '$60K - $200K', 'Art Director', 27, 9),
(64, '$100K - $250', 'Film Producer', 27, 9),
(65, '$40K - $55K', 'Trainee Nurse', 28, 10),
(66, '$40K - $55K', 'Trainee Patient Care Assistant ', 28, 10),
(67, '$40K - $55K', 'Cardiologist', 29, 10),
(68, '$40K - $55K', 'Sonographer', 29, 10),
(69, '$50K - $75K', 'Podiatrist', 30, 10),
(70, '$50K - $75K', 'Pharmacist', 30, 10),
(71, '$35K - $50K', 'Dental Specialist', 31, 11),
(72, '$55K - $60K', 'Trainee Surgeon', 31, 11),
(73, '$60K - $70K', 'Nurse Practitioner', 32, 11),
(74, '$70K - $80K', 'Trainee Physician', 32, 11),
(75, '$60K - $100K', 'Nursing Clinical Director', 33, 11),
(76, '$60K - $100K', 'Speech Pathologist', 33, 11),
(77, '$50K - $60K', 'Trainee Dental Hygienist', 34, 12),
(78, '$40K - $50K', 'Trainee Physical Therapist', 34, 12),
(79, '$40K - $50K', 'Physiotherapist', 34, 12),
(80, '$45K - $55K', 'Diagnostic Medical Sonographer', 35, 12),
(81, '$45K - $55K', 'Occupational Therapist', 35, 12),
(82, '$55K - $65K', 'Occupational Therapy Assistant', 35, 12),
(83, '$45K - $55K', 'Dentist', 35, 12),
(84, '$55K - $75K', 'Primary Health Organisation Manager', 36, 12),
(85, '$65K - $85K', 'Radiologic Technologist', 36, 12),
(86, '$60K - $80K', 'Marriage and Family Therapist', 36, 12),
(87, '$70K - $90K', 'Endocrinologist', 36, 12),
(88, '$70K - $90K', 'Medical Administrator', 36, 12),
(89, '$40K - $50K', 'Trainee Family Counsellor', 37, 13),
(90, '$35K - $40K', 'Trainee Family Support Worker', 37, 13),
(91, '$45K - $50K', 'Family Counsellor', 38, 13),
(92, '$45K - $50K', 'Family Support Worker', 38, 13),
(93, '$60K - $80K', 'Counselor Weight Manager', 39, 13),
(94, '$60K - $80K', 'Counselor Stress Manager', 39, 13),
(95, '$35K - $40K', 'Early Childhood (Pre-Primary School) Teacher', 40, 14),
(96, '$35K - $45K', 'Special Education Teachers nec', 40, 14),
(97, '$45K - $60K', 'Drug and Alcohol Counsellor', 41, 14),
(98, '$55K - $75K', 'Parole or Probation Officer', 41, 14),
(99, '$60K - $70K', 'Environmental Health Officer', 42, 14),
(100, '$50K - $60K', 'Residential Care Officer', 42, 14),
(101, '$40K - $50K', 'Social Worker', 43, 15),
(102, '$35K - $45K', 'Disable Care Assistant', 43, 15),
(103, '$50K - $55K', 'Welfare Worker', 44, 15),
(104, '$50K - $55K', 'Youth Worker', 44, 15),
(105, '$60K - $75K', 'Welfare Centre Manager', 45, 15),
(106, '$70K - $80K', 'Lifestyle Support Manager', 45, 15),
(107, '$60K - $70K', 'Child Care Centre Manager', 45, 15);

-- --------------------------------------------------------

--
-- Table structure for table `skilled_occupations`
--

CREATE TABLE IF NOT EXISTS `skilled_occupations` (
  `occupation_code` int(11) NOT NULL AUTO_INCREMENT,
  `authority` varchar(45) DEFAULT NULL,
  `occupation_name` varchar(45) DEFAULT NULL,
  `categories_category_id` int(11) NOT NULL,
  PRIMARY KEY (`occupation_code`,`categories_category_id`),
  KEY `fk_skilled_occupations_categories1_idx` (`categories_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=272512 ;

--
-- Dumping data for table `skilled_occupations`
--

INSERT INTO `skilled_occupations` (`occupation_code`, `authority`, `occupation_name`, `categories_category_id`) VALUES
(13111, 'VETASSESS', 'Construction Project Manager', 5),
(133112, 'VETASSESS', 'Project Builder', 5),
(133211, 'Engineers Australia/AIM', 'Engineering Manager', 5),
(133513, 'VETASSESS', 'Production Manager (Mining)', 5),
(134111, 'TRA', 'Child Care Centre Manager', 15),
(134211, 'VETASSESS', 'Medical Administrator', 12),
(134212, 'ANMAC', 'Nursing Clinical Director', 11),
(134213, 'VETASSESS', 'Primary Health Organisation Manager', 5),
(134214, 'ACWA/VETASSESS', 'Welfare Centre Manager', 5),
(221112, 'CPA/ICAA/IPA', 'Management Accountant', 1),
(221113, 'CPA/ICAA/IPA', 'Taxation Accountant', 1),
(241111, 'AITSL', 'Early Childhood (Pre-Primary School) Teacher', 14),
(241599, 'AITSL', 'Special Education Teachers nec', 14),
(251214, 'AIR', 'Sonographer', 10),
(251311, 'VETASSESS', 'Environmental Health Officer', 14),
(252311, 'ADC', 'Dental Specialist', 11),
(252312, 'ADC', 'Dentist', 12),
(252511, 'APC', 'Physiotherapist', 12),
(252611, 'APodC/ANZPAC', 'Podiatrist', 10),
(252712, 'SPA', 'Speech Pathologist', 11),
(253111, 'Medical Board ofAustralia', 'Pharmacist', 10),
(253315, 'Medical BoardofAustralia', 'Endocrinologist', 12),
(261311, 'ACS', 'Analyst Programmer', 4),
(261312, 'ACS', 'Developer Programmer', 4),
(261313, 'ACS', 'Software Enginee', 4),
(263111, 'ACS', 'Computer Network and Systems Engineer', 4),
(272511, 'AASW', 'Social Worker', 15);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `dateOfBirth` varchar(45) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobilePhone` varchar(100) DEFAULT NULL,
  `landlinePhone` varchar(100) DEFAULT NULL,
  `educationLevel` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password1` varchar(100) DEFAULT NULL,
  `account_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstName`, `lastName`, `middleName`, `dateOfBirth`, `gender`, `address`, `mobilePhone`, `landlinePhone`, `educationLevel`, `email`, `password1`, `account_type`) VALUES
(1, 'David', 'Hunt', NULL, '01/01/1970', '', '189 Foxwell Drive,Coomera,Qld', '04-055-500-34', '55-77-567-32', 'Diploma of Software Development  ', 'david.hunt@gmail.com', NULL, NULL),
(2, 'test', 'test', 'test', 'test', 'Male', 'test', 'test', 'test', 'test', 'test', 'test', 'Casual'),
(3, 'Yusef', 'Acabani', '', '30/04/1994', 'Male', 'Acabani Street 23', '01235678', '', 'Very High', 'yusef@yahoo.com', 'yusef', 'Casual');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `career_path`
--
ALTER TABLE `career_path`
  ADD CONSTRAINT `fk_career_path_categories1` FOREIGN KEY (`categories_category_id`) REFERENCES `categories` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_categories_industries1` FOREIGN KEY (`industries_industry_id`) REFERENCES `industries` (`industry_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `emp_skills`
--
ALTER TABLE `emp_skills`
  ADD CONSTRAINT `fk_employability_skills_categories1` FOREIGN KEY (`categories_category_id`) REFERENCES `categories` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `emp_skill_req`
--
ALTER TABLE `emp_skill_req`
  ADD CONSTRAINT `fk_emp_skill_req_emp_skills1` FOREIGN KEY (`emp_skills_emp_skills_id`, `emp_skills_categories_category_id`) REFERENCES `emp_skills` (`emp_skills_id`, `categories_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `fk_history_emp_skill_req1` FOREIGN KEY (`emp_skill_req_emp_skill_req_id`, `emp_skill_req_emp_skills_emp_skills_id`, `emp_skill_req_emp_skills_categories_category_id`) REFERENCES `emp_skill_req` (`emp_skill_req_id`, `emp_skills_emp_skills_id`, `emp_skills_categories_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_history_industries1` FOREIGN KEY (`industries_industry_id`) REFERENCES `industries` (`industry_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_history_job_outcomes1` FOREIGN KEY (`job_outcomes_job_outcomes_id`, `job_outcomes_career_path_career_path_id`) REFERENCES `job_outcomes` (`job_outcomes_id`, `career_path_career_path_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_history_skilled_occupations1` FOREIGN KEY (`skilled_occupations_occupation_code`, `skilled_occupations_categories_category_id`) REFERENCES `skilled_occupations` (`occupation_code`, `categories_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_history_users1` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `job_outcomes`
--
ALTER TABLE `job_outcomes`
  ADD CONSTRAINT `fk_job_outcomes_career_path1` FOREIGN KEY (`career_path_categories_category_id`) REFERENCES `career_path` (`categories_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `skilled_occupations`
--
ALTER TABLE `skilled_occupations`
  ADD CONSTRAINT `fk_skilled_occupations_categories1` FOREIGN KEY (`categories_category_id`) REFERENCES `categories` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
