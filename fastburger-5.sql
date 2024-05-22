-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 22, 2024 at 07:19 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastburger`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_tel` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`customer_id`, `customer_name`, `customer_tel`) VALUES
(358, 'Karen', 'Send base'),
(569, 'Karen 2', 'Few law');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_cost` double DEFAULT NULL,
  `stock_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_cost`, `stock_limit`) VALUES
(598, 'Fries', 32, 162),
(761, 'Burger', 61, 605);

-- --------------------------------------------------------

--
-- Table structure for table `Menu_Type`
--

CREATE TABLE `Menu_Type` (
  `menu_type_id` int(11) NOT NULL,
  `fk_saver_id` int(11) DEFAULT NULL,
  `fk_regular_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Menu_Type`
--

INSERT INTO `Menu_Type` (`menu_type_id`, `fk_saver_id`, `fk_regular_id`) VALUES
(8, 471, 987),
(664, 134, 389);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL,
  `fk_payment_id` int(11) DEFAULT NULL,
  `fk_staff_id` int(11) DEFAULT NULL,
  `fk_menu_type_id` int(11) DEFAULT NULL,
  `fk_store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`order_id`, `order_date`, `order_time`, `fk_customer_id`, `fk_payment_id`, `fk_staff_id`, `fk_menu_type_id`, `fk_store_id`) VALUES
(1, '2022-11-04', '14:25:28', 358, 272, 307, 8, 202),
(2, '2020-11-04', '14:04:10', 569, 59, 757, 8, 873);

-- --------------------------------------------------------

--
-- Table structure for table `Order_Items`
--

CREATE TABLE `Order_Items` (
  `order_items_id` int(11) NOT NULL,
  `fk_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `fk_order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Order_Items`
--

INSERT INTO `Order_Items` (`order_items_id`, `fk_item_id`, `quantity`, `fk_order_id`) VALUES
(1, 598, 3, 1),
(2, 598, 9, 1),
(3, 598, 10, 2),
(4, 598, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`payment_id`, `payment_type`) VALUES
(59, 'Cash'),
(272, 'Card');

-- --------------------------------------------------------

--
-- Table structure for table `Regular_Menu`
--

CREATE TABLE `Regular_Menu` (
  `regular_menu_id` int(11) NOT NULL,
  `regular_menu_meal_type` varchar(255) DEFAULT NULL,
  `regular_menu_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Regular_Menu`
--

INSERT INTO `Regular_Menu` (`regular_menu_id`, `regular_menu_meal_type`, `regular_menu_type`) VALUES
(389, 'Tv west point Democrat. Opportunity everybody hour. Yet cover whose pass wait choose. Walk message win live billion college than. Stage brother Democrat wear live too', 'Customer religious news successful spring her degree. Left forget mother left someone. End easy time different former check'),
(987, 'Agency above organization. Include trial use member easy', 'Recognize necessary theory detail go. Mention yourself behind decide reality including. Station reduce share success wall nature. Guess design big he plant feeling tell east. Data staff mother left someone. End easy time different former check');

-- --------------------------------------------------------

--
-- Table structure for table `Saver_Menu`
--

CREATE TABLE `Saver_Menu` (
  `saver_menu_id` int(11) NOT NULL,
  `saver_menu_name` varchar(255) DEFAULT NULL,
  `saver_menu_item` varchar(255) DEFAULT NULL,
  `saver_menu_deal` varchar(255) DEFAULT NULL,
  `saver_menu_start` date DEFAULT NULL,
  `saver_menu_end` date DEFAULT NULL,
  `saver_menu_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Saver_Menu`
--

INSERT INTO `Saver_Menu` (`saver_menu_id`, `saver_menu_name`, `saver_menu_item`, `saver_menu_deal`, `saver_menu_start`, `saver_menu_end`, `saver_menu_type`) VALUES
(134, 'Saver Menu A', 'Item A', 'Deal 1', '2004-04-05', '2024-11-17', 'Type 1'),
(471, 'Saver Menu B', 'Item B', 'Deal 2', '1996-12-20', '2023-10-12', 'Type 2');

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `staff_id` int(11) NOT NULL,
  `staff_firstname` varchar(255) DEFAULT NULL,
  `staff_surname` varchar(255) DEFAULT NULL,
  `staff_role` varchar(255) DEFAULT NULL,
  `staff_tel` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`staff_id`, `staff_firstname`, `staff_surname`, `staff_role`, `staff_tel`) VALUES
(307, 'Name A', 'Surname A', 'Role A', 'Phone A'),
(757, 'Name B', 'Surname B', 'Role B', 'Phone B');

-- --------------------------------------------------------

--
-- Table structure for table `Store`
--

CREATE TABLE `Store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `store_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Store`
--

INSERT INTO `Store` (`store_id`, `store_name`, `store_location`) VALUES
(202, 'Store A', 'Location A'),
(873, 'Store B', 'Location B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `Menu_Type`
--
ALTER TABLE `Menu_Type`
  ADD PRIMARY KEY (`menu_type_id`),
  ADD KEY `fk_saver_id` (`fk_saver_id`),
  ADD KEY `fk_regular_id` (`fk_regular_id`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`),
  ADD KEY `fk_payment_id` (`fk_payment_id`),
  ADD KEY `fk_staff_id` (`fk_staff_id`),
  ADD KEY `fk_menu_type_id` (`fk_menu_type_id`),
  ADD KEY `fk_store_id` (`fk_store_id`);

--
-- Indexes for table `Order_Items`
--
ALTER TABLE `Order_Items`
  ADD PRIMARY KEY (`order_items_id`),
  ADD KEY `fk_order_id` (`fk_order_id`),
  ADD KEY `fk_item_id` (`fk_item_id`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `Regular_Menu`
--
ALTER TABLE `Regular_Menu`
  ADD PRIMARY KEY (`regular_menu_id`);

--
-- Indexes for table `Saver_Menu`
--
ALTER TABLE `Saver_Menu`
  ADD PRIMARY KEY (`saver_menu_id`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `Store`
--
ALTER TABLE `Store`
  ADD PRIMARY KEY (`store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=762;

--
-- AUTO_INCREMENT for table `Menu_Type`
--
ALTER TABLE `Menu_Type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Order_Items`
--
ALTER TABLE `Order_Items`
  MODIFY `order_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `Regular_Menu`
--
ALTER TABLE `Regular_Menu`
  MODIFY `regular_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- AUTO_INCREMENT for table `Saver_Menu`
--
ALTER TABLE `Saver_Menu`
  MODIFY `saver_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `Staff`
--
ALTER TABLE `Staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=758;

--
-- AUTO_INCREMENT for table `Store`
--
ALTER TABLE `Store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=874;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Menu_Type`
--
ALTER TABLE `Menu_Type`
  ADD CONSTRAINT `menu_type_ibfk_1` FOREIGN KEY (`fk_saver_id`) REFERENCES `Saver_Menu` (`saver_menu_id`),
  ADD CONSTRAINT `menu_type_ibfk_2` FOREIGN KEY (`fk_regular_id`) REFERENCES `Regular_Menu` (`regular_menu_id`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `Customer` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`fk_payment_id`) REFERENCES `Payment` (`payment_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`fk_staff_id`) REFERENCES `Staff` (`staff_id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`fk_menu_type_id`) REFERENCES `Menu_Type` (`menu_type_id`),
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`fk_store_id`) REFERENCES `Store` (`store_id`);

--
-- Constraints for table `Order_Items`
--
ALTER TABLE `Order_Items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`fk_order_id`) REFERENCES `Orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`fk_item_id`) REFERENCES `Item` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
