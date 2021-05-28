-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: javaweb.c2uijc6ieiin.us-east-2.rds.amazonaws.com:3306
-- Generation Time: May 28, 2021 at 12:58 PM
-- Server version: 8.0.20
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javaweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `hospital_fee` decimal(6,2) NOT NULL DEFAULT '350.00',
  `app_fee` decimal(6,2) NOT NULL DEFAULT '500.00',
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`hospital_fee`, `app_fee`, `id`) VALUES
('350.00', '500.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int UNSIGNED NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `app_time` timestamp NOT NULL,
  `empid` int DEFAULT NULL,
  `Pid` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img_1` varchar(100) DEFAULT NULL,
  `img_2` varchar(100) DEFAULT NULL,
  `img_3` varchar(100) DEFAULT NULL,
  `img_4` varchar(100) DEFAULT NULL,
  `img_5` varchar(100) DEFAULT NULL,
  `type` int UNSIGNED DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `app_time`, `empid`, `Pid`, `description`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `type`, `status`) VALUES
(1, '2021-05-13 14:30:00', 12, 2, 'Test 1', '/Hospital-mng-sys/patient/uploads/myyfchksqb.jpg', '', '', '', '', 2, 1),
(2, '2021-05-13 06:30:00', 14, 2, '', '', '', '', '', '', 3, 0),
(3, '2021-05-13 06:30:00', 12, 2, 'dfg', '', '', '', '', '', 2, 0),
(4, '2021-05-13 06:30:00', 14, 2, '', '', '', '', '', '', 3, 0),
(5, '2021-05-13 06:30:00', 12, 3, '', '', '', '', '', '', 3, 0),
(6, '2021-05-13 06:30:00', 12, 2, 'fghfgh', '', '', '', '', '', 2, 0),
(7, '2021-05-13 06:30:00', 12, 2, 'test', '/Hospital-mng-sys/patient/uploads/cfaavvvjkj.jpg', '', '', '', '', 2, 3),
(8, '2021-05-13 06:30:00', 14, 2, '', '', '', '', '', '', 3, 3),
(9, '2021-05-20 06:30:00', 12, 2, 'test', '/Hospital-mng-sys/patient/uploads/qcrhpadgbd.jpg', '', '', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_type`
--

CREATE TABLE `app_type` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_type`
--

INSERT INTO `app_type` (`id`, `type`) VALUES
(1, 'Appointment'),
(2, 'eApoointment'),
(3, 'E-channeling');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'OPD'),
(2, 'ENT'),
(3, 'Dermatology');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `empid` int NOT NULL,
  `spec` varchar(50) NOT NULL,
  `dept_no` int UNSIGNED NOT NULL,
  `channel_fee` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`empid`, `spec`, `dept_no`, `channel_fee`) VALUES
(10, 'Ear', 3, 2600.00),
(12, 'OPD', 1, 500.00),
(14, 'test', 2, 1100.00);

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`id`, `name`, `price`) VALUES
(1, 'Panadol 500mg', '5.25'),
(2, 'Decon', '653.32'),
(3, 'Vicodin 25mg', '13.20'),
(4, 'Synthroid 100mg', '13.00'),
(5, 'Amoxil 500mg', '20.00'),
(6, 'Neurontin 1pack', '200.00'),
(7, 'Glucophage 200mg', '120.00');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(12) DEFAULT 'Active',
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `mobile`, `address`, `email`, `status`) VALUES
(1, 'Administrator', '0000000000', '-', 'admin@hospital.lk', 'Active'),
(10, 'Dr. Supirpiviki', '986659587', 'Colombo', 'doctor1@hospital.lk', 'Active'),
(11, 'Receptionist', '781234875', '1, Colombo', '1, Colombo', 'Active'),
(12, 'OPD Doctor', '0000000000', '-', NULL, 'Active'),
(13, 'Pharmacy', '0', '1, Colombo', '1, Colombo', 'Active'),
(14, 'Dr. Rajapaksha', '700000000', '68A/116', '68A/116', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_type_id` int UNSIGNED NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `loginstring` varchar(30) DEFAULT NULL,
  `exptime` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `user_type_id`, `user_id`, `loginstring`, `exptime`) VALUES
(1, 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', 6, '1', 'mjousndlzpigowjsdghqhvpgomvlxw', '1620932321'),
(10, '0788323221', '82da126aeb13abb6bce8b73841ff34e0', 2, '2', 'yzxyueeebeirriofbaxxnjxqmafwfw', '1620932761'),
(12, 'doctor1', '46dc1172dbbde1ad22501fa912803113', 5, '10', 'qrsmkqlllwxmvviskxzgnanoelgljl', '1620932655'),
(13, '0711047647', '53913d5056e7b8fd41a8b03385c01196', 2, '3', 'jpueebzzyzvgoxmrgufneqwltbsvjb', '1620932165'),
(15, '0788323222', 'b95eb58ce3d622884c1e20fcc8d0818c', 2, '5', 'guaoorwuqadqwkebbyqdycrgikzfod', '1620784942'),
(16, 'recep', '7587b95d940be1d3c04d7229b54d5d9d', 1, '11', 'jmeganicslehkmecnvmwepobwujkft', '1620931726'),
(17, 'phy', '099efd3227a128a2e50dca8adb977958', 3, '13', 'celymolmhowyagbpztvevzmkwzyshv', '1620932283'),
(18, 'doctor2', '54ad8b29367542f66f1b4a35c446f3e6', 5, '14', 'dymdjlztcxggpqokqmemfjbkvwpfti', '1620930977');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `empid` int NOT NULL,
  `dept_no` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `bdate` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `mobile`, `address`, `bdate`, `email`) VALUES
(2, 'Thisara Gunathilaka', '0788323221', '68A/116', '2000-11-17', NULL),
(3, 'Prashan', '0711047647', 'Prashanvimantha7@gmail.com ', '1999-02-25', ''),
(4, 'Test', '0788323221', '68A/116', '1994-04-06', ''),
(5, 'Test', '0788323222', '68A/116', '1994-05-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `app_id` int UNSIGNED DEFAULT NULL,
  `pres_id` int UNSIGNED DEFAULT NULL,
  `pg_payment_id` varchar(50) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status_code` tinyint NOT NULL,
  `method` varchar(20) NOT NULL,
  `pg_status_message` varchar(50) DEFAULT NULL,
  `card_holder_name` varchar(50) DEFAULT NULL,
  `card_no` varchar(30) DEFAULT NULL,
  `card_expiry` varchar(5) DEFAULT NULL,
  `paid_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `app_id`, `pres_id`, `pg_payment_id`, `amount`, `status_code`, `method`, `pg_status_message`, `card_holder_name`, `card_no`, `card_expiry`) VALUES
(1, 1, NULL, '320025133424', '500.00', 2, 'TEST', 'Successfully completed the payment.', 'asd', '************1292', '0223'),
(2, 7, NULL, '320025133429', '500.00', 2, 'TEST', 'Successfully completed the payment.', 'sdf', '************1292', '0223'),
(3, 8, NULL, '320025133432', '1450.00', 2, 'TEST', 'Successfully completed the payment.', 'sdf', '************1292', '0223'),
(4, NULL, 1, '320025133434', '1306.64', 2, 'TEST', 'Successfully completed the payment.', 'fghfgh', '************1292', '0223'),
(5, 9, NULL, '320025133435', '500.00', 2, 'TEST', 'Successfully completed the payment.', 'Test', '************1292', '0223'),
(6, NULL, 2, '320025133438', '250.50', 2, 'TEST', 'Successfully completed the payment.', 'asd', '************1292', '0232');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int UNSIGNED NOT NULL,
  `app_id` int UNSIGNED DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `instruct` varchar(255) DEFAULT NULL,
  `drug_1` int UNSIGNED DEFAULT NULL,
  `qty_1` int DEFAULT NULL,
  `drug_2` int UNSIGNED DEFAULT NULL,
  `qty_2` int DEFAULT NULL,
  `drug_3` int UNSIGNED DEFAULT NULL,
  `qty_3` int DEFAULT NULL,
  `status` tinyint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `app_id`, `instruct`, `drug_1`, `qty_1`, `drug_2`, `qty_2`, `drug_3`, `qty_3`, `status`) VALUES
(1, 8, '[object HTMLParagraphElement]', 2, 2, 1, 0, 1, 0, 1),
(2, 7, '', 1, 10, 3, 15, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type`) VALUES
(1, 'Receptionist'),
(2, 'Patient'),
(3, 'Pharmacy'),
(4, 'Nurse'),
(5, 'Doctor'),
(6, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empid` (`empid`),
  ADD KEY `Pid` (`Pid`),
  ADD KEY `appointment_ibfk_3` (`type`);

--
-- Indexes for table `app_type`
--
ALTER TABLE `app_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`empid`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `loginstring` (`loginstring`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`empid`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `123` (`pres_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_id` (`app_id`),
  ADD KEY `drug_1` (`drug_1`),
  ADD KEY `drug_2` (`drug_2`),
  ADD KEY `drug_3` (`drug_3`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `app_type`
--
ALTER TABLE `app_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drug`
--
ALTER TABLE `drug`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `emp` (`id`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Pid`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`type`) REFERENCES `app_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `emp` (`id`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `department` (`id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `emp` (`id`),
  ADD CONSTRAINT `nurse_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `department` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `123` FOREIGN KEY (`pres_id`) REFERENCES `prescription` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `appointment` (`id`),
  ADD CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`drug_1`) REFERENCES `drug` (`id`),
  ADD CONSTRAINT `prescription_ibfk_4` FOREIGN KEY (`drug_2`) REFERENCES `drug` (`id`),
  ADD CONSTRAINT `prescription_ibfk_5` FOREIGN KEY (`drug_3`) REFERENCES `drug` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
