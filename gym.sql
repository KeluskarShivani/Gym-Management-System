-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2017 at 09:30 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'prince  pandey', '31prince05@gmail.com', 'I want to join your Gym .\r\nSend me Gym Subsription detail for 6 Mont'),
(2, 'sagar chavan', 'Sagarchavan0905@gmail.com', 'send me they gym details                           ');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` int(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `membershiptype` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `mode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `name`, `address`, `age`, `dob`, `gender`, `email`, `membershiptype`, `startdate`, `enddate`, `mode`) VALUES
(0, 'kiran chavan', '                            ghatkopar                                  ', 21, '1995-08-20', 'male', 'chavankiran236@gmail.com', '', '2016-11-12', '2017-02-12', ''),
(0, 'kiran chavan', '                            ghatkopar                                  ', 21, '1995-08-20', 'male', 'chavankiran236@gmail.com', 'on', '2016-11-12', '2017-02-12', 'on'),
(0, 'kiran chavan', '                            ghatkopar                                  ', 21, '1995-08-20', 'feamle', 'chavankiran236@gmail.com', 'on', '2016-11-12', '2017-02-12', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `reges`
--

CREATE TABLE IF NOT EXISTS `reges` (
  `serial_no` int(200) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `dob` text NOT NULL,
  `gender` text NOT NULL,
  `age` text NOT NULL,
  `e_mail` text NOT NULL,
  `password` text NOT NULL,
  `conform_password` text NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `reges`
--

INSERT INTO `reges` (`serial_no`, `name`, `address`, `dob`, `gender`, `age`, `e_mail`, `password`, `conform_password`) VALUES
(1, 'rajan', '                                ', '', 'male', '', '', '', ''),
(2, 'RAJAN PAL', 'turbhe                                ', '1993-05-30', 'male', '24', 'rajanpal38@gmail.com', 'rajan', 'rajan'),
(3, 'shivani', 'khandeshwar                                ', '1996-07-28', 'female', '21', 'keluskarshivani@gmail.com', '123shivani', '123shivani'),
(4, '', '', '', '', '', '', '', ''),
(5, '', '', '', '', '', '', '', ''),
(6, 'naqvi  adiba ', 'chembur                                ', '1996-12-23', 'female', '21', 'adibanaqvi6662@gmail.com', 'iminluvadiba', 'iminluvadiba');
