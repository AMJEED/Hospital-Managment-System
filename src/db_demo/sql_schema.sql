-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2021 at 03:08 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `App_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `Disease_id` int(11) DEFAULT NULL,
  `DATE_time` varchar(25) DEFAULT NULL,
  `t_time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`App_id`, `patient_id`, `doctor_id`, `Disease_id`, `DATE_time`, `t_time`) VALUES
(0, 0, 3, 3, '9 jan 2021', '12 pm'),
(1, 0, 2, 3, '20 feb 2021', '4 pm'),
(2, 1, 4, 2, '29/03/2021', '4:30 pm'),
(6, 1, 4, 3, '25 feb 2021', '4:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `discharged_patients`
--

CREATE TABLE `discharged_patients` (
  `p_id` int(11) NOT NULL,
  `P_name` varchar(29) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `Disease_id` int(11) DEFAULT NULL,
  `Address` varchar(25) DEFAULT NULL,
  `Ward` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `Disease_ID` int(11) NOT NULL,
  `Disease_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`Disease_ID`, `Disease_name`) VALUES
(1, 'Cardiologist'),
(2, 'Cyclogest'),
(3, 'neurologist'),
(4, 'Dermatologists');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `D_id` int(11) NOT NULL,
  `D_name` varchar(25) DEFAULT NULL,
  `Age` int(10) DEFAULT NULL,
  `Contact` varchar(12) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `specialist_in` int(11) DEFAULT NULL,
  `Hire_date` varchar(25) DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`D_id`, `D_name`, `Age`, `Contact`, `Address`, `specialist_in`, `Hire_date`, `salary`) VALUES
(0, 'Dr Saba ', 45, '03329385648', 'Larkana ', 2, '2005-05-04', '400000'),
(1, 'Muhammad Tariq', 45, '03072685283', 'city town hydarabad', 3, '2010-09-12', '400000'),
(2, 'MR maqsood', 39, '03009385648', 'Sukkur', 2, '2011-04-04', '200000'),
(3, 'MS tabsoom', 27, '03009385283', 'gulshan iqbal town karachi', 1, '2008-04-04', '250000'),
(4, 'ksjds', 32, '0392981212', 'dlsdsl', 3, '233', '20000'),
(5, 'Dr Amna ', 32, '0328192812', 'karachi', 3, '14 august 2020', '20000'),
(6, 'Nimarta', 29, '7219219281', 'sykkur', 3, '23 march 2021', '300000');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `p_id` int(11) NOT NULL,
  `P_name` varchar(29) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `Disease_id` int(11) DEFAULT NULL,
  `Address` varchar(25) DEFAULT NULL,
  `Ward` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`p_id`, `P_name`, `Age`, `Gender`, `Disease_id`, `Address`, `Ward`) VALUES
(0, 'Ali', 14, 'M', 2, 'city town karachi', '3'),
(1, 'Ahmad', 12, 'M', 1, 'sargoda punjab', '3'),
(2, 'usama', 24, 'M', 3, 'lahore', '2');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `Doctor_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `numOfVisits` int(15) DEFAULT NULL,
  `bill` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `Doctor_id`, `patient_id`, `numOfVisits`, `bill`) VALUES
(0, 2, 1, 3, 1000),
(1, 3, 0, 2, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(25) DEFAULT NULL,
  `password` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('AQSA', 123),
('AQSA', 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`App_id`),
  ADD KEY `Disease_id` (`Disease_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `discharged_patients`
--
ALTER TABLE `discharged_patients`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `Disease_id` (`Disease_id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`Disease_ID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`D_id`),
  ADD KEY `specialist_in` (`specialist_in`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `Disease_id` (`Disease_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `Doctor_id` (`Doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Disease_id`) REFERENCES `disease` (`Disease_ID`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`p_id`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`D_id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`specialist_in`) REFERENCES `disease` (`Disease_ID`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`Disease_id`) REFERENCES `disease` (`Disease_ID`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`Doctor_id`) REFERENCES `doctors` (`D_id`),
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
