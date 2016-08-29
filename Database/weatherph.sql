-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2016 at 01:55 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calem`
--
CREATE DATABASE IF NOT EXISTS `calem` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `calem`;

-- --------------------------------------------------------

--
-- Table structure for table `acl_group`
--

CREATE TABLE `acl_group` (
  `id` varchar(36) NOT NULL,
  `acl_group` varchar(30) DEFAULT NULL,
  `parent_group_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_group`
--

INSERT INTO `acl_group` (`id`, `acl_group`, `parent_group_id`, `note`, `modified_time`, `modified_id`, `created_time`, `created_id`) VALUES
('CUSTOM_SYSTEM', 'Custom system', NULL, 'Customization/configuration shared by all other groups', '2016-07-17 09:19:06', '1000000', '2016-07-17 09:19:06', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `id` varchar(36) NOT NULL,
  `asset_no` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `priority_id` varchar(36) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `template_id` varchar(36) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `location_id` varchar(36) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `weight_uom_id` varchar(36) DEFAULT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `owner_user_id` varchar(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `original_cost` double DEFAULT NULL,
  `manufacturer_id` varchar(36) DEFAULT NULL,
  `vendor_id` varchar(36) DEFAULT NULL,
  `upload_id` varchar(36) DEFAULT NULL,
  `warranty_start_date` date DEFAULT NULL,
  `warranty_end_date` date DEFAULT NULL,
  `maint_labor_hours` double DEFAULT NULL,
  `maint_labor_cost` double DEFAULT NULL,
  `maint_material_cost` double DEFAULT NULL,
  `maint_cost` double DEFAULT NULL,
  `rollup_cost` tinyint(1) DEFAULT NULL,
  `costcode_id` varchar(36) DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `depreciation_type_id` varchar(36) DEFAULT NULL,
  `depreciation_start` date DEFAULT NULL,
  `depreciation_time_id` varchar(36) DEFAULT NULL,
  `depreciation_rate` double DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_comment`
--

CREATE TABLE `asset_comment` (
  `id` varchar(36) NOT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_contract`
--

CREATE TABLE `asset_contract` (
  `id` varchar(36) NOT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `contract_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_depreciation`
--

CREATE TABLE `asset_depreciation` (
  `id` varchar(36) NOT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `depreciation_rate` double DEFAULT NULL,
  `start_value` double DEFAULT NULL,
  `end_value` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_downtime`
--

CREATE TABLE `asset_downtime` (
  `id` varchar(36) NOT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `downtime_type_id` varchar(36) DEFAULT NULL,
  `downtime_cause_id` varchar(36) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `shift_id` varchar(36) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `reported_by_id` varchar(36) DEFAULT NULL,
  `reported_time` datetime DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_meter`
--

CREATE TABLE `asset_meter` (
  `id` varchar(36) NOT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `meter_no` varchar(30) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `reading_uom_id` varchar(36) DEFAULT NULL,
  `reading` double DEFAULT NULL,
  `is_rollover` tinyint(1) DEFAULT NULL,
  `time_taken` datetime DEFAULT NULL,
  `rollup_type_id` varchar(36) DEFAULT NULL,
  `rollover_reading` double DEFAULT NULL,
  `rollover_count` int(11) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_part`
--

CREATE TABLE `asset_part` (
  `id` varchar(36) NOT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `uom_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_seq`
--

CREATE TABLE `asset_seq` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asset_seq`
--

INSERT INTO `asset_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `asset_service_log`
--

CREATE TABLE `asset_service_log` (
  `id` varchar(36) NOT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `from_status_id` varchar(36) DEFAULT NULL,
  `to_status_id` varchar(36) DEFAULT NULL,
  `from_location_id` varchar(36) DEFAULT NULL,
  `to_location_id` varchar(36) DEFAULT NULL,
  `from_parent_id` varchar(36) DEFAULT NULL,
  `to_parent_id` varchar(36) DEFAULT NULL,
  `from_owner_id` varchar(36) DEFAULT NULL,
  `to_owner_id` varchar(36) DEFAULT NULL,
  `changed_by_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_type`
--

CREATE TABLE `asset_type` (
  `id` varchar(36) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` varchar(36) NOT NULL,
  `title_id` varchar(36) DEFAULT NULL,
  `budget` varchar(30) DEFAULT NULL,
  `state_id` varchar(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `budgeted` double DEFAULT NULL,
  `app` double DEFAULT NULL,
  `accounting` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `budget_status_log`
--

CREATE TABLE `budget_status_log` (
  `id` varchar(36) NOT NULL,
  `budget_id` varchar(36) DEFAULT NULL,
  `to_state_id` varchar(36) DEFAULT NULL,
  `from_state_id` varchar(36) DEFAULT NULL,
  `changed_by_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `budget_title`
--

CREATE TABLE `budget_title` (
  `id` varchar(36) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` varchar(36) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `job_title` varchar(30) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `phone_work` varchar(24) DEFAULT NULL,
  `phone_home` varchar(16) DEFAULT NULL,
  `phone_mobile` varchar(16) DEFAULT NULL,
  `email_work` varchar(50) DEFAULT NULL,
  `email_other` varchar(50) DEFAULT NULL,
  `im1_type_id` varchar(36) DEFAULT NULL,
  `im1_id` varchar(30) DEFAULT NULL,
  `im2_type_id` varchar(36) DEFAULT NULL,
  `im2_id` varchar(30) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `street1` varchar(50) DEFAULT NULL,
  `street2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(16) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` varchar(36) NOT NULL,
  `contract` varchar(30) DEFAULT NULL,
  `vendor_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `owner_user_id` varchar(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract_contact`
--

CREATE TABLE `contract_contact` (
  `id` varchar(36) NOT NULL,
  `contract_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract_doc`
--

CREATE TABLE `contract_doc` (
  `id` varchar(36) NOT NULL,
  `contract_id` varchar(36) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `doc_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `costcode`
--

CREATE TABLE `costcode` (
  `id` varchar(36) NOT NULL,
  `costcode` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `rollup_cost` tinyint(1) DEFAULT NULL,
  `cost_type_id` varchar(36) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft`
--

CREATE TABLE `craft` (
  `id` varchar(36) NOT NULL,
  `craft` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `ot_factor` double DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dash_wo_orig_day`
--

CREATE TABLE `dash_wo_orig_day` (
  `id` varchar(36) NOT NULL,
  `counts` varchar(1000) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dash_wo_orig_md`
--

CREATE TABLE `dash_wo_orig_md` (
  `id` varchar(36) NOT NULL,
  `counts` varchar(1000) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `id` varchar(36) NOT NULL,
  `dept` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `manager_id` varchar(36) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_attachment`
--

CREATE TABLE `doc_attachment` (
  `id` varchar(36) NOT NULL,
  `doc_id` varchar(36) DEFAULT NULL,
  `upload_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_type`
--

CREATE TABLE `doc_type` (
  `id` varchar(36) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_upload`
--

CREATE TABLE `doc_upload` (
  `id` varchar(36) NOT NULL,
  `file_upload` varchar(250) DEFAULT NULL,
  `access_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` varchar(36) NOT NULL,
  `document` varchar(30) DEFAULT NULL,
  `content` text,
  `type_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `downtime_unit_cost`
--

CREATE TABLE `downtime_unit_cost` (
  `id` varchar(36) NOT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `downtime_type_id` varchar(36) DEFAULT NULL,
  `hourly_rate` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_audit`
--

CREATE TABLE `in_audit` (
  `id` varchar(36) NOT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `audit_user_id` varchar(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_comment`
--

CREATE TABLE `in_comment` (
  `id` varchar(36) NOT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_doc`
--

CREATE TABLE `in_doc` (
  `id` varchar(36) NOT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_location`
--

CREATE TABLE `in_location` (
  `id` varchar(36) NOT NULL,
  `location` varchar(30) DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_reserved`
--

CREATE TABLE `in_reserved` (
  `id` varchar(36) NOT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_seq`
--

CREATE TABLE `in_seq` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `in_seq`
--

INSERT INTO `in_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `in_stock`
--

CREATE TABLE `in_stock` (
  `id` varchar(36) NOT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `location_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_tran`
--

CREATE TABLE `in_tran` (
  `id` varchar(36) NOT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `location_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `costcode_id` varchar(36) DEFAULT NULL,
  `checkout_type_id` varchar(36) DEFAULT NULL,
  `checkout_to_id` varchar(36) DEFAULT NULL,
  `receive_type_id` varchar(36) DEFAULT NULL,
  `receive_from_id` varchar(36) DEFAULT NULL,
  `qty_available` double DEFAULT NULL,
  `qty_orig` double DEFAULT NULL,
  `orig_loc_id` varchar(36) DEFAULT NULL,
  `checkout_tran_id` varchar(36) DEFAULT NULL,
  `rent_duration` double DEFAULT NULL,
  `rent_rate` double DEFAULT NULL,
  `tran_total` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `tran_time` datetime DEFAULT NULL,
  `tran_user_id` varchar(36) DEFAULT NULL,
  `store_user_id` varchar(36) DEFAULT NULL,
  `voided` tinyint(1) DEFAULT NULL,
  `authorized_by_id` varchar(36) DEFAULT NULL,
  `void_by_id` varchar(36) DEFAULT NULL,
  `void_time` datetime DEFAULT NULL,
  `void_note` varchar(76) DEFAULT NULL,
  `new_tran_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_tran_worksheet`
--

CREATE TABLE `in_tran_worksheet` (
  `id` varchar(36) NOT NULL,
  `in_tran_id` varchar(36) DEFAULT NULL,
  `src_tran_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_type`
--

CREATE TABLE `in_type` (
  `id` varchar(36) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `in_vendor`
--

CREATE TABLE `in_vendor` (
  `id` varchar(36) NOT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `vendor_id` varchar(36) DEFAULT NULL,
  `vendor_part_no` varchar(30) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  `uom_id` varchar(36) DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `lead_time_days` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ins_citation`
--

CREATE TABLE `ins_citation` (
  `id` varchar(36) NOT NULL,
  `citation` varchar(50) DEFAULT NULL,
  `inspection_id` varchar(36) DEFAULT NULL,
  `severity_id` varchar(36) DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inspection`
--

CREATE TABLE `inspection` (
  `id` varchar(36) NOT NULL,
  `inspection` varchar(50) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `inspect_contact_id` varchar(36) DEFAULT NULL,
  `inspect_user_id` varchar(36) DEFAULT NULL,
  `owner_user_id` varchar(36) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` varchar(36) NOT NULL,
  `in_no` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `stock_type_id` varchar(36) DEFAULT NULL,
  `valuation_type_id` varchar(36) DEFAULT NULL,
  `abc_id` varchar(36) DEFAULT NULL,
  `abc_time` datetime DEFAULT NULL,
  `uom_id` varchar(36) DEFAULT NULL,
  `avg_unit_cost` double DEFAULT NULL,
  `rent_uom_id` varchar(36) DEFAULT NULL,
  `rent_rate` double DEFAULT NULL,
  `qty_in_stock` double DEFAULT NULL,
  `qty_on_order` double DEFAULT NULL,
  `qty_reserved` double DEFAULT NULL,
  `qty_to_order` double DEFAULT NULL,
  `order_gen_id` varchar(36) DEFAULT NULL,
  `order_type_id` varchar(36) DEFAULT NULL,
  `min_level` double DEFAULT NULL,
  `max_level` double DEFAULT NULL,
  `reorder_point` double DEFAULT NULL,
  `reorder_qty` double DEFAULT NULL,
  `owner_user_id` varchar(36) DEFAULT NULL,
  `notification_id` varchar(36) DEFAULT NULL,
  `costcode_id` varchar(36) DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` varchar(36) NOT NULL,
  `manufacturer` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meter_transaction`
--

CREATE TABLE `meter_transaction` (
  `id` varchar(36) NOT NULL,
  `meter_id` varchar(36) DEFAULT NULL,
  `read_by_id` varchar(36) DEFAULT NULL,
  `time_taken` datetime DEFAULT NULL,
  `reading` double DEFAULT NULL,
  `is_rollover` tinyint(1) DEFAULT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meter_type`
--

CREATE TABLE `meter_type` (
  `id` varchar(36) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE `pm` (
  `id` varchar(36) NOT NULL,
  `pm_no` varchar(30) DEFAULT NULL,
  `description` text,
  `status_id` varchar(36) DEFAULT NULL,
  `asset_type_id` varchar(36) DEFAULT NULL,
  `rcm_action_id` varchar(36) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `priority_id` varchar(36) DEFAULT NULL,
  `origin_id` varchar(36) DEFAULT NULL,
  `origin_user_id` varchar(36) DEFAULT NULL,
  `assigned_to_id` varchar(36) DEFAULT NULL,
  `assigned_team_id` varchar(36) DEFAULT NULL,
  `duration_hours` double DEFAULT NULL,
  `release_type_id` varchar(36) DEFAULT NULL,
  `schedule_type_id` varchar(36) DEFAULT NULL,
  `release_schedule` varchar(1024) DEFAULT NULL,
  `labor_hours` double DEFAULT NULL,
  `downtime_hours` double DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_asset`
--

CREATE TABLE `pm_asset` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `asset_id` varchar(36) DEFAULT NULL,
  `last_released` date DEFAULT NULL,
  `last_closed` date DEFAULT NULL,
  `next_due_date` date DEFAULT NULL,
  `release_count` int(11) DEFAULT NULL,
  `costcode_id` varchar(36) DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_audit`
--

CREATE TABLE `pm_audit` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `audit_user_id` varchar(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_comment`
--

CREATE TABLE `pm_comment` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_dependency`
--

CREATE TABLE `pm_dependency` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `child_pm_id` varchar(36) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `scope_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_doc`
--

CREATE TABLE `pm_doc` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `doc_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_downtime`
--

CREATE TABLE `pm_downtime` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_labor`
--

CREATE TABLE `pm_labor` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `craft_id` varchar(36) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `crew_size` int(11) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_meter`
--

CREATE TABLE `pm_meter` (
  `id` varchar(36) NOT NULL,
  `pm_asset_id` varchar(36) DEFAULT NULL,
  `meter_id` varchar(36) DEFAULT NULL,
  `release_by_meter` tinyint(1) DEFAULT NULL,
  `reading_released` double DEFAULT NULL,
  `rollover_count` int(11) DEFAULT NULL,
  `reading_interval` double DEFAULT NULL,
  `copy_to_wo` tinyint(1) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_part`
--

CREATE TABLE `pm_part` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_safety`
--

CREATE TABLE `pm_safety` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_season`
--

CREATE TABLE `pm_season` (
  `id` varchar(36) NOT NULL,
  `pm_asset_id` varchar(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_step`
--

CREATE TABLE `pm_step` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pm_tool`
--

CREATE TABLE `pm_tool` (
  `id` varchar(36) NOT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE `po` (
  `id` varchar(36) NOT NULL,
  `po_no` varchar(30) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `state_id` varchar(36) DEFAULT NULL,
  `buyer_id` varchar(36) DEFAULT NULL,
  `buyer_name` varchar(50) DEFAULT NULL,
  `buyer_phone` varchar(24) DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `next_user_id` varchar(36) DEFAULT NULL,
  `next_note` varchar(76) DEFAULT NULL,
  `vendor_id` varchar(36) DEFAULT NULL,
  `vendor_addr` varchar(512) DEFAULT NULL,
  `vendor_contact_id` varchar(36) DEFAULT NULL,
  `vendor_contact_phone` varchar(24) DEFAULT NULL,
  `payment_term_id` varchar(36) DEFAULT NULL,
  `shipping_type_id` varchar(36) DEFAULT NULL,
  `shipping_term_id` varchar(36) DEFAULT NULL,
  `shipping_addr_id` varchar(36) DEFAULT NULL,
  `billing_addr_id` varchar(36) DEFAULT NULL,
  `po_item_total` double DEFAULT NULL,
  `tax_rate_total` double DEFAULT NULL,
  `tax_charge` double DEFAULT NULL,
  `total_charge` double DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `po_address`
--

CREATE TABLE `po_address` (
  `id` varchar(36) NOT NULL,
  `address` varchar(512) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `po_address`
--

INSERT INTO `po_address` (`id`, `address`, `type_id`, `note`, `modified_time`, `modified_id`, `created_time`, `created_id`) VALUES
('po_billing_addr', 'TBO Corporation\n1101 Broadway Blvd.\nAustin, TX 78701\nAttn: Billing', 'pat_billing', NULL, '2016-07-17 09:19:06', '1000000', '2016-07-17 09:19:06', '1000000'),
('po_shipping_addr', 'TBO Corporation\n1101 Broadway Blvd.\nAustin, TX 78701\nAttn: Shipping', 'pat_shipping', NULL, '2016-07-17 09:19:06', '1000000', '2016-07-17 09:19:06', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `po_item`
--

CREATE TABLE `po_item` (
  `id` varchar(36) NOT NULL,
  `line_no` int(11) DEFAULT NULL,
  `po_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `vendor_part_no` varchar(50) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `qty_received` double DEFAULT NULL,
  `uom_id` varchar(36) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `line_cost` double DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `po_seq`
--

CREATE TABLE `po_seq` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `po_seq`
--

INSERT INTO `po_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `po_status_log`
--

CREATE TABLE `po_status_log` (
  `id` varchar(36) NOT NULL,
  `po_id` varchar(36) DEFAULT NULL,
  `from_status_id` varchar(36) DEFAULT NULL,
  `to_status_id` varchar(36) DEFAULT NULL,
  `from_state_id` varchar(36) DEFAULT NULL,
  `to_state_id` varchar(36) DEFAULT NULL,
  `changed_by_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` varchar(36) NOT NULL,
  `project_no` varchar(30) DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `priority_id` varchar(36) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `owner_user_id` varchar(36) DEFAULT NULL,
  `sched_start_time` datetime DEFAULT NULL,
  `sched_end_time` datetime DEFAULT NULL,
  `actual_start_time` datetime DEFAULT NULL,
  `actual_end_time` datetime DEFAULT NULL,
  `sched_hours` double DEFAULT NULL,
  `actual_hours` double DEFAULT NULL,
  `percent_done` double DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  `costcode_id` varchar(36) DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `id` varchar(36) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rcm_action`
--

CREATE TABLE `rcm_action` (
  `id` varchar(36) NOT NULL,
  `failure_id` varchar(36) DEFAULT NULL,
  `cause` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `cause_type_id` varchar(36) DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rcm_action_part`
--

CREATE TABLE `rcm_action_part` (
  `id` varchar(36) NOT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rcm_consequence`
--

CREATE TABLE `rcm_consequence` (
  `id` varchar(36) NOT NULL,
  `failure_id` varchar(36) DEFAULT NULL,
  `consequence` varchar(50) DEFAULT NULL,
  `type_id` varchar(36) DEFAULT NULL,
  `pm_policy_id` varchar(36) DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rcm_failure`
--

CREATE TABLE `rcm_failure` (
  `id` varchar(36) NOT NULL,
  `failure` varchar(50) DEFAULT NULL,
  `is_evident` tinyint(1) DEFAULT NULL,
  `function_id` varchar(36) DEFAULT NULL,
  `template_id` varchar(36) DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rcm_function`
--

CREATE TABLE `rcm_function` (
  `id` varchar(36) NOT NULL,
  `fn_name` varchar(50) DEFAULT NULL,
  `template_id` varchar(36) DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rcm_template`
--

CREATE TABLE `rcm_template` (
  `id` varchar(36) NOT NULL,
  `template` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recycle_bin`
--

CREATE TABLE `recycle_bin` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `table_name` varchar(30) DEFAULT NULL,
  `rec_id` varchar(36) DEFAULT NULL,
  `value_deleted` text,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `req_item`
--

CREATE TABLE `req_item` (
  `id` varchar(36) NOT NULL,
  `req_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `vendor_id` varchar(36) DEFAULT NULL,
  `vendor_part_no` varchar(50) DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `uom_id` varchar(36) DEFAULT NULL,
  `line_cost` double DEFAULT NULL,
  `po_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `req_seq`
--

CREATE TABLE `req_seq` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `req_seq`
--

INSERT INTO `req_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `req_status_log`
--

CREATE TABLE `req_status_log` (
  `id` varchar(36) NOT NULL,
  `req_id` varchar(36) DEFAULT NULL,
  `from_status_id` varchar(36) DEFAULT NULL,
  `to_status_id` varchar(36) DEFAULT NULL,
  `from_state_id` varchar(36) DEFAULT NULL,
  `to_state_id` varchar(36) DEFAULT NULL,
  `changed_by_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `requisition`
--

CREATE TABLE `requisition` (
  `id` varchar(36) NOT NULL,
  `req_no` varchar(30) DEFAULT NULL,
  `description` text,
  `priority_id` varchar(36) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `req_on_po_id` varchar(36) DEFAULT NULL,
  `source_id` varchar(36) DEFAULT NULL,
  `state_id` varchar(36) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `shipping_type_id` varchar(36) DEFAULT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `request_user_id` varchar(36) DEFAULT NULL,
  `request_time` datetime DEFAULT NULL,
  `req_total` double DEFAULT NULL,
  `costcode_id` varchar(36) DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  `next_user_id` varchar(36) DEFAULT NULL,
  `next_note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sched_shutdown`
--

CREATE TABLE `sched_shutdown` (
  `id` varchar(36) NOT NULL,
  `shutdown` varchar(30) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sched_user`
--

CREATE TABLE `sched_user` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `sched_date` date DEFAULT NULL,
  `shift_id` varchar(36) DEFAULT NULL,
  `total_hours` double DEFAULT NULL,
  `sched_hours` double DEFAULT NULL,
  `hours_sched` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scheduler_job`
--

CREATE TABLE `scheduler_job` (
  `id` varchar(36) NOT NULL,
  `task_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `start_seq` int(11) DEFAULT '0',
  `release_time` varchar(512) DEFAULT NULL,
  `release_day` varchar(1024) DEFAULT NULL,
  `time_due` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scheduler_job_log`
--

CREATE TABLE `scheduler_job_log` (
  `id` varchar(36) NOT NULL,
  `job_id` varchar(36) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `time_taken` double DEFAULT NULL,
  `results` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scheduler_task`
--

CREATE TABLE `scheduler_task` (
  `id` varchar(36) NOT NULL,
  `task` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `class_name` varchar(76) DEFAULT NULL,
  `class_path` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheduler_task`
--

INSERT INTO `scheduler_task` (`id`, `task`, `note`, `class_name`, `class_path`, `modified_time`, `modified_id`, `created_time`, `created_id`) VALUES
('wo_gen_001', 'WO Generation', 'Process to generate workorders in the background', 'CalemWoGenTask', 'server/modules/workorder/proc', '2016-07-17 09:19:06', '1000000', '2016-07-17 09:19:06', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `semaphore`
--

CREATE TABLE `semaphore` (
  `id` varchar(36) NOT NULL,
  `expire_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_code`
--

CREATE TABLE `tax_code` (
  `id` varchar(36) NOT NULL,
  `tax_code` varchar(30) DEFAULT NULL,
  `tax_rate_total` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `id` varchar(36) NOT NULL,
  `tax_code_id` varchar(36) DEFAULT NULL,
  `tax_rate` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` varchar(36) NOT NULL,
  `team` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` varchar(36) NOT NULL,
  `training` varchar(50) DEFAULT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  `instructor_user_id` varchar(36) DEFAULT NULL,
  `instructor_contact_id` varchar(36) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `certificate_id` varchar(36) DEFAULT NULL,
  `description` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `training_certificate`
--

CREATE TABLE `training_certificate` (
  `id` varchar(36) NOT NULL,
  `certificate` varchar(30) DEFAULT NULL,
  `description` text,
  `days_valid` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `training_course`
--

CREATE TABLE `training_course` (
  `id` varchar(36) NOT NULL,
  `course` varchar(30) DEFAULT NULL,
  `description` text,
  `type_id` varchar(36) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `training_course_type`
--

CREATE TABLE `training_course_type` (
  `id` varchar(36) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `training_user`
--

CREATE TABLE `training_user` (
  `id` varchar(36) NOT NULL,
  `training_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uom`
--

CREATE TABLE `uom` (
  `id` varchar(36) NOT NULL,
  `uom` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uom_map`
--

CREATE TABLE `uom_map` (
  `id` varchar(36) NOT NULL,
  `uom_src_id` varchar(36) DEFAULT NULL,
  `uom_dst_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `user_type_id` varchar(36) DEFAULT NULL,
  `emp_no` varchar(30) DEFAULT NULL,
  `contractor_id` varchar(36) DEFAULT NULL,
  `job_role_id` varchar(36) DEFAULT NULL,
  `login_allowed` tinyint(1) DEFAULT '1',
  `full_name` varchar(50) DEFAULT NULL,
  `job_title` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `acl_group_id` varchar(36) DEFAULT NULL,
  `admin_type_id` varchar(36) DEFAULT 'search_admin_none',
  `team_id` varchar(36) DEFAULT NULL,
  `supervisor_id` varchar(36) DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  `costcode_id` varchar(36) DEFAULT NULL,
  `req_approval_id` varchar(36) DEFAULT NULL,
  `po_approval_id` varchar(36) DEFAULT NULL,
  `craft_id` varchar(36) DEFAULT NULL,
  `phone_work` varchar(24) DEFAULT NULL,
  `phone_home` varchar(16) DEFAULT NULL,
  `phone_mobile` varchar(16) DEFAULT NULL,
  `email_work` varchar(50) DEFAULT NULL,
  `email_other` varchar(50) DEFAULT NULL,
  `im1_type_id` varchar(36) DEFAULT NULL,
  `im1_id` varchar(30) DEFAULT NULL,
  `im2_type_id` varchar(36) DEFAULT NULL,
  `im2_id` varchar(30) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `street1` varchar(50) DEFAULT NULL,
  `street2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(16) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status_id`, `password`, `user_type_id`, `emp_no`, `contractor_id`, `job_role_id`, `login_allowed`, `full_name`, `job_title`, `note`, `acl_group_id`, `admin_type_id`, `team_id`, `supervisor_id`, `dept_id`, `costcode_id`, `req_approval_id`, `po_approval_id`, `craft_id`, `phone_work`, `phone_home`, `phone_mobile`, `email_work`, `email_other`, `im1_type_id`, `im1_id`, `im2_type_id`, `im2_id`, `fax`, `company`, `street1`, `street2`, `city`, `state`, `zip`, `country`, `modified_time`, `modified_id`, `created_time`, `created_id`) VALUES
('1000000', 'admin', NULL, 'dc3565645d8002becb5fd7977aeef3e1', NULL, NULL, NULL, NULL, 1, 'Administrator', NULL, NULL, 'CUSTOM_SYSTEM', 'search_admin_none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-07-17 09:19:06', '1000000', '2016-07-17 09:19:06', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` varchar(36) NOT NULL,
  `vendor` varchar(30) DEFAULT NULL,
  `tax_code_id` varchar(36) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `owner_user_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_contact`
--

CREATE TABLE `vendor_contact` (
  `id` varchar(36) NOT NULL,
  `vendor_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `id` varchar(36) NOT NULL,
  `vid` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `props` varchar(2000) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`id`, `vid`, `note`, `props`, `modified_time`, `modified_id`, `created_time`, `created_id`) VALUES
('VERSION_ID', 'r2-1-0c', 'Calem Community Edition r2.1c', NULL, '2016-07-17 09:19:07', '1000000', '2016-07-17 09:19:07', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `version_upgrade_log`
--

CREATE TABLE `version_upgrade_log` (
  `id` varchar(36) NOT NULL,
  `vid` varchar(30) DEFAULT NULL,
  `ver_note` varchar(76) DEFAULT NULL,
  `prev_vid` varchar(30) DEFAULT NULL,
  `prev_ver_note` varchar(76) DEFAULT NULL,
  `prev_props` varchar(2000) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `upgrade_note` varchar(76) DEFAULT NULL,
  `results` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_attachment`
--

CREATE TABLE `wo_attachment` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `file_url` varchar(1000) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_comment`
--

CREATE TABLE `wo_comment` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `comment` text,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_doc`
--

CREATE TABLE `wo_doc` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `doc_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_generation`
--

CREATE TABLE `wo_generation` (
  `id` varchar(36) NOT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `wo_count` int(11) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_labor`
--

CREATE TABLE `wo_labor` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `time_type_id` varchar(36) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `shift_id` varchar(36) DEFAULT NULL,
  `craft_id` varchar(36) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `ot_hours` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `ot_factor` double DEFAULT NULL,
  `line_cost` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_meter`
--

CREATE TABLE `wo_meter` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `meter_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_part`
--

CREATE TABLE `wo_part` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `qty_used` double DEFAULT NULL,
  `line_cost` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_planned_downtime`
--

CREATE TABLE `wo_planned_downtime` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_planned_labor`
--

CREATE TABLE `wo_planned_labor` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `craft_id` varchar(36) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `crew_size` int(11) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_planned_part`
--

CREATE TABLE `wo_planned_part` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_planned_tool`
--

CREATE TABLE `wo_planned_tool` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_safety`
--

CREATE TABLE `wo_safety` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `description` text,
  `followed` tinyint(1) DEFAULT NULL,
  `followed_by_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_sched_labor`
--

CREATE TABLE `wo_sched_labor` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `shift_id` varchar(36) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_semaphore`
--

CREATE TABLE `wo_semaphore` (
  `id` varchar(36) NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_semaphore`
--

INSERT INTO `wo_semaphore` (`id`, `expiration`, `modified_time`, `modified_id`, `created_time`, `created_id`) VALUES
('wo_generation', NULL, '2016-07-17 09:19:06', '1000000', '2016-07-17 09:19:06', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `wo_seq`
--

CREATE TABLE `wo_seq` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_seq`
--

INSERT INTO `wo_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `wo_status_log`
--

CREATE TABLE `wo_status_log` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `to_status_id` varchar(36) DEFAULT NULL,
  `from_status_id` varchar(36) DEFAULT NULL,
  `changed_by_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_step`
--

CREATE TABLE `wo_step` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `description` text,
  `completed` tinyint(1) DEFAULT NULL,
  `completed_by_id` varchar(36) DEFAULT NULL,
  `completed_time` datetime DEFAULT NULL,
  `shift_id` varchar(36) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_tool`
--

CREATE TABLE `wo_tool` (
  `id` varchar(36) NOT NULL,
  `wo_id` varchar(36) DEFAULT NULL,
  `in_id` varchar(36) DEFAULT NULL,
  `qty_checkout` double DEFAULT NULL,
  `qty_return` double DEFAULT NULL,
  `line_cost` double DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `workorder`
--

CREATE TABLE `workorder` (
  `id` varchar(36) NOT NULL,
  `wo_no` varchar(30) DEFAULT NULL,
  `note` varchar(76) DEFAULT NULL,
  `description` text,
  `asset_id` varchar(36) DEFAULT NULL,
  `pm_id` varchar(36) DEFAULT NULL,
  `asset_note` varchar(76) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `priority_id` varchar(36) DEFAULT NULL,
  `resolution_id` varchar(36) DEFAULT NULL,
  `duplicate_wo_id` varchar(36) DEFAULT NULL,
  `rcm_action_id` varchar(36) DEFAULT NULL,
  `parent_wo_id` varchar(36) DEFAULT NULL,
  `origin_id` varchar(36) DEFAULT NULL,
  `rework_wo_id` varchar(36) DEFAULT NULL,
  `orig_contact_id` varchar(36) DEFAULT NULL,
  `orig_user_id` varchar(36) DEFAULT NULL,
  `orig_time` datetime DEFAULT NULL,
  `assigned_team_id` varchar(36) DEFAULT NULL,
  `assigned_to_id` varchar(36) DEFAULT NULL,
  `assigned_by_id` varchar(36) DEFAULT NULL,
  `assigned_time` datetime DEFAULT NULL,
  `time_needed` datetime DEFAULT NULL,
  `planned_start_time` datetime DEFAULT NULL,
  `sched_start_time` datetime DEFAULT NULL,
  `sched_start_shift_id` varchar(36) DEFAULT NULL,
  `actual_start_time` datetime DEFAULT NULL,
  `actual_start_shift_id` varchar(36) DEFAULT NULL,
  `planned_finish_time` datetime DEFAULT NULL,
  `sched_finish_time` datetime DEFAULT NULL,
  `sched_finish_shift_id` varchar(36) DEFAULT NULL,
  `actual_finish_time` datetime DEFAULT NULL,
  `actual_finish_shift_id` varchar(36) DEFAULT NULL,
  `costcode_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  `planned_labor_hours` double DEFAULT NULL,
  `sched_labor_hours` double DEFAULT NULL,
  `actual_labor_hours` double DEFAULT NULL,
  `labor_cost` double DEFAULT NULL,
  `material_cost` double DEFAULT NULL,
  `total_cost` double DEFAULT NULL,
  `planned_downtime_hours` double DEFAULT NULL,
  `actual_downtime_hours` double DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_id` varchar(36) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acl_group`
--
ALTER TABLE `acl_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_acl_group_acl_group` (`acl_group`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_asset_asset_no` (`asset_no`),
  ADD KEY `idx_asset_vendor` (`vendor_id`);

--
-- Indexes for table `asset_comment`
--
ALTER TABLE `asset_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_comment_asset_id` (`asset_id`),
  ADD KEY `idx_asset_comment_modified_time` (`modified_time`);

--
-- Indexes for table `asset_contract`
--
ALTER TABLE `asset_contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_contract_cr` (`contract_id`),
  ADD KEY `idx_asset_asset` (`asset_id`);

--
-- Indexes for table `asset_depreciation`
--
ALTER TABLE `asset_depreciation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_depreciation_start` (`start_date`),
  ADD KEY `idx_asset_depreciation` (`asset_id`);

--
-- Indexes for table `asset_downtime`
--
ALTER TABLE `asset_downtime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_downtime_start` (`start_time`),
  ADD KEY `idx_asset_downtime` (`asset_id`);

--
-- Indexes for table `asset_meter`
--
ALTER TABLE `asset_meter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_meter_meter_no` (`meter_no`),
  ADD KEY `idx_asset_meter` (`asset_id`);

--
-- Indexes for table `asset_part`
--
ALTER TABLE `asset_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_in` (`in_id`),
  ADD KEY `idx_asset_asset` (`asset_id`);

--
-- Indexes for table `asset_service_log`
--
ALTER TABLE `asset_service_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_status_log` (`asset_id`),
  ADD KEY `idx_asset_status_time` (`created_time`);

--
-- Indexes for table `asset_type`
--
ALTER TABLE `asset_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_asset_type` (`type`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_budget` (`budget`),
  ADD KEY `idx_budget_start_date` (`start_date`);

--
-- Indexes for table `budget_status_log`
--
ALTER TABLE `budget_status_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_budget_status_log` (`budget_id`),
  ADD KEY `idx_budget_status_log_time` (`created_time`);

--
-- Indexes for table `budget_title`
--
ALTER TABLE `budget_title`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_costcode_costcode` (`title`),
  ADD KEY `idx_budget_title_start_date` (`start_date`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_contact_full_name` (`full_name`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_contract` (`contract`),
  ADD KEY `idx_contract_vendor` (`vendor_id`);

--
-- Indexes for table `contract_contact`
--
ALTER TABLE `contract_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contract_contact_cr` (`contract_id`),
  ADD KEY `idx_contract_contact_c` (`contact_id`);

--
-- Indexes for table `contract_doc`
--
ALTER TABLE `contract_doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contract_doc_cr` (`contract_id`),
  ADD KEY `idx_contract_doc` (`doc_id`);

--
-- Indexes for table `costcode`
--
ALTER TABLE `costcode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_costcode_costcode` (`costcode`);

--
-- Indexes for table `craft`
--
ALTER TABLE `craft`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_craft_craft` (`craft`);

--
-- Indexes for table `dash_wo_orig_day`
--
ALTER TABLE `dash_wo_orig_day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dash_wo_orig_day` (`modified_time`);

--
-- Indexes for table `dash_wo_orig_md`
--
ALTER TABLE `dash_wo_orig_md`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dash_wo_orig_md` (`modified_time`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_dept_dept` (`dept`);

--
-- Indexes for table `doc_attachment`
--
ALTER TABLE `doc_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_attachment_doc` (`doc_id`),
  ADD KEY `idx_doc_attachment_attach` (`upload_id`);

--
-- Indexes for table `doc_type`
--
ALTER TABLE `doc_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_in_type` (`type`);

--
-- Indexes for table `doc_upload`
--
ALTER TABLE `doc_upload`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_doc_upload` (`file_upload`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_document` (`document`);

--
-- Indexes for table `downtime_unit_cost`
--
ALTER TABLE `downtime_unit_cost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_downtime_unit_cost` (`asset_id`);

--
-- Indexes for table `in_audit`
--
ALTER TABLE `in_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_in_audit` (`in_id`);

--
-- Indexes for table `in_comment`
--
ALTER TABLE `in_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_in_comment_in_id` (`in_id`),
  ADD KEY `idx_in_comment_modified_time` (`modified_time`);

--
-- Indexes for table `in_doc`
--
ALTER TABLE `in_doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_in_doc` (`in_id`);

--
-- Indexes for table `in_location`
--
ALTER TABLE `in_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_in_location` (`location`),
  ADD KEY `idx_in_location_parent` (`parent_id`);

--
-- Indexes for table `in_reserved`
--
ALTER TABLE `in_reserved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_in_reserved` (`in_id`),
  ADD KEY `idx_in_reserved_wo_id` (`wo_id`);

--
-- Indexes for table `in_stock`
--
ALTER TABLE `in_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_in_stock` (`in_id`),
  ADD KEY `idx_in_in_location` (`location_id`);

--
-- Indexes for table `in_tran`
--
ALTER TABLE `in_tran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_in_tran_in` (`in_id`,`type_id`,`voided`),
  ADD KEY `idx_in_tran_checkout_to_id` (`checkout_to_id`,`checkout_type_id`,`voided`),
  ADD KEY `idx_in_tran_receive_from` (`receive_from_id`,`receive_type_id`,`voided`),
  ADD KEY `idx_in_tran_tran_time` (`tran_time`);

--
-- Indexes for table `in_tran_worksheet`
--
ALTER TABLE `in_tran_worksheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_in_tran_worksheet` (`in_tran_id`);

--
-- Indexes for table `in_type`
--
ALTER TABLE `in_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_in_type` (`type`);

--
-- Indexes for table `in_vendor`
--
ALTER TABLE `in_vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_in_vendor` (`in_id`,`vendor_id`),
  ADD KEY `idx_in_vendor_vendor` (`vendor_id`);

--
-- Indexes for table `ins_citation`
--
ALTER TABLE `ins_citation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_citation_citation` (`citation`),
  ADD KEY `idx_citation_inspection` (`inspection_id`);

--
-- Indexes for table `inspection`
--
ALTER TABLE `inspection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_inspection` (`inspection`),
  ADD KEY `idx_inspection_start` (`start_time`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_inventory` (`in_no`),
  ADD KEY `idx_inventory_costcode` (`costcode_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_manufacturer` (`manufacturer`);

--
-- Indexes for table `meter_transaction`
--
ALTER TABLE `meter_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meter_transaction_time` (`time_taken`),
  ADD KEY `idx_meter_transaction` (`meter_id`),
  ADD KEY `idx_meter_transaction_wo` (`wo_id`);

--
-- Indexes for table `meter_type`
--
ALTER TABLE `meter_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_meter_type` (`type`);

--
-- Indexes for table `pm`
--
ALTER TABLE `pm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_pm_pm_no` (`pm_no`);

--
-- Indexes for table `pm_asset`
--
ALTER TABLE `pm_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_asset_pm` (`pm_id`),
  ADD KEY `idx_pm_asset_asset` (`asset_id`);

--
-- Indexes for table `pm_audit`
--
ALTER TABLE `pm_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_audit` (`pm_id`);

--
-- Indexes for table `pm_comment`
--
ALTER TABLE `pm_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_comment_pm_id` (`pm_id`),
  ADD KEY `idx_pm_comment_modified_time` (`modified_time`);

--
-- Indexes for table `pm_dependency`
--
ALTER TABLE `pm_dependency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_dependency_pm` (`pm_id`),
  ADD KEY `idx_pm_dependency_child` (`child_pm_id`);

--
-- Indexes for table `pm_doc`
--
ALTER TABLE `pm_doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_doc` (`pm_id`);

--
-- Indexes for table `pm_downtime`
--
ALTER TABLE `pm_downtime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_downtime_pm` (`pm_id`);

--
-- Indexes for table `pm_labor`
--
ALTER TABLE `pm_labor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_labor_pm` (`pm_id`),
  ADD KEY `idx_pm_labor_craft` (`craft_id`);

--
-- Indexes for table `pm_meter`
--
ALTER TABLE `pm_meter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_meter_asset` (`pm_asset_id`),
  ADD KEY `idx_pm_meter_meter` (`meter_id`);

--
-- Indexes for table `pm_part`
--
ALTER TABLE `pm_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_part_pm` (`pm_id`),
  ADD KEY `idx_pm_part_in` (`in_id`);

--
-- Indexes for table `pm_safety`
--
ALTER TABLE `pm_safety`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_safety` (`pm_id`);

--
-- Indexes for table `pm_season`
--
ALTER TABLE `pm_season`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_season` (`pm_asset_id`);

--
-- Indexes for table `pm_step`
--
ALTER TABLE `pm_step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_step` (`pm_id`);

--
-- Indexes for table `pm_tool`
--
ALTER TABLE `pm_tool`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pm_tool_pm` (`pm_id`),
  ADD KEY `idx_pm_tool_in` (`in_id`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_po` (`po_no`);

--
-- Indexes for table `po_address`
--
ALTER TABLE `po_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_item`
--
ALTER TABLE `po_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_po_items_po` (`po_id`),
  ADD KEY `idx_po_items_in` (`in_id`),
  ADD KEY `idx_po_items_line_no` (`line_no`);

--
-- Indexes for table `po_status_log`
--
ALTER TABLE `po_status_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_po_status_log` (`po_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_project_project_no` (`project_no`),
  ADD KEY `idx_project_start_time` (`sched_start_time`),
  ADD KEY `idx_project_parent_id` (`parent_id`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_project_type` (`type`);

--
-- Indexes for table `rcm_action`
--
ALTER TABLE `rcm_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rcm_action` (`failure_id`);

--
-- Indexes for table `rcm_action_part`
--
ALTER TABLE `rcm_action_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rcm_action_part` (`action_id`);

--
-- Indexes for table `rcm_consequence`
--
ALTER TABLE `rcm_consequence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rcm_consequence` (`failure_id`);

--
-- Indexes for table `rcm_failure`
--
ALTER TABLE `rcm_failure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_rcm_failure` (`failure`);

--
-- Indexes for table `rcm_function`
--
ALTER TABLE `rcm_function`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_rcm_function` (`fn_name`);

--
-- Indexes for table `rcm_template`
--
ALTER TABLE `rcm_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_rcm_template` (`template`);

--
-- Indexes for table `recycle_bin`
--
ALTER TABLE `recycle_bin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_recycle_bin_table_name` (`table_name`),
  ADD KEY `idx_recycle_bin_rec_id` (`rec_id`);

--
-- Indexes for table `req_item`
--
ALTER TABLE `req_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_requisition` (`req_id`,`in_id`),
  ADD KEY `idx_req_item_in` (`in_id`),
  ADD KEY `idx_req_item_vendor` (`vendor_id`),
  ADD KEY `idx_req_item_po` (`po_id`);

--
-- Indexes for table `req_status_log`
--
ALTER TABLE `req_status_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_req_status_log` (`req_id`),
  ADD KEY `idx_req_status_time` (`created_time`);

--
-- Indexes for table `requisition`
--
ALTER TABLE `requisition`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_requisition` (`req_no`),
  ADD KEY `uidx_req_due_date` (`due_date`);

--
-- Indexes for table `sched_shutdown`
--
ALTER TABLE `sched_shutdown`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_sched_shutdown` (`shutdown`),
  ADD KEY `idx_sched_shutdown_start` (`start_time`);

--
-- Indexes for table `sched_user`
--
ALTER TABLE `sched_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_sched_user` (`user_id`,`sched_date`,`shift_id`),
  ADD KEY `idx_sched_user_date` (`sched_date`);

--
-- Indexes for table `scheduler_job`
--
ALTER TABLE `scheduler_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduler_job_log`
--
ALTER TABLE `scheduler_job_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_scheduler_job_log` (`start_time`);

--
-- Indexes for table `scheduler_task`
--
ALTER TABLE `scheduler_task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_scheduler_task` (`task`);

--
-- Indexes for table `semaphore`
--
ALTER TABLE `semaphore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_code`
--
ALTER TABLE `tax_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_tax_code` (`tax_code`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tax_code` (`tax_code_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_team_team` (`team`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_training` (`training`),
  ADD KEY `idx_training_course` (`course_id`),
  ADD KEY `idx_training_start` (`start_time`);

--
-- Indexes for table `training_certificate`
--
ALTER TABLE `training_certificate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_certificate` (`certificate`);

--
-- Indexes for table `training_course`
--
ALTER TABLE `training_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_course` (`course`);

--
-- Indexes for table `training_course_type`
--
ALTER TABLE `training_course_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_course_type` (`type`);

--
-- Indexes for table `training_user`
--
ALTER TABLE `training_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_training_user_user` (`user_id`),
  ADD KEY `idx_training_user_training` (`training_id`);

--
-- Indexes for table `uom`
--
ALTER TABLE `uom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_uom` (`uom`);

--
-- Indexes for table `uom_map`
--
ALTER TABLE `uom_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uom_src` (`uom_src_id`),
  ADD KEY `idx_uom_dst` (`uom_dst_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_users_username` (`username`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_vendor` (`vendor`);

--
-- Indexes for table `vendor_contact`
--
ALTER TABLE `vendor_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vendor_contact_v` (`vendor_id`),
  ADD KEY `idx_vendor_contact_c` (`contact_id`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `version_upgrade_log`
--
ALTER TABLE `version_upgrade_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wo_attachment`
--
ALTER TABLE `wo_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_attachment_wo_id` (`wo_id`);

--
-- Indexes for table `wo_comment`
--
ALTER TABLE `wo_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_comment_wo_id` (`wo_id`),
  ADD KEY `idx_wo_comment_modified_time` (`modified_time`);

--
-- Indexes for table `wo_doc`
--
ALTER TABLE `wo_doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_doc_wo_id` (`wo_id`);

--
-- Indexes for table `wo_generation`
--
ALTER TABLE `wo_generation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wo_labor`
--
ALTER TABLE `wo_labor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_labor_wo_id` (`wo_id`),
  ADD KEY `idx_wo_labor_user_id` (`user_id`),
  ADD KEY `idx_wo_labor_start_time` (`start_time`);

--
-- Indexes for table `wo_meter`
--
ALTER TABLE `wo_meter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_meter_wo_id` (`wo_id`),
  ADD KEY `idx_wo_meter_meter_id` (`meter_id`);

--
-- Indexes for table `wo_part`
--
ALTER TABLE `wo_part`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_wo_part` (`wo_id`,`in_id`),
  ADD KEY `idx_wo_part_in_id` (`in_id`);

--
-- Indexes for table `wo_planned_downtime`
--
ALTER TABLE `wo_planned_downtime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_downtime_wo` (`wo_id`);

--
-- Indexes for table `wo_planned_labor`
--
ALTER TABLE `wo_planned_labor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_planned_labor_wo` (`wo_id`),
  ADD KEY `idx_wo_planned_labor_craft` (`craft_id`);

--
-- Indexes for table `wo_planned_part`
--
ALTER TABLE `wo_planned_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_planned_part_wo_id` (`wo_id`),
  ADD KEY `idx_wo_planned_part_in` (`in_id`);

--
-- Indexes for table `wo_planned_tool`
--
ALTER TABLE `wo_planned_tool`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_planned_tool_wo_id` (`wo_id`),
  ADD KEY `idx_wo_planned_tool_in` (`in_id`);

--
-- Indexes for table `wo_safety`
--
ALTER TABLE `wo_safety`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_safety_wo_id` (`wo_id`);

--
-- Indexes for table `wo_sched_labor`
--
ALTER TABLE `wo_sched_labor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sched_labor_wo_id` (`wo_id`),
  ADD KEY `idx_sched_labor_user_id` (`user_id`),
  ADD KEY `idx_sched_labor_start` (`start_time`);

--
-- Indexes for table `wo_semaphore`
--
ALTER TABLE `wo_semaphore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wo_status_log`
--
ALTER TABLE `wo_status_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_status_log_wo` (`wo_id`),
  ADD KEY `idx_wo_status_log_time` (`created_time`);

--
-- Indexes for table `wo_step`
--
ALTER TABLE `wo_step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wo_step_wo_id` (`wo_id`);

--
-- Indexes for table `wo_tool`
--
ALTER TABLE `wo_tool`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_wo_tool` (`wo_id`,`in_id`),
  ADD KEY `idx_wo_tool_in_id` (`in_id`);

--
-- Indexes for table `workorder`
--
ALTER TABLE `workorder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uidx_workorder_wo_no` (`wo_no`),
  ADD KEY `idx_wo_sched_completion_time` (`sched_finish_time`),
  ADD KEY `idx_wo_asset` (`asset_id`),
  ADD KEY `idx_wo_pm` (`pm_id`),
  ADD KEY `idx_wo_costcode` (`costcode_id`),
  ADD KEY `idx_wo_orig_user` (`orig_contact_id`),
  ADD KEY `idx_wo_assigned_to` (`assigned_to_id`),
  ADD KEY `idx_wo_assigned_team` (`assigned_team_id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"relation_lines":"true","snap_to_grid":"off","angular_direct":"direct"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'user', '{"quick_or_custom":"quick","what":"sql","allrows":"1","output_format":"sendit","filename_template":"@TABLE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"weatherph","table":"weatherstation"},{"db":"weatherph","table":"emails"},{"db":"weatherph","table":"admin"},{"db":"weatherph","table":"user"},{"db":"weatherph","table":"servicereport"},{"db":"weatherph","table":"migration"},{"db":"weatherph","table":"WeatherStation"},{"db":"weatherph","table":"ServiceReport"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-07-17 09:03:47', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `weatherph`
--
CREATE DATABASE IF NOT EXISTS `weatherph` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `weatherph`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MiddleName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Age` int(2) DEFAULT NULL,
  `Birth` date NOT NULL,
  `Address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `YearsInCompany` int(2) NOT NULL,
  `Department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `MiddleName`, `Age`, `Birth`, `Address`, `YearsInCompany`, `Department`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Adrian', 'Tobias', 'De Vera', 18, '1997-01-07', '4624 Iris St Sunvalley Subdivision Paranaque City', 5, 'IT Department', 'admin', '9OoSj7pkMv1G14whYWTHbeYEvQqKRh5m', '$2y$13$sbTSLs/XuW0lpNsQDEKO0eZvRFvLCAv7YTF5jwdHL7WBnoCIkexZe', NULL, 'adriantobias94@gmail.com', 10, 1471225910, 1471225910);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `receiver_name` varchar(50) NOT NULL,
  `receiver_email` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `attachment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `receiver_name`, `receiver_email`, `subject`, `content`, `attachment`) VALUES
(4, 'Alvin Tobias', 'alvin.tobias@student.apc.edu.ph', 'Hello', 'Hello', 'attachments/1472371694.sql'),
(5, 'Thelma', 'thelmatobias@yahoo.com', 'adriant', 'oanoianfo', 'attachments/1472372264.sql'),
(6, 'Joanna De Guzman', 'jddeguzman@student.apc.edu.ph', 'Helo', 'BH[anjknfdkla', 'attachments/1472372374.sql');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1470500875),
('m130524_201442_init', 1470500880);

-- --------------------------------------------------------

--
-- Table structure for table `servicereport`
--

CREATE TABLE `servicereport` (
  `id` int(11) NOT NULL,
  `DateStarted` date NOT NULL,
  `DateEnd` date NOT NULL,
  `Author` varchar(200) NOT NULL,
  `Manager` varchar(200) NOT NULL,
  `WeatherStation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Document` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicereport`
--

INSERT INTO `servicereport` (`id`, `DateStarted`, `DateEnd`, `Author`, `Manager`, `WeatherStation_id`, `user_id`, `Document`) VALUES
(2, '2016-08-01', '2016-08-06', 'Adrian Tobias', 'Alvin Tobias', 3, 4, 0),
(3, '2016-07-11', '2016-08-11', 'Adrian Tobias', 'Alvin Tobias', 2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MiddleName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Age` int(2) DEFAULT NULL,
  `Birth` date NOT NULL,
  `Address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `YearsInCompany` int(2) NOT NULL,
  `Department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `MiddleName`, `Age`, `Birth`, `Address`, `YearsInCompany`, `Department`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Adrian', 'Tobias', 'De Vera', 18, '1997-01-07', '4624 Iris St Sunvalley Subdivision Paranaque City', 5, 'IT Department', 'cooladrian', '9OoSj7pkMv1G14whYWTHbeYEvQqKRh5m', '$2y$13$sbTSLs/XuW0lpNsQDEKO0eZvRFvLCAv7YTF5jwdHL7WBnoCIkexZe', NULL, 'adriantobias94@gmail.com', 10, 1471225910, 1471225910),
(5, 'Thelma', 'Tobias', 'De Vera', 49, '1967-09-01', '4624 Iris Street Sunvalley Subdivision Paranaque City', 18, 'Maintenance and Operations', 'thelmatobias', 'hQNeFfZGIAj3H2GzN-TcE-Fp6f_ico1R', '$2y$13$nltaGnfCOI/vVeatG/tWbOiFXe603mR3M1qBMxl3LUgcfKDKpiKr2', NULL, 'thelmatobias@yahoo.com', 10, 1472371981, 1472371981);

-- --------------------------------------------------------

--
-- Table structure for table `weatherstation`
--

CREATE TABLE `weatherstation` (
  `id` int(11) NOT NULL,
  `WeatherStation_Model` varchar(200) NOT NULL,
  `WeatherStation_Name` varchar(200) NOT NULL,
  `WeatherStation_Location` varchar(300) NOT NULL,
  `WeatherStation_Status` enum('On','Off') NOT NULL,
  `WeatherStation_Gateway` varchar(45) NOT NULL,
  `WeatherStation_Logger` varchar(45) NOT NULL,
  `WeatherStation_Number` char(11) NOT NULL,
  `barcode_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weatherstation`
--

INSERT INTO `weatherstation` (`id`, `WeatherStation_Model`, `WeatherStation_Name`, `WeatherStation_Location`, `WeatherStation_Status`, `WeatherStation_Gateway`, `WeatherStation_Logger`, `WeatherStation_Number`, `barcode_no`) VALUES
(2, 'ISSET', 'Hover', 'Banaue, Cavite', 'On', 'GLOBE', 'STAFF', '09019392811', '1234567890123\r\n'),
(3, '1023-1392', 'Rover', 'Bicutan, Paranaque', 'Off', 'GLOBE', 'STAFF', '09382918231', ''),
(5, 'SEET', 'JLOJ', 'Bayaninan', 'On', 'GLOBE', 'HWELL', '09182938491', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `servicereport`
--
ALTER TABLE `servicereport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `WeatherStation_WeatherStation_ID` (`WeatherStation_id`),
  ADD KEY `user_ID` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `weatherstation`
--
ALTER TABLE `weatherstation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `servicereport`
--
ALTER TABLE `servicereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `weatherstation`
--
ALTER TABLE `weatherstation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `servicereport`
--
ALTER TABLE `servicereport`
  ADD CONSTRAINT `servicereport_ibfk_1` FOREIGN KEY (`WeatherStation_ID`) REFERENCES `weatherstation` (`id`),
  ADD CONSTRAINT `servicereport_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `user` (`id`);
--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordpress`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
