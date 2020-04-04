-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2020 at 08:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `int301`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `emailId`) VALUES
(1, 'arun', 'sharma', 'a@gmail.com'),
(2, 'bharath', 'sharma', 'b@gmail.com'),
(3, 'nitin', 'joshi', 'n@gmail.com'),
(4, 'ravi', 'gurram', 'r@gmail.com'),
(5, 'bannu', 'babu', 'bb@gmail.com'),
(6, 'zakir', 'khan', 'z@gmail.com'),
(7, 'aiden', 'pearce', 'ap@gmail.com'),
(8, 'elliot', 'alderson', 'ea@gmail.com'),
(9, 'zootopia', 'Zootropolis', 'Zootropolis@gmail.com'),
(10, 'andrew', 'russel', 'ar@gmail.com'),
(11, 'ajay', 'dondapati', 'aj@gmail.com'),
(12, 'kishore', 'kethineni', 'kk@gmail.com'),
(13, 'preetham', 'byreddy', 'pr@gmail.com'),
(14, 'vinay', 'verma', 'vv@gmail.com'),
(15, 'zack', 'zack', 'zack@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
