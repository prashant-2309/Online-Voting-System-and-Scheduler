-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 05:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'prashant', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Prashant', 'Singh', 'Naruto 1714 x 2400.png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(20, 10, 'Sumeet', 'Singh', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `individuals`
--

CREATE TABLE `individuals` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `individuals`
--

INSERT INTO `individuals` (`id`, `code`, `name`, `date_created`) VALUES
(9, '503742333830', 'Prashant Singh', '2022-02-21 21:50:35'),
(10, '043180454978', 'Pranjal', '2022-03-24 13:23:46'),
(11, '562935054983', 'hemant', '2022-03-24 13:27:31'),
(12, '299327767830', 'Utkarsh More', '2022-03-24 13:50:55'),
(13, '661406011953', 'D patil', '2022-04-28 14:29:53'),
(14, '728629550981', 'Prashant Singh', '2022-05-07 19:30:56'),
(15, '358415404231', 'azxdcsasd', '2022-05-08 12:36:52'),
(16, '248634772886', 'Prashant Singh', '2022-05-11 16:39:45'),
(17, '525313985967', 'Pranjal Wagh', '2022-05-11 20:31:23'),
(18, '525826564791', 'Hemant Maske', '2022-05-11 20:33:22'),
(19, '749014785660', 'Utkarsh More', '2022-05-11 20:36:53'),
(20, '095125277421', 'Anurag Mane', '2022-05-11 20:39:05'),
(21, '257666739987', 'Pratik', '2022-05-11 20:40:04'),
(22, '708077127368', 'Payal Wagh', '2022-05-12 13:40:37'),
(23, '038264651229', 'Ash', '2022-05-12 13:52:21'),
(24, '487379920616', 'Om', '2022-05-12 14:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `individual_meta`
--

CREATE TABLE `individual_meta` (
  `individual_id` int(30) NOT NULL,
  `meta_field` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `individual_meta`
--

INSERT INTO `individual_meta` (`individual_id`, `meta_field`, `meta_value`, `date_created`) VALUES
(9, 'name', 'Prashant Singh', '2022-02-21 21:50:36'),
(9, 'contact', '8390385485', '2022-02-21 21:50:36'),
(9, 'time', '11:00am-12:00pm', '2022-02-21 21:50:36'),
(9, 'gender', 'Male', '2022-02-21 21:50:36'),
(9, 'dob', '2002-11-05', '2022-02-21 21:50:36'),
(9, 'address', 'Pune', '2022-02-21 21:50:36'),
(10, 'name', 'Pranjal', '2022-03-24 13:23:46'),
(10, 'contact', '00000000000', '2022-03-24 13:23:46'),
(10, 'time', '01:00pm-02:00pm', '2022-03-24 13:23:46'),
(10, 'gender', 'Male', '2022-03-24 13:23:46'),
(10, 'dob', '2025-10-02', '2022-03-24 13:23:46'),
(10, 'address', 'hdbshvhd dcbh', '2022-03-24 13:23:46'),
(11, 'name', 'hemant', '2022-03-24 13:27:31'),
(11, 'contact', '1234568', '2022-03-24 13:27:31'),
(11, 'time', '09:00am-10:00am', '2022-03-24 13:27:31'),
(11, 'gender', 'Male', '2022-03-24 13:27:31'),
(11, 'dob', '2022-03-17', '2022-03-24 13:27:31'),
(11, 'address', 'jdfkvmd', '2022-03-24 13:27:31'),
(12, 'name', 'Utkarsh More', '2022-03-24 13:50:55'),
(12, 'contact', '45452', '2022-03-24 13:50:55'),
(12, 'time', '09:00am-10:00am', '2022-03-24 13:50:55'),
(12, 'gender', 'Male', '2022-03-24 13:50:55'),
(12, 'dob', '2022-03-24', '2022-03-24 13:50:55'),
(12, 'address', 'ghfhnvngvn', '2022-03-24 13:50:55'),
(13, 'name', 'D patil', '2022-04-28 14:29:53'),
(13, 'contact', '8652825852', '2022-04-28 14:29:53'),
(13, 'time', '09:00am-10:00am', '2022-04-28 14:29:53'),
(13, 'gender', 'Female', '2022-04-28 14:29:53'),
(13, 'dob', '2022-04-29', '2022-04-28 14:29:53'),
(13, 'address', 'sdfgfdsdcv\r\n', '2022-04-28 14:29:53'),
(14, 'name', 'Prashant Singh', '2022-05-07 19:30:56'),
(14, 'contact', '8390385485', '2022-05-07 19:30:56'),
(14, 'time', '11:00am-12:00pm', '2022-05-07 19:30:56'),
(14, 'gender', 'Male', '2022-05-07 19:30:56'),
(14, 'dob', '2002-09-23', '2022-05-07 19:30:56'),
(14, 'address', '--', '2022-05-07 19:30:56'),
(15, 'name', 'azxdcsasd', '2022-05-08 12:36:52'),
(15, 'contact', '2343212332', '2022-05-08 12:36:52'),
(15, 'time', '09:00am-10:00am', '2022-05-08 12:36:52'),
(15, 'gender', 'Male', '2022-05-08 12:36:52'),
(15, 'dob', '2022-02-05', '2022-05-08 12:36:52'),
(15, 'address', 'uytfryhgfgh', '2022-05-08 12:36:52'),
(16, 'name', 'Prashant Singh', '2022-05-11 16:39:45'),
(16, 'contact', '8390385485', '2022-05-11 16:39:45'),
(16, 'time', '11:00am-12:00pm', '2022-05-11 16:39:45'),
(16, 'gender', 'Male', '2022-05-11 16:39:45'),
(16, 'dob', '2002-09-23', '2022-05-11 16:39:45'),
(16, 'address', 'Morewasti, Chikhali, Pune-411062', '2022-05-11 16:39:45'),
(17, 'name', 'Pranjal Wagh', '2022-05-11 20:31:23'),
(17, 'contact', '8652825852', '2022-05-11 20:31:23'),
(17, 'time', '12:00pm-01:00pm', '2022-05-11 20:31:23'),
(17, 'gender', 'Male', '2022-05-11 20:31:23'),
(17, 'dob', '2001-12-06', '2022-05-11 20:31:23'),
(17, 'address', 'Chikhali, Pune', '2022-05-11 20:31:23'),
(18, 'name', 'Hemant Maske', '2022-05-11 20:33:22'),
(18, 'contact', '789523542138', '2022-05-11 20:33:22'),
(18, 'time', '12:00pm-01:00pm', '2022-05-11 20:33:22'),
(18, 'gender', 'Male', '2022-05-11 20:33:22'),
(18, 'dob', '2002-05-12', '2022-05-11 20:33:22'),
(18, 'address', 'DY Patil Road, Akurdi, Pune', '2022-05-11 20:33:22'),
(19, 'name', 'Utkarsh More', '2022-05-11 20:36:53'),
(19, 'contact', '8951475322', '2022-05-11 20:36:53'),
(19, 'time', '01:00pm-02:00pm', '2022-05-11 20:36:53'),
(19, 'gender', 'Male', '2022-05-11 20:36:53'),
(19, 'dob', '2002-05-19', '2022-05-11 20:36:53'),
(19, 'address', 'Shahunagar, Pune', '2022-05-11 20:36:53'),
(20, 'name', 'Anurag Mane', '2022-05-11 20:39:05'),
(20, 'contact', '9524783247', '2022-05-11 20:39:05'),
(20, 'time', '09:00am-10:00am', '2022-05-11 20:39:05'),
(20, 'gender', 'Male', '2022-05-11 20:39:05'),
(20, 'dob', '2002-06-16', '2022-05-11 20:39:05'),
(20, 'address', 'Morewasti, Pune', '2022-05-11 20:39:05'),
(21, 'name', 'Pratik', '2022-05-11 20:40:04'),
(21, 'contact', '7861123354', '2022-05-11 20:40:04'),
(21, 'time', '11:00am-12:00pm', '2022-05-11 20:40:04'),
(21, 'gender', 'Male', '2022-05-11 20:40:04'),
(21, 'dob', '2002-02-27', '2022-05-11 20:40:04'),
(21, 'address', 'Pune', '2022-05-11 20:40:04'),
(22, 'name', 'Payal Wagh', '2022-05-12 13:40:37'),
(22, 'contact', '7058342721', '2022-05-12 13:40:37'),
(22, 'time', '11:00am-12:00pm', '2022-05-12 13:40:37'),
(22, 'gender', 'Female', '2022-05-12 13:40:37'),
(22, 'dob', '2001-07-04', '2022-05-12 13:40:37'),
(22, 'address', 'Chikhali,Pune', '2022-05-12 13:40:37'),
(23, 'name', 'Ash', '2022-05-12 13:52:21'),
(23, 'contact', '9874132547', '2022-05-12 13:52:21'),
(23, 'time', '11:00am-12:00pm', '2022-05-12 13:52:21'),
(23, 'gender', 'Male', '2022-05-12 13:52:21'),
(23, 'dob', '2004-07-04', '2022-05-12 13:52:21'),
(23, 'address', 'pune', '2022-05-12 13:52:21'),
(24, 'name', 'Om', '2022-05-12 14:27:09'),
(24, 'contact', '89556875214', '2022-05-12 14:27:09'),
(24, 'time', '09:00am-10:00am', '2022-05-12 14:27:09'),
(24, 'gender', 'Male', '2022-05-12 14:27:09'),
(24, 'dob', '2002-01-23', '2022-05-12 14:27:09'),
(24, 'address', 'Pune', '2022-05-12 14:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `location` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_a_day` int(5) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`, `description`, `max_a_day`, `date_created`, `date_updated`) VALUES
(5, 'Chikhali, Pune', '', 100, '2022-05-11 16:15:51', NULL),
(6, 'Sambhajinagar, Pune', '', 50, '2022-05-11 16:23:53', NULL),
(7, 'Shahunagar', '', 50, '2022-05-11 16:24:05', NULL),
(8, 'Akurdi, Pune', '', 100, '2022-05-11 16:24:20', NULL),
(9, 'Ravet, Pune', '', 50, '2022-05-11 16:24:48', NULL),
(10, 'Nigdi,Pune', '', 150, '2022-05-12 13:38:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'College', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(30) NOT NULL,
  `individual_id` int(30) NOT NULL,
  `location_id` int(30) NOT NULL,
  `date_sched` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `individual_id`, `location_id`, `date_sched`, `status`, `date_created`) VALUES
(9, 9, 1, '2022-02-24', 1, '2022-02-21 21:50:36'),
(10, 10, 1, '2022-03-29', 2, '2022-03-24 13:23:46'),
(11, 11, 1, '2022-03-30', 0, '2022-03-24 13:27:31'),
(12, 12, 4, '2022-03-24', 1, '2022-03-24 13:50:55'),
(13, 13, 4, '2022-05-02', 0, '2022-04-28 14:29:53'),
(14, 14, 4, '2022-05-09', 0, '2022-05-07 19:30:56'),
(15, 15, 4, '2022-05-19', 2, '2022-05-08 12:36:52'),
(16, 16, 5, '2022-05-12', 0, '2022-05-11 16:39:45'),
(17, 17, 8, '2022-05-12', 0, '2022-05-11 20:31:23'),
(18, 18, 9, '2022-05-12', 0, '2022-05-11 20:33:22'),
(19, 19, 7, '2022-05-12', 2, '2022-05-11 20:36:53'),
(20, 20, 6, '2022-05-12', 0, '2022-05-11 20:39:05'),
(21, 21, 5, '2022-05-11', 1, '2022-05-11 20:40:04'),
(22, 22, 5, '2022-05-12', 0, '2022-05-12 13:40:37'),
(23, 23, 6, '2022-05-12', 0, '2022-05-12 13:52:21'),
(24, 24, 8, '2022-05-13', 1, '2022-05-12 14:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `assembly_hall_id` int(30) NOT NULL,
  `reserved_by` text NOT NULL,
  `schedule_remarks` text NOT NULL,
  `datetime_start` datetime NOT NULL,
  `datetime_end` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `assembly_hall_id`, `reserved_by`, `schedule_remarks`, `datetime_start`, `datetime_end`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'John Smith', 'Sample Schedule Only', '2021-08-07 10:00:00', '2021-08-07 15:00:00', 0, '2021-08-06 10:45:24', NULL),
(4, 2, 'John Smith', 'Sample Long Sched', '2021-08-10 08:00:00', '2021-08-12 17:00:00', 0, '2021-08-06 11:21:23', '2021-08-06 11:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Vote Slot Booking'),
(6, 'short_name', 'Vote Slot Booking'),
(11, 'logo', 'uploads/1645017300_istockphoto-1132091873-612x612.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1645017480_voting-header.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sno` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` int(23) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sno`, `username`, `password`, `dt`) VALUES
(2, 'admin', 0, '2022-02-02 19:45:34'),
(4, 'prashant', 0, '2022-02-02 19:53:00'),
(6, 'pranjal', 0, '2022-02-02 20:34:59'),
(12, 'anurag', 123, '2022-02-02 22:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Pranjal', 'Wagh', 'pranjal', '1c1c57cbbb92ca1f4eaf9060fe18c542', 'uploads/1649086680_pranjal.jpg', NULL, 1, '2022-04-04 14:02:37', '2022-04-04 21:08:23'),
(6, 'Prashant', 'Singh', 'prashant', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/1649086260_Naruto 1714 x 2400.png', NULL, 1, '2022-04-04 14:02:37', '2022-04-04 21:01:27'),
(7, 'Administration', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1649086620_1630890120_avatar5.png', NULL, 1, '2022-04-04 14:02:37', '2022-04-04 21:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(4, 'QNp9YMCW38JtS4D', '$2y$10$P9DnYhdkNhI16RsfJWHBWeNFqLyd//8mQSPuHEbfmMWIvOVVtYoaS', 'Prashant', 'Singh', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(83, 4, 20, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individuals`
--
ALTER TABLE `individuals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `individuals`
--
ALTER TABLE `individuals`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
