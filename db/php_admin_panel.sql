-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 11:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_admin_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `trending`, `status`, `created_at`) VALUES
(2, 'anniversary  gift', 'this is anniversary gift                                                                                                ', 0, 1, '2024-03-05 06:30:44'),
(3, 'Birthday Gift', 'this is a bday gift', 1, 0, '2024-03-05 09:53:27'),
(4, 'dummy', '                dummy', 1, 1, '2024-03-05 09:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `long_description` longtext NOT NULL,
  `price` varchar(191) NOT NULL,
  `offerprice` varchar(191) NOT NULL,
  `tax` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=show,1=hide',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `small_description`, `long_description`, `price`, `offerprice`, `tax`, `quantity`, `image`, `status`, `created_at`) VALUES
(1, 3, 'Birthday Cake(Ice Cake)', 'Ice cake for birthday', 'ice cakes are generally used for birthdays, anniversary etc.', '800', '600', '18', 20, '1709706553.jpg', 0, '2024-03-05 10:56:21'),
(2, 3, 'Birthday Gift Card', 'Birthday Gift Card for Friends', 'Birthday Gift Card for Everyone', '400', '200', '18', 20, '1709706568.jpg', 0, '2024-03-05 11:07:09'),
(4, 3, 'mobile MI Note 7', 'mobile ', 'mobile for birthday gift', '14000', '12000', '18', 20, '1709706379.jpg', 0, '2024-03-06 03:51:40'),
(5, 2, 'Iphone 15 ', 'Iphone', 'Iphone for anniversary gift', '150000', '125000', '18', 20, '1709697480.jpg', 0, '2024-03-06 03:58:00'),
(6, 3, 'watch', 'watch', 'watch', '34000', '32000', '18', 20, '', 0, '2024-03-07 06:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `role_as`, `created_at`) VALUES
(3, 'Gayatri wagh', '9156301849', 'Gayatri@gmail.com', 'Gayatri@123', 1, NULL),
(4, 'Rahul', '7040554228', 'Rahul@gmail.com', '12345', 1, NULL),
(5, 'Archana', '9156301849a', 'Gayatri@gmaila.com', 'Gayatri@123', 0, NULL),
(8, 'priya', '8978564523', 'priya@gmail.com', '12345', 0, NULL),
(9, 'purva', '1234567890', 'purva@gmail.com', '12345', 0, NULL),
(10, 'kaatib', '7878654321', 'kaatib@gmail.com', '123456@78', 0, NULL),
(11, 'Surbhi Jadhav', '9373932594', 'surbhi@gmail.com', 'Surbhi@1234', 0, NULL),
(12, 'Arjun', '8978563427', 'arjun@gmail.com', '12345678@', 0, NULL),
(14, 'we', '9156301849', 'we@gmail.com', '12345678@', 0, NULL),
(15, 'ved sharma', '1234567890', 'ved@gmail.com', '12345678@', 0, NULL),
(16, 'raj', '8978564523', 'raj@gmail.com', '12345678@', 0, NULL),
(17, 'preeti', '9191919191', 'preeti@gmail.com', '12345678@', 0, NULL),
(18, 'om', '8978564523', 'om@gmail.com', '12345678@', 0, NULL),
(19, 'neha', '7040554228', 'neha@gmail.com', '12345678@', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
