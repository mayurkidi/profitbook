-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 06:32 AM
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
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `voucher_date` date NOT NULL,
  `party_name` varchar(30) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `narration` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `voucher_no`, `voucher_date`, `party_name`, `amount`, `narration`) VALUES
(1, 1, '2020-02-10', 'S.K Enterprise', '15000', ''),
(3, 2, '2021-02-10', 'Vrushali Ltd.', '7500', ''),
(4, 3, '2021-06-26', 'J.K Infotech', '63000', 'As per Voucher'),
(5, 4, '2021-05-11', 'Dipen Co. Pvt. Ltd.', '78620', ''),
(6, 5, '2022-05-11', 'J.K Infotech', '15450', '');

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `voucher_date` date NOT NULL,
  `party_name` varchar(30) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `narration` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`id`, `voucher_no`, `voucher_date`, `party_name`, `amount`, `narration`) VALUES
(3, 1, '2022-01-10', 'Jay Elctricals', '15750', ''),
(4, 2, '2022-05-02', 'S.K Enterprise', '15780', ''),
(5, 3, '2021-06-26', 'Dipen Co. Pvt. Ltd.', '50000', 'As per Voucher'),
(6, 4, '2021-11-10', 'J.K Infotech', '7800', '');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_name`) VALUES
('Laptop'),
('Mobile'),
('Tablet'),
('Fan'),
('Projector');

-- --------------------------------------------------------

--
-- Table structure for table `jouneral`
--

CREATE TABLE `jouneral` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `voucher_date` date NOT NULL,
  `cr_party_name` varchar(30) NOT NULL,
  `dr_party_name` varchar(30) NOT NULL,
  `cr_amount` decimal(10,0) NOT NULL,
  `dr_amount` decimal(10,0) NOT NULL,
  `narration` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jouneral`
--

INSERT INTO `jouneral` (`id`, `voucher_no`, `voucher_date`, `cr_party_name`, `dr_party_name`, `cr_amount`, `dr_amount`, `narration`) VALUES
(1, 1, '2021-02-10', 'S.K Enterprise', 'Vrushali Ltd.', '15000', '15000', 'Bill No.:01'),
(2, 2, '2021-02-10', 'Vrushali Ltd.', 'Jay Elctricals', '25000', '25000', 'Bill No.:05'),
(3, 3, '2021-05-10', 'Jay Elctricals', 'Jay Elctricals', '15800', '15800', 'As per Voucher');

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE `ledger` (
  `id` int(11) NOT NULL,
  `party_name` varchar(30) NOT NULL,
  `party_address` varchar(100) NOT NULL,
  `gst_no` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ledger`
--

INSERT INTO `ledger` (`id`, `party_name`, `party_address`, `gst_no`) VALUES
(1, 'S.K Enterprise', 'Jetpur', '24ABCD1501'),
(2, 'Vrushali Ltd', 'Rajkot', '24ABCP1105L1'),
(3, 'Jay Elctricals', 'Jamn', '18RTGSMK45'),
(4, 'Dipen Co. Pvt. Ltd', 'Bhavanagar', '24CPKLJ4568'),
(6, 'J.K Infotech', 'Maniyar', '04ABAPl1235');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
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
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `voucher_no`, `voucher_date`, `party_name`, `items`, `quantity`, `price`, `taxable_amount`, `gst_per`, `gst_amount`, `total_amount`) VALUES
(1, 1, '2021-01-10', 'S.K Enterprise', 'Mobile Phone', '1', '10000', '10000', '18', '1800', '11800'),
(2, 2, '2021-08-12', 'Vrushali Ltd.', 'Tablet', '2', '15000', '30000', '12', '3600', '33600'),
(3, 3, '2021-01-25', 'Jay Elctricals', 'Laptop', '3', '50000', '150000', '18', '27000', '177000'),
(4, 4, '2022-02-10', 'Dipen Co. Pvt. Ltd.', 'Mobile Phone', '5', '12000', '60000', '5', '3000', '63000'),
(5, 5, '2021-02-15', 'Jay Elctricals', 'Projector', '10', '2500', '25000', '12', '3000', '28000');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
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
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `voucher_no`, `voucher_date`, `party_name`, `items`, `quantity`, `price`, `taxable_amount`, `gst_per`, `gst_amount`, `total_amount`) VALUES
(1, 1, '2022-02-10', 'S.K Enterprise', 'Mobile Phone', '1', '15000', '15000', '18', '2700', '17700'),
(2, 2, '2021-01-10', 'Vrushali Ltd.', 'Laptop', '2', '36000', '72000', '12', '9500', '81500'),
(3, 3, '2021-02-26', 'Jay Elctricals', 'Projector', '5', '1200', '6000', '18', '780', '6780'),
(4, 4, '2021-06-15', 'J.K Infotech', 'A.C', '3', '30000', '90000', '18', '16200', '106200');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jouneral`
--
ALTER TABLE `jouneral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledger`
--
ALTER TABLE `ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jouneral`
--
ALTER TABLE `jouneral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ledger`
--
ALTER TABLE `ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
