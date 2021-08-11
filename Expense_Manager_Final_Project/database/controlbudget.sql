-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2021 at 05:20 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `controlbudget`
--

-- --------------------------------------------------------

--
-- Table structure for table `addexpense`
--

DROP TABLE IF EXISTS `addexpense`;
CREATE TABLE IF NOT EXISTS `addexpense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `person` varchar(225) NOT NULL,
  `bill` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `planid` (`planid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addexpense`
--

INSERT INTO `addexpense` (`id`, `planid`, `pid`, `title`, `date`, `amount`, `person`, `bill`) VALUES
(6, 4, 10, 'shopping', '2021-05-08', 200, 'Vijay Yadav', NULL),
(5, 4, 10, 'food', '2021-05-07', 200, 'Vijay Yadav', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person_names`
--

DROP TABLE IF EXISTS `person_names`;
CREATE TABLE IF NOT EXISTS `person_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `person` varchar(225) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_id` (`plan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_names`
--

INSERT INTO `person_names` (`id`, `plan_id`, `person`) VALUES
(10, 4, 'Vijay Yadav'),
(9, 4, 'Nidhi Yadav');

-- --------------------------------------------------------

--
-- Table structure for table `plandetails`
--

DROP TABLE IF EXISTS `plandetails`;
CREATE TABLE IF NOT EXISTS `plandetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `initial_budget` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plandetails`
--

INSERT INTO `plandetails` (`id`, `user_id`, `title`, `from_date`, `to_date`, `initial_budget`, `people`) VALUES
(4, 3, 'trip to goa', '2021-05-06', '2021-05-08', 500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `contact` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `contact`) VALUES
(3, 'Nidhi Yadav', 'nidhivyadav05@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 8329803558);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
