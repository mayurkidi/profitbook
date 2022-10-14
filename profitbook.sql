-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 04:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profitbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `voucher_no` int(11) NOT NULL,
  `voucher_date` date NOT NULL,
  `party_name` varchar(30) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `naration` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `voucher_no` int(11) NOT NULL,
  `voucher_date` date NOT NULL,
  `party_name` varchar(30) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `naration` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jouneral`
--

CREATE TABLE `jouneral` (
  `voucher_no` int(11) NOT NULL,
  `voucher_date` date NOT NULL,
  `cr_party_name` varchar(30) NOT NULL,
  `dr_party_name` varchar(30) NOT NULL,
  `cr_amount` decimal(10,0) NOT NULL,
  `dcr_amount` decimal(10,0) NOT NULL,
  `naration` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE `ledger` (
  `party_name` varchar(30) NOT NULL,
  `party_adderess` varchar(100) NOT NULL,
  `gst_no` varchar(12) NOT NULL,
  `id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) DEFAULT 1,
  `voucher_no` int(11) NOT NULL,
  `voucher_date` date DEFAULT NULL,
  `party_name` varchar(40) DEFAULT NULL,
  `items` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `taxable_amount` decimal(10,0) DEFAULT NULL,
  `gst_per` decimal(10,0) DEFAULT NULL,
  `gst_amount` decimal(10,0) DEFAULT NULL,
  `total_amount` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) DEFAULT 1,
  `voucher_no` int(11) NOT NULL,
  `voucher_date` date DEFAULT NULL,
  `party_name` varchar(40) DEFAULT NULL,
  `items` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `taxable_amount` decimal(10,0) DEFAULT NULL,
  `gst_per` decimal(10,0) DEFAULT NULL,
  `gst_amount` decimal(10,0) DEFAULT NULL,
  `total_amount` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`voucher_no`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`voucher_no`);

--
-- Indexes for table `jouneral`
--
ALTER TABLE `jouneral`
  ADD PRIMARY KEY (`voucher_no`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`voucher_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
