-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2023 at 09:13 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trad-doctors`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `phoneNumber`, `password`, `question`, `answer`, `role`) VALUES
(37, '911752678', '$2a$08$a3nY1bAZ1une19A7n8Vbs.CgYueXHE9qof74eo.1zp5g0in1DVcZS', 'What is your father\'s name?', 'Kidane', 'patient'),
(36, '949387908', '$2a$08$KFKuopcdhQi2MslaeU.2qOV5w1Z.9/5EriQ13EA7X4iubD1lKnKvm', 'What is your mother\'s name?', 'momy', 'patient'),
(35, '999999999', '$2a$08$NfGCPy7kxEDEVLtaDYY6peWyvVExGF5yLfB0VawBWFMC6nNJskpsW', 'What is your mother\'s name?', 'momy', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `businessName` varchar(255) NOT NULL,
  `businessId` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `profilePicture` varchar(2555) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `fullname`, `businessName`, `businessId`, `address`, `phoneNumber`, `profilePicture`, `verified`) VALUES
(35, 'hakim', 'hakim', 'hakim', 'addis', '999999999', 'profilePicture', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `profilePicture` varchar(2555) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `fullname`, `phoneNumber`, `address`, `profilePicture`) VALUES
(36, 'betsi', '949387908', 'addis', 'profilePicture'),
(37, 'Betselot Kidane', '911752678', 'Addis Ababa, 4 kilo', 'profilePicture');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
