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
-- Database: `votesystem`
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
(1, 'prashant', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Prashant', 'Singh', 'Naruto 1714 x 2400.png', '2022-04-05'),
(7, 'utkarsh', '$2y$10$dZyEvSXKdAZFh8fIGQdedeKrY7go2LBgXdXi5EUJPRDbutQ6YRgL6', 'Utkarsh', 'More', 'Naruto 1714 x 2400.png', '2022-04-05'),
(8, 'pranjal', '$2y$10$rSpcnCUK6eZshLlVBH1TJOeeWWsIMtfhTvbgSl/I.Qc0U2ruF/6fG', 'Pranjal', 'Wagh', 'pranjal.jpg', '2022-04-05');

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
(23, 10, 'Naruto', 'Uzumaki', 'F7a3c26e38d54081c6090b7123e56203.webp', 'I am gonna be hokage someday, believe it!!\r\n'),
(24, 10, 'Eren', 'Jaegar', '499-4991371_attack-on-titan-logo-png-transparent-png.png', 'If You do not Fight, You cannot Win!\r\nIf you lose, you die. If you do not fight, you cannot win!'),
(25, 10, 'Gon', 'Freeccss', 'hunter_x_hunter___hunter_association_logo_by_ohmann333_de7mvaq-fullview.jpg', ''),
(26, 10, 'Ichigo', 'Kurosaki', 'oehmi-bleach-logo-black-and-white.png', ''),
(27, 10, 'Monkey D', 'Luffy', 'png-transparent-trafalgar-d-water-law-monkey-d-luffy-donquixote-doflamingo-roronoa-zoro-one-piece-logo-luffy-logo-jolly-roger-smiley.png', 'I will find one piece'),
(28, 10, 'Light', 'Yagami', '8bf36f5199762a65337f3e230f38e863.jpg', 'I will exterminate all the evil in this world'),
(29, 10, 'Tanjiro', 'Kamado', '6071265.webp', 'I will make my sister human again'),
(30, 10, 'Itachi', 'Uchiha', '111-1110665_itachi-uchiha-by-fire1995-mangekyou-sharingan-itachi-png.png', ''),
(31, 10, 'Edward', 'Elric', '192-1923047_picture-fullmetal-alchemist-logo-png-transparent-png.png', '');

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
(10, 'Best Anime Character', 0, 1);

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
(14, 'N2W7AFKB5Y', '$2y$10$jHKYf4qP6fiw2yIAmKxaS.wWXBWjbFrGhgy1erP8j0H6q3SNhepj6', 'Prashant', 'Singh', ''),
(15, 'O2PHCM9UAD', '$2y$10$mQyJYXamg3mJihJWemMz3Oi8Cjp1OrZ3mZaVucgaWrg8YddhLehqa', 'Sumeet', 'Singh', ''),
(19, 'A67EHWVND3', '$2y$10$2UAYNTOOy9urypPVOBvmAehiPay2ssFFYZ4cwF42GivSjY8ZMRBni', 'Anurag', 'Mane', ''),
(20, '4SXBU8M6EN', '$2y$10$S75QKXhdZh8iqtxZxUgYFe4j3XGmPoOzGaaKg9q0gKVJr0ZVMJWeW', 'Om', 'Wayal', ''),
(21, 'KB4ET97SWV', '$2y$10$WiXDhc2epgVzI6j4CYp6Q.Be6L1STMIr8K8MI4hOyAZNvRUE7rB/e', 'Neelu', 'Yadav', ''),
(22, '4IPF7DXZH8', '$2y$10$f1rZkz9XvDd4QbfknHIjXuuo231szagplqjAwGx3U9Pm3yMk8nLfa', 'Rohit', 'More', ''),
(23, '43UYXJISAB', '$2y$10$5dyRDd62aKTRBj.XBI05HOLAqKpv8PRz.hY9Yuqwkf1QNPwo5kzGe', 'Shriniket', 'Kulkarni', ''),
(24, '2CEJW98ABF', '$2y$10$9NZGn56POW.mZIkMp2X5ouoDUjWse60lQkzXy.smicUgKndctWrlm', 'Dhanashree', 'Patil', ''),
(25, 'WP3CL21UZG', '$2y$10$No8vXi.BIy7ZO3SJhWtpTOewAHipeMsfFIFuwUyv6x9e/BRAIj.R6', 'Pradnya', 'Kshirsagar', ''),
(26, '5GQCT1LHRV', '$2y$10$xuLaR/eMbnJI9MFAxD1Jm.gVGvcIitAuhh.Wsw8V/doWnrUJFwTCy', 'Pratik', 'Savare', ''),
(27, 'UDFWISXTZ9', '$2y$10$ZsDMvPfG5ChIsVxYoxI7vePXpMpwg9FUV9LXHsC9mNDwrxdHRDio6', 'Hitesh', 'Attarde', ''),
(28, 'DGE9UJX2I6', '$2y$10$KIblV7XjxBBuOsH0JCUjPOtqlFXjpKgtCcKoTGAqQ5FQg0HUKATaq', 'Aditya', 'Bhalekar', ''),
(29, 'DHX3EBZCK1', '$2y$10$4tECTowkkt9csspbRlvpDu7S0Mi71EAZTL.yLQIKSFTRC.D.BwITG', 'Akshat', 'Thawait', ''),
(30, 'QDBG75MTJK', '$2y$10$t7AKQUOzhttWXKiNX4OMYOfV.bk7sWnNF/hojnghnkU70Q3ttNtEW', 'Swapnil', 'Bonde', ''),
(31, 'XAKLGM9QDJ', '$2y$10$NPTQhvCsnFJZah2OhdolUurxueiHUPg9PvuaaGUKRYRPserrSXzfC', 'Atharva', 'Sambhus', ''),
(32, '26HIVUQKJW', '$2y$10$mLMiu8dt9YDPdkNI30i3luZgtIY7AJnFdrsTUYTc5dY8VDJ5qL2JG', 'Suraj', 'Mane', ''),
(33, 'Q1BZN5SU6V', '$2y$10$Atojbe1AHRGj7BpAct/m3.gLikPfBzUX17sBZqfUX0d02dGyoOLlW', 'Shivani', 'Vishwakarma', ''),
(34, 'FZ53ONXUW4', '$2y$10$y6Me15yEsNaeT2ii3XtkiefPWREnFcZ9MIHwAUKK0s21gMQ1Euohy', 'Vishal', 'Gupta', ''),
(35, 'P8A6OKIFMY', '$2y$10$YjqbwwYiphDwP04YqXErGOgyJkrFKcY.lXm8KkRguPRiHBCfo2bqa', 'Sakshi', 'Gundal', ''),
(36, 'J5OAZL9XKB', '$2y$10$jHII0GaaB7m3ip86a.120enWwR37BN36Ljsn8QE135n.K0cFMRuoq', 'Netra', 'Borate', ''),
(37, 'TWNXOK8MBS', '$2y$10$9fKV1.9DCDbbPLusTUTaVuOjrkxaJsaS.98Kj3kz1i2WQoSpORzzu', 'Aditi', 'Mandavkar', ''),
(38, 'F7OLHIPJYB', '$2y$10$1aAKkfJbCPDvaTZee8V8LOk/Vt78xpjoKAE7/m.al.d7ugLozFmjS', 'Pranjal', 'Wagh', ''),
(39, 'PDJASZ35NU', '$2y$10$1qghn785asRn0F4CGxhRjeNEyYcOLZZiiE6ZKC4ps38Z0TAK67ZlW', 'Utkarsh', 'More', ''),
(40, 'AVMWOUK5P3', '$2y$10$1KNCJPS4uXuPbo/7oKmBR.fmP4/aQRcKw1ewUbbklT6u2nSK.0tci', 'Hemant', 'Maske', '');

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
(88, 14, 30, 10),
(89, 27, 29, 10),
(90, 28, 31, 10),
(91, 30, 24, 10),
(92, 36, 23, 10),
(93, 35, 23, 10),
(94, 34, 30, 10),
(95, 25, 28, 10),
(96, 23, 30, 10),
(97, 37, 30, 10),
(98, 19, 26, 10),
(99, 16, 24, 10),
(100, 38, 23, 10);

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
-- Indexes for table `positions`
--
ALTER TABLE `positions`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
