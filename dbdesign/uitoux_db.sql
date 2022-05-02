-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2022 at 06:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uitoux_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billing_details`
--

CREATE TABLE `tbl_billing_details` (
  `billing_id` int(11) NOT NULL,
  `billing_num` varchar(150) NOT NULL,
  `cid` int(11) NOT NULL,
  `cname` varchar(150) NOT NULL,
  `cmailid` varchar(150) NOT NULL,
  `cphono` varchar(150) NOT NULL,
  `bstreet` varchar(150) NOT NULL,
  `baddressline-2` varchar(150) NOT NULL,
  `bcity` varchar(150) NOT NULL,
  `bstate` varchar(150) NOT NULL,
  `bcountry` varchar(150) NOT NULL,
  `bpincode` varchar(150) NOT NULL,
  `blandmark` varchar(150) NOT NULL,
  `billing_status` int(11) NOT NULL,
  `billing_visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `category_image` varchar(500) NOT NULL,
  `category_visible` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_controller`
--

CREATE TABLE `tbl_controller` (
  `cont_id` int(11) NOT NULL,
  `cont_folder_name` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `subtitle` varchar(300) NOT NULL,
  `cntr_action_name` varchar(300) NOT NULL,
  `cntr_name` varchar(300) NOT NULL,
  `user_type` int(11) NOT NULL COMMENT '1-admin 2-customer',
  `menu_visible` int(11) NOT NULL COMMENT '1-visible 0-nonvisivle',
  `cntr_visible` int(11) NOT NULL DEFAULT 1 COMMENT '1-visible 0-nonvisivle'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_details`
--

CREATE TABLE `tbl_customer_details` (
  `customer_tbl_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_purchase_product_id` int(11) NOT NULL,
  `customer_order_id` int(11) NOT NULL,
  `customer_purchase_quantity` int(11) NOT NULL,
  `customer_sale_status` int(11) NOT NULL,
  `customer_purchase_product_price` decimal(10,0) NOT NULL,
  `customer_coupan` varchar(150) NOT NULL,
  `coustmer_purchase_after_coupan_price` decimal(10,0) NOT NULL,
  `customer_shipping_id` int(11) NOT NULL,
  `customer_billing_id` int(11) NOT NULL,
  `customer_order_received_status` int(11) NOT NULL,
  `customer_orderd_date` datetime NOT NULL,
  `customer_purchase_date` datetime NOT NULL,
  `payment_gatway_id` int(11) NOT NULL,
  `customer_tbl_visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `inv_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `inv_num` varchar(150) NOT NULL,
  `inv_gen_date` datetime NOT NULL,
  `inv_visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(300) NOT NULL,
  `menu_link` varchar(300) NOT NULL,
  `menu_visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pay_id` varchar(150) NOT NULL,
  `pay_amnt` decimal(10,0) NOT NULL,
  `pay_status` int(11) NOT NULL,
  `pay_date` datetime NOT NULL,
  `pay_type` varchar(150) NOT NULL,
  `payment_note` varchar(150) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pid` int(11) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `product_regular_price` decimal(10,0) NOT NULL,
  `product_min_price` decimal(10,0) NOT NULL,
  `product_max_price` decimal(10,0) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `stock_status` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `total_sale` decimal(10,0) NOT NULL,
  `tax_status` varchar(300) NOT NULL,
  `product_type` varchar(300) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_vs_category`
--

CREATE TABLE `tbl_product_vs_category` (
  `pcid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `pc_visible` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_details`
--

CREATE TABLE `tbl_shipping_details` (
  `shipping_id` int(11) NOT NULL,
  `shipping_num` varchar(150) NOT NULL,
  `cid` int(11) NOT NULL,
  `cname` varchar(150) NOT NULL,
  `cmailid` varchar(150) NOT NULL,
  `cphono` varchar(150) NOT NULL,
  `sstreet` varchar(150) NOT NULL,
  `saddressline-2` varchar(150) NOT NULL,
  `scity` varchar(150) NOT NULL,
  `sstate` varchar(150) NOT NULL,
  `scountry` varchar(150) NOT NULL,
  `spincode` varchar(150) NOT NULL,
  `slandmark` varchar(150) NOT NULL,
  `shipping_status` int(11) NOT NULL,
  `shipping_visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_account`
--

CREATE TABLE `tbl_user_account` (
  `uid` int(11) NOT NULL,
  `uacc_id` int(11) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `uemail` varchar(150) NOT NULL,
  `upassword` varchar(150) NOT NULL,
  `created_date` date NOT NULL,
  `utype` int(11) NOT NULL COMMENT '1-admin 2-customer',
  `uvisible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_whislist`
--

CREATE TABLE `tbl_whislist` (
  `wid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `wstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_billing_details`
--
ALTER TABLE `tbl_billing_details`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_controller`
--
ALTER TABLE `tbl_controller`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `tbl_customer_details`
--
ALTER TABLE `tbl_customer_details`
  ADD PRIMARY KEY (`customer_tbl_id`,`customer_purchase_quantity`,`customer_order_id`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product_vs_category`
--
ALTER TABLE `tbl_product_vs_category`
  ADD PRIMARY KEY (`pcid`);

--
-- Indexes for table `tbl_shipping_details`
--
ALTER TABLE `tbl_shipping_details`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_whislist`
--
ALTER TABLE `tbl_whislist`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_billing_details`
--
ALTER TABLE `tbl_billing_details`
  MODIFY `billing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_controller`
--
ALTER TABLE `tbl_controller`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_details`
--
ALTER TABLE `tbl_customer_details`
  MODIFY `customer_tbl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_vs_category`
--
ALTER TABLE `tbl_product_vs_category`
  MODIFY `pcid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shipping_details`
--
ALTER TABLE `tbl_shipping_details`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_whislist`
--
ALTER TABLE `tbl_whislist`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
