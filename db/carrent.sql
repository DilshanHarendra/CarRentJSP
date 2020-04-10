-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2019 at 07:55 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id` varchar(50) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `package` varchar(20) DEFAULT NULL,
  `vehiclecatogory` varchar(20) DEFAULT NULL,
  `requirdate` date DEFAULT NULL,
  `bookDate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`userid`,`package`,`vehiclecatogory`,`requirdate`,`bookDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `userid`, `package`, `vehiclecatogory`, `requirdate`, `bookDate`, `status`) VALUES
('Bo6668b5ae-cb09-4ed7-a4f9-4028d80890ec', 'AdmInCarReNT2019', 'anyDay', 'bus', '2019-05-30', '2019-05-03', 'confirm'),
('Boc5cf074b-a5e6-4cd9-a46b-5bcae3e9fb9b', '3e6c68b5-ebee-4a30-83ee-a4dbf5520c2e', 'anyDay', 'bus', '2019-05-25', '2019-05-02', 'confirm'),
('Bo94898120-a9aa-404d-b105-705f31679e4e', 'AdmInCarReNT2019', 'anyDay', 'van', '2019-07-08', '2019-05-04', 'Pending'),
('Bo65995dd8-c2c9-4c28-8be8-31b2a9cc5896', 'AdmInCarReNT2019', 'anyDay', 'm_bike', '2019-05-30', '2019-05-04', 'confirm');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` varchar(200) NOT NULL,
  `mdate` date NOT NULL,
  `reply` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `mail`, `phone`, `message`, `mdate`, `reply`) VALUES
('ME3733c215-0a8e-4bda-bd32-8a9a3f6a114c', 'Dilshan', 'abs@gmail.com', '15555', 'fffffffffff', '2019-05-20', 'no'),
('Me957407e2-522f-4ba9-81a1-8b29187b2aea', 'name', 'dila@gmail.com', '0783265555', 'ssssssssssssssss', '2019-05-20', 'no'),
('Me1af18c33-5f50-4e57-a165-fd9376f914fb', 'Promodyaaaa', 'abc@g', '23', 'kkkkkkkkkkkkkkkk', '2019-05-20', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
CREATE TABLE IF NOT EXISTS `userdetails` (
  `id` varchar(50) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `dlicense` varchar(30) DEFAULT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `username` varchar(100) NOT NULL,
  `passwords` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `fname`, `lname`, `mail`, `dlicense`, `nic`, `address`, `city`, `phone`, `username`, `passwords`) VALUES
('AdmInCarReNT2019', 'Admin', 'Admin', 'admin@gmail.com', '123456', '789456125V', 'Colombo', 'Colombo', '078456789', 'Admin', 'Admin'),
('3e6c68b5-ebee-4a30-83ee-a4dbf5520c2e', 'Dilshan', 'Perera', 'dila@gmail.com', '123', '12', 'Moratuwa', 'Moratu', '23', 'dila', '123'),
('e091ae1b-a0d8-48f1-9102-b3587e344634', 'Dilshan', 'Perera', 'dila@gmail.com', '123', '34', 'Moratuwa', 'Moratu', '34', 'd', '4'),
('5524e638-4c10-4472-8951-f5c38724141e', 'Dilshan', 'Perera', 'dila@gmail.com', '123', '34', 'Moratuwa', 'Moratu', '34', 'true', '34'),
('1463f240-062c-47d7-a73c-0c7281b44fe6', 'Dilshan', 'Perera', 'dila@gmail.com', '123', '34', 'Moratuwa', 'Moratu', '34', 'asd', 'q'),
('b6887a27-3b02-4cff-8f36-f38c704d4dfc', 'Dilshan', 'Perera', 'dila@gmail.com', '123', '12', '122', 'Moratu', '1111', 'qwe', '12'),
('b8acc3f3-a00d-49e8-aebe-f7eda444e4e8', 'Dilshan', 'Perera', 'dila@gmail.com', '123', 'ee', 'Moratuwa', 'Moratu', '56', 'ty', '5'),
('44f329dc-bfad-4c5b-a21b-8d4db38517ee', 'fname', 'lname', 'dila@gmail.com', 'dln', 'nic', 'address', 'city', '00000000', 'uname', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `id` varchar(50) NOT NULL,
  `vehiclenumber` varchar(20) DEFAULT NULL,
  `chasilenumber` varchar(20) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `catogory` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehiclenumber` (`vehiclenumber`),
  UNIQUE KEY `chasilenumber` (`chasilenumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `vehiclenumber`, `chasilenumber`, `seats`, `catogory`) VALUES
('Ve9e44b6a2-4812-4d9a-95c5-dc8477fe2425', 's', 's', 1, 'm_bike'),
('Vea8cf26d3-903a-4e8b-9f74-029b2411bed5', 'p', 'p', 6, 'van'),
('Ved5265a80-8772-490a-ab04-a3131718ded8', '82', '99', 6, 'car'),
('Ve054a7790-dbd9-436d-aca9-616dfb188312', 'vnum', 'cnum', 23, 'car');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
