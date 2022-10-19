-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 19, 2022 at 08:31 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecure`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(70) DEFAULT NULL,
  `company_product` varchar(70) DEFAULT NULL,
  `company_services` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_product`, `company_services`) VALUES
(1, 'HouseCom', 'ThermoSecure', 'Home Personal and Secure Environment Control System '),
(2, 'HouseCom', 'ThermoSecure', 'Home personal and safety control environment');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inst_resources`
--

CREATE TABLE `tbl_inst_resources` (
  `inst_id` int(10) UNSIGNED NOT NULL,
  `inst_time` int(11) NOT NULL,
  `inst_videolink` varchar(100) NOT NULL,
  `inst_virtualhelp` datetime NOT NULL,
  `inst_visithelp` datetime NOT NULL,
  `inst_desc_resources` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_inst_resources`
--

INSERT INTO `tbl_inst_resources` (`inst_id`, `inst_time`, `inst_videolink`, `inst_virtualhelp`, `inst_visithelp`, `inst_desc_resources`) VALUES
(1, 40, 'https://www.youtube.com/watch?v=dHKD-9uI24I', '2022-10-22 15:36:53', '2022-10-28 18:36:53', 'FAQ,Call a technician, Schedule a visit, Use our video links, Schedule a vide call with us</li');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_functionality` varchar(200) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_services` varchar(200) NOT NULL,
  `prod_app` varchar(200) NOT NULL,
  `prod_plans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`prod_id`, `prod_functionality`, `prod_price`, `prod_services`, `prod_app`, `prod_plans`) VALUES
(1, 'Thermostat, home environment and Security Control', 100, 'Thermostat that optimizes heating and cooling of homes to conserve energy.\r\nProvides safety alerts when detect with its facial recognition sensor', 'ThermoSecurity system app', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_safety`
--

CREATE TABLE `tbl_safety` (
  `safe_id` int(10) UNSIGNED NOT NULL,
  `safe_alerts` varchar(200) NOT NULL,
  `safe_description` varchar(200) NOT NULL,
  `safe_captions` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_safety`
--

INSERT INTO `tbl_safety` (`safe_id`, `safe_alerts`, `safe_description`, `safe_captions`) VALUES
(1, 'motion, temperature, face recognition', 'our sensors are designed for safety reasons, turn on or turn off the functions as alerts, motion and captions.', 'If the system doesn`t recognize a face in your home you will receive an alert');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_techspec`
--

CREATE TABLE `tbl_techspec` (
  `tech_id` int(10) UNSIGNED NOT NULL,
  `tech_dimensions` varchar(50) NOT NULL,
  `tech_color` varchar(50) NOT NULL,
  `tech_lang` tinytext NOT NULL,
  `tech_display` varchar(50) NOT NULL,
  `tech_sensors` text NOT NULL,
  `tech_battery` tinytext NOT NULL,
  `tech_multihome` varchar(100) NOT NULL,
  `tech_compatibility` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_techspec`
--

INSERT INTO `tbl_techspec` (`tech_id`, `tech_dimensions`, `tech_color`, `tech_lang`, `tech_display`, `tech_sensors`, `tech_battery`, `tech_multihome`, `tech_compatibility`) VALUES
(1, '3.3 in dia 1.1 in h', 'stainless steel', 'English, French, Dutch, Spanish, Italian', '24bit color LCD', 'Temperature, humidity, face recognition', 'rechargeable lithium-ion', 'can control up to 20 thermostats per home', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temperature`
--

CREATE TABLE `tbl_temperature` (
  `temp_id` int(10) UNSIGNED NOT NULL,
  `temp_profile` varchar(100) NOT NULL,
  `temp_range` int(11) NOT NULL,
  `temp_humidity` varchar(100) NOT NULL,
  `temp_desc` int(11) NOT NULL,
  `temp_indoor` int(11) NOT NULL,
  `temp_outdoor` varchar(100) NOT NULL,
  `temp_forecast` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_temperature`
--

INSERT INTO `tbl_temperature` (`temp_id`, `temp_profile`, `temp_range`, `temp_humidity`, `temp_desc`, `temp_indoor`, `temp_outdoor`, `temp_forecast`) VALUES
(1, 'arriveHome', 25, 'Based on location and Forecast', 20, 25, '15', 'temperature and Forecast measures are in centigrade'),
(2, 'leave home', 20, 'depends on forecast', 15, 22, '15', 'based on the day');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `tbl_inst_resources`
--
ALTER TABLE `tbl_inst_resources`
  ADD PRIMARY KEY (`inst_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `tbl_safety`
--
ALTER TABLE `tbl_safety`
  ADD PRIMARY KEY (`safe_id`);

--
-- Indexes for table `tbl_techspec`
--
ALTER TABLE `tbl_techspec`
  ADD PRIMARY KEY (`tech_id`);

--
-- Indexes for table `tbl_temperature`
--
ALTER TABLE `tbl_temperature`
  ADD PRIMARY KEY (`temp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_inst_resources`
--
ALTER TABLE `tbl_inst_resources`
  MODIFY `inst_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_safety`
--
ALTER TABLE `tbl_safety`
  MODIFY `safe_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_techspec`
--
ALTER TABLE `tbl_techspec`
  MODIFY `tech_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_temperature`
--
ALTER TABLE `tbl_temperature`
  MODIFY `temp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
