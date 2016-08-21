-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2016 at 07:32 AM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MiddleName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Age` int(2) DEFAULT NULL,
  `Birth` date NOT NULL,
  `Address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `YearsInCompany` int(2) NOT NULL,
  `Department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `MiddleName`, `Age`, `Birth`, `Address`, `YearsInCompany`, `Department`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Adrian', 'Tobias', 'De Vera', 18, '1997-01-07', '4624 Iris St Sunvalley Subdivision Paranaque City', 5, 'IT Department', 'admin', '9OoSj7pkMv1G14whYWTHbeYEvQqKRh5m', '$2y$13$sbTSLs/XuW0lpNsQDEKO0eZvRFvLCAv7YTF5jwdHL7WBnoCIkexZe', NULL, 'adriantobias94@gmail.com', 10, 1471225910, 1471225910);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1470500875),
('m130524_201442_init', 1470500880);

-- --------------------------------------------------------

--
-- Table structure for table `servicereport`
--

CREATE TABLE `servicereport` (
  `id` int(11) NOT NULL,
  `DateStarted` date NOT NULL,
  `DateEnd` date NOT NULL,
  `Author` varchar(200) NOT NULL,
  `Manager` varchar(200) NOT NULL,
  `WeatherStation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Document` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicereport`
--

INSERT INTO `servicereport` (`id`, `DateStarted`, `DateEnd`, `Author`, `Manager`, `WeatherStation_id`, `user_id`, `Document`) VALUES
(2, '2016-08-01', '2016-08-06', 'Adrian Tobias', 'Alvin Tobias', 3, 4, 0),
(3, '2016-07-11', '2016-08-11', 'Adrian Tobias', 'Alvin Tobias', 2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MiddleName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Age` int(2) DEFAULT NULL,
  `Birth` date NOT NULL,
  `Address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `YearsInCompany` int(2) NOT NULL,
  `Department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `MiddleName`, `Age`, `Birth`, `Address`, `YearsInCompany`, `Department`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Adrian', 'Tobias', 'De Vera', 18, '1997-01-07', '4624 Iris St Sunvalley Subdivision Paranaque City', 5, 'IT Department', 'cooladrian', '9OoSj7pkMv1G14whYWTHbeYEvQqKRh5m', '$2y$13$sbTSLs/XuW0lpNsQDEKO0eZvRFvLCAv7YTF5jwdHL7WBnoCIkexZe', NULL, 'adriantobias94@gmail.com', 10, 1471225910, 1471225910);

-- --------------------------------------------------------

--
-- Table structure for table `weatherstation`
--

CREATE TABLE `weatherstation` (
  `id` int(11) NOT NULL,
  `WeatherStation_Model` varchar(200) NOT NULL,
  `WeatherStation_Name` varchar(200) NOT NULL,
  `WeatherStation_Location` varchar(300) NOT NULL,
  `WeatherStation_Status` enum('On','Off') NOT NULL,
  `WeatherStation_Gateway` varchar(45) NOT NULL,
  `WeatherStation_Logger` varchar(45) NOT NULL,
  `WeatherStation_Number` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weatherstation`
--

INSERT INTO `weatherstation` (`id`, `WeatherStation_Model`, `WeatherStation_Name`, `WeatherStation_Location`, `WeatherStation_Status`, `WeatherStation_Gateway`, `WeatherStation_Logger`, `WeatherStation_Number`) VALUES
(2, 'ISSET', 'Hover', 'Banaue, Cavite', 'On', 'GLOBE', 'STAFF', '09019392811'),
(3, '1023-1392', 'Rover', 'Bicutan, Paranaque', 'Off', 'GLOBE', 'STAFF', '09382918231');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `servicereport`
--
ALTER TABLE `servicereport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `WeatherStation_WeatherStation_ID` (`WeatherStation_id`),
  ADD KEY `user_ID` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `weatherstation`
--
ALTER TABLE `weatherstation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `servicereport`
--
ALTER TABLE `servicereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `weatherstation`
--
ALTER TABLE `weatherstation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `servicereport`
--
ALTER TABLE `servicereport`
  ADD CONSTRAINT `servicereport_ibfk_1` FOREIGN KEY (`WeatherStation_ID`) REFERENCES `weatherstation` (`id`),
  ADD CONSTRAINT `servicereport_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
