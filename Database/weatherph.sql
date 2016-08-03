-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2016 at 06:15 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weatherph`
--

-- --------------------------------------------------------

--
-- Table structure for table `servicereport`
--

CREATE TABLE `servicereport` (
  `ID` int(11) NOT NULL,
  `DateStarted` date NOT NULL,
  `DateEnd` date NOT NULL,
  `Author` varchar(200) NOT NULL,
  `Manager` varchar(200) NOT NULL,
  `AssetID` varchar(200) NOT NULL,
  `EmployeeID` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weatherstation`
--

CREATE TABLE `weatherstation` (
  `WeatherStation_ID` int(11) NOT NULL,
  `WeatherStation_Model` varchar(200) NOT NULL,
  `WeatherStation_Name` varchar(200) NOT NULL,
  `WeatherStation_Location` varchar(300) NOT NULL,
  `WeatherStation_Status` enum('On','Off') NOT NULL,
  `WeatherStation_Gateway` varchar(45) NOT NULL,
  `WeatherStation_Logger` varchar(45) NOT NULL,
  `WeatherStation_Number` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `servicereport`
--
ALTER TABLE `servicereport`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `weatherstation`
--
ALTER TABLE `weatherstation`
  ADD PRIMARY KEY (`WeatherStation_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `servicereport`
--
ALTER TABLE `servicereport`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `weatherstation`
--
ALTER TABLE `weatherstation`
  MODIFY `WeatherStation_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
