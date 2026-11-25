-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2026 at 11:03 AM
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
-- Database: `pigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `email`, `password`, `created_at`) VALUES
(3, 'arconadaroberto7@gmail.com', 'maricelroberto', '2026-09-28 01:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `barangay_id` int(10) UNSIGNED NOT NULL,
  `barangay_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`barangay_id`, `barangay_name`) VALUES
(21, 'Acao'),
(22, 'Amerang'),
(23, 'Amurao'),
(24, 'Anuang'),
(25, 'Ayaman'),
(26, 'Ayong'),
(27, 'Bacan'),
(28, 'Balabag'),
(29, 'Baluyan'),
(30, 'Banguit'),
(31, 'Bulay'),
(32, 'Cadoldolan'),
(33, 'Cagban'),
(34, 'Calawagan'),
(35, 'Calayo'),
(36, 'Duyan-Duyan'),
(37, 'Gaub'),
(38, 'Gines Interior'),
(39, 'Gines Patag'),
(40, 'Guibuangan Tigbauan'),
(41, 'Inabasan'),
(42, 'Inaca'),
(43, 'Inaladan'),
(44, 'Ingas'),
(45, 'Ito Norte'),
(46, 'Ito Sur'),
(47, 'Janipaan Central'),
(48, 'Janipaan Este'),
(49, 'Janipaan Oeste'),
(50, 'Janipaan Olo'),
(51, 'Jelicuon Lusaya'),
(52, 'Jelicuon Montinola'),
(53, 'Lag-an'),
(54, 'Leong'),
(55, 'Lutac'),
(56, 'Manguna'),
(57, 'Maraguit'),
(58, 'Morubuan'),
(59, 'Pacatin'),
(60, 'Pagotpot'),
(61, 'Pamul-ogan'),
(63, 'Pamuringao Garrido'),
(62, 'Pamuringao Proper'),
(64, 'Pungtod'),
(65, 'Puyas'),
(66, 'Salacay'),
(67, 'Sulanga'),
(68, 'Tabucan'),
(69, 'Tacdangan'),
(70, 'Talanghauan'),
(71, 'Tigbauan Road'),
(72, 'Tinio-an'),
(73, 'Tiring'),
(74, 'Tupol Central'),
(75, 'Tupol Este'),
(76, 'Tupol Oeste'),
(77, 'Tuy-an'),
(78, 'Zone I (Brgy. 1)'),
(79, 'Zone II (Brgy. 2)'),
(80, 'Zone III (Brgy. 3)'),
(81, 'Zone IV (Brgy. 4)'),
(86, 'Zone IX (Brgy. 9)'),
(82, 'Zone V (Brgy. 5)'),
(83, 'Zone VI (Brgy. 6)'),
(84, 'Zone VII (Brgy. 7)'),
(85, 'Zone VIII (Brgy. 8)'),
(87, 'Zone X (Brgy. 10)'),
(88, 'Zone XI (Brgy. 11)');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `beneficiary_id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) NOT NULL,
  `extension_name` varchar(10) DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `barangay_id` int(10) UNSIGNED NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `civil_status` enum('Single','Married','Widowed','Separated') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`beneficiary_id`, `firstname`, `middlename`, `lastname`, `extension_name`, `gender`, `barangay_id`, `contact`, `civil_status`, `birthdate`, `photo`, `registered_at`, `status`) VALUES
(19, 'raven vincent', 'herera', 'lumen', 'n/a', 'Male', 39, '09702312476', 'Single', '2004-11-01', 'ben_1789482173_f1b10f04.jpg', '2026-09-15 14:22:53', 'active'),
(20, 'joyce', 'patani', 'castro', 'n/a', 'Female', 21, '09998765231', 'Single', '2004-07-06', 'ben_1789482237_cbe49809.jpg', '2026-09-15 14:23:57', 'active'),
(21, 'ruby', 'anino', 'tuvida', 'n/a', 'Female', 22, '08703452186', 'Single', '2004-11-25', 'ben_1789482299_afd4ab81.jpg', '2026-09-15 14:24:59', 'active'),
(22, 'geralee', 'serafica', 'sentuelo', 'n/a', 'Male', 22, '09876542871', 'Single', '2004-12-21', 'ben_1789510016_d3384fa1.jpeg', '2026-09-15 14:26:03', 'active'),
(23, 'ben', 'reigo', 'cruz', 'n/a', 'Male', 24, '09345679101', 'Single', '2004-04-09', 'ben_1789482420_4347f0b3.jpg', '2026-09-15 14:27:00', 'active'),
(24, 'anna', 'billian', 'santos', 'n/a', 'Female', 25, '09876542871', 'Single', '2004-01-08', 'ben_1789482489_b9021a4b.jpg', '2026-09-15 14:28:09', 'active'),
(25, 'juan', 'dela', 'cruz', 'n/a', 'Male', 26, '09345679101', 'Single', '2004-02-05', 'ben_1789482538_c52a38c7.jpg', '2026-09-15 14:28:58', 'active'),
(26, 'maria', 'donnya', 'quenze', 'n/a', 'Female', 28, '09876542871', 'Single', '2004-03-01', 'ben_1789482598_a831ee82.jpg', '2026-09-15 14:29:58', 'active'),
(27, 'kee ann', 'tirados', 'rivera', 'n/a', 'Female', 36, '08703452186', 'Single', '2004-03-02', 'ben_1789482668_4183ad8c.jpg', '2026-09-15 14:31:08', 'active'),
(28, 'robert', 'delgo', 'gadong', 'n/a', 'Male', 27, '09998765231', 'Single', '2004-04-05', 'ben_1789482718_15cde719.jpg', '2026-09-15 14:31:58', 'active'),
(29, 'pian', 'caro', 'legarde', 'n/a', 'Female', 30, '09345679101', 'Single', '2004-05-04', 'ben_1789482764_4779062a.jpg', '2026-09-15 14:32:44', 'active'),
(30, 'jake', 'pong', 'chua', 'n/a', 'Male', 31, '09666612356', 'Single', '2004-09-08', 'ben_1789482811_d63b6041.jpg', '2026-09-15 14:33:31', 'active'),
(31, 'isidro', 'tyago', 'gwapo', 'n/a', 'Male', 32, '09702312476', 'Single', '2004-01-01', 'ben_1789482855_51dcd5ec.jpg', '2026-09-15 14:34:15', 'active'),
(32, 'juan', 'dela', 'galdo', 'n/a', 'Male', 22, '09345679101', 'Single', '2004-05-03', 'ben_1789482897_d74502e3.jpg', '2026-09-15 14:34:57', 'active'),
(33, 'joker', 'alas', 'king', 'n/a', 'Male', 25, '09876542871', 'Single', '2004-07-03', 'ben_1789482957_36fc4d2b.jpg', '2026-09-15 14:35:57', 'active'),
(34, 'daniel', 'sdk', 'card', 'n/a', 'Male', 23, '09998765231', 'Single', '2003-05-01', 'ben_1789483020_97ade8dd.jpg', '2026-09-15 14:37:00', 'active'),
(35, 'loie', 'anthon', 'castro', '', 'Male', 22, '09702312476', 'Single', '2004-02-03', 'ben_1789483068_13cc3730.jpg', '2026-09-15 14:37:48', 'active'),
(36, 'jessa', 'centia', 'castro', 'n/a', 'Female', 24, '09666612356', 'Single', '2004-09-08', 'ben_1789483115_a450d918.jpg', '2026-09-15 14:38:35', 'active'),
(37, 'jane', 'reigo', 'ventur', 'n/a', 'Female', 21, '09876542871', 'Single', '2004-07-09', 'ben_1789483159_4e3a5fdc.jpg', '2026-09-15 14:39:19', 'active'),
(38, 'maria', 'juana', 'santuana', 'n/a', 'Female', 22, '09666612356', 'Single', '2004-01-05', 'ben_1789483208_f653834e.jpg', '2026-09-15 14:40:08', 'active'),
(39, 'glydel', 'caro', 'carisma', 'n/a', 'Female', 22, '09998765231', 'Single', '1998-02-03', 'ben_1790055430_93519031.jpg', '2026-09-22 05:37:10', 'active'),
(40, 'ann', 'cruz', 'dela', '', 'Female', 21, '09666612356', 'Single', '1996-06-06', 'ben_1790220128_39861ca5.jpg', '2026-09-24 03:22:08', 'active'),
(41, 'jake', 'drake', 'luciano', 'jr.', 'Male', 25, '09666612356', 'Single', '1990-01-01', 'ben_1790346658_9b40e277.png', '2026-09-25 14:20:06', 'active'),
(42, 'drake', 'chua', 'gadong', 'jr.', 'Male', 25, '09702312476', 'Single', '1992-10-13', 'ben_1790346616_35a930e1.jpg', '2026-09-25 14:30:16', 'active'),
(43, 'Mariam', '', 'Guimba', '', 'Female', 28, '098765423', 'Single', '2019-02-13', 'ben_1790450956_9e795811.jpg', '2026-09-26 19:29:16', 'active'),
(44, 'gina', '', 'jabone', '', 'Female', 51, '09981852945', 'Married', '1984-12-10', 'ben_1790560870_c458ca38.jpg', '2026-09-28 02:01:10', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `distributions`
--

CREATE TABLE `distributions` (
  `distribution_id` int(10) UNSIGNED NOT NULL,
  `technician_id` int(10) UNSIGNED NOT NULL,
  `beneficiary_id` int(10) UNSIGNED NOT NULL,
  `livestock_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `distribution_date` date NOT NULL,
  `distribution_location` varchar(150) DEFAULT NULL,
  `batch_no` varchar(50) NOT NULL,
  `remarks` text DEFAULT NULL,
  `status` enum('active','returned','death') NOT NULL DEFAULT 'active',
  `return_date` date DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `returned_to_beneficiary_id` int(10) UNSIGNED DEFAULT NULL,
  `report_type` varchar(100) DEFAULT NULL,
  `report_content` text DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `death_cause` varchar(255) DEFAULT NULL,
  `death_type` enum('natural','disease','accident','unknown','other') DEFAULT NULL,
  `death_remarks` text DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `closed_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributions`
--

INSERT INTO `distributions` (`distribution_id`, `technician_id`, `beneficiary_id`, `livestock_id`, `quantity`, `distribution_date`, `distribution_location`, `batch_no`, `remarks`, `status`, `return_date`, `return_reason`, `returned_to_beneficiary_id`, `report_type`, `report_content`, `report_date`, `death_date`, `death_cause`, `death_type`, `death_remarks`, `closed_at`, `closed_by`, `created_at`, `updated_at`) VALUES
(5, 3, 7, 8, 1, '2026-08-31', 'Duyan-Duyan', '0001', 'may land owner | success', 'returned', '2026-09-04', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-04 11:40:25', 3, '2026-08-31 11:40:26', '2026-09-04 03:40:25'),
(6, 4, 10, 9, 1, '2026-08-31', 'Amerang', '0002', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-31 14:45:18', '2026-08-31 14:45:18'),
(7, 4, 11, 10, 1, '2026-08-31', 'Amerang', '0003', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-31 14:45:29', '2026-08-31 14:45:29'),
(8, 4, 8, 12, 1, '2026-08-31', 'Bulay', '0005', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-31 14:49:40', '2026-08-31 14:49:40'),
(9, 3, 9, 13, 1, '2026-09-03', 'Acao', '0006', '', 'returned', '2026-09-04', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-04 15:02:08', 3, '2026-09-03 05:59:14', '2026-09-04 07:02:08'),
(10, 3, 13, 14, 1, '2026-09-03', 'Acao', '0007', '', 'returned', '2026-09-03', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-03 14:05:51', 3, '2026-09-03 06:04:35', '2026-09-03 06:05:51'),
(11, 3, 13, 14, 1, '2026-09-03', 'Acao', '0007', '', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-09', 'neglected', 'disease', '', '2026-09-09 15:17:45', 3, '2026-09-03 06:06:02', '2026-09-09 07:17:45'),
(12, 3, 14, 13, 1, '2026-09-04', 'Gines Patag', '0006', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-04 07:03:53', '2026-09-04 07:03:53'),
(13, 3, 15, 8, 1, '2026-09-04', 'Inaca', '0001', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-04 07:59:27', '2026-09-04 07:59:27'),
(14, 3, 16, 11, 1, '2026-09-04', 'Pungtod', '0004', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-04 07:59:52', '2026-09-04 07:59:52'),
(15, 3, 7, 15, 1, '2026-09-04', 'Duyan-Duyan', '0008', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-04 17:52:27', '2026-09-04 17:52:27'),
(16, 3, 9, 16, 1, '2026-09-04', 'Acao', '0009', '', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-09', 'nrglect', 'disease', '', '2026-09-09 15:41:57', 3, '2026-09-04 17:52:35', '2026-09-09 07:41:57'),
(17, 3, 17, 18, 1, '2026-09-09', 'Acao', '0011', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-09 07:40:36', '2026-09-09 07:40:36'),
(19, 5, 23, 139, 1, '2026-09-15', 'Anuang', '0001', '', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-16', 'neglected', 'disease', '', '2026-09-16 10:08:44', 5, '2026-09-15 14:49:08', '2026-09-16 02:08:44'),
(20, 5, 26, 140, 1, '2026-09-15', 'Balabag', '0002', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-15 14:49:20', '2026-09-15 14:49:20'),
(21, 5, 36, 141, 1, '2026-09-15', 'Anuang', '0003', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-15 14:49:41', '2026-09-15 14:49:41'),
(22, 5, 34, 142, 1, '2026-09-15', 'Amurao', '0004', 'goods', 'returned', '2026-09-16', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-16 10:21:42', 5, '2026-09-15 14:50:07', '2026-09-16 02:21:42'),
(23, 5, 25, 143, 1, '2026-09-15', 'Ayong', '0005', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-15 14:50:33', '2026-09-15 14:50:33'),
(24, 5, 33, 144, 1, '2026-09-15', 'Ayaman', '0006', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-15 14:50:53', '2026-09-15 14:50:53'),
(25, 5, 24, 155, 1, '2026-09-15', 'Ayaman', '0017', '', 'returned', '2026-09-16', 'end contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-16 09:12:49', 5, '2026-09-15 15:02:21', '2026-09-16 01:12:49'),
(26, 5, 28, 149, 1, '2026-09-15', 'Bacan', '0011', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-15 15:03:01', '2026-09-15 15:03:01'),
(27, 5, 22, 145, 1, '2026-09-15', 'Amerang', '0007', '', 'returned', '2026-09-21', 'end contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 18:59:43', 5, '2026-09-15 15:34:10', '2026-09-21 10:59:43'),
(28, 5, 20, 156, 1, '2026-09-15', 'Acao', '0018', '', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-16', 'neglected', 'disease', '', '2026-09-16 10:12:50', 5, '2026-09-15 15:34:19', '2026-09-16 02:12:50'),
(29, 6, 27, 150, 1, '2026-09-15', 'Duyan-Duyan', '0012', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-15 15:34:34', '2026-09-15 15:34:34'),
(30, 5, 21, 151, 1, '2026-09-15', 'Amerang', '0013', '', 'returned', '2026-09-21', 'END CONTRACT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 14:30:05', 5, '2026-09-15 15:34:49', '2026-09-21 06:30:05'),
(31, 5, 38, 154, 1, '2026-09-16', 'Amerang', '0016', '', 'returned', '2026-09-21', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 16:31:23', 5, '2026-09-15 22:44:08', '2026-09-21 08:31:23'),
(32, 5, 32, 147, 1, '2026-09-16', 'Amerang', '0009', '', 'returned', '2026-09-21', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 16:32:33', 5, '2026-09-15 22:44:21', '2026-09-21 08:32:33'),
(33, 5, 37, 148, 1, '2026-09-16', 'Acao', '0010', '', 'returned', '2026-09-21', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 16:26:22', 5, '2026-09-15 22:44:32', '2026-09-21 08:26:22'),
(34, 5, 35, 146, 1, '2026-09-16', 'Amerang', '0008', 'goods', 'returned', '2026-09-16', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-16 10:14:15', 5, '2026-09-15 22:44:51', '2026-09-16 02:14:15'),
(35, 5, 20, 142, 1, '2026-09-17', 'Acao', '0004', '', 'returned', '2026-09-21', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 14:32:05', 5, '2026-09-17 16:21:31', '2026-09-21 06:32:05'),
(36, 5, 34, 158, 1, '2026-09-18', 'Amurao', '0020', '', 'returned', '2026-09-21', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 16:52:39', 5, '2026-09-18 14:02:45', '2026-09-21 08:52:39'),
(61, 5, 20, 140, 1, '2025-01-15', 'Duyan-Duyan', '2025-0001', 'sample data 2025', 'returned', '2026-09-21', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 16:19:50', 5, '2025-01-15 01:00:00', '2026-09-21 08:19:50'),
(62, 6, 21, 141, 1, '2025-01-29', 'Amerang', '2025-0002', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-29 01:00:00', '2025-01-29 01:00:00'),
(63, 7, 22, 149, 1, '2025-02-10', 'Bulay', '2025-0003', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-10 01:00:00', '2025-02-10 01:00:00'),
(64, 5, 23, 142, 1, '2025-02-24', 'Acao', '2025-0004', 'sample data 2025', 'returned', '2025-08-20', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-20 10:00:00', 5, '2025-02-24 01:00:00', '2025-08-20 02:00:00'),
(65, 5, 24, 150, 1, '2025-03-12', 'Gines Patag', '2025-0005', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-12 01:00:00', '2025-03-12 01:00:00'),
(66, 6, 25, 143, 1, '2025-03-28', 'Amerang', '2025-0006', 'sample data 2025', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-14', 'neglected', 'disease', NULL, '2025-06-14 10:00:00', 6, '2025-03-28 01:00:00', '2025-06-14 02:00:00'),
(67, 7, 26, 155, 1, '2025-04-16', 'Duyan-Duyan', '2025-0007', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-16 01:00:00', '2025-04-16 01:00:00'),
(68, 5, 27, 144, 1, '2025-04-30', 'Acao', '2025-0008', 'sample data 2025', 'returned', '2025-10-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-15 10:00:00', 5, '2025-04-30 01:00:00', '2025-10-15 02:00:00'),
(69, 5, 28, 151, 1, '2025-05-06', 'Bulay', '2025-0009', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-06 01:00:00', '2025-05-06 01:00:00'),
(70, 6, 29, 145, 1, '2025-05-22', 'Amerang', '2025-0010', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-22 01:00:00', '2025-05-22 01:00:00'),
(71, 7, 30, 152, 1, '2025-06-11', 'Gines Patag', '2025-0011', 'sample data 2025', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-03', 'accident during transport', 'accident', NULL, '2025-08-03 10:00:00', 7, '2025-06-11 01:00:00', '2025-08-03 02:00:00'),
(72, 5, 31, 146, 1, '2025-06-25', 'Duyan-Duyan', '2025-0012', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-25 01:00:00', '2025-06-25 01:00:00'),
(73, 5, 32, 156, 1, '2025-07-09', 'Acao', '2025-0013', 'sample data 2025', 'returned', '2025-11-05', 'beneficiary request', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-05 10:00:00', 5, '2025-07-09 01:00:00', '2025-11-05 02:00:00'),
(74, 6, 33, 147, 1, '2025-07-23', 'Bulay', '2025-0014', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-23 01:00:00', '2025-07-23 01:00:00'),
(75, 7, 34, 153, 1, '2025-08-06', 'Amerang', '2025-0015', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-06 01:00:00', '2025-08-06 01:00:00'),
(76, 5, 35, 148, 1, '2025-08-20', 'Gines Patag', '2025-0016', 'sample data 2025', 'returned', '2025-12-10', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-10 10:00:00', 5, '2025-08-20 01:00:00', '2025-12-10 02:00:00'),
(77, 5, 36, 157, 1, '2025-09-03', 'Duyan-Duyan', '2025-0017', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-03 01:00:00', '2025-09-03 01:00:00'),
(78, 6, 37, 139, 1, '2025-09-17', 'Acao', '2025-0018', 'sample data 2025', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-22', 'unknown cause', 'unknown', NULL, '2025-11-22 10:00:00', 6, '2025-09-17 01:00:00', '2025-11-22 02:00:00'),
(79, 7, 38, 154, 1, '2025-10-01', 'Bulay', '2025-0019', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-01 01:00:00', '2025-10-01 01:00:00'),
(80, 5, 20, 158, 1, '2025-10-15', 'Amerang', '2025-0020', 'sample data 2025', 'returned', '2026-09-21', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 16:18:12', 5, '2025-10-15 01:00:00', '2026-09-21 08:18:12'),
(81, 5, 21, 159, 1, '2025-10-29', 'Gines Patag', '2025-0021', 'sample data 2025', 'returned', '2025-12-18', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-18 10:00:00', 5, '2025-10-29 01:00:00', '2025-12-18 02:00:00'),
(82, 6, 22, 140, 1, '2025-11-12', 'Duyan-Duyan', '2025-0022', 'sample data 2025', 'returned', '2026-09-21', 'end contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 18:53:05', 5, '2025-11-12 01:00:00', '2026-09-21 10:53:05'),
(83, 7, 23, 141, 1, '2025-11-26', 'Acao', '2025-0023', 'sample data 2025', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-20', 'pneumonia', 'disease', NULL, '2025-12-20 10:00:00', 7, '2025-11-26 01:00:00', '2025-12-20 02:00:00'),
(84, 5, 24, 149, 1, '2025-12-09', 'Bulay', '2025-0024', 'sample data 2025', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-09 01:00:00', '2025-12-09 01:00:00'),
(85, 5, 23, 159, 1, '2026-09-21', 'Anuang', '0021', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-21 06:34:13', '2026-09-21 06:34:13'),
(86, 5, 39, 160, 1, '2026-09-22', 'Amerang', '0022', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-22 05:39:25', '2026-09-22 05:39:25'),
(87, 5, 32, 151, 2, '2026-09-22', 'Amerang', '0013', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-22 05:41:36', '2026-09-22 05:41:36'),
(88, 5, 40, 161, 1, '2026-09-24', 'Acao', '0023', '', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-24', 'snake bite', 'other', 'h', '2026-09-24 11:47:05', 5, '2026-09-24 03:33:03', '2026-09-24 03:47:05'),
(89, 5, 40, 162, 1, '2026-09-24', 'Acao', '0024', '', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-24', 'neglected', 'disease', 'j', '2026-09-24 11:51:44', 5, '2026-09-24 03:48:30', '2026-09-24 03:51:44'),
(90, 5, 40, 163, 1, '2026-09-24', 'Acao', '0025', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-24 03:52:09', '2026-09-24 03:52:09'),
(91, 5, 20, 139, 1, '2023-01-15', 'Acao', '0001', 'Historical seed data', 'returned', '2023-03-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(92, 5, 21, 149, 1, '2023-02-15', 'Amerang', '0011', 'Historical seed data', 'returned', '2023-04-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(93, 5, 22, 155, 1, '2023-03-15', 'Amerang', '0017', 'Historical seed data', 'returned', '2023-05-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(94, 5, 23, 140, 1, '2023-04-15', 'Anuang', '0002', 'Historical seed data', 'returned', '2023-06-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(95, 5, 24, 150, 1, '2023-05-15', 'Ayaman', '0012', 'Historical seed data', 'returned', '2023-07-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(96, 5, 25, 156, 1, '2023-06-15', 'Ayong', '0018', 'Historical seed data', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-02', 'neglected', 'disease', '', '2023-08-02 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(97, 6, 26, 141, 1, '2023-07-15', 'Balabag', '0003', 'Historical seed data', 'returned', '2023-09-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(98, 6, 27, 151, 1, '2023-08-15', 'Duyan-Duyan', '0013', 'Historical seed data', 'returned', '2023-10-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(99, 6, 28, 157, 1, '2023-09-15', 'Bacan', '0019', 'Historical seed data', 'returned', '2023-11-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(100, 6, 29, 142, 1, '2023-10-15', 'Banguit', '0004', 'Historical seed data', 'returned', '2023-12-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(101, 6, 31, 152, 1, '2024-01-15', 'Cadoldolan', '0014', 'Historical seed data', 'returned', '2024-03-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(102, 5, 32, 158, 1, '2024-02-15', 'Amerang', '0020', 'Historical seed data', 'returned', '2024-04-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(103, 5, 33, 143, 1, '2024-03-15', 'Ayaman', '0005', 'Historical seed data', 'returned', '2024-05-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(104, 5, 34, 153, 1, '2024-04-15', 'Amurao', '0015', 'Historical seed data', 'returned', '2024-06-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(105, 5, 35, 159, 1, '2024-05-15', 'Amerang', '0021', 'Historical seed data', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-02', 'neglected', 'disease', '', '2024-07-02 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(106, 5, 36, 144, 1, '2024-06-15', 'Anuang', '0006', 'Historical seed data', 'returned', '2024-08-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(107, 5, 37, 154, 1, '2024-07-15', 'Acao', '0016', 'Historical seed data', 'returned', '2024-09-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(108, 5, 38, 155, 1, '2024-08-15', 'Amerang', '0017', 'Historical seed data', 'returned', '2024-10-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(109, 5, 20, 145, 1, '2024-09-15', 'Acao', '0007', 'Historical seed data', 'returned', '2024-11-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(110, 5, 21, 149, 1, '2024-10-15', 'Amerang', '0011', 'Historical seed data', 'returned', '2024-12-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(111, 5, 22, 156, 1, '2025-01-15', 'Amerang', '0018', 'Historical seed data', 'returned', '2025-03-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(112, 5, 23, 146, 1, '2025-02-15', 'Anuang', '0008', 'Historical seed data', 'returned', '2025-04-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(113, 5, 24, 150, 1, '2025-03-15', 'Ayaman', '0012', 'Historical seed data', 'returned', '2025-05-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(114, 5, 25, 157, 1, '2025-04-15', 'Ayong', '0019', 'Historical seed data', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-02', 'neglected', 'disease', '', '2025-06-02 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(115, 6, 26, 147, 1, '2025-05-15', 'Balabag', '0009', 'Historical seed data', 'returned', '2025-07-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(116, 6, 27, 151, 1, '2025-06-15', 'Duyan-Duyan', '0013', 'Historical seed data', 'returned', '2025-08-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(117, 6, 28, 158, 1, '2025-07-15', 'Bacan', '0020', 'Historical seed data', 'returned', '2025-09-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(118, 6, 29, 148, 1, '2025-08-15', 'Banguit', '0010', 'Historical seed data', 'returned', '2025-10-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(119, 6, 31, 152, 1, '2025-09-15', 'Cadoldolan', '0014', 'Historical seed data', 'returned', '2025-11-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-15 10:00:00', 6, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(120, 5, 32, 159, 1, '2025-10-15', 'Amerang', '0021', 'Historical seed data', 'returned', '2025-12-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 10:00:00', 5, '2026-09-26 13:11:29', '2026-09-26 13:11:29'),
(121, 5, 33, 139, 1, '2020-01-15', 'Ayaman', '0001', 'Historical seed data', 'returned', '2020-03-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(122, 5, 34, 153, 1, '2020-02-15', 'Amurao', '0015', 'Historical seed data', 'returned', '2020-04-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(123, 5, 35, 155, 1, '2020-03-15', 'Amerang', '0017', 'Historical seed data', 'returned', '2020-05-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(124, 5, 36, 140, 1, '2020-04-15', 'Anuang', '0002', 'Historical seed data', 'returned', '2020-06-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(125, 5, 37, 154, 1, '2020-05-15', 'Acao', '0016', 'Historical seed data', 'returned', '2020-07-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(126, 5, 38, 156, 1, '2020-06-15', 'Amerang', '0018', 'Historical seed data', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-02', 'neglected', 'disease', '', '2020-08-02 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(127, 5, 20, 141, 1, '2020-07-15', 'Acao', '0003', 'Historical seed data', 'returned', '2020-09-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(128, 5, 21, 149, 1, '2020-08-15', 'Amerang', '0011', 'Historical seed data', 'returned', '2020-10-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(129, 5, 22, 157, 1, '2020-09-15', 'Amerang', '0019', 'Historical seed data', 'returned', '2020-11-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(130, 5, 23, 142, 1, '2020-10-15', 'Anuang', '0004', 'Historical seed data', 'returned', '2020-12-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(131, 5, 24, 150, 1, '2021-01-15', 'Ayaman', '0012', 'Historical seed data', 'returned', '2021-03-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(132, 5, 25, 158, 1, '2021-02-15', 'Ayong', '0020', 'Historical seed data', 'returned', '2021-04-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(133, 6, 26, 143, 1, '2021-03-15', 'Balabag', '0005', 'Historical seed data', 'returned', '2021-05-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 10:00:00', 6, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(134, 6, 27, 151, 1, '2021-04-15', 'Duyan-Duyan', '0013', 'Historical seed data', 'returned', '2021-06-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-15 10:00:00', 6, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(135, 6, 28, 159, 1, '2021-05-15', 'Bacan', '0021', 'Historical seed data', 'returned', '2021-07-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15 10:00:00', 6, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(136, 6, 29, 144, 1, '2021-06-15', 'Banguit', '0006', 'Historical seed data', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-02', 'neglected', 'disease', '', '2021-08-02 10:00:00', 6, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(137, 6, 31, 152, 1, '2021-07-15', 'Cadoldolan', '0014', 'Historical seed data', 'returned', '2021-09-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-15 10:00:00', 6, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(138, 5, 32, 155, 1, '2021-08-15', 'Amerang', '0017', 'Historical seed data', 'returned', '2021-10-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(139, 5, 33, 145, 1, '2021-09-15', 'Ayaman', '0007', 'Historical seed data', 'returned', '2021-11-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(140, 5, 34, 153, 1, '2021-10-15', 'Amurao', '0015', 'Historical seed data', 'returned', '2021-12-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(141, 5, 35, 156, 1, '2022-01-15', 'Amerang', '0018', 'Historical seed data', 'returned', '2022-03-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(142, 5, 36, 146, 1, '2022-02-15', 'Anuang', '0008', 'Historical seed data', 'returned', '2022-04-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(143, 5, 37, 154, 1, '2022-03-15', 'Acao', '0016', 'Historical seed data', 'returned', '2022-05-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(144, 5, 38, 157, 1, '2022-04-15', 'Amerang', '0019', 'Historical seed data', 'returned', '2022-06-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(145, 5, 20, 147, 1, '2022-05-15', 'Acao', '0009', 'Historical seed data', 'returned', '2022-07-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(146, 5, 21, 149, 1, '2022-06-15', 'Amerang', '0011', 'Historical seed data', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-02', 'neglected', 'disease', '', '2022-08-02 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(147, 5, 22, 158, 1, '2022-07-15', 'Amerang', '0020', 'Historical seed data', 'returned', '2022-09-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(148, 5, 23, 148, 1, '2022-08-15', 'Anuang', '0010', 'Historical seed data', 'returned', '2022-10-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(149, 5, 24, 150, 1, '2022-09-15', 'Ayaman', '0012', 'Historical seed data', 'returned', '2022-11-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(150, 5, 25, 159, 1, '2022-10-15', 'Ayong', '0021', 'Historical seed data', 'returned', '2022-12-15', 'end of contract', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-15 10:00:00', 5, '2026-09-26 13:16:13', '2026-09-26 13:16:13'),
(151, 9, 44, 201, 1, '2026-09-28', 'Jelicuon Lusaya', '0063', '', 'death', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-28', 'neumonia', 'disease', 'treatment, apply antibiotics..terramycin LA', '2026-09-28 10:17:51', 9, '2026-09-28 02:07:46', '2026-09-28 02:17:51'),
(152, 5, 20, 200, 1, '2026-10-02', 'Acao', '0062', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-02 15:22:47', '2026-10-02 15:22:47'),
(153, 9, 19, 202, 1, '2026-10-02', 'Gines Patag', '0064', '', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-02 16:04:01', '2026-10-02 16:04:01');

--
-- Triggers `distributions`
--
DELIMITER $$
CREATE TRIGGER `trg_distribution_insert_status` AFTER INSERT ON `distributions` FOR EACH ROW BEGIN

    IF NEW.status = 'active' THEN

        UPDATE livestock

        SET
            status = 'distributed',
            updated_at = CURRENT_TIMESTAMP

        WHERE livestock_id = NEW.livestock_id;

    ELSEIF NEW.status = 'returned' THEN

        UPDATE livestock

        SET
            status = 'available',
            updated_at = CURRENT_TIMESTAMP

        WHERE livestock_id = NEW.livestock_id;

    ELSEIF NEW.status = 'death' THEN

        UPDATE livestock

        SET
            status = 'dead',
            updated_at = CURRENT_TIMESTAMP

        WHERE livestock_id = NEW.livestock_id;

    END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_distribution_update_status` AFTER UPDATE ON `distributions` FOR EACH ROW BEGIN

    IF NEW.status = 'active' THEN

        UPDATE livestock

        SET
            status = 'distributed',
            updated_at = CURRENT_TIMESTAMP

        WHERE livestock_id = NEW.livestock_id;

    ELSEIF NEW.status = 'returned' THEN

        UPDATE livestock

        SET
            status = 'available',
            updated_at = CURRENT_TIMESTAMP

        WHERE livestock_id = NEW.livestock_id;

    ELSEIF NEW.status = 'death' THEN

        UPDATE livestock

        SET
            status = 'dead',
            updated_at = CURRENT_TIMESTAMP

        WHERE livestock_id = NEW.livestock_id;

    END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `livestock`
--

CREATE TABLE `livestock` (
  `livestock_id` int(10) UNSIGNED NOT NULL,
  `kind` enum('goat','pig','carabao') NOT NULL,
  `breed` varchar(100) NOT NULL,
  `sex` enum('Male','Female','Unknown') NOT NULL DEFAULT 'Unknown',
  `birth_date` date DEFAULT NULL,
  `batch_no` varchar(50) NOT NULL,
  `status` enum('available','distributed','dead','retired') NOT NULL DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livestock`
--

INSERT INTO `livestock` (`livestock_id`, `kind`, `breed`, `sex`, `birth_date`, `batch_no`, `status`, `created_at`, `updated_at`) VALUES
(139, 'pig', 'Large White', 'Female', '2026-01-02', '0001', 'available', '2026-09-15 14:14:21', '2026-09-26 13:16:13'),
(140, 'pig', 'Landrace', 'Female', '2026-01-02', '0002', 'available', '2026-09-15 14:14:41', '2026-09-26 13:16:13'),
(141, 'pig', 'Duroc', 'Female', '2026-01-02', '0003', 'available', '2026-09-15 14:14:58', '2026-09-26 13:16:13'),
(142, 'pig', 'Pietrain', 'Female', '2026-01-02', '0004', 'available', '2026-09-15 14:15:15', '2026-09-26 13:16:13'),
(143, 'pig', 'Philippine Native Pig', 'Female', '2026-01-02', '0005', 'available', '2026-09-15 14:15:36', '2026-09-26 13:16:13'),
(144, 'pig', 'Large White', 'Female', '2026-01-02', '0006', 'dead', '2026-09-15 14:15:55', '2026-09-26 13:16:13'),
(145, 'pig', 'Landrace', 'Female', '2026-01-02', '0007', 'available', '2026-09-15 14:16:12', '2026-09-26 13:16:13'),
(146, 'pig', 'Duroc', 'Female', '2026-01-02', '0008', 'available', '2026-09-15 14:16:30', '2026-09-26 13:16:13'),
(147, 'pig', 'Pietrain', 'Female', '2026-01-02', '0009', 'available', '2026-09-15 14:16:50', '2026-09-26 13:16:13'),
(148, 'pig', 'Philippine Native Pig', 'Female', '2026-01-02', '0010', 'available', '2026-09-15 14:17:07', '2026-09-26 13:16:13'),
(149, 'goat', 'Boer', 'Female', '2026-01-02', '0011', 'dead', '2026-09-15 14:17:38', '2026-09-26 13:16:13'),
(150, 'goat', 'Anglo-Nubian', 'Female', '2026-01-02', '0012', 'available', '2026-09-15 14:17:55', '2026-09-26 13:16:13'),
(151, 'goat', 'Saanen', 'Female', '2026-01-02', '0013', 'available', '2026-09-15 14:18:28', '2026-09-26 13:16:13'),
(152, 'goat', 'Alpine', 'Female', '2026-01-02', '0014', 'available', '2026-09-15 14:18:53', '2026-09-26 13:16:13'),
(153, 'goat', 'Philippine Native Goat', 'Female', '2026-01-02', '0015', 'available', '2026-09-15 14:19:18', '2026-09-26 13:16:13'),
(154, 'goat', 'Boer', 'Female', '2026-01-02', '0016', 'available', '2026-09-15 14:19:43', '2026-09-26 13:16:13'),
(155, 'carabao', 'Philippine Carabao', 'Female', '2026-01-02', '0017', 'available', '2026-09-15 14:20:01', '2026-09-26 13:16:13'),
(156, 'carabao', 'Murrah', 'Female', '2026-01-02', '0018', 'available', '2026-09-15 14:20:21', '2026-09-26 13:16:13'),
(157, 'carabao', 'Jaffarabadi', 'Female', '2026-01-02', '0019', 'available', '2026-09-15 14:20:40', '2026-09-26 13:16:13'),
(158, 'carabao', 'Nili-Ravi', 'Female', '2026-01-02', '0020', 'available', '2026-09-15 14:21:06', '2026-09-26 13:16:13'),
(159, 'carabao', 'Philippine Carabao', 'Female', '2026-01-02', '0021', 'available', '2026-09-15 14:21:29', '2026-09-26 13:16:13'),
(160, 'goat', 'Alpine', 'Female', '2026-01-02', '0022', 'distributed', '2026-09-22 05:38:31', '2026-09-22 05:39:25'),
(161, 'carabao', 'Murrah', 'Female', '2026-01-01', '0023', 'dead', '2026-09-24 03:28:33', '2026-09-24 03:47:05'),
(162, 'carabao', 'Murrah', 'Male', '2025-02-24', '0024', 'dead', '2026-09-24 03:36:00', '2026-09-24 03:51:44'),
(163, 'carabao', 'Murrah', 'Male', '2026-09-01', '0025', 'distributed', '2026-09-24 03:50:20', '2026-09-24 03:52:09'),
(164, 'carabao', 'Jaffarabadi', 'Female', '2026-01-03', '0026', 'available', '2026-09-25 09:51:03', '2026-09-25 09:51:03'),
(165, 'carabao', 'Jaffarabadi', 'Female', '2026-01-03', '0027', 'available', '2026-09-25 09:51:03', '2026-09-25 09:51:03'),
(166, 'carabao', 'Jaffarabadi', 'Female', '2026-01-03', '0028', 'available', '2026-09-25 09:51:03', '2026-09-25 09:51:03'),
(167, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0029', 'available', '2026-09-25 10:26:04', '2026-09-25 10:26:04'),
(168, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0030', 'available', '2026-09-25 10:26:04', '2026-09-25 10:26:04'),
(169, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0031', 'available', '2026-09-25 10:26:04', '2026-09-25 10:26:04'),
(170, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0032', 'available', '2026-09-25 10:26:04', '2026-09-25 10:26:04'),
(171, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0033', 'available', '2026-09-25 10:26:04', '2026-09-25 10:26:04'),
(172, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0034', 'available', '2026-09-25 10:28:28', '2026-09-25 10:28:28'),
(173, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0035', 'available', '2026-09-25 10:28:28', '2026-09-25 10:28:28'),
(174, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0036', 'available', '2026-09-25 10:28:28', '2026-09-25 10:28:28'),
(175, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0037', 'available', '2026-09-25 10:28:28', '2026-09-25 10:28:28'),
(176, 'carabao', 'Philippine Carabao', 'Female', '2025-01-31', '0038', 'available', '2026-09-25 10:28:28', '2026-09-25 10:28:28'),
(177, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0039', 'available', '2026-09-25 10:30:40', '2026-09-25 10:30:40'),
(178, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0040', 'available', '2026-09-25 10:30:40', '2026-09-25 10:30:40'),
(179, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0041', 'available', '2026-09-25 10:30:40', '2026-09-25 10:30:40'),
(180, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0042', 'available', '2026-09-25 10:30:40', '2026-09-25 10:30:40'),
(181, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0043', 'available', '2026-09-25 10:30:40', '2026-09-25 10:30:40'),
(182, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0044', 'available', '2026-09-25 10:31:05', '2026-09-25 10:31:05'),
(183, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0045', 'available', '2026-09-25 10:31:05', '2026-09-25 10:31:05'),
(184, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0046', 'available', '2026-09-25 10:31:05', '2026-09-25 10:31:05'),
(185, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0047', 'available', '2026-09-25 10:31:05', '2026-09-25 10:31:05'),
(186, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0048', 'available', '2026-09-25 10:31:05', '2026-09-25 10:31:05'),
(187, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0049', 'available', '2026-09-25 10:31:24', '2026-09-25 10:31:24'),
(188, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0050', 'available', '2026-09-25 10:31:24', '2026-09-25 10:31:24'),
(189, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0051', 'available', '2026-09-25 10:31:24', '2026-09-25 10:31:24'),
(190, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0052', 'available', '2026-09-25 10:31:24', '2026-09-25 10:31:24'),
(191, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0053', 'available', '2026-09-25 10:31:24', '2026-09-25 10:31:24'),
(192, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0054', 'available', '2026-09-25 10:31:49', '2026-09-25 10:31:49'),
(193, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0055', 'available', '2026-09-25 10:31:49', '2026-09-25 10:31:49'),
(194, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0056', 'available', '2026-09-25 10:31:49', '2026-09-25 10:31:49'),
(195, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0057', 'available', '2026-09-25 10:31:49', '2026-09-25 10:31:49'),
(196, 'goat', 'Philippine Native Goat', 'Female', '2025-10-31', '0058', 'available', '2026-09-25 10:31:49', '2026-09-25 10:31:49'),
(197, 'pig', 'Landrace', 'Female', '2026-01-05', '0059', 'available', '2026-09-26 11:31:04', '2026-09-26 11:31:04'),
(198, 'pig', 'Landrace', 'Female', '2026-01-05', '0060', 'available', '2026-09-26 11:31:04', '2026-09-26 11:31:04'),
(199, 'pig', 'Landrace', 'Female', '2026-01-05', '0061', 'available', '2026-09-26 11:31:04', '2026-09-26 11:31:04'),
(200, 'pig', 'Landrace', 'Female', '2026-01-05', '0062', 'distributed', '2026-09-26 11:31:04', '2026-10-02 15:22:47'),
(201, 'pig', 'Landrace', 'Female', '2026-01-05', '0063', 'dead', '2026-09-26 11:31:04', '2026-09-28 02:17:51'),
(202, 'goat', '', 'Female', '2026-03-10', '0064', 'distributed', '2026-10-02 16:02:26', '2026-10-02 16:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `monitoring_id` int(10) UNSIGNED NOT NULL,
  `distribution_id` int(10) UNSIGNED NOT NULL,
  `health_status` enum('Healthy','Sick','Critical','Dead') NOT NULL DEFAULT 'Healthy',
  `weight` decimal(8,2) DEFAULT NULL,
  `pregnancy_status` enum('pregnant','not_pregnant','gave_birth') DEFAULT NULL,
  `offspring_count` int(10) UNSIGNED DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `cause_of_death` varchar(255) DEFAULT NULL,
  `death_type` enum('natural','disease','accident','unknown','other') DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `date_recorded` date NOT NULL,
  `action` enum('visit','transfer','return','death','other') NOT NULL DEFAULT 'visit',
  `notes` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`monitoring_id`, `distribution_id`, `health_status`, `weight`, `pregnancy_status`, `offspring_count`, `photo`, `cause_of_death`, `death_type`, `purpose`, `date_recorded`, `action`, `notes`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(18, 22, 'Healthy', 80.00, 'pregnant', 0, 'monitor_20260915170721_6810.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-15', 'visit', 'obsevation', 5, '2026-09-15 15:07:21', NULL, '2026-09-15 15:07:21'),
(19, 22, 'Healthy', 85.00, 'gave_birth', 20, 'monitor_20260915170823_9820.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-15', 'visit', 'finish vaccine', 5, '2026-09-15 15:08:23', NULL, '2026-09-15 15:08:23'),
(20, 25, 'Healthy', 90.00, 'pregnant', 0, 'monitor_20260915170915_8348.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-15', 'visit', 'under vaccine', 5, '2026-09-15 15:09:15', NULL, '2026-09-15 15:09:15'),
(21, 21, 'Sick', 80.00, 'not_pregnant', 0, 'monitor_20260915171002_2082.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-15', 'visit', 'under observation', 5, '2026-09-15 15:10:02', NULL, '2026-09-15 15:10:02'),
(22, 28, 'Critical', NULL, NULL, 0, NULL, NULL, NULL, 'Routine Monitoring', '2026-09-16', 'visit', '', 5, '2026-09-16 01:15:48', NULL, '2026-09-16 01:15:48'),
(23, 22, 'Critical', NULL, NULL, 0, NULL, NULL, NULL, 'Routine Monitoring', '2026-09-16', 'visit', '', 5, '2026-09-16 02:06:12', NULL, '2026-09-16 02:06:12'),
(24, 19, 'Dead', NULL, NULL, 0, 'monitor_20260916040844_5366.jpg', 'neglected', 'disease', 'Routine Monitoring', '2026-09-16', 'death', 'k', 5, '2026-09-16 02:08:44', NULL, '2026-09-26 12:57:11'),
(25, 28, 'Dead', NULL, NULL, 0, 'monitor_20260916041250_7903.jpg', 'neglected', 'disease', 'Routine Monitoring', '2026-09-16', 'death', 'd', 5, '2026-09-16 02:12:50', NULL, '2026-09-26 12:57:02'),
(26, 34, 'Healthy', 80.00, 'pregnant', 0, 'monitor_20260916041336_2203.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-16', 'visit', '', 5, '2026-09-16 02:13:36', NULL, '2026-09-16 02:13:36'),
(27, 22, 'Healthy', 80.00, 'gave_birth', 15, 'monitor_20260916042123_7823.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-16', 'visit', 'goods', 5, '2026-09-16 02:21:23', NULL, '2026-09-16 02:21:23'),
(28, 33, 'Sick', 70.00, 'pregnant', 0, 'monitor_20260916052327_5545.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-16', 'visit', '', 5, '2026-09-16 03:23:27', NULL, '2026-09-16 03:23:27'),
(29, 33, 'Critical', NULL, 'gave_birth', 10, 'monitor_20260916053009_3626.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-16', 'visit', 'critical', 5, '2026-09-16 03:30:09', NULL, '2026-09-16 03:30:09'),
(30, 31, 'Healthy', 80.00, 'pregnant', 0, 'monitor_20260918165615_1512.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-18', 'visit', 'observe', 5, '2026-09-18 14:56:15', NULL, '2026-09-18 14:56:15'),
(31, 31, 'Healthy', 80.00, 'gave_birth', 2, 'monitor_20260918165726_8502.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-18', 'visit', 'done', 5, '2026-09-18 14:57:26', NULL, '2026-09-18 14:57:26'),
(32, 35, 'Healthy', 80.00, 'pregnant', 0, 'monitor_20260918171837_9028.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-18', 'visit', 'observe', 5, '2026-09-18 15:18:37', NULL, '2026-09-18 15:18:37'),
(33, 30, 'Healthy', 50.00, 'gave_birth', 2, 'monitor_20260921082942_3226.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', 'GOODS FARMER', 5, '2026-09-21 06:29:42', NULL, '2026-09-21 06:29:42'),
(34, 80, 'Sick', NULL, 'not_pregnant', 0, 'monitor_20260921094845_6605.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 07:48:45', NULL, '2026-09-21 07:48:45'),
(35, 80, 'Healthy', 80.00, 'gave_birth', 2, 'monitor_20260921101723_9496.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 08:17:23', NULL, '2026-09-21 08:17:23'),
(36, 61, 'Healthy', 80.00, 'gave_birth', 12, 'monitor_20260921101920_2378.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 08:19:20', NULL, '2026-09-21 08:19:20'),
(37, 33, 'Sick', NULL, 'gave_birth', 7, 'monitor_20260921102434_1643.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 08:24:34', NULL, '2026-09-21 08:24:34'),
(38, 33, 'Healthy', NULL, 'gave_birth', 0, 'monitor_20260921102510_4642.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 08:25:10', NULL, '2026-09-21 08:25:10'),
(39, 32, 'Healthy', NULL, 'gave_birth', 9, 'monitor_20260921103202_3615.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 08:32:02', NULL, '2026-09-21 08:32:02'),
(40, 36, 'Healthy', NULL, 'gave_birth', 1, 'monitor_20260921105227_2032.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 08:52:27', NULL, '2026-09-21 08:52:27'),
(41, 82, 'Healthy', 80.00, 'gave_birth', 18, 'monitor_20260921123452_6451.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 10:34:52', NULL, '2026-09-21 10:34:52'),
(42, 27, 'Healthy', 80.00, 'gave_birth', 15, 'monitor_20260921125438_3362.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-21', 'visit', '', 5, '2026-09-21 10:54:38', NULL, '2026-09-21 10:54:38'),
(43, 86, 'Healthy', 10.00, 'not_pregnant', 0, 'monitor_20260922074242_8534.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-22', 'visit', '', 5, '2026-09-22 05:42:42', NULL, '2026-09-22 05:42:42'),
(44, 86, 'Healthy', 60.00, 'pregnant', 0, 'monitor_20260923171954_8927.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-23', 'visit', 'observe', 5, '2026-09-23 15:19:54', NULL, '2026-09-23 15:19:54'),
(45, 86, 'Healthy', 70.00, 'pregnant', 0, 'monitor_20260924035200_6067.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-24', 'visit', 'under observe', 5, '2026-09-24 01:52:00', NULL, '2026-09-24 01:52:00'),
(46, 86, 'Healthy', 70.00, 'gave_birth', 2, 'monitor_20260924040429_8746.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-24', 'visit', 'end birth', 5, '2026-09-24 02:04:29', NULL, '2026-09-24 02:04:29'),
(47, 88, 'Dead', 80.00, 'not_pregnant', 0, 'monitor_20260924054705_9666.jpg', 'snake bite', 'other', 'Routine Monitoring', '2026-09-24', 'death', 'h', 5, '2026-09-24 03:47:05', NULL, '2026-09-24 03:47:05'),
(48, 89, 'Dead', 60.00, 'not_pregnant', 0, 'monitor_20260924055144_2780.jpg', 'neglected', 'disease', 'Routine Monitoring', '2026-09-24', 'death', 'j', 5, '2026-09-24 03:51:44', NULL, '2026-09-24 03:51:44'),
(49, 86, 'Healthy', 70.00, 'pregnant', 0, 'monitor_20260925131847_8377.jpg', NULL, NULL, 'Routine Monitoring', '2026-09-25', 'visit', 'observe', 5, '2026-09-25 11:18:47', NULL, '2026-09-25 11:18:47'),
(50, 151, 'Dead', 150.00, 'not_pregnant', 0, 'monitor_20260928041751_5795.jpg', 'neumonia', 'disease', 'Routine Monitoring', '2026-09-28', 'death', 'treatment, apply antibiotics..terramycin LA', 9, '2026-09-28 02:17:51', NULL, '2026-09-28 02:17:51');

--
-- Triggers `monitoring`
--
DELIMITER $$
CREATE TRIGGER `trg_monitoring_death` AFTER INSERT ON `monitoring` FOR EACH ROW BEGIN

    IF NEW.health_status = 'Dead'
       OR NEW.action = 'death'
    THEN

        UPDATE distributions

        SET

            status = 'death',

            death_date = NEW.date_recorded,

            death_cause = NEW.cause_of_death,

            death_type = NEW.death_type,

            death_remarks = NEW.notes,

            closed_at = CURRENT_TIMESTAMP,

            closed_by = NEW.created_by

        WHERE distribution_id = NEW.distribution_id

        AND status = 'active';

    END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_monitoring_return` AFTER INSERT ON `monitoring` FOR EACH ROW BEGIN

    IF NEW.action = 'return'
    THEN

        UPDATE distributions

        SET

            status = 'returned',

            return_date = NEW.date_recorded,

            return_reason = NEW.notes,

            closed_at = CURRENT_TIMESTAMP,

            closed_by = NEW.created_by

        WHERE distribution_id = NEW.distribution_id

        AND status = 'active';

    END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `q_atotal_distribution`
-- (See below for the actual view)
--
CREATE TABLE `q_atotal_distribution` (
`year` int(4)
,`total_distribution` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q_success_rate_year`
-- (See below for the actual view)
--
CREATE TABLE `q_success_rate_year` (
`year` int(4)
,`status` enum('active','returned','death')
,`total` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q_total_distribution`
-- (See below for the actual view)
--
CREATE TABLE `q_total_distribution` (
`year` int(4)
,`total_distribution` bigint(21)
,`status` enum('active','returned','death')
,`total` bigint(21)
,`percent` decimal(23,2)
,`percentage` varchar(29)
);

-- --------------------------------------------------------

--
-- Table structure for table `renewals`
--

CREATE TABLE `renewals` (
  `renewal_id` int(10) UNSIGNED NOT NULL,
  `beneficiary_id` int(10) UNSIGNED NOT NULL,
  `previous_distribution_id` int(10) UNSIGNED DEFAULT NULL,
  `new_distribution_id` int(10) UNSIGNED DEFAULT NULL,
  `renewal_date` date NOT NULL,
  `remarks` text DEFAULT NULL,
  `status` enum('pending','fulfilled','cancelled') NOT NULL DEFAULT 'pending',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `renewals`
--

INSERT INTO `renewals` (`renewal_id`, `beneficiary_id`, `previous_distribution_id`, `new_distribution_id`, `renewal_date`, `remarks`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 34, 22, 36, '2026-09-18', '', 'fulfilled', 1, '2026-09-18 13:51:18', '2026-09-18 14:02:45'),
(2, 23, 19, 85, '2026-09-21', '', 'fulfilled', 1, '2026-09-21 06:34:13', '2026-09-21 06:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `technician_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`technician_id`, `name`, `email`, `username`, `password`, `contact`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Jeffry Casipe', 'jeff@gmail.com', 'jeff', '$2y$10$ZGDVHb0yzpAgcShZaCVASeVK1KIbVEfJsb5Gk70T2DotkiSTHutWG', '09702312476', 'active', '2026-09-15 14:41:13', '2026-09-15 14:41:13'),
(6, 'Glydel Carisma', 'gly@gmail.com', 'gly', '$2y$10$4FrEqc6HzUW4Yrcu1bImUOafals9zreXs34t4DV5BYtDFUQeP6QRe', '09998765231', 'active', '2026-09-15 14:43:12', '2026-09-15 14:43:12'),
(7, 'ruby', 'ryb@gmail.com', 'rub', '$2y$10$9voMuY2h0UWKBQOnoQuuU.tPSdVDIYbzFY1Y0CPHtwPqMnu57FhtS', '09876542871', 'active', '2026-09-16 02:45:50', '2026-09-16 02:45:50'),
(8, 'Tonie Mana-ay', 'toni@gmail.com', 'toni', '$2y$10$0vraHrbSxc4skyxOZPpa0eUeL.gbVbZU/731cfhG/llTN6s9y3f7a', '09275841393', 'active', '2026-09-26 11:55:49', '2026-09-26 11:55:49'),
(9, 'arconada roberto', 'rob@gmail.com', 'robert', '$2y$10$vNtT.X3sV.OhzGyHu6PsL.3NP948SxbHE.ibtelLtehc.iCav9Nz.', '09981852945', 'active', '2026-09-28 02:06:47', '2026-09-28 02:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `technician_barangay`
--

CREATE TABLE `technician_barangay` (
  `technician_id` int(10) UNSIGNED NOT NULL,
  `barangay_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technician_barangay`
--

INSERT INTO `technician_barangay` (`technician_id`, `barangay_id`) VALUES
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(6, 27),
(6, 28),
(6, 30),
(6, 32),
(6, 36),
(9, 39),
(9, 51);

-- --------------------------------------------------------

--
-- Structure for view `q_atotal_distribution`
--
DROP TABLE IF EXISTS `q_atotal_distribution`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q_atotal_distribution`  AS SELECT year(`distributions`.`distribution_date`) AS `year`, count(`distributions`.`distribution_id`) AS `total_distribution` FROM `distributions` GROUP BY year(`distributions`.`distribution_date`) ;

-- --------------------------------------------------------

--
-- Structure for view `q_success_rate_year`
--
DROP TABLE IF EXISTS `q_success_rate_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q_success_rate_year`  AS SELECT year(`distributions`.`distribution_date`) AS `year`, `distributions`.`status` AS `status`, count(`distributions`.`distribution_id`) AS `total` FROM `distributions` GROUP BY year(`distributions`.`distribution_date`), `distributions`.`status` ;

-- --------------------------------------------------------

--
-- Structure for view `q_total_distribution`
--
DROP TABLE IF EXISTS `q_total_distribution`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q_total_distribution`  AS SELECT `s`.`year` AS `year`, `t`.`total_distribution` AS `total_distribution`, `s`.`status` AS `status`, `s`.`total` AS `total`, round(`s`.`total` / `t`.`total_distribution`,2) AS `percent`, concat(round(`s`.`total` / `t`.`total_distribution`,2) * 100,'%') AS `percentage` FROM (`q_success_rate_year` `s` left join `q_atotal_distribution` `t` on(`s`.`year` = `t`.`year`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`barangay_id`),
  ADD UNIQUE KEY `barangay_name` (`barangay_name`);

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`beneficiary_id`),
  ADD KEY `idx_beneficiary_barangay` (`barangay_id`),
  ADD KEY `idx_beneficiary_name` (`lastname`,`firstname`);

--
-- Indexes for table `distributions`
--
ALTER TABLE `distributions`
  ADD PRIMARY KEY (`distribution_id`),
  ADD KEY `fk_distribution_returned_to` (`returned_to_beneficiary_id`),
  ADD KEY `fk_distribution_closed_by` (`closed_by`),
  ADD KEY `idx_distribution_technician` (`technician_id`),
  ADD KEY `idx_distribution_beneficiary` (`beneficiary_id`),
  ADD KEY `idx_distribution_livestock` (`livestock_id`),
  ADD KEY `idx_distribution_batch` (`batch_no`),
  ADD KEY `idx_distribution_status` (`status`),
  ADD KEY `idx_distribution_date` (`distribution_date`);

--
-- Indexes for table `livestock`
--
ALTER TABLE `livestock`
  ADD PRIMARY KEY (`livestock_id`),
  ADD KEY `idx_livestock_batch` (`batch_no`),
  ADD KEY `idx_livestock_kind` (`kind`),
  ADD KEY `idx_livestock_status` (`status`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`monitoring_id`),
  ADD KEY `fk_monitoring_created_by` (`created_by`),
  ADD KEY `fk_monitoring_updated_by` (`updated_by`),
  ADD KEY `idx_monitoring_distribution` (`distribution_id`),
  ADD KEY `idx_monitoring_date` (`date_recorded`),
  ADD KEY `idx_monitoring_health` (`health_status`),
  ADD KEY `idx_monitoring_action` (`action`);

--
-- Indexes for table `renewals`
--
ALTER TABLE `renewals`
  ADD PRIMARY KEY (`renewal_id`),
  ADD KEY `idx_renewal_beneficiary` (`beneficiary_id`),
  ADD KEY `idx_renewal_prev_dist` (`previous_distribution_id`),
  ADD KEY `idx_renewal_new_dist` (`new_distribution_id`),
  ADD KEY `idx_renewal_status` (`status`),
  ADD KEY `idx_renewal_created_by` (`created_by`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`technician_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `technician_barangay`
--
ALTER TABLE `technician_barangay`
  ADD PRIMARY KEY (`technician_id`,`barangay_id`),
  ADD KEY `fk_tb_barangay` (`barangay_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barangays`
--
ALTER TABLE `barangays`
  MODIFY `barangay_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `beneficiary_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `distributions`
--
ALTER TABLE `distributions`
  MODIFY `distribution_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `livestock`
--
ALTER TABLE `livestock`
  MODIFY `livestock_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `monitoring_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `renewals`
--
ALTER TABLE `renewals`
  MODIFY `renewal_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `technician_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD CONSTRAINT `fk_beneficiary_barangay` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`barangay_id`) ON UPDATE CASCADE;

--
-- Constraints for table `distributions`
--
ALTER TABLE `distributions`
  ADD CONSTRAINT `fk_distribution_beneficiary` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiaries` (`beneficiary_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_distribution_closed_by` FOREIGN KEY (`closed_by`) REFERENCES `technicians` (`technician_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_distribution_livestock` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`livestock_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_distribution_returned_to` FOREIGN KEY (`returned_to_beneficiary_id`) REFERENCES `beneficiaries` (`beneficiary_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_distribution_technician` FOREIGN KEY (`technician_id`) REFERENCES `technicians` (`technician_id`) ON UPDATE CASCADE;

--
-- Constraints for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD CONSTRAINT `fk_monitoring_created_by` FOREIGN KEY (`created_by`) REFERENCES `technicians` (`technician_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_monitoring_distribution` FOREIGN KEY (`distribution_id`) REFERENCES `distributions` (`distribution_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_monitoring_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `technicians` (`technician_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `renewals`
--
ALTER TABLE `renewals`
  ADD CONSTRAINT `fk_renewal_beneficiary` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiaries` (`beneficiary_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_renewal_created_by` FOREIGN KEY (`created_by`) REFERENCES `admins` (`admin_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_renewal_new_dist` FOREIGN KEY (`new_distribution_id`) REFERENCES `distributions` (`distribution_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_renewal_prev_dist` FOREIGN KEY (`previous_distribution_id`) REFERENCES `distributions` (`distribution_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `technician_barangay`
--
ALTER TABLE `technician_barangay`
  ADD CONSTRAINT `fk_tb_barangay` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`barangay_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tb_technician` FOREIGN KEY (`technician_id`) REFERENCES `technicians` (`technician_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
