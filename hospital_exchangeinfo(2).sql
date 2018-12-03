-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2018 at 07:27 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_exchangeinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
CREATE TABLE IF NOT EXISTS `admin_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pfNo` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Contacts` int(10) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `pfNo`, `firstname`, `lastname`, `username`, `password`, `Contacts`, `address`) VALUES
(1, 'AD10500', 'Diana', 'Maraba', 'admin', 'admin1', 722334556, '34KSM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `token_no` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `appointment_to` varchar(25) NOT NULL,
  `appointment_date` date NOT NULL,
  PRIMARY KEY (`token_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`token_no`, `fname`, `lname`, `age`, `gender`, `patient_id`, `appointment_to`, `appointment_date`) VALUES
(1, 'Faith', 'Lindi', 21, 'Female', 'P10500', 'DC10500', '2018-10-07'),
(3, 'Mercy', 'Katuki', 21, 'female', 'P10504', 'DC10503', '2018-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
CREATE TABLE IF NOT EXISTS `diagnosis` (
  `token_no` int(255) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `doctor_name` varchar(25) NOT NULL,
  `doctor_pfNo` varchar(25) NOT NULL,
  `diagnosis` text NOT NULL,
  `prescribed_tests` text NOT NULL,
  `prescribed_medicines` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`token_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`token_no`, `firstname`, `lastname`, `age`, `gender`, `doctor_name`, `doctor_pfNo`, `diagnosis`, `prescribed_tests`, `prescribed_medicines`, `date`) VALUES
(1, 'Faith', 'Lindi', 21, 'Female', 'Johnny', 'DC10500', 'headache', 'none', 'paracetamol', '2018-10-23'),
(2, 'Dennis', 'Kiama', 21, 'Male', 'Hilda Chepkemei', 'DC10502', 'fever,lack of appetite,stomach pains\r\n', 'none', 'paracetamol,cyclopam\r\n\r\n', '2018-10-23'),
(3, 'Mercy', 'Katuki', 21, 'female', 'Prisca', 'DC10501', 'fever,fatigue,sweating,vomiting\r\n', 'malaria', 'paracetamol,Amoxyl,Coartem\r\n', '2018-10-23'),
(4, 'Fiona', 'Ntuti', 25, 'female', 'Prisca', 'DC10501', 'fatigue,headache,vomiting,lack of appetite', 'typhoid', 'paracetamol,ciprofloaxin,amoxyl', '2018-10-23'),
(6, 'Leticia', 'Nekesa', 20, 'female', 'hilda', 'DC10502', 'fever\nlack of appetite', 'none', 'paracetamol', '2018-10-09'),
(7, 'Dotty', 'Kalama', 34, 'female', 'hilda', 'DC10508', 'headache', 'none', 'paracetamol', '2018-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

DROP TABLE IF EXISTS `doctor_details`;
CREATE TABLE IF NOT EXISTS `doctor_details` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `pfNo` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Contacts` int(10) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`id`, `pfNo`, `firstname`, `lastname`, `username`, `password`, `Contacts`, `address`) VALUES
(1, 'DC10500', 'John', 'Kiprop', 'Johnny', 'john123', 722567892, '34KSM'),
(2, 'DC10501', 'Prisca', 'Lavender', 'Priscillah', 'prisca123', 744567890, '34KSM'),
(3, 'DC10502', 'Hilda', 'Chepkemei', 'hilda', 'hilda123', 722345678, '45ELD');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

DROP TABLE IF EXISTS `login_table`;
CREATE TABLE IF NOT EXISTS `login_table` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `pfNo` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Contacts` int(10) NOT NULL,
  `address` text NOT NULL,
  `options` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`id`, `pfNo`, `firstname`, `lastname`, `username`, `password`, `Contacts`, `address`, `options`) VALUES
(1, 'AD10500', 'Diana', 'Maraba', 'Dima', 'admin1', 728445231, '34KSM', 'Admin'),
(2, 'RC10500', 'Stacy', 'Santa', 'Stasa', 'hello123', 732456789, '345MSA', 'Receptionist'),
(3, 'DC10500', 'Johnson', 'Kiprop', 'John', 'john123', 721345666, '345MSA', 'Doctor'),
(4, 'PC10500', 'Lindsey', 'Kitui', 'linda', 'linda123', 723456777, '34KSM', 'Pharmacist'),
(5, 'AD10501', 'Richard', 'Kisa', 'Richi', 'richi123', 722456900, '45MSA', 'Admin'),
(6, 'RC10501', 'Patricia', 'Kitui', 'Patty', 'hello000', 734567890, '34KSM', 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

DROP TABLE IF EXISTS `patient_details`;
CREATE TABLE IF NOT EXISTS `patient_details` (
  `token_no` int(255) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `payment_option` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `Contacts` int(10) NOT NULL,
  PRIMARY KEY (`token_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`token_no`, `patient_id`, `fname`, `lname`, `age`, `gender`, `payment_option`, `address`, `Contacts`) VALUES
(1, 'P10500', 'Faith', 'Lindi', 20, 'Female', 'Cash', '34KSM', 722008768),
(2, 'P10501', 'Dennis', 'Kiama', 21, 'Male', 'Cash', '45Hawaai', 728445232),
(3, 'P10504', 'Mercy', 'Katuki', 21, 'female', 'NHIF card', '45ELD', 732567890),
(4, 'P10505', 'Fiona', 'Ntuti', 25, 'female', 'Cash', '34KSM', 725678900),
(5, 'P10506', 'Lavender', 'Katuki', 30, 'female', 'NHIF Card', '34KSM', 722345678),
(6, 'P10507', 'Leticia', 'Nekesa', 20, 'female', 'cash', '45Eld', 756444321),
(7, 'P10508', 'Dotty', 'Kalama', 34, 'female', 'cash', '45ELD', 756432123);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist_details`
--

DROP TABLE IF EXISTS `pharmacist_details`;
CREATE TABLE IF NOT EXISTS `pharmacist_details` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `pfNo` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Contacts` int(10) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist_details`
--

INSERT INTO `pharmacist_details` (`id`, `pfNo`, `firstname`, `lastname`, `username`, `password`, `Contacts`, `address`) VALUES
(1, 'PC10500', 'Lindsey', 'Kitui', 'linda', 'linda123', 721345678, '45ELD');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist_details`
--

DROP TABLE IF EXISTS `receptionist_details`;
CREATE TABLE IF NOT EXISTS `receptionist_details` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `pfNo` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Contacts` int(10) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist_details`
--

INSERT INTO `receptionist_details` (`id`, `pfNo`, `firstname`, `lastname`, `username`, `password`, `Contacts`, `address`) VALUES
(2, 'RC10501', 'Rebecca', 'Wafula', 'Becky', 'becky123', 733456780, '48Kach');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
