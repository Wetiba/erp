-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 09:04 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_log`
--

CREATE TABLE `access_log` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` varchar(10) DEFAULT 'Success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_log`
--

INSERT INTO `access_log` (`id`, `username`, `ip`, `time`, `status`) VALUES
(1, 'Admin', '2147483648', '2021-04-12 10:56:07.000000', 'Success'),
(2, 'David', '2147483648', '2021-04-12 10:56:54.000000', 'Success'),
(3, 'david', '::1', '2021-04-12 11:14:11.448404', 'Success'),
(4, 'david', '::1', '2021-04-12 11:14:11.509360', 'Success'),
(5, 'admin', '127.0.0.1', '2021-04-12 11:14:55.237764', 'Success'),
(6, 'admin', '127.0.0.1', '2021-04-12 11:14:55.320376', 'Success'),
(7, 'Kipsang', '127.0.0.1', '2021-04-12 11:16:04.886386', 'Failed'),
(8, 'admin', '127.0.0.1', '2021-04-12 11:16:23.467428', 'Success'),
(9, 'david', '::1', '2021-04-12 11:22:35.030944', 'Success'),
(10, 'Musa', '::1', '2021-04-12 11:24:49.299939', 'Failed'),
(11, 'david', '::1', '2021-04-12 11:32:04.453702', 'Success'),
(12, ' admin', '127.0.0.1', '2021-04-12 12:09:51.588789', 'Failed'),
(13, 'admin', '127.0.0.1', '2021-04-12 12:10:02.790234', 'Success'),
(14, 'david', '::1', '2021-04-12 12:10:46.360977', 'Success'),
(15, 'admin', '127.0.0.1', '2021-04-12 12:42:06.000705', 'Success'),
(16, 'david', '::1', '2021-04-12 12:44:35.169645', 'Success'),
(17, 'ADMIN', '::1', '2021-04-13 10:30:30.777547', 'Success'),
(18, 'silas', '127.0.0.1', '2021-04-13 10:32:32.026257', 'Failed'),
(19, 'Silas', '127.0.0.1', '2021-04-13 10:50:53.763144', 'Success'),
(20, 'Jane', '127.0.0.1', '2021-04-13 10:52:22.603250', 'Success'),
(21, 'Grace', '127.0.0.1', '2021-04-13 10:53:22.750812', 'Success'),
(22, 'admin', '::1', '2021-04-13 10:57:51.564672', 'Success'),
(23, 'test', '127.0.0.1', '2021-04-13 10:59:02.077720', 'Success'),
(24, 'Goliath', '127.0.0.1', '2021-04-13 11:00:34.576967', 'Failed'),
(25, 'admin', '127.0.0.1', '2021-04-13 11:34:30.680054', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT 0,
  `brand_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(1, 'Cameras', 1, 1),
(2, 'Laptop', 1, 1),
(3, 'Phones', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT 0,
  `categories_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(1, 'Nikon', 1, 1),
(2, 'HP', 1, 1),
(3, 'Iphone', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_place` int(11) NOT NULL,
  `gstn` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `sub_total`, `vat`, `total_amount`, `discount`, `grand_total`, `paid`, `due`, `payment_type`, `payment_status`, `payment_place`, `gstn`, `order_status`, `user_id`) VALUES
(1, '2021-04-12', 'Caleb k', '0785852585', '20000.00', '3600.00', '23600.00', '2000', '21600.00', '21600', '0.00', 2, 1, 1, '3600.00', 1, 11),
(2, '2021-04-12', 'Eric', '078528528', '20000.00', '3600.00', '23600.00', '1000', '22600.00', '22600', '0.00', 2, 1, 1, '3600.00', 1, 11),
(3, '2021-04-13', 'solomon', '12458795', '10000.00', '1800.00', '11800.00', '1000', '10800.00', '10800', '0.00', 2, 1, 1, '1800.00', 1, 12),
(4, '2021-04-13', 'Jane', '78585854', '15000.00', '2700.00', '17700.00', '0', '17700.00', '17700', '0.00', 2, 1, 1, '2700.00', 1, 14),
(5, '2021-04-13', 'June', '085285285', '40000.00', '7200.00', '47200.00', '1000', '46200.00', '46200', '0.00', 2, 1, 1, '7200.00', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_item_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`) VALUES
(1, 1, 4, '1', '20000', '20000.00', 1),
(2, 2, 4, '1', '20000', '20000.00', 1),
(3, 3, 1, '1', '10000', '10000.00', 1),
(4, 4, 2, '1', '15000', '15000.00', 1),
(5, 0, 3, '2', '20000', '40000.00', 1),
(6, 0, 3, '2', '20000', '40000.00', 1),
(7, 5, 3, '2', '20000', '40000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(1, 'Niko D3', '../assests/images/stock/78094712760741e9ab110e.jpg', 1, 1, '99', '10000', 1, 1),
(2, 'Nikon D35', '../assests/images/stock/31726945460741f05ab20d.jpg', 1, 1, '119', '15000', 1, 1),
(3, 'Hp 15', '../assests/images/stock/196913370060741f4c5ce18.jpg', 2, 2, '144', '20000', 1, 1),
(4, 'Iphone 8', '../assests/images/stock/199306478860741fa554a84.png', 3, 3, '198', '20000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'Admin', '21232f297a57a5a743894a0e4a801fc3', ''),
(11, 'David', '81dc9bdb52d04dc20036dbd8313ed055', 'david@gmail.com'),
(12, 'Silas', '81dc9bdb52d04dc20036dbd8313ed055', 'silas@gmail.com'),
(13, 'Grace', '81dc9bdb52d04dc20036dbd8313ed055', 'grace@gmail.com'),
(14, 'Jane', '81dc9bdb52d04dc20036dbd8313ed055', 'jane@gmail.com'),
(15, 'Test', '81dc9bdb52d04dc20036dbd8313ed055', 'test@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_log`
--
ALTER TABLE `access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_log`
--
ALTER TABLE `access_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
