-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 04:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `Payment_date` date NOT NULL,
  `Examination_cost` float NOT NULL,
  `medicine_cost` float NOT NULL DEFAULT 0,
  `test_cost` float NOT NULL DEFAULT 0,
  `room_cost` float NOT NULL DEFAULT 0,
  `Total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `Patient_Id`, `Payment_date`, `Examination_cost`, `medicine_cost`, `test_cost`, `room_cost`, `Total`) VALUES
(4, 4, '2022-02-28', 500, 80, 1500, 1200, 3280),
(5, 6, '2022-05-21', 200, 170, 0, 0, 370),
(10, 6, '2022-05-25', 0, 0, 0, 0, 0),
(17, 33, '2024-07-07', 1000, 200, 200, 1000, 2400);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_name`) VALUES
('ACCOUNTS'),
('Administration'),
('ALLERGY'),
('ANESTHESIOLOGY'),
('CARDIOLOGY'),
('CLEANER'),
('ENT'),
('INTENSIVECARE'),
('Laboratory'),
('NEUROLOGY'),
('NURSE'),
('ORTHOPEDICS'),
('PATHOLOGY'),
('Pharmacy'),
('RADIOLOGY'),
('Reciptionist'),
('SECURITY'),
('SURGERY');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_Id` int(11) NOT NULL,
  `E_SSN` bigint(20) NOT NULL,
  `E_Name` varchar(50) NOT NULL,
  `E_Gender` varchar(10) NOT NULL,
  `E_Birthday` date NOT NULL,
  `E_Email` varchar(40) NOT NULL,
  `E_phone` int(11) NOT NULL,
  `E_Address` varchar(100) NOT NULL,
  `E_Department_Name` varchar(20) NOT NULL,
  `Date_Joining` date DEFAULT NULL,
  `Salary` float NOT NULL,
  `Username` varchar(20) NOT NULL,
  `E_password` varchar(20) NOT NULL,
  `Arrival` time DEFAULT NULL,
  `Leaving` time DEFAULT NULL,
  `recovery` varchar(100) DEFAULT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_Id`, `E_SSN`, `E_Name`, `E_Gender`, `E_Birthday`, `E_Email`, `E_phone`, `E_Address`, `E_Department_Name`, `Date_Joining`, `Salary`, `Username`, `E_password`, `Arrival`, `Leaving`, `recovery`, `answer`) VALUES
(25, 232425, 'Liu', 'Male', '1995-07-03', 'liu@gmail.com', 983743424, 'Guangxi', 'ALLERGY', '2024-07-01', 9500, 'liu', 'liu', NULL, NULL, NULL, ''),
(26, 30120020345679, 'Ali Mohammed', 'Male', '2001-02-22', 'Ali2045@gmail.com', 0, 'Giza', 'INTENSIVECARE', '2017-03-21', 9000, 'Ali@1', 'ali1D', '00:00:00', '00:00:00', NULL, ''),
(27, 30118181818179, 'Marwan Mohammed', 'Male', '2012-02-01', 'Mazen2045@gmail.com', 23324534, 'Helwan', 'ANESTHESIOLOGY', '2011-04-21', 9000, 'Marwan@1', 'Marwan', NULL, NULL, NULL, ''),
(28, 30104020000009, 'Mazen Mohammed Ibrahim', 'Male', '2001-02-22', 'Mazen2045@gmail.com', 898738273, 'Maadi, Cairo', 'CARDIOLOGY', '2011-04-21', 9000, 'Mazen@1', 'Mazen1D', NULL, NULL, NULL, ''),
(30, 30104020342222, 'Saad Said', 'Male', '2002-02-01', 'Saad2045@gmail.com', 111111888, 'october', 'ORTHOPEDICS', '2004-03-05', 8000, 'Saad@1', 'Saad1D', NULL, NULL, NULL, ''),
(31, 30300888885679, 'Mona Mohammed', 'Female', '2002-02-01', 'Mona2045@gmail.com', 1150033959, 'Giza', 'PATHOLOGY', '2017-09-19', 8000, 'Mona@1', 'Mona1D', '00:00:00', '00:00:00', NULL, ''),
(32, 30104099999979, 'Ola Ahmed', 'Female', '2002-02-01', 'Ola2045@gmail.com', 1152000455, 'october', 'RADIOLOGY', '2021-03-05', 7000, 'Ola@1', 'Ola1D', '00:00:00', '00:00:00', NULL, ''),
(33, 30105555545679, 'Laila Omar', 'Female', '2012-02-02', 'Laila2045@gmail.com', 0, 'Helwan, Cairo', 'SURGERY', '2020-03-10', 11000, 'Laila@1', 'Laila1D', '08:00:00', '12:00:00', NULL, ''),
(34, 34589020345679, 'Aliaa Mohammed', 'Female', '2002-02-01', 'Aliaa2045@gmail.com', 0, 'october', 'NURSE', '2009-09-09', 6000, 'Aliaa@1', 'Aliaa1D', '00:00:00', '00:00:00', NULL, ''),
(35, 30199999000679, 'Ahmed Mohammed', 'Male', '2002-02-01', 'Ahmed2045@gmail.com', 0, 'helwan', 'ACCOUNTS', '2015-03-21', 5000, 'Ahmed@1', 'ahmed2045', '00:00:00', '00:00:00', 'What\'s your number phone?', '0112003321'),
(37, 30104342115679, 'Nour Ibrahim', 'Female', '2002-02-01', 'Nour2045@gmail.com', 0, 'october', 'CLEANER', '2017-02-02', 3000, 'Nour@1', 'Nour1D', '00:00:00', '00:00:00', NULL, ''),
(38, 30104020341234, 'Seif Ali', 'Male', '2002-02-01', 'Seif2045@gmail.com', 0, 'october', 'Laboratory', '2016-03-21', 6000, 'Seif@1', 'Seif1D', '00:00:00', '00:00:00', NULL, ''),
(39, 30104024567890, 'Israa Ahmed', 'Female', '2002-02-01', 'Israa2045@gmail.com', 0, 'october', 'Pharmacy', '2017-02-21', 7000, 'Israa@1', 'Israa1D', '00:00:00', '00:00:00', NULL, ''),
(40, 30105060708090, 'Nourhan Ali Mosa', 'Female', '2001-02-22', 'nourhan2045@gmail.com', 0, 'october', 'Administration', '2022-02-02', 10000, 'Admin', 'Admin', '03:07:13', '12:07:06', NULL, ''),
(41, 20102010301111, 'Dalia ahmed Ibrahim', 'Female', '2002-02-01', 'Dalia2045@gmail.com', 0, 'october', 'Reciptionist', '2019-09-02', 3000, 'Dalia', 'Dalia', '00:00:00', '00:00:00', NULL, ''),
(42, 40203060701234, 'Wafaa Saad Mohammed', 'Female', '2022-02-03', 'Wafaa2045@gmail.com', 0, 'Maadi, Cairo', 'ALLERGY', '2024-07-01', 9000, 'Wafaa@1', 'Wafaa1D', '12:00:00', '18:00:00', NULL, ''),
(43, 40203060733334, 'Walid Mousa Mohammed', 'Male', '2012-02-04', 'Walid2045@gmail.com', 0, 'Maadi, Cairo', 'NEUROLOGY', '2022-02-02', 9000, 'Walid@1', 'Walid1D', '08:00:00', '12:00:00', NULL, ''),
(45, 30104124333111, 'Walid Mousa', 'Male', '2022-02-03', 'Taha2045@gmail.com', 0, 'october', 'ACCOUNTS', '2022-02-02', 15000, 'ali11', 'Marwan12', '08:00:00', '12:00:00', NULL, ''),
(56, 30104025529999, 'Amira Taha', 'Female', '2002-02-02', 'amira2045@gmail.com', 111111111, 'Maadi', 'ALLERGY', '2010-05-05', 20000, 'amira', 'amira', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `inpatient`
--

CREATE TABLE `inpatient` (
  `In_id` int(11) NOT NULL,
  `Room_id` int(11) NOT NULL,
  `Doctor_id` int(11) NOT NULL,
  `Nurse_id` int(11) NOT NULL,
  `Room_Assigned` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `date_admitted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inpatient`
--

INSERT INTO `inpatient` (`In_id`, `Room_id`, `Doctor_id`, `Nurse_id`, `Room_Assigned`, `duration`, `date_admitted`) VALUES
(2, 1, 34, 28, 20170303, NULL, '2022-05-25'),
(4, 2, 27, 34, 20220228, 7, NULL),
(30, 2, 28, 34, 20240705, NULL, '2000-04-08'),
(33, 1, 28, 34, 20240707, NULL, '2024-07-07'),
(36, 1, 28, 34, 20240707, NULL, '2024-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Medicine_name` varchar(20) NOT NULL,
  `Cost` float NOT NULL,
  `Company` varchar(30) NOT NULL,
  `MQuantity` int(10) NOT NULL,
  `Received_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Medicine_name`, `Cost`, `Company`, `MQuantity`, `Received_date`) VALUES
('ACETAMINOPHEN', 60, 'Acorda', 100, '2022-02-03'),
('ANDROCUR', 80, 'Acorda', 100, '2022-02-18'),
('ANTI HISTAMINES', 40, 'AAH', 100, '2022-02-18'),
('ANTIPSYCHOTIC', 200, 'Acorda', 30, '2022-02-18'),
('ASPIRIN', 8, 'AAH', 88, '2022-02-23'),
('AVIL', 4, 'AAH', 100, '2022-02-18'),
('BENZODIAZEPINES', 120, 'AAH', 100, '2022-02-18'),
('BETA-BLOCKER', 90, 'AAH', 100, '2022-02-18'),
('BETADINE', 8, 'Acorda', 100, '2022-02-18'),
('CANESTEN', 12, 'AAH', 100, '2022-02-18'),
('CIPROXIN', 6, 'AAH', 100, '2022-02-18'),
('CROCINE', 10, 'Acorda', 100, '2022-02-18'),
('CYPROSTAT', 12, 'AAH', 100, '2022-02-18'),
('DESTOLIT', 82, 'Acorda', 100, '2022-02-18'),
('DICLOFENAC', 18, 'AAH', 100, '2022-02-18'),
('GLUCOSE', 200, 'AAH', 200, '2022-02-18'),
('HIDRASEC', 50, 'Acorda', 200, '2022-02-18'),
('LIVER-52', 100, 'Acorda', 200, '2022-02-18'),
('METHYLPHENIDATE', 12, 'AAH', 200, '2022-02-18'),
('NAMOSLATE', 8, 'AAH', 200, '2022-02-18'),
('OMEE', 35, 'Acorda', 200, '2022-02-18'),
('OMNI GEL', 30, 'Acorda', 200, '2022-02-18'),
('ORS', 7, 'AAH', 200, '2022-02-18'),
('PARIET', 8, 'AAH', 200, '2022-02-18'),
('TARIVID', 80, 'AAH', 200, '2022-02-18'),
('URSOGAL', 20, 'AAH', 200, '2022-02-18'),
('UTINOR', 80, 'AAH', 200, '2022-02-18'),
('VERMOX', 40, 'Acorda', 200, '2022-02-18'),
('Z-DRUG', 150, 'Acorda', 200, '2022-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL,
  `P_SSN` bigint(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `Blood_Group` varchar(3) DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `Height` float DEFAULT NULL,
  `Illness_Issue` varchar(20) NOT NULL,
  `Date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `P_SSN`, `Name`, `Gender`, `Email`, `Phone`, `Address`, `Blood_Group`, `Weight`, `Height`, `Illness_Issue`, `Date_of_birth`) VALUES
(1, 20104030346767, 'Ali Mohammed', 'Male', 'Ali2@gmail.com', 237762123, 'Cairo', 'O+', 77, 177, 'INTENSIVECARE', '2010-03-21'),
(2, 20104124768679, 'Taha Ahmed', 'Male', 'Taha2045@gmail.com', 43534, 'Cairo', 'A+', 88, 188, 'CARDIOLOGY', '2010-03-21'),
(3, 20104020363, 'Saad Said', 'Male', 'Saad25@gmail.com', 4532323, 'Cairo', 'O-', 70, 166, 'ORTHOPEDICS', '2010-03-21'),
(4, 20104020000649, 'Youssif ali', 'Male', 'Youssif2045@gmail.co', 0, 'Cairo', 'AB+', 100, 170, 'NEUROLOGY', '2010-03-21'),
(5, 20104099999979, 'Mariam Ahmed', 'Female', 'Ola2045@gmail.com', 0, 'Cairo', 'O-', 70, 166, 'RADIOLOGY', '2010-03-21'),
(6, 2030002034222, 'Hoda Mohammed', 'Female', 'hoda22@gmail.com', 112233444, 'Cairo', 'AB+', 77, 177, 'PATHOLOGY', '2021-02-03'),
(7, 20104032226767, 'Aliaa Mahmmoud', 'Male', 'Ali2045@gmail.com', 0, 'Cairo', 'O+', 77, 177, 'INTENSIVECARE', '2010-03-21'),
(8, 20104124768000, 'Taher Ali', 'Male', 'Taha2045@gmail.com', 0, 'Cairo', NULL, NULL, NULL, 'CARDIOLOGY', '2010-03-21'),
(9, 20104020355579, 'Samira Said', 'Female', 'Saad2045@gmail.com', 0, 'Cairo', NULL, NULL, NULL, 'ORTHOPEDICS', '2010-03-21'),
(10, 202222222222, 'Taha Taha', 'Female', 'tahatha@gmail.com', 0, 'Cairo', NULL, NULL, NULL, 'Allergy', '2022-02-02'),
(12, 201040200888, 'Youssif', 'Male', 'Youssif5@gmail.co', 111111111, 'Cairo', NULL, NULL, NULL, 'NEUROLOGY', '2010-03-21'),
(13, 2010402000000, 'Saad ', 'Male', 'Saad@gmail.com', 11111111, 'Cairo', NULL, NULL, NULL, 'ORTHOPEDICS', '2010-03-21'),
(14, 20104020000, 'Youssif ', 'Male', 'Youssif@gmail.co', 1111111111, 'Cairo', NULL, NULL, NULL, 'NEUROLOGY', '2010-03-21'),
(15, 201041247000, 'omar Ahmed', 'Male', 'Taha2045@gmail.com', NULL, 'Cairo', NULL, NULL, NULL, 'CARDIOLOGY', '2010-03-21'),
(17, 2010412472323, 'omar Ahmed', 'Male', 'Taha2045@gmail.com', NULL, 'Cairo', NULL, NULL, NULL, 'CARDIOLOGY', '2010-03-21'),
(18, 3030304020363, 'Saad', 'Male', 'Saad25@gmail.com', NULL, 'Cairo', NULL, NULL, NULL, 'ORTHOPEDICS', '2010-03-21'),
(19, 20104124760000, 'Taha ali', 'Male', 'Taha2045@gmail.com', NULL, 'Cairo', NULL, NULL, NULL, 'CARDIOLOGY', '2010-03-21'),
(20, 20104124761111, 'Saad Ahmed', 'Male', 'Taha2045@gmail.com', NULL, 'Cairo', NULL, NULL, NULL, 'CARDIOLOGY', '2010-03-21'),
(21, 20104177778679, 'Mai Ahmed', 'Male', 'mai20@gmail.com', NULL, 'Cairo', NULL, NULL, NULL, 'CARDIOLOGY', '2010-03-21'),
(23, 2010412000111, 'Amira Ahmed', 'Female', 'amira5@gmail.com', NULL, 'Cairo', NULL, NULL, NULL, 'ALLERGY', '2010-03-21'),
(24, 2010000768679, 'Amira Ahmed', 'Female', 'amira2045@gmail.com', NULL, 'Cairo', NULL, NULL, NULL, 'CARDIOLOGY', '2005-03-09'),
(30, 202324242, 'PatientOne', 'Male', 'p1@gmail.com', NULL, 'Guangzhou', NULL, NULL, NULL, 'CARDIOLOGY', '2000-04-08'),
(31, 232535, 'PatientTwo', 'Female', 'p2@gmail.com', NULL, 'GuangZhou', NULL, NULL, NULL, 'CARDIOLOGY', '1998-11-09'),
(33, 2343242, 'PatientTwo', 'Female', 'p2@gmail.com', NULL, 'Guangxi', NULL, NULL, NULL, 'CARDIOLOGY', '2009-12-05'),
(34, 38478398, 'OutPatientA', 'Male', 'opa@gmail.com', 9824928, 'Guangxi', 'B+', 60, 156, 'CARDIOLOGY', '1976-08-28'),
(35, 232452, 'Li', 'Female', 'li@gmail.com', 1831733, 'Guangzhou', NULL, NULL, NULL, 'CARDIOLOGY', '1998-12-03'),
(36, 242525, 'Li', 'Female', 'li@gmail.com', NULL, 'Guangzhou', NULL, NULL, NULL, 'CARDIOLOGY', '2001-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `patient's medicines`
--

CREATE TABLE `patient's medicines` (
  `Patient_id` int(11) NOT NULL,
  `Drug_name` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Recieving_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient's medicines`
--

INSERT INTO `patient's medicines` (`Patient_id`, `Drug_name`, `Quantity`, `Recieving_date`) VALUES
(1, 'ACETAMINOPHEN', 2, '2017-03-02'),
(1, 'AVIL', 2, '2022-05-25'),
(1, 'Z-DRUG', 1, '2017-03-27'),
(2, 'ANTI HISTAMINES', 1, '2017-02-24'),
(2, 'AVIL', 2, '2022-05-21'),
(3, 'ANTIPSYCHOTIC', 1, '2017-04-02'),
(4, 'ACETAMINOPHEN', 1, '2017-05-22'),
(4, 'ANDROCUR', 1, '2022-02-22'),
(6, 'ANDROCUR', 1, '2022-02-22'),
(6, 'BETA-BLOCKER', 1, '2017-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `patient's tests`
--

CREATE TABLE `patient's tests` (
  `P_id` int(11) NOT NULL,
  `PTest_name` varchar(20) NOT NULL,
  `Recieving_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient's tests`
--

INSERT INTO `patient's tests` (`P_id`, `PTest_name`, `Recieving_date`) VALUES
(1, 'BIOPSY', '2017-11-02'),
(1, 'CT-SCAN', '2017-03-02'),
(2, 'BIOPSY', '2022-05-12'),
(2, 'ULTRASOUND', '2017-03-02'),
(3, 'URINE TEST', '0201-12-02'),
(4, 'MRI SCAN', '2022-02-28'),
(4, 'URINE TEST', '2017-02-02'),
(4, 'X-RAY', '2022-02-04'),
(5, 'ENDOSCOPY', '2017-10-02'),
(5, 'URINE TEST', '2017-02-02'),
(6, 'BIOPSY', '2022-05-21'),
(33, 'BLOOD TEST', '2024-07-07'),
(34, 'URINE TEST', '2024-07-07'),
(34, 'X-RAY', '2024-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `patient appointments`
--

CREATE TABLE `patient appointments` (
  `patient_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `Appointment` date NOT NULL,
  `Appointment_time` varchar(5) DEFAULT NULL,
  `diagnosis` varchar(500) DEFAULT NULL,
  `next_appointment` date DEFAULT NULL,
  `Next_Time` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient appointments`
--

INSERT INTO `patient appointments` (`patient_id`, `doc_id`, `Appointment`, `Appointment_time`, `diagnosis`, `next_appointment`, `Next_Time`) VALUES
(2, 26, '2022-02-01', '18:00', 'diagnosis', NULL, NULL),
(3, 27, '2022-02-01', '18:00', 'diagnosis', NULL, NULL),
(4, 27, '2022-02-02', '12:00', '', NULL, NULL),
(5, 28, '2022-02-02', '12:00', 'Headache', '2022-02-02', '02:00'),
(6, 25, '2022-02-02', '14:30', 'Cancer', '2022-03-02', '01:00'),
(6, 25, '2022-02-04', '12:00', 'cancer', '2022-03-02', '02:00'),
(7, 30, '2022-02-02', '12:00', '', NULL, NULL),
(8, 31, '2022-02-02', '12:00', '', NULL, NULL),
(34, 28, '2024-07-08', NULL, 'Headache', '2024-07-09', '09:30');

-- --------------------------------------------------------

--
-- Table structure for table `relative`
--

CREATE TABLE `relative` (
  `Relative_name` varchar(20) NOT NULL,
  `inp_id` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `Relationship` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relative`
--

INSERT INTO `relative` (`Relative_name`, `inp_id`, `phone`, `Relationship`) VALUES
('Dad', 30, 87343232, NULL),
('mai ahmed ali', 2, 0, 'Wife'),
('Mom', 36, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `R_id` int(5) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `RCost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`R_id`, `Type`, `RCost`) VALUES
(1, 'semi-private', 1000),
(2, 'private', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `Test_name` varchar(20) NOT NULL,
  `TCost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`Test_name`, `TCost`) VALUES
('BIOPSY', 3500),
('BLOOD TEST', 300),
('CBC', 300),
('CT-SCAN', 1100),
('ENDOSCOPY', 3000),
('MRI SCAN', 1200),
('ULTRASOUND', 900),
('URINE TEST', 100),
('X-RAY', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_ibfk_1` (`Patient_Id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_Id`),
  ADD UNIQUE KEY `E_SSN` (`E_SSN`),
  ADD UNIQUE KEY `E_password` (`E_password`),
  ADD KEY `E_Department_Name` (`E_Department_Name`);

--
-- Indexes for table `inpatient`
--
ALTER TABLE `inpatient`
  ADD PRIMARY KEY (`In_id`),
  ADD KEY `Room_id` (`Room_id`),
  ADD KEY `Nurse_id` (`Nurse_id`),
  ADD KEY `Doctor_id` (`Doctor_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`Medicine_name`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SSN` (`P_SSN`),
  ADD KEY `Illness_Issue` (`Illness_Issue`);

--
-- Indexes for table `patient's medicines`
--
ALTER TABLE `patient's medicines`
  ADD PRIMARY KEY (`Patient_id`,`Drug_name`),
  ADD KEY `Drug_name` (`Drug_name`);

--
-- Indexes for table `patient's tests`
--
ALTER TABLE `patient's tests`
  ADD PRIMARY KEY (`P_id`,`PTest_name`),
  ADD KEY `PTest_name` (`PTest_name`);

--
-- Indexes for table `patient appointments`
--
ALTER TABLE `patient appointments`
  ADD PRIMARY KEY (`patient_id`,`Appointment`),
  ADD KEY `doc_id` (`doc_id`);

--
-- Indexes for table `relative`
--
ALTER TABLE `relative`
  ADD PRIMARY KEY (`Relative_name`),
  ADD KEY `inp_id` (`inp_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`R_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`Test_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `R_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`E_Department_Name`) REFERENCES `department` (`Department_name`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`E_Department_Name`) REFERENCES `department` (`Department_name`);

--
-- Constraints for table `inpatient`
--
ALTER TABLE `inpatient`
  ADD CONSTRAINT `inpatient_ibfk_1` FOREIGN KEY (`Room_id`) REFERENCES `room` (`R_id`),
  ADD CONSTRAINT `inpatient_ibfk_2` FOREIGN KEY (`Nurse_id`) REFERENCES `employee` (`Employee_Id`),
  ADD CONSTRAINT `inpatient_ibfk_3` FOREIGN KEY (`In_id`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `inpatient_ibfk_4` FOREIGN KEY (`Doctor_id`) REFERENCES `employee` (`Employee_Id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`Illness_Issue`) REFERENCES `department` (`Department_name`);

--
-- Constraints for table `patient's medicines`
--
ALTER TABLE `patient's medicines`
  ADD CONSTRAINT `patient's medicines_ibfk_1` FOREIGN KEY (`Drug_name`) REFERENCES `medicine` (`Medicine_name`),
  ADD CONSTRAINT `patient's medicines_ibfk_2` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`ID`);

--
-- Constraints for table `patient's tests`
--
ALTER TABLE `patient's tests`
  ADD CONSTRAINT `patient's tests_ibfk_1` FOREIGN KEY (`PTest_name`) REFERENCES `test` (`Test_name`),
  ADD CONSTRAINT `patient's tests_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `patient` (`ID`);

--
-- Constraints for table `patient appointments`
--
ALTER TABLE `patient appointments`
  ADD CONSTRAINT `patient appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `patient appointments_ibfk_2` FOREIGN KEY (`doc_id`) REFERENCES `employee` (`Employee_Id`);

--
-- Constraints for table `relative`
--
ALTER TABLE `relative`
  ADD CONSTRAINT `relative_ibfk_1` FOREIGN KEY (`inp_id`) REFERENCES `inpatient` (`In_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
