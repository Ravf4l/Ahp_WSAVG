-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 07:49 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahp_6`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternative`
--

CREATE TABLE `alternative` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternative`
--

INSERT INTO `alternative` (`id`, `name`) VALUES
(39, 'Refrigator B'),
(38, 'Refrigator A'),
(40, 'Refrigator C'),
(41, 'Refrigator D'),
(42, 'Refrigator E');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `name`) VALUES
(50, 'Price'),
(51, 'Design'),
(52, 'Size'),
(53, 'Power'),
(54, 'Feature'),
(55, 'Material');

-- --------------------------------------------------------

--
-- Table structure for table `pv_alternative`
--

CREATE TABLE `pv_alternative` (
  `id` int(11) NOT NULL,
  `id_alternative` int(11) NOT NULL,
  `id_criteria` int(11) NOT NULL,
  `score` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pv_alternative`
--

INSERT INTO `pv_alternative` (`id`, `id_alternative`, `id_criteria`, `score`) VALUES
(54, 40, 50, 0.473945),
(53, 39, 50, 0.195355),
(52, 38, 50, 0.0926478),
(57, 38, 51, 0.0985728),
(56, 42, 50, 0.171536),
(55, 41, 50, 0.0665167),
(60, 41, 51, 0.261788),
(59, 40, 51, 0.16105),
(58, 39, 51, 0.416212),
(63, 39, 52, 0.0891248),
(62, 38, 52, 0.302292),
(61, 42, 51, 0.0623764),
(64, 40, 52, 0.0543585),
(65, 41, 52, 0.411365),
(66, 42, 52, 0.142859),
(67, 38, 53, 0.145768),
(68, 39, 53, 0.0458383),
(69, 40, 53, 0.277665),
(70, 41, 53, 0.0802688),
(71, 42, 53, 0.45046),
(72, 38, 54, 0.494191),
(73, 39, 54, 0.228456),
(74, 40, 54, 0.0845003),
(75, 41, 54, 0.0461947),
(76, 42, 54, 0.146657),
(77, 38, 55, 0.0449011),
(78, 39, 55, 0.134607),
(79, 40, 55, 0.513976),
(80, 41, 55, 0.0746092),
(81, 42, 55, 0.231907);

-- --------------------------------------------------------

--
-- Table structure for table `pv_criteria`
--

CREATE TABLE `pv_criteria` (
  `id_criteria` int(11) NOT NULL,
  `score` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pv_criteria`
--

INSERT INTO `pv_criteria` (`id_criteria`, `score`) VALUES
(50, 0.103667),
(51, 0.0543832),
(52, 0.156501),
(53, 0.439556),
(54, 0.181476),
(55, 0.0644169);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id_alternative` int(11) NOT NULL,
  `score` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id_alternative`, `score`) VALUES
(40, 0.236891),
(39, 0.127114),
(38, 0.218924),
(41, 0.133983),
(42, 0.283088);

-- --------------------------------------------------------

--
-- Table structure for table `ratio_alternative`
--

CREATE TABLE `ratio_alternative` (
  `id` int(11) NOT NULL,
  `alternative1` int(11) NOT NULL,
  `alternative2` int(11) NOT NULL,
  `comparison` int(11) NOT NULL,
  `score` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratio_alternative`
--

INSERT INTO `ratio_alternative` (`id`, `alternative1`, `alternative2`, `comparison`, `score`) VALUES
(30, 38, 41, 50, 2),
(29, 38, 40, 50, 0.2),
(28, 38, 39, 50, 0.5),
(33, 39, 41, 50, 3),
(32, 39, 40, 50, 0.333333),
(31, 38, 42, 50, 0.333333),
(36, 40, 42, 50, 5),
(35, 40, 41, 50, 4),
(34, 39, 42, 50, 2),
(39, 38, 40, 51, 0.5),
(38, 38, 39, 51, 0.25),
(37, 41, 42, 50, 0.25),
(40, 38, 41, 51, 0.333333),
(41, 38, 42, 51, 2),
(42, 39, 40, 51, 3),
(43, 39, 41, 51, 2),
(44, 39, 42, 51, 5),
(45, 40, 41, 51, 0.5),
(46, 40, 42, 51, 3),
(47, 41, 42, 51, 4),
(48, 38, 39, 52, 4),
(49, 38, 40, 52, 5),
(50, 38, 41, 52, 0.5),
(51, 38, 42, 52, 3),
(52, 39, 40, 52, 2),
(53, 39, 41, 52, 0.25),
(54, 39, 42, 52, 0.5),
(55, 40, 41, 52, 0.166667),
(56, 40, 42, 52, 0.333333),
(57, 41, 42, 52, 3),
(58, 38, 39, 53, 4),
(59, 38, 40, 53, 0.333333),
(60, 38, 41, 53, 3),
(61, 38, 42, 53, 0.2),
(62, 39, 40, 53, 0.2),
(63, 39, 41, 53, 0.5),
(64, 39, 42, 53, 0.125),
(65, 40, 41, 53, 4),
(66, 40, 42, 53, 0.5),
(67, 41, 42, 53, 0.25),
(68, 38, 39, 54, 3),
(69, 38, 40, 54, 5),
(70, 38, 41, 54, 8),
(71, 38, 42, 54, 4),
(72, 39, 40, 54, 3),
(73, 39, 41, 54, 5),
(74, 39, 42, 54, 2),
(75, 40, 41, 54, 2),
(76, 40, 42, 54, 0.5),
(77, 41, 42, 54, 0.25),
(78, 38, 39, 55, 0.25),
(79, 38, 40, 55, 0.125),
(80, 38, 41, 55, 0.5),
(81, 38, 42, 55, 0.2),
(82, 39, 40, 55, 0.2),
(83, 39, 41, 55, 2),
(84, 39, 42, 55, 0.5),
(85, 40, 41, 55, 6),
(86, 40, 42, 55, 3),
(87, 41, 42, 55, 0.25);

-- --------------------------------------------------------

--
-- Table structure for table `ratio_criteria`
--

CREATE TABLE `ratio_criteria` (
  `id` int(11) NOT NULL,
  `criteria1` int(11) NOT NULL,
  `criteria2` int(11) NOT NULL,
  `score` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratio_criteria`
--

INSERT INTO `ratio_criteria` (`id`, `criteria1`, `criteria2`, `score`) VALUES
(13, 50, 51, 2),
(15, 50, 53, 0.25),
(18, 51, 52, 0.5),
(14, 50, 52, 0.333333),
(17, 50, 55, 3),
(16, 50, 54, 0.5),
(19, 51, 53, 0.166667),
(20, 51, 54, 0.333333),
(21, 51, 55, 0.5),
(22, 52, 53, 0.333333),
(23, 52, 54, 0.5),
(24, 52, 55, 3),
(25, 53, 54, 6),
(26, 53, 55, 5),
(27, 54, 55, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ri`
--

CREATE TABLE `ri` (
  `total` int(11) NOT NULL,
  `score` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ri`
--

INSERT INTO `ri` (`total`, `score`) VALUES
(1, 0),
(2, 0),
(3, 0.58),
(4, 0.9),
(5, 1.12),
(6, 1.24),
(7, 1.32),
(8, 1.41),
(9, 1.45),
(10, 1.49),
(11, 1.51),
(12, 1.48),
(13, 1.56),
(14, 1.57),
(15, 1.59);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternative`
--
ALTER TABLE `alternative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pv_alternative`
--
ALTER TABLE `pv_alternative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pv_criteria`
--
ALTER TABLE `pv_criteria`
  ADD PRIMARY KEY (`id_criteria`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_alternative`);

--
-- Indexes for table `ratio_alternative`
--
ALTER TABLE `ratio_alternative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratio_criteria`
--
ALTER TABLE `ratio_criteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ri`
--
ALTER TABLE `ri`
  ADD PRIMARY KEY (`total`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternative`
--
ALTER TABLE `alternative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pv_alternative`
--
ALTER TABLE `pv_alternative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `ratio_alternative`
--
ALTER TABLE `ratio_alternative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `ratio_criteria`
--
ALTER TABLE `ratio_criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
