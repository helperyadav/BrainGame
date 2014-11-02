-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2014 at 05:50 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `puzzledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `puzzle`
--

CREATE TABLE IF NOT EXISTS `puzzle` (
  `PId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `PType` varchar(30) DEFAULT NULL,
  `Catagory` varchar(255) DEFAULT NULL,
  `Question` varchar(1000) DEFAULT NULL,
  `OptionType` varchar(20) DEFAULT NULL,
  `Opt1` varchar(200) DEFAULT NULL,
  `Opt2` varchar(200) DEFAULT NULL,
  `Opt3` varchar(200) DEFAULT NULL,
  `Opt4` varchar(200) DEFAULT NULL,
  `Answer` varchar(200) DEFAULT NULL,
  `Dificulty` varchar(30) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL,
  UNIQUE KEY `PId` (`PId`),
  UNIQUE KEY `PId_2` (`PId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `puzzle`
--

INSERT INTO `puzzle` (`PId`, `PType`, `Catagory`, `Question`, `OptionType`, `Opt1`, `Opt2`, `Opt3`, `Opt4`, `Answer`, `Dificulty`, `Weight`) VALUES
(1, 'TEXT', 'Animal', 'Who have similar characteristics as compared to  Bhupendra?', 'TEXT', 'Dog', 'Cat', 'Snake', 'Owl', 'Owl', 'Dificult', 1000),
(2, 'Text', 'Bid', 'Can Bhupendra design UI?', 'TEXT', 'Yes', 'No', 'Not Sure', 'Can do but not on Time.', 'Yes', 'Very Dificult', 1000),
(11, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(12, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(13, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(14, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(15, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(16, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(17, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(18, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(19, 'Text', 'Text', '', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(20, '', '', '', '', '', '', '', '', '', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
