-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 04:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `loginTime` datetime DEFAULT NULL,
  `logoutTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `userId`, `status`, `loginTime`, `logoutTime`) VALUES
(1, 'manager', 1, 1, '2020-03-23 16:14:06', NULL),
(2, 'manager', 1, 1, '2020-03-23 16:16:51', NULL),
(3, 'manager', 1, 1, '2020-03-23 16:16:51', NULL),
(4, 'manager', 1, 1, '2020-03-23 16:20:45', NULL),
(5, 'manager', 1, 1, '2020-03-23 16:26:26', NULL),
(6, 'manager', 1, 1, '2020-03-23 16:28:00', NULL),
(7, 'manager', 1, 1, '2020-03-23 16:42:08', NULL),
(8, 'manager', 1, 0, '2020-03-23 16:44:40', '2020-03-23 17:00:58'),
(9, 'patient', 2, 0, '2020-03-23 17:14:53', '2020-03-23 17:15:03'),
(10, 'doctor', 2, 0, '2020-03-23 17:20:25', '2020-03-23 17:20:29'),
(11, 'patient', 2, 0, '2020-03-23 17:42:26', '2020-03-23 17:42:44'),
(12, 'patient', 2, 0, '2020-03-23 17:43:47', '2020-03-23 17:47:36'),
(13, 'doctor', 2, 0, '2020-03-23 17:49:26', '2020-03-23 17:52:46'),
(14, 'doctor', 2, 0, '2020-03-23 17:56:32', '2020-03-23 17:56:53'),
(15, 'manager', 1, 0, '2020-03-23 17:57:07', '2020-03-23 17:57:28'),
(16, 'receptionist', 1, 0, '2020-03-23 17:57:36', '2020-03-23 17:58:52'),
(17, 'receptionist', 1, 0, '2020-03-24 14:00:44', '2020-03-24 14:02:53'),
(18, 'patient', 2, 0, '2020-03-25 17:21:24', '2020-03-25 17:21:34'),
(19, 'doctor', 2, 0, '2020-03-25 17:21:44', '2020-03-25 17:21:47'),
(20, 'patient', 2, 0, '2020-03-26 16:17:08', '2020-03-26 16:55:43'),
(21, 'patient', 2, 0, '2020-03-26 16:55:51', '2020-03-26 17:27:59'),
(22, 'doctor', 2, 1, '2020-04-01 19:14:22', NULL),
(23, 'doctor', 2, 0, '2020-04-01 19:17:35', '2020-04-01 19:18:53'),
(24, 'doctor', 2, 0, '2020-04-01 19:19:17', '2020-04-01 19:19:23'),
(25, 'doctor', 2, 0, '2020-04-01 19:24:39', '2020-04-01 19:26:11'),
(26, 'doctor', 2, 0, '2020-04-01 19:26:27', '2020-04-01 19:26:35'),
(27, 'doctor', 2, 0, '2020-04-01 20:59:05', '2020-04-01 21:00:01'),
(28, 'doctor', 2, 0, '2020-04-01 21:00:23', '2020-04-01 21:02:05'),
(29, 'doctor', 2, 0, '2020-04-01 21:02:19', '2020-04-01 21:04:33'),
(30, 'patient', 1, 0, '2020-04-05 14:46:18', '2020-04-05 15:04:15'),
(31, 'patient', 2, 0, '2020-04-05 15:04:28', '2020-04-05 15:04:59'),
(32, 'patient', 1, 0, '2020-04-05 15:05:12', '2020-04-05 15:12:46'),
(33, 'patient', 2, 0, '2020-04-05 15:13:01', '2020-04-05 15:15:13'),
(34, 'patient', 2, 0, '2020-04-05 15:16:39', '2020-04-05 15:30:31'),
(35, 'doctor', 2, 0, '2020-04-05 15:30:41', '2020-04-05 15:32:53'),
(36, 'doctor', 2, 0, '2020-04-05 15:58:33', '2020-04-05 16:03:42'),
(37, 'patient', 2, 0, '2020-04-05 17:03:00', '2020-04-05 17:03:23'),
(38, 'doctor', 2, 1, '2020-04-05 17:22:34', NULL),
(39, 'doctor', 2, 1, '2020-04-05 17:22:34', NULL),
(40, 'doctor', 2, 0, '2020-04-05 17:22:54', '2020-04-05 17:23:05'),
(41, 'receptionist', 1, 0, '2020-04-05 17:23:14', '2020-04-05 17:24:48'),
(42, 'receptionist', 1, 0, '2020-04-05 17:27:54', '2020-04-05 18:38:37'),
(43, 'manager', 1, 1, '2020-04-05 18:38:47', NULL),
(44, 'doctor', 2, 0, '2020-04-05 18:51:51', '2020-04-05 18:51:53'),
(45, 'patient', 2, 0, '2020-04-05 18:57:17', '2020-04-05 18:57:33'),
(46, 'doctor', 2, 0, '2020-04-06 09:33:37', '2020-04-06 09:33:41'),
(47, 'doctor', 2, 0, '2020-04-06 14:59:50', '2020-04-06 15:07:06'),
(48, 'manager', 1, 0, '2020-04-06 15:07:37', '2020-04-06 15:10:20'),
(49, 'manager', 1, 1, '2020-04-06 16:08:02', NULL),
(50, 'receptionist', 1, 1, '2020-04-06 16:08:04', NULL),
(51, 'patient', 2, 0, '2020-04-07 09:19:29', '2020-04-07 09:19:43'),
(52, 'doctor', 2, 0, '2020-04-07 09:19:53', '2020-04-07 09:19:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
