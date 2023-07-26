-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2022 at 12:27 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakdeecafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakery`
--

CREATE TABLE `bakery` (
  `BakID` varchar(4) NOT NULL,
  `BakName` varchar(100) NOT NULL,
  `Price` varchar(3) NOT NULL,
  `BakPic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bakery`
--

INSERT INTO `bakery` (`BakID`, `BakName`, `Price`, `BakPic`) VALUES
('1', 'Bread', '25', 'bread'),
('2', 'Buttercake', '80', 'Butter_Cake');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BrnID` varchar(4) NOT NULL,
  `BrnName` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BrnID`, `BrnName`) VALUES
('1', 'CEO'),
('2', 'Manager'),
('3', 'Breader');

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `DrkID` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DrkName` varchar(100) NOT NULL,
  `Price` varchar(3) NOT NULL,
  `DrkPic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`DrkID`, `DrkName`, `Price`, `DrkPic`) VALUES
('1', 'Latte', '40', 'Latte'),
('2', 'Americano', '30', 'Americano');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmpID` varchar(5) NOT NULL,
  `EmpName` varchar(100) NOT NULL,
  `EmpLastN` varchar(100) NOT NULL,
  `EmpTel` varchar(10) NOT NULL,
  `EmpPosition` varchar(100) NOT NULL,
  `EmpSalary` varchar(5) NOT NULL,
  `BrnID` varchar(4) NOT NULL,
  `EmpPic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmpID`, `EmpName`, `EmpLastN`, `EmpTel`, `EmpPosition`, `EmpSalary`, `BrnID`, `EmpPic`) VALUES
('1', 'Tay', 'Korakoch', '0632296759', 'Accountant', '20000', '1', '1'),
('2', 'Tang', 'PakDee', '12345', 'Warehouse Manager', '15000', '1', '3'),
('3', 'Preme', 'LongName', '3412351235', 'Janitor', '20000', '2', '4');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `IngID` varchar(6) NOT NULL,
  `IngName` varchar(50) NOT NULL,
  `IngPrice` varchar(50) NOT NULL COMMENT 'PricePerUnit',
  `SupplierID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`IngID`, `IngName`, `IngPrice`, `SupplierID`) VALUES
('1', 'fdas', 'vczx', '4312'),
('2', 'Flour', '20', '2'),
('3', 'Egg', '20', '2'),
('4', 'Water', '10', '3'),
('5', 'Sugar ', '45', '1'),
('6', 'Coffee', '150', '3');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` varchar(5) NOT NULL,
  `SupplierName` varchar(150) NOT NULL,
  `SupplierAddress` varchar(150) NOT NULL,
  `SupplierPostAddress` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `SupplierAddress`, `SupplierPostAddress`) VALUES
('1', 'Home Depot', '123/12 ', '12112'),
('2', 'VCXZ', 't23rfdas', '4521'),
('3', 'hczxv', 'ytqetq', '695'),
('4312', 'fadscvzx', 't146151', '345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakery`
--
ALTER TABLE `bakery`
  ADD PRIMARY KEY (`BakID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BrnID`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`DrkID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`IngID`,`SupplierID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
