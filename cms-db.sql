-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2025 at 09:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_Id` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Help` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_Id`, `Description`, `Help`) VALUES
(1, 'Academic Issues', 'saad'),
(2, 'Administrative Issues', 'saad'),
(3, 'Faculty-related Issues', 'saad'),
(4, 'Facilities & Infrastructure', 'saad'),
(5, 'Discrimination & Harassment', 'saad'),
(6, 'Financial Matters', 'saad'),
(7, 'Admission and Recruitment', 'saad'),
(8, 'Safety & Security', 'saad'),
(9, 'Other', 'saad');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `C_Id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Mob` varchar(15) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Priority` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Reg_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `staff` varchar(255) DEFAULT 'Unassigned',
  `status` varchar(50) DEFAULT 'Pending',
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`C_Id`, `email`, `Mob`, `Category`, `Location`, `Priority`, `Description`, `Reg_time`, `staff`, `status`, `cat_id`) VALUES
(1, 'qqq@qq.com', '9044714575', 'Administrative-Issues', 'fsdffd', '0', 'ggg', '2023-11-20 08:12:53', NULL, 'Resolved', 1),
(2, 'shiva@gmail.com', '7874785412', 'Facilities & Infrastructure', 'fsdffd', '0', '890', '2023-11-20 08:27:30', NULL, 'Resolved', 2),
(3, 'shiva@gmail.com', '3214521475', 'Facilities & Infrastructure', 'fhc', 'Medium', 'ghhhhhh', '2023-11-20 08:29:05', NULL, 'Resolved', 3),
(4, 'shiva@gmail.com', '7874785412', 'Safety & Security', 'hfhh', 'Low', 'ghhh', '2023-11-20 08:31:55', NULL, 'Resolved', 4),
(8, 'asdf@gmail.com', '7874785412', 'Administrative-Issues', '56666666', 'High', '\r\n2', '2023-11-20 19:01:09', 'Unassigned', 'Resolved', 8),
(9, 'asdf@gmail.com', '7874785412', 'Administrative-Issues', '56666666', 'High', '\r\n2', '2023-11-20 19:01:19', 'Unassigned', 'Resolved', 1),
(10, 'asdf@gmail.com', '7874785412', 'Administrative-Issues', '56666666', 'High', '\r\n2', '2023-11-20 19:01:24', 'Staff1', 'Resolved', 2),
(12, 'shiva@gmail.com', '3214521475', 'Administrative-Issues', 'fsdffd', 'Medium', 'ii', '2023-11-21 06:24:17', 'Staff1', 'Resolved', 4),
(13, '11@gmail.com', '7874785412', 'Facilities & Infrastructure', 'hfhh', 'Low', '8', '2023-11-21 07:22:38', 'Staff1', 'Resolved', 5),
(14, 'shiva@gmail.com', '3214521475', 'Faculty-related-Issues', 'hfhh', 'High', 'uu', '2023-11-24 07:11:59', 'Staff1', 'Resolved', 6),
(15, 'shiva@gmail.com', '9044714575', 'Discrimination & Harassment', '56666666', 'Medium', 'dd', '2023-11-24 08:30:32', 'Unassigned', 'Pending', NULL),
(17, 'shiva@gmail.com', '6342301245', 'Academic-Issues', 'Library', 'Medium', 'This is a general Discription', '2023-11-27 10:00:54', 'Unassigned', 'Pending', NULL),
(18, 'shiva@gmail.com', '3214521475', 'Administrative-Issues', 'Administration', 'Medium', 'This is a general Discription', '2023-11-27 10:01:31', 'Staff1', 'Resolved', NULL),
(19, 'shiva@gmail.com', '7874785412', 'Faculty-related-Issues', 'Ground', 'Medium', 'This is a general Discription', '2023-11-27 10:01:51', 'Staff1', 'Pending', NULL),
(20, 'shiva@gmail.com', '7458963214', 'Financial Matters', 'Parking', 'High', 'This is a general Discription', '2023-11-27 10:02:27', 'Staff1', 'Pending', NULL),
(21, 'shiva@gmail.com', '6549873210', 'Faculty-related-Issues', 'Lucknow', 'High', 'sfafa', '2025-11-07 19:53:30', 'Unassigned', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Email`, `Password`, `joining_date`, `Name`, `id`) VALUES
('asdf@gmail.com', '12345', '2023-11-20', 'Staff1', 1),
('11@gmail.com', '11', '0000-00-00', 'staff2', 2),
('email1@example.com', 'password1', '2023-01-01', 'John Doe', 3),
('email2@example.com', 'password2', '2023-01-02', 'Jane Smith', 4),
('email3@example.com', 'password3', '2023-01-03', 'Bob Johnson', 5),
('email4@example.com', 'password4', '2023-01-04', 'Alice Brown', 6),
('email5@example.com', 'password5', '2023-01-05', 'Charlie Davis', 7),
('email6@example.com', 'password6', '2023-01-06', 'Eva White', 8),
('email7@example.com', 'password7', '2023-01-07', 'Frank Miller', 9),
('email8@example.com', 'password8', '2023-01-08', 'Grace Taylor', 10),
('email9@example.com', 'password9', '2023-01-09', 'David Lee', 11),
('email10@example.com', 'password10', '2023-01-10', 'Sophie Chen', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) DEFAULT NULL,
  `upassword` varchar(255) DEFAULT NULL,
  `joining_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `upassword`, `joining_date`) VALUES
('qqq@qq.com', 'qqq', '2023-11-20'),
('shiva@gmail.com', 'shiva', '2023-11-20'),
('12@34', '1234', '2023-11-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_Id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`C_Id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cat_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `C_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
