-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2017 at 06:33 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_distance`
--

CREATE TABLE `all_distance` (
  `city_all` varchar(30) DEFAULT NULL,
  `distance` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_gen`
--

CREATE TABLE `f_gen` (
  `ID` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_obc`
--

CREATE TABLE `f_obc` (
  `ID` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_sc`
--

CREATE TABLE `f_sc` (
  `ID` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_table`
--

CREATE TABLE `f_table` (
  `F_ID` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Quota` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merit`
--

CREATE TABLE `merit` (
  `G_ID` int(11) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Percentage` varchar(10) DEFAULT NULL,
  `Quota` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merit`
--

INSERT INTO `merit` (`G_ID`, `Name`, `City`, `Contact`, `Gender`, `Percentage`, `Quota`) VALUES
(1, 'daksh', 'ahmedabad', '7990151443', 'male', '97', 'gen'),
(2, 'daksh', 'ahmedabad', '7990151443', 'male', '97', 'gen'),
(3, 'sameer', 'valsad', '9898419155', 'male', '91', 'gen'),
(4, 'rushi', '', '', 'male', '', 'gen'),
(5, 'rushi', 'ahmedabad', '9227115656', 'male', '90', 'gen'),
(6, 'sahil', 'abu', '8511216573', 'male', '85', 'gen');

-- --------------------------------------------------------

--
-- Table structure for table `m_gen`
--

CREATE TABLE `m_gen` (
  `ID` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_gen`
--

INSERT INTO `m_gen` (`ID`, `G_ID`, `Name`, `Distance`, `Percentage`, `Score`) VALUES
(1, 0, 'daksh', 0, 97, 38.8),
(2, 0, 'sameer', 350, 91, 246.4),
(3, 0, 'rushi', 0, 0, 0),
(4, 0, 'rushi', 23, 90, 49.8),
(5, 6, 'sahil', 256, 85, 187.6);

-- --------------------------------------------------------

--
-- Table structure for table `m_obc`
--

CREATE TABLE `m_obc` (
  `ID` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_sc`
--

CREATE TABLE `m_sc` (
  `ID` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_table`
--

CREATE TABLE `m_table` (
  `M_ID` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Quota` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_table`
--

INSERT INTO `m_table` (`M_ID`, `G_ID`, `Name`, `Distance`, `Percentage`, `Quota`) VALUES
(1, 0, 'daksh', 0, 97, 'gen'),
(2, 0, 'sameer', 350, 91, 'gen'),
(3, 0, 'rushi', 0, 0, 'gen'),
(4, 0, 'rushi', 23, 90, 'gen'),
(5, 6, 'sahil', 256, 85, 'gen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `f_gen`
--
ALTER TABLE `f_gen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `f_obc`
--
ALTER TABLE `f_obc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `f_sc`
--
ALTER TABLE `f_sc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `f_table`
--
ALTER TABLE `f_table`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `merit`
--
ALTER TABLE `merit`
  ADD PRIMARY KEY (`G_ID`);

--
-- Indexes for table `m_gen`
--
ALTER TABLE `m_gen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `m_obc`
--
ALTER TABLE `m_obc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `m_sc`
--
ALTER TABLE `m_sc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `m_table`
--
ALTER TABLE `m_table`
  ADD PRIMARY KEY (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_gen`
--
ALTER TABLE `f_gen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_obc`
--
ALTER TABLE `f_obc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_sc`
--
ALTER TABLE `f_sc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_table`
--
ALTER TABLE `f_table`
  MODIFY `F_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merit`
--
ALTER TABLE `merit`
  MODIFY `G_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_gen`
--
ALTER TABLE `m_gen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_obc`
--
ALTER TABLE `m_obc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_sc`
--
ALTER TABLE `m_sc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_table`
--
ALTER TABLE `m_table`
  MODIFY `M_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
