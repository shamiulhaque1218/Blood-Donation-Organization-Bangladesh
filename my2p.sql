-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 06:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my2p`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `password` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
(123456, 123456),
(18388623, 1122);

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `location` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodbank`
--

INSERT INTO `bloodbank` (`id`, `name`, `phone`, `location`, `password`) VALUES
(2021100, 'Ky BloodBank', '01325252525', 'kaliganj-1720,Gazipur,Dhaka', 'ky2021999'),
(2021102, 'MK  BloodBank', '01623232323', 'uttara-11,road-10,Dhaka-1230', 'mk2021998'),
(2021103, 'AJ BloodBank', '01521212122', 'uttara-9,road-19,Dhaka-1230', 'aj2021997');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `feedback`) VALUES
(10032, 'Hi Team, Thank you so much for your help all the blood donors. My heart well thanks to mister UMA Mahesh(Vijayawada) and Chaithanya from Kalindindi. Very very thanks to friends2support organization. Regards, Veeranki Veera Arun Kumar'),
(100325, 'SIR! I want to thank you for your efficient website which helped us get hold of 3 donors in Kolkata. The blood needed was B-ve which is very rare. The blood transfusion was done in Army Eastern command hospital and all the 3 donors were very prompt in rea'),
(235145, 'It was very helpful. My friends father is from n ventilation and needed blood also. I came across two good souls who volunteered to help. Thank you so much');

-- --------------------------------------------------------

--
-- Table structure for table `doner`
--

CREATE TABLE `doner` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `bloodgroup` varchar(8) NOT NULL,
  `donate` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doner`
--

INSERT INTO `doner` (`id`, `name`, `username`, `dob`, `gender`, `bloodgroup`, `donate`, `phone`, `password`) VALUES
(1006, 'Shamiul Haque', 'shamiul', '01-02-2000', 'male', 'b+', '30-5-2021', '01624288258', 'shamiul101'),
(1007, 'karim islam', 'karim', '01-09-1998', 'male', 'b+', '02-03-2021', '01520202020', 'karim222'),
(1008, 'Rarim islam', 'rahim', '06-04-2002', 'male', 'a+', '06-06-2021', '01522222222', 'rarim1010');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `phone`, `email`, `password`) VALUES
(22222, 'Shamiul Haque', '225555555555', 'alvihaque333@gmail.com', '888888888'),
(202101, 'Abeda Memorial Hospital ', '01300000001', 'abeda@yahoo.com', 'abeda2001'),
(202102, 'Apollo Hospital', '01620000001', 'apollo@yahoo.com', 'apollo2002'),
(202103, 'Labaid Hospital', '01302020203', 'labaid@yahoo.com', 'labaid2003'),
(202104, 'Ibn Sina Hospital', '01402023030', 'ibnsina@yahoo.com', 'ibnsina202');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`) VALUES
(1001, 'shamiul haque  ', 'shamiul', 'shamiul121@yahoo.com', 'shamiul101'),
(1002, 'rizvi haque', 'rizvi', 'rizvi@gmail.com', 'rizvi102'),
(1003, 'Saif Khan', 'saif', 'saif123@yahoo.com', 'saif10031'),
(1004, ' Farabi Khan', 'farabi', 'farabi@gmail.com', 'farabi104');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `bloodgroup` varchar(100) NOT NULL,
  `gmail` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `dob`, `gender`, `profession`, `bloodgroup`, `gmail`, `city`, `address`, `mobile`) VALUES
(1002005, 'abu rahil', 'rahil', '123', '1997-01-01', 'male', 'BusinessMan', 'b+', 'rahil@yahoo.com', 'dhaka', 'Dhaka-1230', '01502020202'),
(1002006, 'shamiul haque', 'shamiul ', '121212', '1999-01-11', 'male', 'Student', 'B+', 'shamiul@yahoo.com', 'Dhaka', 'uttara-1230', '016242222222'),
(1102006, 'farjana', 'farjana', '123', '2021-08-27', 'female', 'Teacher', 'A+', 'farjana@gmail.com', 'Dhaka', 'Badda.Dhaka', '0162420202020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doner`
--
ALTER TABLE `doner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18388625;

--
-- AUTO_INCREMENT for table `bloodbank`
--
ALTER TABLE `bloodbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2021104;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183662928;

--
-- AUTO_INCREMENT for table `doner`
--
ALTER TABLE `doner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123565;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1836545;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2222223;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1102007;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
