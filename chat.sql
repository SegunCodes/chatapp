-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 01:30 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(200) NOT NULL,
  `outgoing_msg_id` int(200) NOT NULL,
  `msg` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(3, 189443866, 240529077, 'hey'),
(4, 189443866, 1469753345, 'My man'),
(5, 189443866, 1469753345, 'Hope you\'re good?'),
(6, 1469753345, 189443866, 'Baba'),
(7, 240529077, 1469753345, 'boss'),
(8, 1469753345, 240529077, 'my man'),
(9, 1469753345, 240529077, 'what\'s good'),
(10, 240529077, 1469753345, 'I\'m good'),
(11, 240529077, 1469753345, 'I need your help'),
(12, 240529077, 1469753345, 'So. I\'ll be organizing a tech event soon and I want you to be one of the speakers on that day'),
(13, 240529077, 1469753345, 'Its coming up on the 3rd of February this year, the theme is \"A paradigm shift in technology\"'),
(14, 1469753345, 240529077, 'Oh, wow, thank you, its an honor! I\'ll be available for it then'),
(15, 1469753345, 240529077, 'No problem, thanks for the honor'),
(16, 240529077, 1469753345, 'Alright, thank you.'),
(17, 240529077, 1469753345, 'I\'ll update you as things go'),
(18, 189443866, 1469753345, 'DrummerThatCodes'),
(19, 240529077, 1469753345, 'Big man');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(7, 240529077, 'Segun', 'Codes', 'segun@codes.com', '1234567890', '1642424507IMG_2696.jpg', 'Active Now'),
(8, 189443866, 'Shegstix', 'DTC', 'shegstix64@gmail.com', 'DRUMMER', '164242500420210718_135303~3.jpg', 'Active Now'),
(9, 1469753345, 'John', 'Doe', 'johndoe@gmail.com', 'johndoe', '16424290480b09dc47567b48b4a01ad290f08e564a.jpg', 'Active now'),
(10, 1594658429, 'Joseph', 'Asan', 'joeasan53@yahoo.com', '1234567890', '16424535581b76b52a4e1144e4a1d197d5cf1f8391.jpg', 'Active Now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
