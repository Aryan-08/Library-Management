-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2022 at 05:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Aryan Agarwal', 'aryan2002.558@gmail.com', 'admin', 'e6e061838856bf47e1de730719fb2609', '2021-12-04 09:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(15, 'JK Rowling', '2022-03-19 16:22:22', NULL),
(16, 'Rabindranath Tagore', '2022-03-19 16:22:32', NULL),
(17, 'Mark Twain', '2022-03-19 16:22:39', NULL),
(18, 'Charles Dicken', '2022-03-19 16:23:05', '2022-03-19 16:35:35'),
(19, 'Khushwant Singh', '2022-03-19 16:23:45', NULL),
(20, 'Chetan Bhagat', '2022-03-19 16:23:56', NULL),
(21, 'Ruskin Bond', '2022-03-19 16:24:03', NULL),
(22, 'HG Wells', '2022-03-19 16:24:27', NULL),
(23, 'Sylvia Nasar', '2022-03-19 16:24:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(4, 'Clean Code', 8, 14, 10001, 600, '2021-12-04 09:47:01', NULL),
(5, 'Sherlock Holmes', 16, 10, 10002, 800, '2021-12-04 09:47:47', NULL),
(6, 'Adventures of Tom Sawyer', 16, 11, 10003, 450, '2021-12-04 09:48:36', NULL),
(7, 'Harry Potter Series', 15, 12, 10004, 650, '2021-12-04 09:49:03', NULL),
(8, 'Churchill', 23, 22, 10001, 450, '2022-03-19 16:25:29', NULL),
(9, 'Gitanjali', 26, 16, 10002, 300, '2022-03-19 16:26:00', NULL),
(10, 'Adventures of Tom Sawyer', 20, 17, 10003, 340, '2022-03-19 16:26:33', NULL),
(11, 'Adventures of Huckleberry Fin', 19, 17, 10004, 299, '2022-03-19 16:26:55', NULL),
(12, 'Harry Potter Series', 19, 15, 10005, 550, '2022-03-19 16:27:32', NULL),
(13, 'Karma', 22, 19, 10007, 600, '2022-03-19 16:30:05', NULL),
(14, 'A tale of two citiies', 21, 18, 10006, 380, '2022-03-19 16:31:27', NULL),
(15, 'MK Gandhi', 23, 19, 10008, 150, '2022-03-19 16:32:11', NULL),
(16, 'Craft of Research', 22, 23, 10009, 400, '2022-03-19 16:32:56', NULL),
(17, 'Lucky Jim', 24, 18, 10010, 350, '2022-03-19 16:33:44', NULL),
(18, 'Five point someone', 25, 20, 10012, 410, '2022-03-19 16:34:33', NULL),
(19, 'Half Girlfriend', 19, 20, 10012, 250, '2022-03-19 16:34:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(19, 'Fantasy', 1, '2022-03-19 16:20:14', '2022-03-19 16:21:58'),
(20, 'Action', 1, '2022-03-19 16:20:24', '0000-00-00 00:00:00'),
(21, 'Mystery', 1, '2022-03-19 16:20:30', '0000-00-00 00:00:00'),
(22, 'Research', 1, '2022-03-19 16:20:41', '0000-00-00 00:00:00'),
(23, 'Biography', 1, '2022-03-19 16:21:15', '0000-00-00 00:00:00'),
(24, 'Humour', 0, '2022-03-19 16:21:22', '2022-03-19 16:35:19'),
(25, 'Adventure', 1, '2022-03-19 16:21:29', '0000-00-00 00:00:00'),
(26, 'Science', 1, '2022-03-19 16:22:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(10, 12, 'SID004', '2022-03-19 16:36:20', NULL, NULL, NULL),
(11, 13, 'SID001', '2022-03-19 16:36:54', NULL, NULL, NULL),
(12, 4, 'SID011', '2022-03-19 16:37:22', '2022-03-19 16:38:15', 1, 40),
(13, 16, 'SID003', '2022-03-19 16:38:50', NULL, NULL, NULL),
(14, 6, 'SID011', '2022-03-19 16:39:22', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID001', 'Aryan Agarwal', 'aryan@gmail.com', '8385875475', 'e2071528cf1aa685779d9898ccd9b308', 1, '2022-03-19 16:07:10', NULL),
(2, 'SID002', 'Akshat Khare', 'akshat@gmail.com', '913245631', '91d3585c4023ba351e6aa8d94289a3f0', 1, '2022-03-19 16:08:01', NULL),
(3, 'SID003', 'Amish Chopra', 'amish@gmail.com', '8385875476', 'df702733e488a4bb89c7b6fea085fa76', 1, '2022-03-19 16:10:43', NULL),
(4, 'SID004', 'Akhsay Koshy', 'akshay@gmail.com', '8385415476', '2de1b2d6a6738df78c5f9733853bd170', 1, '2022-03-19 16:10:43', NULL),
(5, 'SID005', 'Aditya Singh', 'aditya@gmail.com', '7815875476', '057829fa5a65fc1ace408f490be486ac', 1, '2022-03-19 16:10:43', NULL),
(6, 'SID006', 'Arthik Bhandary', 'arthik@gmail.com', '9992949213', 'e4accf25be5f4389daea2c4860789733', 1, '2022-03-19 16:12:05', NULL),
(7, 'SID007', 'Anish Hebbar', 'anish@gmail.com', '8992949213', '7f266025dc45f2e14b2415f475cce468', 1, '2022-03-19 16:16:30', NULL),
(8, 'SID008', 'Akshita Gupta', 'akshita@gmail.com', '7982949213', '366dce23a7badd01fe1b77fde71564be', 1, '2022-03-19 16:16:30', NULL),
(9, 'SID009', 'Aditi Vishwanath', 'aditi@gmail.com', '8943249213', '2b197829d548512d1d4b8bd5c773d6c3', 0, '2022-03-19 16:16:30', '2022-03-19 16:36:31'),
(10, 'SID010', 'Gaurav Pai', 'gaurav@gmail.com', '6943248813', '29be54a52396750258d886abc5417fda', 1, '2022-03-19 16:16:30', NULL),
(11, 'SID011', 'Nitesh Tiwari', 'nitesh@gmail.com', '7876264812', '388c6df5ce99c934d9c5f0bf29d758e4', 1, '2022-03-19 16:16:30', NULL),
(17, 'SID012', 'Sudhanshu Agarwal', 'sudhanshu@gmail.com', '8654751239', '8ffdf8341fadf13a8f498c39a6fb792e', 1, '2022-03-19 16:40:24', '2022-03-19 16:43:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
