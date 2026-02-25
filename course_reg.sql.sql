-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 07:54 AM
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
-- Database: `course_reg_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(255) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `duration_in_weeks` int(11) NOT NULL,
  `trainer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `duration_in_weeks`, `trainer`) VALUES
('100', 'Java Essentials', 4, 'Bala'),
('101', 'Python  for ML', 4, 'Karthick'),
('102', 'Spring Boot', 8, 'Bala'),
('104', '.NET', 8, 'Karthick'),
('111', 'AI', 5, 'Bala');

-- --------------------------------------------------------

--
-- Table structure for table `course_registry`
--

CREATE TABLE `course_registry` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_registry`
--

INSERT INTO `course_registry` (`id`, `course_name`, `email_id`, `name`) VALUES
(1, 'python for ML', 'saif@gmail.com', 'saif'),
(2, 'Spring Boot', 'Rithish123@gmail.com', 'Rithish'),
(3, 'Java Essentials', 'harini75lee@gmail.com', 'Harini'),
(5, 'Java Essentials', 'gopika123@gmail.com', 'Gopika'),
(6, 'Java Essentials', 'varshini@gmail.com', 'varshini');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_registry`
--
ALTER TABLE `course_registry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_registry`
--
ALTER TABLE `course_registry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
