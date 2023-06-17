-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 09:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `sequence`, `title`, `text`) VALUES
(1, 1, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(2, 2, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.  Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(3, 3, 'Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(4, 4, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(5, 5, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(6, 6, 'Exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(7, 7, 'Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderi harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(8, 8, 'Velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(9, 9, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(10, 10, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(11, 11, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(12, 12, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(13, 13, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(14, 14, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.  Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(15, 15, 'Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(16, 16, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(17, 17, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(18, 18, 'Exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(19, 19, 'Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderi harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(20, 20, 'Velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(21, 21, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(22, 22, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(23, 23, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.'),
(24, 24, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam quisquam nulla soluta aliquam commodi, velit delectus ullam fugiat repellendus qui exercitationem, quae ea non cumque reprehenderit, harum repudiandae dignissimos unde.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
