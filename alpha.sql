-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2024 at 09:23 AM
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
-- Database: `alpha`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_no`, `msg`, `date`) VALUES
(1, 'First post', 'abc@gmail.com', '98873487412', 'afjsdfjds fdsdf sdaf', '2024-07-27 19:06:08'),
(2, 'Parth Wadhwa', 'parth712007@gmail.com', '8708414898', 'terter trdggdsdfsgdfgsfgs', '2024-07-28 00:20:30'),
(3, 'ahdf asdfd s', 'abc@gmail.com', '8765432109', 'skfsda fksdjfhsd jfsda fksdfjkds f', '2024-07-28 00:20:46'),
(4, 'abc ahdsf ', 'abc1@mail.com', '8765499087', 'isdjf sadjfsd fjdskf', '2024-07-29 20:45:06'),
(5, 'dsfsdafsdf ', 'abc1@mail.com', '8765490876', 'isdfi sdfdskf dskfdsf df', '2024-07-29 20:45:58'),
(6, 'gsdfg', 'sbc@abc.in', '9876543210', 'g ffx xfgf', '2024-07-30 15:06:38'),
(7, '.,jklert', 'abc@gmail.com', '8907654321', ',kjgfdkjf dsahf dsafkdsja ', '2024-08-04 10:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is my first post title', 'abcjdsfjksd ', 'first-post', '', 'about-bg.jpg', '2024-08-01 14:18:08'),
(2, 'This is second post', 'fskfsl fjsdf', 'second-post', 'f.ksjf lksdfjsdlkf dsf\r\nds\' fdsfjds fds\r\nf fdsjfd \'fdsf\r\n jkdsf\r\n sjfsd jfds fjklsdjfioewflsd fk\r\nds\'jfhiowe hfiewof ', 'about-bg.jpg', '2024-07-30 18:39:49'),
(3, 'bcvfghhfghfghfg', 'ghfghfghh', 'gh-pp', 'dgdfg fg dfgdf dfg dfsgsdg', 'abc.jpg', '2024-08-01 13:01:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
