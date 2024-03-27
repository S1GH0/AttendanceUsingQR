-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 11:20 AM
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
-- Database: `admin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` varchar(30) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `time_in` timestamp NOT NULL DEFAULT current_timestamp(),
  `present_status` tinyint(2) NOT NULL COMMENT '1 = present, 0 = absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `sname`, `time_in`, `present_status`) VALUES
('BBM1', 'Reshma Shrestha', '2024-02-08 08:46:00', 0),
('BBM1', 'Reshma Shrestha', '2024-02-09 08:46:00', 1),
('BBM1', 'Reshma Shrestha', '2024-02-10 08:46:00', 1),
('BBM1', 'Reshma Shrestha', '2024-02-11 07:10:03', 1),
('BCA1', 'Pratham Shrestha', '2024-02-11 07:09:45', 1),
('BCA2', 'Anisha Shrestha', '2024-02-11 07:36:01', 1),
('CSIT', 'Rajesh Pradhan', '2024-02-11 09:54:00', 1),
('CSIT1', 'Krishna Prasad Acharya', '2024-02-10 08:46:10', 1),
('CSIT1', 'Krishna Prasad Acharya', '2024-02-11 07:09:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `course` varchar(30) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `student_address` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `qrcode` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `full_name`, `email`, `course`, `semester`, `phone`, `student_address`, `age`, `qrcode`) VALUES
('BBM1', 'Reshma Shrestha', 'pratham.shrestha00@gmail.com', 'BBM', 'third', '9865442156', 'Kathmandu', 21, 0x74656d702f7465737430303531646161353464656230653738313761386138323865316635386632652e706e67),
('BCA1', 'Pratham Shrestha', 'prathamshrestha100@gmail.com', 'BCA', 'fifth', '9804929863', 'Jhapa', 21, 0x74656d702f7465737461666366376265316231373332623766633131626330336162613437396635372e706e67),
('BCA2', 'Anisha Shrestha', 'anisha13@gmail.com', 'BCA', 'fifth', '9845675420', 'Kathmandu', 22, 0x74656d702f7465737437323330356634626664303336636433643131356262653337613666613438652e706e67),
('CSIT', 'Rajesh Pradhan', 'Rajesh@gmail.com', 'CSIT', 'first', '9865421475', 'Kathamandu', 19, 0x74656d702f7465737433616665303965636565633039613833353632313061373234616632363464612e706e67),
('CSIT1', 'Krishna Prasad Acharya', 'Krishna33@gmail.com', 'CSIT', 'first', '9856465211', 'ktm', 19, 0x74656d702f7465737432316435613430336462343237313361393136383130396431323965343964632e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `verification_code` varchar(1000) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `verification_code`, `verify_status`, `email`) VALUES
('pratham', '223311', '96b242c388880dacc0a2ef650474e963', 1, 'prathamshrestha100@gmail.com'),
('Reshma', '223311', '25e7e69bcd9894d671af7ff6b5bf9b93', 1, 'pratham.shrestha00@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`,`time_in`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
