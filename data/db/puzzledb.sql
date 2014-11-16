-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2014 at 03:46 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
`PId` bigint(20) unsigned NOT NULL,
  `PType` varchar(30) DEFAULT NULL,
  `Catagory` varchar(255) DEFAULT NULL,
  `Question` varchar(1000) DEFAULT NULL,
  `Question_img` varchar(1000) DEFAULT NULL,
  `OptionType` varchar(20) DEFAULT NULL,
  `Opt1` varchar(200) DEFAULT NULL,
  `Opt2` varchar(200) DEFAULT NULL,
  `Opt3` varchar(200) DEFAULT NULL,
  `Opt4` varchar(200) DEFAULT NULL,
  `Answer` varchar(200) DEFAULT NULL,
  `Dificulty` varchar(30) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `puzzle`
--

INSERT INTO `puzzle` (`PId`, `PType`, `Catagory`, `Question`, `Question_img`, `OptionType`, `Opt1`, `Opt2`, `Opt3`, `Opt4`, `Answer`, `Dificulty`, `Weight`) VALUES
(1, 'TEXT', 'Animal', 'Who have similar characteristics as compared to  Bhupendra?', NULL, 'TEXT', 'Dog', 'Cat', 'Snake', 'Owl', 'Owl', 'Dificult', 1000),
(2, 'Text', 'Bid', 'Can Bhupendra design UI?', NULL, 'TEXT', 'Yes', 'No', 'Not Sure', 'Can do but not on Time.', 'Yes', 'Very Dificult', 1000),
(11, 'IMG_TEXT', 'Text', 'Identify the Image.', 'http://res.cloudinary.com/innoverarcher/image/upload/t_media_lib_thumb/v1379868263/http_www_cartype_com_images_page_Volkswagen_5_f2wqmq.jpg', 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(12, 'Text', 'Text', '', NULL, 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(13, 'Text', 'Text', '', NULL, 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(14, 'Text', 'Text', '', NULL, 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(15, 'Text', 'Text', '', NULL, 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(16, 'Text', 'Text', '', NULL, 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(17, 'Text', 'Text', '', NULL, 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(18, 'Text', 'Text', '', NULL, 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(19, 'Text', 'Text', '', NULL, 'text', 'Text', '', '', '', 'Opt1', '100', 2),
(20, '', '', '', NULL, '', '', '', '', '', '', '', 0),
(21, 'IMG_TEXT', 'Text', 'Identify the Image.', 'http://res.cloudinary.com/innoverarcher/image/upload/t_media_lib_thumb/v1379868263/http_www_cartype_com_images_page_Volkswagen_5_f2wqmq.jpg', 'text', 'Text', '', '', '', 'Opt1', '100', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `puzzle`
--
ALTER TABLE `puzzle`
 ADD UNIQUE KEY `PId` (`PId`), ADD UNIQUE KEY `PId_2` (`PId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `puzzle`
--
ALTER TABLE `puzzle`
MODIFY `PId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
