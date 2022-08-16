-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 16, 2022 at 10:59 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react-exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `date`) VALUES
(11, 'sample@gmail.com', '$2y$10$AYJqckp4zumkr235nMNUfehftjZSdJOkd61Ev2JmASfIJyXAKIh/i', '2022-08-13 12:37:12'),
(12, 'sample2@gmail.com', '$2y$10$QFPmSHrY.gznTyc9UMmv3uHATjgwg1LTN2VP7W/Cu3yZN68M9bfhO', '2022-08-13 12:37:26'),
(13, 'sample3@gmail.com', '$2y$10$vlN4R03r53NpRJTFK2AROe9oWOHys97GzOtQDX66c7U8vb2VYhksy', '2022-08-13 12:38:05'),
(14, 'archervista@email.com', '$2y$10$46yf/i5cnLVkBnPQcEoeMOUP9R45DyLdb0I72oD2YggVrU3HfXiVa', '2022-08-14 09:55:41'),
(15, 'archer1@email.com', '$2y$10$brPJ6gvfxBljc76uRMRnKurstW4ATwuZ0Nt.4E3vrgdAd1L61m4P6', '2022-08-14 13:58:02'),
(16, 'archervista20@gmail.com', '$2y$10$kVAjRE2zBRuyfOmybYS3TeEXITLdIsug7.gwS1rppDrGWDK8x331q', '2022-08-15 02:08:59'),
(17, 'myemail@email.com', '$2y$10$RQnaQ5t5mLpORg3N/zC24uTfIDntyuZWn/2hY0ZAsK1EWCeN5fgtO', '2022-08-15 03:41:52'),
(18, 'gmail@gmail.com', '$2y$10$1vcbJ5Ic6NEJ.NIv.LbyOOVEBpcqTLbh4XjtNXlFJFUaA8c1j1t6K', '2022-08-16 01:49:55'),
(19, 'yahoo@yahoo.com', '$2y$10$qlkMyBMAEPtGKqT5uy2N4uanTN/0cVGetkR/Fu3tNlzDo1/3vjvPG', '2022-08-16 06:04:29');

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
