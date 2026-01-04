-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1032.awardspace.net
-- Generation Time: Jan 04, 2026 at 04:25 PM
-- Server version: 8.0.32
-- PHP Version: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4715844_padelbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `booking_type` varchar(20) NOT NULL,
  `booking_date` date NOT NULL,
  `time_slot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `phone`, `booking_type`, `booking_date`, `time_slot`) VALUES
(1, 'Hussein', '1313', 'Private', '2026-01-06', '13:00 - 14:00'),
(2, 'hussein', '444', 'Private', '2026-01-06', '19:00 - 20:00'),
(3, 'fff', '222', 'Weekly', '2026-01-19', '14:00 - 15:00'),
(4, 'Hussien', '2324', 'Private', '2026-01-13', '19:00 - 20:00'),
(5, 'mohammad', '03406529', 'Weekly', '2026-01-08', '12:00 - 13:00'),
(6, 'mohammad', '03406529', 'Weekly', '2026-01-03', '09:00 - 10:00'),
(7, 'oday', '71000222', 'Private', '2026-01-03', '10:00 - 11:00'),
(23, 'Hussein', 'Abbas', 'Public - One Time', '2026-01-04', '09:00 - 10:00'),
(24, 'mohammad ktb', '76770888', 'Public - One Time', '2026-01-04', '10:00 - 11:00'),
(25, 'mohammad ktb', '76770888', 'Public - One Time', '2026-01-04', '11:00 - 12:00'),
(26, 'oday', '78442444', 'Private - One Time', '2026-01-04', '18:00 - 19:00'),
(27, 'oday', '78442444', 'Private - One Time', '2026-01-04', '19:00 - 20:00'),
(28, 'oday', '78442444', 'Private - One Time', '2026-01-04', '20:00 - 21:00'),
(29, 'Abdallah', '06332255', 'Public - One Time', '2026-01-07', '13:00 - 14:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_slot` (`booking_date`,`time_slot`),
  ADD UNIQUE KEY `booking_date` (`booking_date`,`time_slot`),
  ADD UNIQUE KEY `booking_date_2` (`booking_date`,`time_slot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
