-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 20, 2017 at 01:15 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

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
  `city` varchar(30) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_distance`
--

INSERT INTO `all_distance` (`city`, `distance`, `ID`) VALUES
('gandhinagar', 0, 1),
('ahmedabad', 23, 2),
('mahesana', 50, 3),
('nadiad', 63, 4),
('vadodara', 117, 5),
('suredranagar', 117, 6),
('bhavnagar', 169, 7),
('bharuch', 172, 8),
('surat', 226, 9),
('himatnagar', 53, 10),
('anand', 80, 11),
('rajkot', 215, 12);

-- --------------------------------------------------------

--
-- Table structure for table `final_female`
--

CREATE TABLE `final_female` (
  `Rank` int(11) NOT NULL,
  `G_ID` int(10) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Quota` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `final_male`
--

CREATE TABLE `final_male` (
  `Rank` int(11) NOT NULL,
  `G_ID` int(10) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `Quota` varchar(15) DEFAULT NULL
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

--
-- Dumping data for table `f_gen`
--

INSERT INTO `f_gen` (`ID`, `G_ID`, `Name`, `Distance`, `Percentage`, `Score`) VALUES
(1, 5, 'himja', 70, 87, 76.8),
(2, 8, 'krishna', 0, 95, 38),
(3, 14, 'mansi', 172, 81, 135.6);

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

--
-- Dumping data for table `f_obc`
--

INSERT INTO `f_obc` (`ID`, `G_ID`, `Name`, `Distance`, `Percentage`, `Score`) VALUES
(1, 6, 'archita', 350, 85, 244),
(2, 17, 'nilakshi', 65, 82, 71.8),
(3, 18, 'ashi', 215, 74, 158.6);

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

--
-- Dumping data for table `f_sc`
--

INSERT INTO `f_sc` (`ID`, `G_ID`, `Name`, `Distance`, `Percentage`, `Score`) VALUES
(1, 7, 'aaradhana', 169, 75, 131.4),
(2, 15, 'silviya', 117, 75, 100.2),
(3, 16, 'esha', 169, 79, 133),
(4, 24, 'haina', 23, 76, 44.2);

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

--
-- Dumping data for table `f_table`
--

INSERT INTO `f_table` (`F_ID`, `G_ID`, `Name`, `Distance`, `Percentage`, `Quota`) VALUES
(1, 5, 'himja', 70, 87, 0),
(2, 6, 'archita', 350, 85, 0),
(3, 7, 'aaradhana', 169, 75, 0),
(4, 8, 'krishna', 0, 95, 0),
(5, 14, 'mansi', 172, 81, 0),
(6, 15, 'silviya', 117, 75, 0),
(7, 16, 'esha', 169, 79, 0),
(8, 17, 'nilakshi', 65, 82, 0),
(9, 18, 'ashi', 215, 74, 0),
(10, 24, 'haina', 23, 76, 0);

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
(1, 'daksh', 'ahmedabad', '7990151443', 'male', '93', 'gen'),
(2, 'sameer', 'valsad', '9898419155', 'male', '85', 'obc'),
(3, 'yash', 'mehsana', '9429137247', 'male', '89', 'gen'),
(4, 'james', 'nadiad', '9898123987', 'male', '79', 'sc'),
(5, 'himja', 'anand', '7203034796', 'female', '87', 'gen'),
(6, 'archita', 'kutch', '9099766551', 'female', '85', 'obc'),
(7, 'aaradhana', 'bhavnagar', '9687627105', 'female', '75', 'sc'),
(8, 'krishna', 'gandhinagar', '8758276980', 'female', '95', 'gen'),
(9, 'aditya', 'vadodara', '8160413161', 'male', '84', 'gen'),
(10, 'sahil', 'rajkot', '8511216573', 'male', '80', 'obc'),
(11, 'spandan', 'surat', '9429463790', 'male', '78', 'obc'),
(12, 'khush', 'botad', '8866774466', 'male', '73', 'sc'),
(13, 'rushi', 'vadodara', '9227115656', 'male', '84', 'sc'),
(14, 'mansi', 'bharuch', '9727479981', 'female', '81', 'gen'),
(15, 'silviya', 'surendranagar', '9825089794', 'female', '75', 'sc'),
(16, 'esha', 'bhavnagar', '9773113432', 'female', '79', 'sc'),
(17, 'nilakshi', 'nadiad', '9427797722', 'female', '82', 'obc'),
(18, 'ashi', 'rajkot', '9812398765', 'female', '74', 'obc'),
(19, '', '', '', 'male', '', 'gen'),
(20, '', '', '', 'male', '', 'gen'),
(21, '', '', '', 'male', '', 'gen'),
(22, '', '', '', 'male', '', 'gen'),
(23, '', '', '', 'male', '', 'gen'),
(24, 'haina', 'ahmedabad', '9898786567', 'female', '76', 'sc'),
(25, '', '', '', 'male', '', 'gen'),
(26, 'mahir', 'bhav', '', 'male', '', 'gen'),
(27, 'mahir', 'bhavnagar', '9879363779', 'male', '85', 'gen'),
(28, 'dhaval', 'valsad', '987649873', 'male', '67', 'gen');

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
(1, 1, 'daksh', 23, 93, 51),
(2, 3, 'yash', 60, 89, 71.6),
(3, 9, 'aditya', 117, 84, 103.8),
(4, 19, '', 0, 0, 0),
(5, 19, '', 0, 0, 0),
(6, 19, '', 0, 0, 0),
(7, 19, '', 0, 0, 0),
(8, 19, '', 0, 0, 0),
(9, 19, '', 0, 0, 0),
(10, 19, 'mahir', 0, 0, 0),
(11, 27, 'mahir', 169, 85, 135.4),
(12, 28, 'dhaval', 350, 67, 236.8);

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

--
-- Dumping data for table `m_obc`
--

INSERT INTO `m_obc` (`ID`, `G_ID`, `Name`, `Distance`, `Percentage`, `Score`) VALUES
(1, 2, 'sameer', 350, 85, 244),
(2, 10, 'sahil', 215, 80, 161),
(3, 11, 'spandan', 226, 78, 166.8);

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

--
-- Dumping data for table `m_sc`
--

INSERT INTO `m_sc` (`ID`, `G_ID`, `Name`, `Distance`, `Percentage`, `Score`) VALUES
(1, 4, 'james', 65, 79, 70.6),
(2, 12, 'khush', 150, 73, 119.2),
(3, 13, 'rushi', 117, 84, 103.8);

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
(1, 1, 'daksh', 23, 93, 'gen'),
(2, 2, 'sameer', 350, 85, 'obc'),
(3, 3, 'yash', 60, 89, 'gen'),
(4, 4, 'james', 65, 79, 'sc'),
(5, 9, 'aditya', 117, 84, 'gen'),
(6, 10, 'sahil', 215, 80, 'obc'),
(7, 11, 'spandan', 226, 78, 'obc'),
(8, 12, 'khush', 150, 73, 'sc'),
(9, 13, 'rushi', 117, 84, 'sc'),
(10, 19, '', 0, 0, 'gen'),
(11, 19, '', 0, 0, 'gen'),
(12, 19, '', 0, 0, 'gen'),
(13, 19, '', 0, 0, 'gen'),
(14, 19, '', 0, 0, 'gen'),
(15, 19, '', 0, 0, 'gen'),
(16, 19, 'mahir', 0, 0, 'gen'),
(17, 27, 'mahir', 169, 85, 'gen'),
(18, 28, 'dhaval', 350, 67, 'gen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_distance`
--
ALTER TABLE `all_distance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `final_female`
--
ALTER TABLE `final_female`
  ADD PRIMARY KEY (`Rank`);

--
-- Indexes for table `final_male`
--
ALTER TABLE `final_male`
  ADD PRIMARY KEY (`Rank`);

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
-- AUTO_INCREMENT for table `all_distance`
--
ALTER TABLE `all_distance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `final_female`
--
ALTER TABLE `final_female`
  MODIFY `Rank` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `final_male`
--
ALTER TABLE `final_male`
  MODIFY `Rank` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `f_gen`
--
ALTER TABLE `f_gen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `f_obc`
--
ALTER TABLE `f_obc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `f_sc`
--
ALTER TABLE `f_sc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `f_table`
--
ALTER TABLE `f_table`
  MODIFY `F_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `merit`
--
ALTER TABLE `merit`
  MODIFY `G_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `m_gen`
--
ALTER TABLE `m_gen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `m_obc`
--
ALTER TABLE `m_obc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_sc`
--
ALTER TABLE `m_sc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_table`
--
ALTER TABLE `m_table`
  MODIFY `M_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
