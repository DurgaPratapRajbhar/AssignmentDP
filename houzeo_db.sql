-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 06:31 PM
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
-- Database: `houzeo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_tasks`
--

CREATE TABLE `assigned_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `assignor_id` int(11) NOT NULL,
  `assignee_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `mls_id` int(10) UNSIGNED DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_qa_task` tinyint(1) NOT NULL DEFAULT 0 COMMENT '// check if it is qa task',
  `is_draft` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Check if it is a Review Draft Listing task',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_document_cta_button_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_instructions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_cta_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_cta_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_explain_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancelled_flag` tinyint(4) NOT NULL,
  `is_task_mandatory` tinyint(4) DEFAULT NULL,
  `is_acknowledged_mandatory` tinyint(4) DEFAULT NULL,
  `acknowledgement_statement` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `acknowledgement_timestamp` timestamp NULL DEFAULT NULL,
  `is_comment_mandatory` tinyint(4) DEFAULT NULL,
  `question_to_seller` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `rejection_reason` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_doc_mandatory` tinyint(4) DEFAULT NULL,
  `reminder_id` int(11) NOT NULL,
  `doc_path` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `master_doc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `master_id` int(11) DEFAULT NULL,
  `custom_task_flag` int(11) NOT NULL DEFAULT 0,
  `accept_comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment_timestamp` timestamp NULL DEFAULT NULL,
  `accept_comment_timestamp` timestamp NULL DEFAULT NULL,
  `reject_comment_timestamp` timestamp NULL DEFAULT NULL,
  `virtual_tour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_tasks`
--

INSERT INTO `assigned_tasks` (`id`, `assignor_id`, `assignee_id`, `house_id`, `mls_id`, `category`, `subcategory`, `is_qa_task`, `is_draft`, `title`, `description`, `task_description`, `description_document_cta_button_label`, `remember_instructions`, `primary_cta_label`, `secondary_cta_label`, `image_link`, `image_caption`, `video_link`, `video_caption`, `sale_price`, `task_explain_doc`, `status`, `cancelled_flag`, `is_task_mandatory`, `is_acknowledged_mandatory`, `acknowledgement_statement`, `acknowledgement_timestamp`, `is_comment_mandatory`, `question_to_seller`, `comment`, `rejection_reason`, `is_doc_mandatory`, `reminder_id`, `doc_path`, `master_doc_type`, `master_id`, `custom_task_flag`, `accept_comment`, `created_at`, `updated_at`, `comment_timestamp`, `accept_comment_timestamp`, `reject_comment_timestamp`, `virtual_tour`) VALUES
(1, 30, 1, 1, NULL, 1, NULL, 0, 0, 'Houzeo Relationship Agreement & Disclosures', 'Takes 3 mins to complete. Let\'s start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 03:37:40', '2018-11-07 03:44:57', NULL, NULL, NULL, NULL),
(2, 31, 2, 2, NULL, 3, NULL, 0, 0, 'Federal Lead Paint Disclosure', 'Takes 5 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 03:37:40', '2018-11-07 03:45:44', NULL, NULL, NULL, NULL),
(3, 31, 2, 2, NULL, 3, NULL, 0, 0, 'NC - Residential Property and Owners Association Disclosure', 'Takes approximately 30 minutes to complete. Let\'s Start', 'Your Listing Agent requires certain docs like the Listing Agreement, Agency Disclosure, and Property Details Input Forms. The sooner you complete these, the quicker your listing will be online.', 'Launch Now', 'Use your Houzeo listing and data from Zillow, Redfin, and your tax records to fill this form quicker*Leave the fields you don\'t know the answer to blank. The agent will follow-up if they need additional info from you*The more you can fill, the better. It\'ll reduce back and forth and get your listing live faster*If there are multiple parties listed on the title, each one needs to sign these documents.', 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 03:37:40', '2018-11-07 03:48:56', NULL, NULL, NULL, NULL),
(4, 31, 2, 3, NULL, 3, NULL, 0, 0, 'NC - Mineral and Oil & Gas Rights Mandatory Disclosure', 'Takes approximately 10 minutes to complete. Let\'s Start', 'Your Listing Agent requires certain docs like the Listing Agreement, Agency Disclosure, and Property Details Input Forms. The sooner you complete these, the quicker your listing will be online.', 'Launch Now', 'Use your Houzeo listing and data from Zillow, Redfin, and your tax records to fill this form quicker*Leave the fields you don\'t know the answer to blank. The agent will follow-up if they need additional info from you*The more you can fill, the better. It\'ll reduce back and forth and get your listing live faster*If there are multiple parties listed on the title, each one needs to sign these documents.', 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 03:37:40', '2018-11-07 03:49:25', NULL, NULL, NULL, NULL),
(5, 32, 3, 4, NULL, 2, NULL, 0, 0, 'Share via Facebook', 'Takes 1 min to complete. Let\'s start', NULL, 'Share on Facebook', NULL, 'Mark as Complete', 'Save for Later', NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 03:49:25', '2018-11-07 12:51:02', NULL, NULL, NULL, NULL),
(6, 32, 3, 4, NULL, 2, NULL, 0, 0, 'Share via Twitter', 'Takes 1 min to complete. Let\'s start', NULL, 'Share on Twitter', NULL, 'Mark as Complete', 'Save for Later', NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 03:49:25', '2018-11-07 13:18:06', NULL, NULL, NULL, NULL),
(7, 33, 3, 4, NULL, 1, NULL, 0, 0, 'Houzeo Relationship Agreement & Disclosures', 'Takes 3 mins to complete. Let\'s start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:43:24', '2018-11-07 10:44:23', NULL, NULL, NULL, NULL),
(8, 33, 3, 4, NULL, 1, NULL, 0, 0, 'Listing Agreement', 'Takes 3 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:43:24', '2018-11-07 10:44:33', NULL, NULL, NULL, NULL),
(9, 33, 3, 4, NULL, 1, NULL, 0, 0, 'Agency Disclosure', 'Takes 3 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:43:24', '2018-11-07 10:44:42', NULL, NULL, NULL, NULL),
(10, 33, 3, 5, NULL, 1, NULL, 0, 0, 'MLS Data Input Single Family Home', 'Takes 30 minutes to complete. Let’s start', NULL, 'Launch Now', 'Use your Houzeo listing and data from Zillow, Redfin, and your tax records to fill this form quicker*Leave the fields you don\'t know the answer to blank. The agent will follow-up if they need additional info from you*The more you can fill, the better. It\'ll reduce back and forth and get your listing live faster*If there are multiple parties listed on the title, each one needs to sign these documents.', 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:43:24', '2018-11-07 10:44:53', NULL, NULL, NULL, NULL),
(11, 33, 3, 5, NULL, 1, NULL, 0, 0, 'North Carolina Required Property Sketch', 'Takes between 5 mins to 1 hour to complete.', 'Please measure your home and draft it on a sheet of paper or if you have a copy of your appraisal, attach the measurement page. Here\'s a link to show you how to measure, calculate and sketch your square footage', 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:43:24', '2018-11-07 10:45:02', NULL, NULL, NULL, NULL),
(12, 31, 3, 5, NULL, 3, NULL, 0, 0, 'Federal Lead Paint Disclosure', 'Takes 5 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:43:24', '2018-11-07 10:45:12', NULL, NULL, NULL, NULL),
(13, 31, 1, 1, NULL, 3, NULL, 0, 0, 'NC - Residential Property and Owners Association Disclosure', 'Takes approximately 30 minutes to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:43:24', '2018-11-07 10:45:21', NULL, NULL, NULL, NULL),
(14, 31, 7, 10, NULL, 3, NULL, 0, 0, 'NC - Mineral and Oil & Gas Rights Mandatory Disclosure', 'Takes approximately 10 minutes to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:43:24', '2018-11-07 10:45:30', NULL, NULL, NULL, NULL),
(15, 34, 8, 12, NULL, 2, NULL, 0, 0, 'Share via Facebook', 'Takes 1 min to complete. Let\'s start', NULL, 'Share on Facebook', NULL, 'Mark as Complete', 'Save for Later', NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:45:30', '2018-11-07 10:45:30', NULL, NULL, NULL, NULL),
(16, 34, 9, 13, NULL, 2, NULL, 0, 0, 'Share via Twitter', 'Takes 1 min to complete. Let\'s start', NULL, 'Share on Twitter', NULL, 'Mark as Complete', 'Save for Later', NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2018-11-07 10:45:30', '2018-11-07 10:45:30', NULL, NULL, NULL, NULL),
(17, 35, 8, 12, 0, 1, NULL, 0, 0, 'Houzeo Relationship Agreement & Disclosures', 'Takes 3 mins to complete. Let\'s start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-09 05:06:52', '2021-03-12 06:57:43', NULL, NULL, NULL, NULL),
(18, 35, 10, 15, 0, 3, NULL, 0, 0, 'Federal Lead Paint Disclosure', 'Takes 5 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-09 05:06:52', '2021-03-12 06:57:43', NULL, NULL, NULL, NULL),
(19, 34, 8, 12, 0, 2, NULL, 0, 0, 'Share via Facebook', 'Takes 1 min to complete. Let\'s start', NULL, 'Share on Facebook', NULL, 'Mark as Complete', 'Save for Later', NULL, NULL, NULL, NULL, NULL, NULL, '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2018-11-12 22:53:39', '2021-03-12 06:57:43', NULL, NULL, NULL, NULL),
(20, 34, 8, 12, 0, 2, NULL, 0, 0, 'Share via Twitter', 'Takes 1 min to complete. Let\'s start', NULL, 'Share on Twitter', NULL, 'Mark as Complete', 'Save for Later', NULL, NULL, NULL, NULL, NULL, NULL, '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2018-11-12 22:53:39', '2021-03-12 06:57:43', NULL, NULL, NULL, NULL),
(21, 33, 11, 16, NULL, 1, NULL, 0, 0, 'Houzeo Relationship Agreement & Disclosures', 'Takes 3 mins to complete. Let\'s start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-14 22:21:09', '2018-11-14 22:28:43', NULL, NULL, NULL, NULL),
(22, 31, 11, 16, NULL, 3, NULL, 0, 0, 'Federal Lead Paint Disclosure', 'Takes 5 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-14 22:21:09', '2018-11-14 22:33:26', NULL, NULL, NULL, NULL),
(23, 34, 11, 16, NULL, 2, NULL, 0, 0, 'Share via Facebook', 'Takes 1 min to complete. Let\'s start', NULL, 'Share on Facebook', NULL, 'Mark as Complete', 'Save for Later', NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2018-11-14 22:33:26', '2018-11-14 22:39:47', NULL, NULL, NULL, NULL),
(24, 34, 11, 16, NULL, 2, NULL, 0, 0, 'Share via Twitter', 'Takes 1 min to complete. Let\'s start', NULL, 'Share on Twitter', NULL, 'Mark as Complete', 'Save for Later', NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2018-11-14 22:33:26', '2018-11-14 22:38:58', NULL, NULL, NULL, NULL),
(25, 33, 11, 16, NULL, 1, NULL, 0, 0, 'Houzeo Relationship Agreement & Disclosures', 'Takes 3 mins to complete. Let\'s start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-16 09:29:03', '2018-12-31 13:09:02', NULL, NULL, NULL, NULL),
(26, 846, 568, 40, NULL, 3, NULL, 0, 0, 'Federal Lead Paint Disclosure', 'Takes 5 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-16 09:29:03', '2018-12-31 13:09:11', NULL, NULL, NULL, NULL),
(27, 295, 847, 41, NULL, 1, NULL, 0, 0, 'Houzeo Relationship Agreement & Disclosures', 'Takes 3 mins to complete. Let\'s start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-21 06:13:56', '2018-11-21 07:26:39', NULL, NULL, NULL, NULL),
(28, 295, 847, 31, NULL, 3, NULL, 0, 0, 'Federal Lead Paint Disclosure', 'Takes 5 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-21 06:13:56', '2018-11-21 06:13:56', NULL, NULL, NULL, NULL),
(29, 296, 568, 55, NULL, 1, NULL, 0, 0, 'Houzeo Relationship Agreement & Disclosures', 'Takes 3 mins to complete. Let\'s start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-26 14:03:25', '2018-12-14 15:47:23', NULL, NULL, NULL, NULL),
(30, 296, 568, 44, NULL, 1, NULL, 0, 0, 'Listing Agreement', 'Takes 3 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-26 14:03:25', '2018-12-14 15:47:42', NULL, NULL, NULL, NULL),
(31, 296, 568, 54, NULL, 1, NULL, 0, 0, 'Agency Disclosure', 'Takes 3 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-26 14:03:25', '2018-12-14 15:47:53', NULL, NULL, NULL, NULL),
(32, 296, 568, 53, NULL, 1, NULL, 0, 0, 'MLS Data Input Single Family Home', 'Takes 30 minutes to complete. Let’s start', NULL, 'Launch Now', 'Use your Houzeo listing and data from Zillow, Redfin, and your tax records to fill this form quicker*Leave the fields you don\'t know the answer to blank. The agent will follow-up if they need additional info from you*The more you can fill, the better. It\'ll reduce back and forth and get your listing live faster*If there are multiple parties listed on the title, each one needs to sign these documents.', 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-26 14:03:25', '2018-12-14 15:48:02', NULL, NULL, NULL, NULL),
(33, 296, 568, 52, NULL, 1, NULL, 0, 0, 'North Carolina Required Property Sketch', 'Takes between 5 mins to 1 hour to complete.', 'Please measure your home and draft it on a sheet of paper or if you have a copy of your appraisal, attach the measurement page. Here\'s a link to show you how to measure, calculate and sketch your square footage', 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-26 14:03:25', '2018-12-14 15:48:17', NULL, NULL, NULL, NULL),
(34, 296, 568, 52, NULL, 3, NULL, 0, 0, 'Federal Lead Paint Disclosure', 'Takes 5 mins to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-26 14:03:25', '2018-12-14 15:50:12', NULL, NULL, NULL, NULL),
(35, 296, 568, 51, NULL, 3, NULL, 0, 0, 'NC - Residential Property and Owners Association Disclosure', 'Takes approximately 30 minutes to complete. Let\'s Start', NULL, 'Launch Now', NULL, 'Mark as Complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, '2018-11-26 14:03:25', '2018-12-14 15:50:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_05_13_204130_property_images', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `house_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `img_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_caption` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `house_id`, `user_id`, `img_name`, `primary_image`, `image_caption`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1640797385.jpg', '1640797385.jpg', 'Image Caption 0', '2018-06-12 23:11:33', '2018-06-12 23:11:33'),
(2, 2, 2, '1640797385.jpg', '1640797385.jpg', 'Image Caption 1', '2017-08-02 00:54:20', '2017-08-02 00:54:20'),
(3, 3, 2, '1640797385.jpg', '1640797385.jpg', 'Image Caption 2', '2017-10-31 20:44:34', '2017-10-31 20:44:34'),
(4, 4, 3, '1640797385.jpg', '1640797385.jpg', 'Image Caption 3', '2017-11-11 01:55:36', '2017-11-11 01:55:36'),
(5, 5, 3, '1640797385.jpg', '1640797385.jpg', 'Image Caption 4', '2017-11-17 03:07:32', '2017-11-17 03:07:32'),
(6, 6, 3, '1640797385.jpg', '1640797385.jpg', 'Image Caption 5', '2017-11-29 19:36:58', '2017-11-29 19:36:58'),
(7, 7, 4, '1640797385.jpg', '1640797385.jpg', 'Image Caption 6', '2017-12-06 05:03:44', '2017-12-06 05:03:44'),
(8, 8, 5, '1640797385.jpg', '1640797385.jpg', 'Image Caption 7', '2017-12-09 02:56:57', '2017-12-09 02:56:57'),
(9, 9, 6, '1640797385.jpg', '1640797385.jpg', 'Image Caption 8', '2017-12-11 01:58:45', '2017-12-11 01:58:45'),
(10, 10, 7, '1640797385.jpg', '1640797385.jpg', 'Image Caption 9', '2017-12-11 11:01:05', '2017-12-11 11:01:05'),
(11, 11, 7, '1640797385.jpg', '1640797385.jpg', 'Image Caption 10', '2017-12-17 21:54:40', '2017-12-17 21:54:40'),
(12, 12, 8, '1640797385.jpg', '1640797385.jpg', 'Image Caption 11', '2017-12-17 22:32:43', '2017-12-17 22:32:43'),
(13, 13, 9, '1640797385.jpg', '1640797385.jpg', 'Image Caption 12', '2017-12-18 20:17:21', '2017-12-18 20:17:21'),
(14, 14, 1, '1640797385.jpg', '1640797385.jpg', 'Image Caption 13', '2017-12-19 23:46:03', '2017-12-19 23:46:03'),
(15, 15, 10, '1640797385.jpg', '1640797385.jpg', 'Image Caption 14', '2017-12-21 06:53:18', '2017-12-21 06:53:18'),
(16, 16, 11, '1640797385.jpg', '1640797385.jpg', 'Image Caption 15', '2017-12-27 19:33:30', '2017-12-27 19:33:30'),
(17, 17, 12, '1640797385.jpg', '1640797385.jpg', 'Image Caption 16', '2018-01-07 22:32:40', '2018-01-07 22:32:40'),
(18, 18, 13, '1640797385.jpg', '1640797385.jpg', 'Image Caption 17', '2018-01-10 02:12:23', '2018-01-10 02:12:23'),
(19, 19, 16, '1640797385.jpg', '1640797385.jpg', 'Image Caption 18', '2018-01-10 06:47:58', '2018-01-10 06:47:58'),
(20, 20, 18, '1640797385.jpg', '1640797385.jpg', 'Image Caption 19', '2018-01-10 06:51:11', '2018-01-10 06:51:11'),
(21, 21, 18, '1640797385.jpg', '1640797385.jpg', 'Image Caption 20', '2018-01-11 07:27:50', '2018-01-11 07:27:50'),
(22, 22, 10, '1640797385.jpg', '1640797385.jpg', 'Image Caption 21', '2018-01-12 22:38:58', '2018-01-12 22:38:58'),
(23, 23, 1, '1640797385.jpg', '1640797385.jpg', 'Image Caption 22', '2018-01-17 03:25:30', '2018-01-17 03:25:30'),
(24, 24, 3, '1640797385.jpg', '1640797385.jpg', 'Image Caption 23', '2018-01-21 10:10:41', '2018-01-21 10:10:41'),
(25, 25, 19, '1640797385.jpg', '1640797385.jpg', 'Image Caption 24', '2018-01-24 09:37:42', '2018-01-24 09:37:42'),
(26, 26, 20, '1640797385.jpg', '1640797385.jpg', 'Image Caption 25', '2018-01-26 05:25:50', '2018-01-26 05:25:50'),
(27, 27, 21, '1640797385.jpg', '1640797385.jpg', 'Image Caption 26', '2018-02-12 03:24:25', '2018-02-12 03:24:25'),
(28, 28, 22, '1640797385.jpg', '1640797385.jpg', 'Image Caption 27', '2018-02-12 04:42:07', '2018-02-12 04:42:07'),
(29, 29, 22, '1640797385.jpg', '1640797385.jpg', 'Image Caption 28', '2018-02-13 09:23:11', '2018-02-13 09:23:11'),
(30, 30, 23, '1640797385.jpg', '1640797385.jpg', 'Image Caption 29', '2018-02-21 07:07:57', '2018-02-21 07:07:57'),
(31, 31, 24, '1640797385.jpg', '1640797385.jpg', 'Image Caption 30', '2018-02-22 09:30:15', '2018-02-22 09:30:15'),
(32, 32, 25, '1640797385.jpg', '1640797385.jpg', 'Image Caption 31', '2018-02-24 22:47:03', '2018-02-24 22:47:03'),
(33, 33, 26, '1640797385.jpg', '1640797385.jpg', 'Image Caption 32', '2018-02-25 03:28:14', '2018-02-25 03:28:14'),
(34, 34, 26, '1640797385.jpg', '1640797385.jpg', 'Image Caption 33', '2018-02-25 03:34:20', '2018-02-25 03:34:20'),
(35, 35, 27, '1640797385.jpg', '1640797385.jpg', 'Image Caption 34', '2018-02-25 03:35:08', '2018-02-25 03:35:08'),
(36, 36, 27, '1640797385.jpg', '1640797385.jpg', 'Image Caption 35', '2018-02-25 03:53:23', '2018-02-25 03:53:23'),
(37, 37, 27, '1640797385.jpg', '1640797385.jpg', 'Image Caption 36', '2018-02-27 03:02:13', '2018-02-27 03:02:13'),
(38, 38, 27, '1640797385.jpg', '1640797385.jpg', 'Image Caption 37', '2018-02-27 03:05:48', '2018-02-27 03:05:48'),
(39, 39, 28, '1640797385.jpg', '1640797385.jpg', 'Image Caption 38', '2018-03-03 21:06:56', '2018-03-03 21:06:56'),
(40, 41, 28, '1640797385.jpg', '1640797385.jpg', 'Image Caption 39', '2018-03-03 21:54:42', '2018-03-03 21:54:42'),
(41, 42, 28, '1640797385.jpg', '1640797385.jpg', 'Image Caption 40', '2018-03-09 16:18:53', '2018-03-09 16:18:53'),
(42, 43, 28, '1640797385.jpg', '1640797385.jpg', 'Image Caption 41', '2018-03-12 22:56:35', '2018-03-12 22:56:35'),
(43, 44, 28, '1640797385.jpg', '1640797385.jpg', 'Image Caption 42', '2018-03-17 21:20:59', '2018-03-17 21:20:59'),
(44, 45, 28, '1640797385.jpg', '1640797385.jpg', 'Image Caption 43', '2018-03-19 01:51:38', '2018-03-19 01:51:38'),
(45, 46, 29, '1640797385.jpg', '1640797385.jpg', 'Image Caption 44', '2018-03-20 08:54:58', '2018-03-20 08:54:58'),
(46, 47, 30, '1640797385.jpg', '1640797385.jpg', 'Image Caption 45', '2018-03-24 19:59:36', '2018-03-24 19:59:36'),
(47, 48, 30, '1640797385.jpg', '1640797385.jpg', 'Image Caption 46', '2018-03-24 21:42:18', '2018-03-24 21:42:18'),
(48, 49, 31, '1640797385.jpg', '1640797385.jpg', 'Image Caption 47', '2018-03-24 23:16:12', '2018-03-24 23:16:12'),
(49, 50, 32, '1640797385.jpg', '1640797385.jpg', 'Image Caption 48', '2018-03-27 11:29:46', '2018-03-27 11:29:46'),
(50, 51, 33, '1640797385.jpg', '1640797385.jpg', 'Image Caption 49', '2018-03-28 09:19:56', '2018-03-28 09:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `property_info`
--

CREATE TABLE `property_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `house_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title_held_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listing_status` int(11) NOT NULL DEFAULT 0,
  `settlement_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `built_in` int(11) DEFAULT NULL,
  `home_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bedrooms` int(11) DEFAULT NULL,
  `bathrooms` double(8,2) DEFAULT NULL,
  `finished_area` double(8,2) DEFAULT NULL,
  `stories` int(11) DEFAULT NULL,
  `lot_size` double(8,2) DEFAULT NULL,
  `lot_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basement_area` double(8,2) DEFAULT NULL,
  `architectural_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoa_fees` decimal(8,2) DEFAULT NULL,
  `commission` decimal(8,2) DEFAULT NULL,
  `pricing` decimal(11,2) DEFAULT NULL,
  `title_held` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parcel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deed_reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cooling_system` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heating_system` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heating_fuel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indoor_amenties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outdoor_amenties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_amenties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `mls_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `exterior_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rooftype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `types_of_rooms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flooring` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appliances` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `water` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driveway` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sewer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showing_inst` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_safe_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_safe_loc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales_restrictions` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `financing_terms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `mls_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `is_testing` int(11) NOT NULL DEFAULT 0,
  `zillow_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redfin_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realtor_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `virtual_tour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offer_shorten_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Shorten listing URL for Copy Agent Remarks',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_info`
--

INSERT INTO `property_info` (`id`, `house_id`, `user_id`, `title_held_name`, `listing_status`, `settlement_status`, `built_in`, `home_type`, `bedrooms`, `bathrooms`, `finished_area`, `stories`, `lot_size`, `lot_unit`, `basement_area`, `architectural_style`, `hoa_fees`, `commission`, `pricing`, `title_held`, `parcel_id`, `deed_reference`, `zoning`, `cooling_system`, `heating_system`, `heating_fuel`, `indoor_amenties`, `outdoor_amenties`, `building_amenties`, `description`, `mls_description`, `exterior_material`, `basement`, `rooftype`, `parking`, `view`, `types_of_rooms`, `flooring`, `appliances`, `water`, `driveway`, `sewer`, `showing_inst`, `key_safe_desc`, `key_safe_loc`, `sales_restrictions`, `financing_terms`, `status`, `mls_number`, `is_delete`, `is_featured`, `is_testing`, `zillow_link`, `redfin_link`, `realtor_link`, `virtual_tour`, `offer_shorten_link`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '', 3, NULL, 2002, 'Single Family', 5, 3.00, 4102.00, 2, 18252.00, 'sq.ft.', 0.00, 'Bungalow', '0.00', '3.00', '749000.00', 'Trust', '', '', '', 'Central', 'Forced Air', 'Gas', 'Cable ready, Ceiling fans, Double pane/storm windows, Fire place, Security system, Vaulted ceiling', 'Balcony/patio, Fenced yard, Garden, Lawn,Sprinkler system', 'None', 'Coming soon...  Fantastic home located in a distinctive EDH community close to Hwy 50 for easy commute. No HOA. Newly remodeled. New paint inside and out. New floors throughout. Open floor plan with extra large family entertaining space. Updated kitchen, bathrooms, laundry room, all with new Quartz slab countertops. Gourmet kitchen has stainless appliances and a large island and eating area. Huge master with walk-in closet and plenty of space for a master retreat.  Formal living room and dining room. Fireplace in family room.  3 car garage, and 2 large bonus rooms for office or game room.', '', 'Stucco', 'Unfinished', 'Tile', 'Garage - Attached, Garage - Detached, On-street', 'Mountain, Park', 'Breakfast nook, Recreation room, Dining room, Office, Walk-in closet, Family room, Laundry room, Master bath', 'Carpet, Laminate', 'Dishwasher, Microwave, Range/oven', '', '', '', '', '', '', 'None', 'Cash, Conventional Loan, FHA Loan, VA Loan, CalVet Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2020-10-20 22:09:19'),
(2, 2, 2, '', 5, NULL, 1965, 'Single Family', 2, 1.00, 704.00, 1, 12402.00, 'sq.ft.', 800.00, 'Bungalow', '0.00', '2.00', '59900.00', 'Individual', '', '', '', 'Wall', 'Forced Air', 'Gas', 'Cable ready, Double pane/storm windows', 'Fenced yard', 'None', 'a great buy   investors special  Cute house ,great established neighborhood. Currently rented ,,they will stay or move ..Good size back yard . with fence ..', '', 'Brick,Wood', 'No basement', 'Shingle', 'Off-street', 'Territorial', 'Family room', 'Carpet, Linoleum', 'Dishwasher, Range/oven, Refrigerator', '', '', '', '', '', '', 'None', 'Cash, Conventional Loan', 1, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2021-03-08 20:16:48'),
(3, 3, 2, '', 5, NULL, 2017, 'Single Family', 3, 2.00, 1240.00, 1, 4250.00, 'sq.ft.', 0.00, 'Craftsman', '0.00', '2.00', '139000.00', '', '', '', '', 'Central', 'Heatpump', 'Electric', 'Attic, Ceiling fans', 'Porch', 'None', '3 Bedroom, 2 Bath; Open Floor Plan; Granite Countertops in Kitchen and Bathrooms; Stainless Appliances; Walk-In Master Closet; Large Closets in Bedrooms 2 and 3; Tile in Bathrooms and Laundry; Front Porch with Stone accents;  Contact Blake or Joey at (704) 782-3105', 'Call Blake Troutman to discuss availability of showings and access to house.    -    (704) 782 -3105', 'Stone,Vinyl', 'No basement', 'Shingle', 'Off-street', 'None', 'Walk-in closet, Family room, Laundry room, Master bath', 'Carpet, Laminate, Tile', 'Dishwasher, Microwave, Range/oven, Freezer, Refrigerator', '', '', '', 'Call Owner', 'Combo-See Remarks', 'See Remarks', 'None', 'Cash, Conventional Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2021-01-18 11:09:10'),
(4, 4, 3, '', 2, NULL, 1970, 'Single Family', 3, 3.00, 1620.00, 1, 1932.00, 'sq.ft.', 200.00, 'Bungalow', '0.00', '3.00', '500000.00', 'Individual', '', '', '', 'Central', 'Baseboard', 'Coal', 'Attic', 'Balcony/patio', 'None', 'Very good  Very good  Very good  Very good  Very good  Very good  Very good  Very good  Very good  Very good  Very good', 'Very good Very good Very good Very good  Very good  Very good  Very good  Very good  Very good  Very good  Very good', 'Brick', 'Unfinished', 'Asphalt', 'Carport', 'City', 'Breakfast nook', 'Carpet', 'Dishwasher', '', '', '', 'Other', 'Multacc', 'Front Gate', 'Court Approval Required', 'Lease Option,Other', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2018-11-02 02:23:24'),
(5, 5, 3, '', 2, NULL, 2002, 'Single Family', 3, 4.00, 4028.00, 2, 25.00, 'ac.', 1968.00, 'Other', '0.00', '0.00', '675000.00', 'Multiple Individual', '', '', '', 'Central', 'Forced Air', 'Electric, Propane/Butane', 'Cable ready, Ceiling fans, Fire place,Security system, Skylights, Vaulted ceiling, Wired', 'Balcony/patio, Fenced yard, Lawn, Deck, Porch, Waterfront', 'None', 'Large home and beautiful property on the water! Its an outdoorsmens paradise. Lots of wildlife can be seen on the property at all times. Deer, turkey, and even bald eagles. The home is 4028 square feet plus over 600 square feet of open space, which creates a very open high-ceiling great room. There are a total of 4 bathrooms, three bedrooms. Secluded setting in the woods, waterfront on Mill Creek, covered front porch, and large back porch, 2 fireplaces, and a screened in porch located at the back of the house off the main bedroom. 2 car attached garage, with additional carport for parking and storage', 'Please call the owner to schedule. Showings by Appointment only. Alarm and Gate on property. always call owner', 'Wood', 'Semi-finished', 'Metal', 'Carport, Garage - Attached', 'Water', 'Walk-in closet, Family room, Laundry room, Master bath', 'Carpet, Hardwood', 'Dishwasher, Microwave, Range/oven, Freezer, Refrigerator, Washer, Dryer', '', '', '', 'Call Owner, Appointment Only, Alarm on Property', 'No Key Safe', 'No key Sage', 'None', 'Cash, Conventional Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2018-02-01 16:03:57'),
(6, 6, 3, '', 3, NULL, 2017, 'Single Family', 0, 0.00, 0.00, 0, 43560.00, 'sq.ft.', 0.00, 'Other', '0.00', '2.50', '59900.00', 'Individual', '', '', '', 'None', 'None', 'None', 'None', 'None', 'None', 'WONDERFUL 1+ACRE BUILDING SITE IN LAKE RIDGE! ONLY 30 MINUTES FROM DALLAS, FORT WORTH & D-FW AIRPORT. LOTS OF DINING & SHOPPING IN NEARBY CEDAR HILL. YOU CAN BUILD YOUR DREAM HOME. CLOSE TO SEVERAL PARKS, FISHING PONDS, LIGHTED BALL FIELDS, PLAYGROUNDS & JOGGING TRAILS. JUST MINUTES FROM THE STATE PARK & MARINA ON JOE POOL LAKE.', '1001 Sweeping Meadows LN. LOT 1300. \nClosing must be conducted at Lawyers Title 18111 Preston Rd Ste 150, Dallas, TX 75252. Closing agent (Analisa Fink). 972-248-1151', 'None', 'Unfinished', 'Other', 'Other', 'Mountain', 'None', 'None', 'None', '', '', '', 'Drive By Only', 'Other', 'No key Sage', 'None', 'Cash, Conventional Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2020-12-16 10:08:16'),
(7, 7, 4, '', 2, NULL, 1958, 'Single Family', 4, 2.00, 1140.00, 1, 7797.00, 'sq.ft.', 1140.00, 'Ranch / Rambler', '0.00', '3.00', '129900.00', 'Individual', '', '', '', 'Central', 'Forced Air', 'Gas', 'Attic, Cable ready, Ceiling fans, Double pane/storm windows, Mother-in-law suite/apartment', 'Balcony/patio, Fenced yard, Barbeque area, Lawn', 'None', 'This 4 bedroom, 2 full bath ranch with 1,140 sq ft and plenty of updates is the perfect home to just move right in.  This home includes a new roof. Fully remodeled kitchen, New vinyl energy efficient windows and doors, Large stamped patio, upgraded electrical panel, wiring and fixtures, New insulated garage door, and refinished hard wood floors.  All done in 2014. Fully finished basement with additional kitchen, water-proofed basement, new 90 plus2 stage furnace and AC with Aprilaire, and 2 storage sheds installed.  Completed in 2015.  Whole home spray-foamed insulated, attic blown in insulation, finished bathroom in basement, fenced in backyard, natural gas line outside for grill, and covered patio gazebo.  All completed in 2017.  \nThis home is a must see! \n\nShowings by appointment only.', 'Showings by appointment only.  Buyers Agent receives 3% commission from seller.  When showing, shoes are to be taken off when in home and agent must contact owner at least one hour before showing.  Agent must be present when showing home, and agents card is to be left on kitchen counter after showing is completed.  If there are any questions during the showing, feel free to contact owner.   To show home contact Matt (216-618-0927) Lock Box code 5692  \nPlease make sure door is locked and keys are returned when finished.', 'Brick, Vinyl', 'Finished', 'Asphalt', 'Garage - Attached', 'None', 'Recreation room, Dining room, Walk-in closet, Family room, Workshop, Laundry room', 'Laminate, Tile, Hardwood', 'Dishwasher, Microwave, Range/oven, Refrigerator', '', '', '', 'See Remarks, Call Owner, Appointment Only, Lock Box', 'Combo-See Remarks', 'Front Door', 'None', 'Cash, Conventional Loan, FHA Loan, VA Loan, CalVet Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2018-02-01 16:03:57'),
(8, 8, 5, '', 2, NULL, 2017, 'Single Family', 4, 2.00, 1600.00, 1, 5227.00, 'sq.ft.', 0.00, 'Ranch / Rambler', '0.00', '2.50', '259900.00', 'Individual', '', '', '', 'None', 'Forced Air', 'Gas', 'Skylights, Vaulted ceiling', 'Lawn', 'None', 'Beautiful New 4 bedroom 2 bathroom with option for another half bath\n\nHurry and you can pick your colors WOW!\n\nHome is new with 5 year warranty.\n\n$1266 mo\n3% down\n30 year\nFHA', 'Home is new build and old home is being removed. There is still time to pick out colors. Home has 5 year warranty from manufacturer.', 'Wood', 'Unfinished', 'Composition', 'Off-street', 'Mountain', 'Dining room, Walk-in closet, Family room, Pantry, Laundry room, Master bath, Mud room', 'Carpet, Laminate', 'Dishwasher, Microwave, Range/oven, Refrigerator', '', '', '', 'Appointment Only, Lock Box, Agent or Owner to be Present', 'Combo-See Remarks', 'Front Door', 'None', 'Cash, Conventional Loan, FHA Loan, VA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2018-02-01 16:03:57'),
(9, 9, 6, '', 5, NULL, 2018, 'Single Family', 4, 2.00, 1622.00, 1, 9375.00, 'sq.ft.', 0.00, 'Ranch/Rambler', '0.00', '0.00', '299900.00', 'Individual', '', '', '', 'None', 'Forced Air', 'Gas', 'Double pane/storm windows, Vaulted ceiling', 'None', 'Basketball court, Fitness center, Sports court, Tennis', 'Beautiful New 2018 4 bedroom 2 bathroom, open floor plan. If you hurry you can pick out your colors. Don\'t wait this property won\'t last', 'Beautiful New 2018 4 bedroom 2 bathroom, open floor plan. If you hurry you can pick out your colors. Don\'t wait this property won\'t last', 'Wood', 'No basement', 'Composition', 'Off-street', 'Mountain', 'Dining room, Walk-in closet, Pantry, Laundry room, Master bath, Mud room', 'Carpet, Laminate', 'Dishwasher, Microwave, Range/oven, Refrigerator', '', '', '', 'Appointment Only, Agent or Owner to be Present', 'No Key Safe', 'See Remarks', 'None', 'Cash,Conventional Loan,FHA Loan,VA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2020-10-24 13:54:32'),
(10, 10, 7, '', 5, NULL, 2002, 'Town House', 2, 2.00, 1632.00, 2, 0.00, 'sq.ft.', 0.00, 'Contemporary', '170.00', '3.00', '164500.00', 'Individual', '', '', '', 'Central', 'Forced Air', 'Gas', 'Cable ready, Ceiling fans, Double pane/storm windows, Fire place, Jetted tub, Wired', 'Barbeque area, Lawn,Sprinkler system', 'Near transportation, Storage', 'Huge, Beautiful two-story West Des Moines townhome (1632 SF) on a quiet street close to Jordan Creek Mall!  Open concept plan features 9’ ceilings, large kitchen including a center island and title floors, lots of cupboard and counter space, bar height seating that opens to dining area. Beautiful living space with 3-sided fire-place for entertaining and relaxing. Upstairs you will find bonus loft area that is perfect for an office, playroom or second living space.  The huge master suite has attached whirlpool bath, stand up shower and dual vanity.  Large master walk-in closet for her and side closet for him. Spacious second bedroom adjacent to loft. Convenient second floor laundry. Two car attached garage with overhead storage.  Close to Jordan Creek mall, grocery stores, restaurants and more!  This one-owner home has been well maintained. This home should be your next home, come and see!\n277 S 79th, #707 West Des Moines, Iowa 50266\nCall 515 971 6688 for a showing\n* Large living and dining area  \n* Full b', 'This property is For Sale By Owner.  Willing to work with agents. Front door has a lock box. Please call 515 971 6688 prior to entry.  Code is 7101', 'Vinyl', 'No basement', 'Asphalt', 'Garage - Attached', 'City', 'Breakfast nook, Dining room, Office,Walk-in closet, Family room, Pantry, Laundry room, Master bath', 'Carpet, Tile, Linoleum', 'Dishwasher, Microwave, Range/oven, Refrigerator, Washer, Dryer', '', '', '', 'Call Owner, Appointment Only, Lock Box, Agent or Owner to be Present', 'Combo-See Remarks', 'Front Door', 'None', 'Cash, Conventional Loan, FHA Loan, VA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2020-10-24 13:54:10'),
(11, 11, 7, '', 2, NULL, 2012, 'Single Family', 5, 3.00, 1865.00, 1, 14635.00, 'sq.ft.', 1750.00, 'Contemporary', '0.00', '2.50', '505000.00', 'Individual', '', '', '', 'Central', 'Heatpump', 'Electric', 'Cable ready,Ceiling fans,Fire place,Security system,Wet bar', 'Deck,Pond,Pool,Sprinkler system', 'None', 'Will work with buyer\'s agent.\nThis gorgeous 2012 Parade of Homes custom ranch home has been impeccably maintained, features over 3600 square feet of living space, and sits on a cul-de-sac prime lot in beautiful Cardwell Reserve. Kitchen has center island, granite, stainless steel appliances, custom cabinets, under counter lighting, and is open to the family room featuring a 10 ft. beamed ceiling and indoor/outdoor fireplace. The hardwood floors flow throughout the kitchen, dining and living areas. The large master bedroom has a double coffered ceiling. Enjoy the master bathroom with double sink vanity, walk-in tiled shower, and walk-in closet. The finished basement boasts a wet bar, a second fp, large rec room, storage room with built in shelving and work bench, along with a 9x9 storm shelter. Exclusive features include 10 foot ceilings with 8 foot doors (not just the front door), custom cabinets throughout, whole-house audio system, oversized 80 gal hot water heater, stone fire pit, underground sprinklers, ', 'Auto outside and inside door locks. Can leave key for front door. Have two small dogs, so would like to set up listings several hours in advance so I can come and get the dogs out of the home, but am very flexible.', 'Composition, Stone, Stucco', 'Finished', 'Composition', 'Garage - Attached', 'Park, Water', 'Recreation room, Walk-in closet, Family room, Workshop, Laundry room, Master bath, Mud room', 'Carpet, Tile, Hardwood', 'Dishwasher, Microwave, Refrigerator', '', '', '', 'See Remarks, Call Owner, Agent or Owner to be Present', 'No Key Safe', 'See Remarks', 'None', 'Cash, Conventional Loan, FHA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2018-02-01 16:03:57'),
(12, 12, 8, '', 5, NULL, 2017, 'Single Family', 4, 4.00, 2120.00, 1, 43560.00, 'sq.ft.', 0.00, 'Ranch / Rambler', '0.00', '0.00', '325000.00', 'Individual', '', '', '', 'None', 'Forced Air', 'Gas', 'None', 'RV parking', 'None', 'NEW YEAR SPECIAL!\n\n0 DOWN PAYMENT\n\nZERO DOWN PAYMENT\n\nNew Dealer Incentives for FHA loans ONLY!\n\nNew Build With 7 year warranty', 'Call for lock box code.\n970 660 8002\nAll dealer incentives to be discussed Pryor to contract.\nGarage can be added as addition to contract\n', 'Wood', 'No basement', 'Composition', 'Off-street', 'Mountain', 'Dining room, Walk-in closet, Family room, Pantry, Laundry room, Master bath, Mud room', 'Carpet, Laminate', 'Dishwasher, Microwave, Range/oven, Refrigerator', '', '', '', 'Lock Box', 'Other', 'Front Door', 'None', 'Cash, Conventional Loan, FHA Loan, VA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2020-10-24 13:54:59'),
(14, 13, 9, '', 2, NULL, 1890, 'Single Family', 4, 5.00, 5000.00, 3, 0.00, 'sq.ft.', 1600.00, 'Bungalow', '0.00', '1.50', '2500000.00', 'Individual', '', '', '', 'Central', 'Forced Air', 'Gas', 'Fire place, Security system', 'Balcony/patio', 'None', 'Beautifully designed and renovated Brownstone located in the heart of the Gold Coast.  3 story 4 bedroom 4.5 baths with 11ft ceilings, hydraulic elevator and 2 car attached heated garage.  Eat in Neff kitchen with top quality appliances, pillowed Birdseye maple cabinets and Cohiba granite counter tops, with deck access for grilling and entertaining.  Open floor plan in living room and dining room with baronial gas fireplace, tumbled Jerusalem stone flooring and wet bar. Custom designed crown molding throughout.  2nd level features Brazilian cherry floors with ebony inlays, gorgeous library with Honduran mahogany throughout with custom built-ins, wet bar and gas fireplace. Media room/den and 2nd bedroom with full bath.  3rd level features 3 bedrooms and 2 full baths, master has wood burning fireplace, his and her sinks and closets. Lower level family room with wet bar, full bath, laundry and door for outside access. 3 doors down from the lake and minutes to shopping and top restaurants', 'Call owner 1 day advance notice and supply email and text number.  Provide pre-approval for buyer before scheduling.', 'Brick', 'Finished', 'Slate', 'Garage - Detached', 'City', 'Recreation room, Dining room, Office, Walk-in closet, Family room, Laundry room, Master bath', 'Carpet, Hardwood', 'Dishwasher, Microwave, Freezer, Refrigerator', '', '', '', 'See Remarks', 'No Key Safe', 'See Remarks', 'Call to Ask', 'Cash', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2018-02-01 16:03:57'),
(15, 14, 1, '', 3, NULL, 1996, 'Single Family', 5, 3.50, 2200.00, 2, 16770.00, 'sq.ft.', 676.00, 'Colonial', '0.00', '1.00', '399900.00', 'Individual', '', '', '', 'Central', 'Forced Air', 'Gas', 'Attic, Cable ready, Double pane/storm windows, Fire place, Jetted tub, Skylights', 'Balcony/patio, Fenced yard, Lawn,Deck, Pool', 'None', 'Minutes from I 79 and Robinson attractions nestled in King Henrys Court you find a brick front Colonial 5 Bedroom 3.5 Bath home with rear integral 2-car garage that has undergone a broad renovation. The completely new kitchen showcases crisp maple painted cotton cabinetry, island with available seating, granite countertops, double door pantry, GE stainless steel gas range with microwave above that vents to outside and a dishwasher.  The brand new hardwood kitchen floor continues into the family room, accent lights highlight a new Heat n Glo direct vent gas fireplace. The laundry room is conveniently located beside the kitchen. The living room has new carpet and a bay window that offers lots of natural light.  The entire first floor is freshly painted in neutral tones.  Brand new hardwood floors in the foyer, dining room and a powder room outfitted with a new pedestal sink and commode finish the first floor.  \nOn the second floor the large owners suite with cathedral ceiling was repainted and carpeted.  The e', 'For Sale By Owner.  Property does not have Lock Box.  Pre-approval Letter required for private viewing.', 'Brick, Vinyl', 'Finished', 'Asphalt', 'Garage - Attached', 'None', 'Recreation room, Dining room, Walk-in closet, Family room, Pantry, Laundry room, Master bath', 'Carpet, Tile, Hardwood', 'Dishwasher, Microwave, Range/oven', '', '', '', 'See Remarks, Call Owner, Appointment Only', 'No Key Safe', 'No key Sage', 'None', 'Cash, Conventional Loan, FHA Loan, VA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2020-10-24 13:55:33'),
(16, 15, 10, '', 5, NULL, 1989, 'Condominium', 1, 1.00, 650.00, 1, 0.00, 'sq.ft.', 0.00, 'Bungalow', '310.00', '0.00', '292000.00', 'Individual', '', '', '', 'Central', 'Heatpump', 'Electric', 'Attic, Cable ready, Ceiling fans, Vaulted ceiling', 'Balcony/patio', 'None', 'MUST SEE!!! This charming, clean and bright 1 bedroom & 1 bathroom condo features upgrades throughout, including custom oak kitchen countertops, subway tile backsplashes, stove/oven, dishwasher, quartz top bathroom vanity, glass shower doors, decorative light fixtures, fresh paint throughout and more. Enjoy mountaintop views from each window and privacy from your second story corner location. Being situated in Las Flores III places you in the heart of RSM and within walking distance to restaurants, shopping, parks, trails, schools, library and the RSM lake. The condo community\'s restort-styled pool and hot tub are 100 feet away. Ownership includes access to other SAMLARC amenities such as tennis courts, more pools and the RSM Beach Club.  \n\nFOR SALE BY OWNER--I will not pay any realtor fees. If you work with a realtor you will need to pay the buyer fee that he or she will charge. Alternatively, you can work directly with me and AVOID PAYING ANY REALTOR FEES. All closing documents and contracts will be draft', 'FOR SALE BY OWNER--I will not pay any realtor fees. You may be able to negotiate a fee with your buyers for your time. But I will be holding all the open houses and completing all paperwork.', 'Stucco', 'No basement', 'Tile', 'Carport', 'Mountain', 'Breakfast nook', 'Carpet, Laminate, Hardwood', 'Dishwasher, Range/oven, Washer, Dryer', '', '', '', 'Call Owner', 'No Key Safe', 'No key Sage', 'None', 'Cash, Conventional Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2020-10-20 22:08:59'),
(17, 16, 11, '', 2, NULL, 1977, 'Single Family', 4, 4.00, 2309.00, 2, 174148.00, 'sq.ft.', 352.00, 'Ranch / Rambler', '0.00', '3.00', '780000.00', 'Individual', '', '', '', 'Evaporative', 'Baseboard', 'Gas, Wood/Pellet', 'Attic, Ceiling fans, Double pane/storm windows, Fire place, Intercom system, Mother-in-law suite/apartment, Security system, Skylights, Vaulted ceiling', 'Balcony/patio, Fenced yard, Hot tub/spa, Barbeque area, Garden, Lawn, Deck, Porch, RV parking, Sauna, Sprinkler system', 'Gated entry, Storage', 'VIEWING BY APPOINTMENT ONLY CONTACT MIKE 303-652-3728 IF YOUR A REALTOR/BROKER I DO NOT WANT YOUR HELP LISTING THIS PROPERTY SELLER WILL COVER 3% COMMISSION FOR BUYERS AGENT\nIF NOT A CASH OFFER A PRE-QUALIFIED LETTER IS REQUIRED PRIOR  TO SCHEDULING A SHOWING \nA wonderful 4 acre rural property in a subdivision with NO COVENANTS. Irrigation water is included, impressive mountain views, minutes to Longmont, Berthoud, Loveland and Boulder. A wood burning fireplace opens to the kitchen, living and dining areas. Your family will enjoy this spacious, 2309 square foot custom built home with 4 bedrooms plus an efficiency unit with kitchenette. A lovely home in a beautiful location. Property has 3 car garage with hundreds of trees + huge private garden area for all your vegetables. Home is located off Horseshoe cir Longmont 80504. \nWHAT I LOVE ABOUT THE HOME\nFantastic friendly neighborhood with a great school district for the kids and Convenient shopping 5 min away makes this home/location very special.\n\n \n \n ', 'Please have permission 1st from owner/Mike Rubin 303-652-3728 before entering onto my property. There are dogs that will bite if unannounced visitors enter onto property. Thank you for respecting my request', 'Brick', 'Finished', 'Asphalt', 'Garage - Attached, Garage - Detached', 'City, Mountain, Territorial', 'Breakfast nook, Dining room, Office, Family room, Pantry, Workshop, Laundry room, Master bath', 'Carpet, Laminate,Tile', 'Dishwasher, Microwave, Range/oven, Refrigerator, Washer, Dryer', '', '', '', 'See Remarks, Call Owner, Appointment Only', 'No Key Safe', 'No key Sage, See Remarks', 'None', 'Cash, Conventional Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2018-02-01 16:03:57'),
(18, 17, 12, '', 5, NULL, 1913, 'Condominium', 1, 1.00, 1100.00, 8, 0.00, 'sq.ft.', 0.00, 'Loft', '500.00', '2.50', '849000.00', 'Multiple Individual', '', '', '', 'Central', 'Forced Air', 'Gas', 'Cable ready, Ceiling fans', 'None', 'Elevator, Near transportation, Controlled access, Disabled access', 'Stunning true loft in downtown Jersey City Powerhouse Arts District. Spacious 1 Bedroom and 1 Bath features open floor plan and bonus convertible nook with a built-in concealed Murphy bed for guests which can also be used as a baby\'s room. Large open kitchen is perfect for entertaining and features a kitchen island, black granite counter tops, solid wood cabinets and stainless steel appliances. This along with hardwood floors, upgraded light fixtures and 11 ft soaring ceilings gives you the modern lifestyle you\'ve been looking for. Expansive windows face historic building used for storage - no neighbors looking in! Ample storage throughout includes walk-through master closet, large coat room and separate laundry room with washer/ dryer. Common roof deck for all to enjoy and parking available at Steuben and Warren. Quick walk to Path will get you to Manhattan in minutes. ', 'Lock box is placed at building entrance on railing. Access code (8486). Lock box contains FOB and house key.', 'Brick', 'No basement', 'Other', 'On-street', 'City', 'Walk-in closet, Laundry room', 'Tile, Hardwood', 'Dishwasher, Microwave, Range/oven, Refrigerator, Washer, Dryer', '', '', '', 'Call Owner, Appointment Only, Lock Box', 'Combo-See Remarks', 'See Remarks', 'None', 'Cash, Conventional Loan, FHA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-01 07:48:19', '2020-10-24 13:56:08'),
(19, 18, 13, '', 5, NULL, 2006, 'Single Family', 3, 2.00, 1770.00, 1, 9583.00, 'sq.ft.', 0.00, 'Contemporary', '0.00', '3.00', '239800.00', 'Multiple Individual', '', '', '', 'Central', 'Forced Air', 'Electric', 'Attic, Cable ready, Ceiling fans, Vaulted ceiling', 'Balcony/patio', 'None', 'Completely renovated in 2017, this 3/2/2 home features rustic wood tile, granite counters, private office which could be converted into 4th bedroom, privacy fence, premium base boards, tropical-themed ceiling fans, frameless shower enclosure in master bath, screened-in lanai, hurricane shutters, plus a sturdy metal shed for extra storage. This Floridian dream home is on one of the few paved roads in Vero Lake Estates, and only minutes from I-95, Vero Beach, and Sebastian. Furniture negotiable. Call Mark to see this gem today! 954-770-1277', 'An impeccable home for your most discerning customers.  Easy to show.  Call Mark to make  an appointment. 954-770-1277', 'Stucco', 'No basement', 'Shingle', 'Garage - Attached', 'None', 'Dining room, Office, Walk-in closet, Laundry room, Master bath', 'Tile', 'Dishwasher, Microwave, Range/oven, Refrigerator, Washer, Dryer', '', '', '', 'See Remarks, Call Owner, Appointment Only', 'No Key Safe', 'No key Sage', 'None', 'Cash, Conventional Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-11 17:13:16', '2020-10-24 13:56:23'),
(20, 19, 16, '', 2, NULL, 2017, 'Single Family', 5, 5.00, 4000.00, 2, 65410.00, 'sq.ft.', 900.00, 'Contemporary', '0.00', '3.00', '524999.00', 'Multiple Individual', '', '', '', 'Central', 'Other', 'Gas', 'Cable ready, Fire place, Mother-in-law suite/apartment, Skylights, Vaulted ceiling, Wired', 'Balcony/patio, Barbeque area, Lawn,Porch', 'None', 'Semi-custom home in highly desirable Lehigh Valley neighborhood at Blue Ridge Chase.\nBrand new, less than 1-year old house in Southern Lehigh School District.\n1.5-acre lot surrounded by gorgeous forest, with no additional HOA dues, peaceful inside and out!\nConveniently located in Center Valley, close to I-78, 45 minutes from Philadelphia, and minutes from Promenade Shops. The location just can’t be beat.\nThe large front room with French doors is well suited for an office. Beautiful large open floor plan family room with bay windows perfect for those family gatherings. First floor bedroom and powder room\nThe dramatic 2 story family room with an open concept kitchen merged with an abundance of windows and tons of natural light. Beautiful kitchen with custom, oversized island serves as a focal point for family living. Dark hard wood floors through entire 1st floor, upgraded carpet, granite countertops in the kitchen and all 5 bathrooms. Also, the kitchen comes with tile back splash and stainless-steel appli', 'I offer 3% buyer\'s agent fee, Please free to contact me if you have any questions. I offer 3% buyer\'s agent fee, Please free to contact me if you have any questions', 'Stone, Stucco, Vinyl', 'Finished', 'Shingle', 'Garage - Attached, On-street', 'Mountain', 'Breakfast nook, Library, Recreation room, Dining room, Office, Walk-in closet, Family room, Pantry, Workshop,Laundry room, Master bath, Mud room', 'Carpet, Tile, Hardwood', 'Dishwasher, Microwave, Range/oven, Refrigerator, Trash,Washer, Dryer', '', '', '', 'Call Owner, Appointment Only', 'No Key Safe', 'No key Sage', 'None', 'Cash, Conventional Loan, FHA Loan, VA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-11 18:22:41', '2018-02-11 18:22:41'),
(21, 20, 18, '', 3, NULL, 1955, 'Single Family', 3, 1.50, 983.00, 2, 6242.00, 'sq.ft.', 400.00, 'Colonial', '0.00', '3.00', '450000.00', '', '', '', '', 'Wall', 'Baseboard', 'Gas', 'Attic, Skylights', 'Deck', 'Near transportation', 'GREAT LOCATION!!  MINUTES TO NYC TRAIN (METROPARK) CENTRALLY LOCATED TO ALL MAJOR HIGHWAYS!\r\nTHIS 3 BEDROOM 1.5 BATH HAS WOOD FLOOR & NEW CARPET, 1 CAR GARAGE AND PARTIAL BASEMENT. \r\nRECESSED LIGHTS IN EVERY ROOM, NEW WASHER,DRYER....  A MUST SEE.', 'Keys to be picked up\nGREAT LOCATION!!  MINUTES TO NYC TRAIN (METROPARK) CENTRALLY LOCATED TO ALL MAJOR HIGHWAYS!\nTHIS 3 BEDROOM 1.5 BATH HAS WOOD FLOOR & NEW CARPET, 1 CAR GARAGE AND PARTIAL BASEMENT. \nRECESSED LIGHTS IN EVERY ROOM, NEW WASHER,DRYER....  A MUST SEE..', 'Metal', 'Semi-finished', 'Asphalt', 'Garage - Attached', 'Park', 'Dining room', 'Carpet, Hardwood', 'Dishwasher, Refrigerator', 'City', 'Asphalt', 'City', 'Lock Box', 'Other', 'Front Door', 'None', 'Cash, Conventional Loan, FHA Loan, VA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-12 23:08:41', '2020-07-10 02:03:38'),
(22, 21, 18, '', 2, NULL, 2018, 'Single Family', 0, 0.00, 0.00, 0, 43913.00, 'sq.ft.', 0.00, 'Other', '0.00', '0.00', '71500.00', 'Individual', '', '', '', 'None', 'None', 'None', 'None', 'None', 'None', 'LARGE HOME SITE, BRING YOUR OWN BUILDER!!! Estate size lot in highly sought after subdivision Maple Ridge, Alabaster. Lot 27 address is 109 foliage view rd, Alabaster AL 35007. I­t­ has over 400ft road frontage and is perfectly slope for basement home. I­t­ is the first corner lot you see when you turn in the subdivision. Have all county perk information, projected plot plan, projected covenants which subdivision has no current HOA currently. Also have the deed to property so I­t­ will make for an easy purchasing process.  $71,500 o.b.o ', 'Drive By Anytime- Subdivision has large custom homes on large lots and is zone for Alabaster City School System.', 'None', 'No basement', 'None', 'None', 'None', 'None', 'None', 'None', '', '', '', 'See Remarks, Call Owner', 'No Key Safe', 'No key Sage', 'None, Call to Ask', 'Cash, Conventional Loan, Land Contract', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-21 23:27:02', '2018-02-21 23:27:02'),
(23, 222, 10, '', 2, NULL, 1954, 'Cooperative', 3, 2.00, 1332.00, 8, 0.00, 'sq.ft.', 0.00, 'Other', '0.00', '2.00', '390000.00', 'Wanda Buckner , Michael Buckner', '', '', '', 'Other', 'Forced Air', 'Oil', 'Cable ready, Ceiling fans, Double pane/storm windows, Intercom system, Wired', 'Balcony/patio', 'Doorman, Elevator, Near transportation, Storage', 'Spacious 1,332 Sq. Ft. 3 bedroom Apartment, Designer Decorated with Crown Moldings, Recessed Lighting, California Closets, Stainless Steel Appliances & Granite Counters. Large Bedrooms, Italian Tile Bathrooms with Contemporary Fixtures.  Large East Facing Terrace.  Amenities Include, Door Man, Live In Super, Laundry Room, Storage Rooms, Bike Room, Recently Renovated Playground, Pet Friendly. Excellent location near shops, Restaurants, Schools & Public Transportation/ Express Bus To NYC And More.', 'Spacious 1,332 Sq. Ft. 3 bedroom Apartment, Designer Decorated with Crown Moldings, Recessed Lighting, California Closets, Stainless Steel Appliances & Granite Counters. Large Bedrooms, Italian Tile Bathrooms with Contemporary Fixtures.  Large East Facing Terrace.  Amenities Include, Door Man, Live In Super, Laundry Room, Storage Rooms, Bike Room, Recently Renovated Playground, Pet Friendly. Excellent location near shops, Restaurants, Schools & Public Transportation/ Express Bus To NYC And More.', 'Brick', 'No basement', 'Asphalt', 'On-street', 'Other', 'Breakfast nook, Office, Master bath', 'Hardwood', 'Dishwasher, Microwave, Range/oven, Freezer, Refrigerator', 'City', 'None', 'City', 'Call Owner, Appointment Only, Go Direct', 'Other', 'Front Door', 'None', 'Cash, Conventional Loan, FHA Loan', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-24 12:21:17', '2018-02-25 09:27:00'),
(24, 23, 1, '', 1, NULL, 2005, 'Single Family', 4, 3.50, 2374.00, 2, 9018.00, 'sq.ft.', 0.00, 'Other', '0.00', '2.50', '0.00', 'Pavan Gore', '', '', '', 'Central, Other', 'Forced Air', 'Electric', 'Cable ready', 'Fenced yard', 'Doorman', '', '', 'Stucco', 'No basement', 'Tile', 'Garage - Attached', 'Mountain', 'Dining room, Walk-in closet, Family room, Laundry room, Master bath', 'Carpet, Tile, Hardwood', 'Dishwasher, Microwave', 'Community', 'Concrete', 'Septic', '', '', '', '', '', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-24 17:05:38', '2018-02-24 22:37:12'),
(25, 24, 3, '', 1, NULL, 2005, 'Single Family', 4, 3.50, 2374.00, 2, 9018.00, 'sq.ft.', 0.00, 'Other', '0.00', '2.00', '0.00', 'Pavan Gore', '', '', '', 'Central, Other', 'Forced Air', 'Electric', 'Cable ready', 'Fenced yard', 'Doorman', '', '', 'Stucco', 'No basement', 'Tile', 'Garage - Attached', 'Mountain', 'Dining room, Walk-in closet, Family room, Laundry room, Master bath', 'Carpet, Tile, Hardwood', 'Dishwasher, Microwave', 'Community', 'Concrete', 'Septic', '', '', '', '', '', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-24 22:09:08', '2018-02-24 22:11:50'),
(26, 25, 25, '', 1, NULL, 2005, 'Single Family', 4, 3.50, 2374.00, 2, 9018.00, 'sq.ft.', 0.00, 'Other', '0.00', '1.75', '1234.00', 'Pavan Gore', '', '', '', 'Central, Other', 'Forced Air', 'Electric', 'Cable ready', 'Fenced yard', 'Doorman', '', '', 'Stucco', 'No basement', 'Tile', 'Garage - Attached', 'Mountain', 'Dining room, Walk-in closet, Family room, Laundry room, Master bath', 'Carpet, Tile, Hardwood', 'Dishwasher, Microwave', 'Community', 'Concrete', 'Septic', '', '', '', '', '', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-02-24 16:59:10', '2018-02-24 22:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `property_location`
--

CREATE TABLE `property_location` (
  `house_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mls_id` int(11) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `email_remainder_limit` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Reminders to sellers who have not selected agent',
  `review_invite` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0 = stop invite, 1 = allow invite to be sent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_location`
--

INSERT INTO `property_location` (`house_id`, `user_id`, `property_type`, `street`, `city`, `state`, `county`, `zip`, `mls_id`, `latitude`, `longitude`, `email_remainder_limit`, `review_invite`, `created_at`, `updated_at`) VALUES
(1, 1, 'sell', '56 Oneida Ave', 'Croton on Hudson', 'NY', 'Westchester County', '10520', NULL, 41.197412, -73.8825418, 0, 1, '2018-06-12 23:11:33', '2018-06-12 23:11:33'),
(2, 2, 'sell', '2045 Stonebriar Dr', 'El Dorado Hills', 'CA', 'El Dorado County', '95762', NULL, 38.6419883, -121.0810084, 0, 1, '2017-08-02 00:54:20', '2017-08-02 00:54:20'),
(3, 2, 'sell', '2540 Oakwood Ave', 'Kannapolis', 'NC', 'Cabarrus County', '28081', NULL, 35.450969, -80.639311, 0, 1, '2017-10-31 20:44:34', '2017-10-31 20:44:34'),
(4, 3, 'sell', '75 Peachtree Ave NW', 'Concord', 'NC', 'Cabarrus County', '28025', NULL, 35.418179, -80.5925834, 0, 1, '2017-11-11 01:55:36', '2017-11-11 01:55:36'),
(5, 3, 'sell', '390 Lorimer St Apt 3E', 'Brooklyn', 'NY', 'Kings County', '11206', NULL, 40.7085328, -73.9481676, 0, 1, '2017-11-17 03:07:32', '2017-11-17 03:07:32'),
(6, 3, 'sell', '19 Dennison Dr', 'East Windsor', 'NJ', 'Mercer County', '08520', NULL, 40.2627698, -74.493987, 0, 1, '2017-11-29 19:36:58', '2017-11-29 19:36:58'),
(7, 4, 'sell', '9887 Short Cut Rd', 'Cloverdale', 'IN', 'Putnam County', '46120', NULL, 39.433874, -86.79356, 0, 1, '2017-12-06 05:03:44', '2017-12-06 05:03:44'),
(8, 5, 'sell', '18206 Elkwood St', 'Reseda', 'CA', 'Los Angeles County', '91335', NULL, 34.2124744, -118.5298196, 0, 1, '2017-12-09 02:56:57', '2017-12-09 02:56:57'),
(9, 6, 'sell', '1001 Sweeping Meadows Ln', 'Cedar Hill', 'TX', 'Dallas County', '75104', NULL, 32.551342, -97.000119, 0, 1, '2017-12-11 01:58:45', '2017-12-11 01:58:45'),
(10, 7, 'sell', '7264 Maplewood Rd', 'Cleveland', 'OH', 'Cuyahoga County', '44130', NULL, 41.3678112, -81.7818888, 0, 1, '2017-12-11 11:01:05', '2017-12-11 11:01:05'),
(11, 7, 'sell', '1007 Glen Creighton Dr', 'Dacono', 'CO', 'Weld County', '80514', NULL, 40.0843658, -104.9298634, 0, 1, '2017-12-17 21:54:40', '2017-12-17 21:54:40'),
(12, 8, 'sell', '500 Dunmire St', 'Frederick', 'CO', 'Weld County', '80530', NULL, 40.1080857, -104.9393707, 0, 1, '2017-12-17 22:32:43', '2017-12-17 22:32:43'),
(13, 9, 'sell', '480 Dunmire St', 'Frederick', 'CO', 'Weld County', '80530', NULL, 40.1079971, -104.9394881, 0, 1, '2017-12-18 20:17:21', '2017-12-18 20:17:21'),
(14, 1, 'sell', '3201 N Seminary Ave Apt 207', 'Chicago', 'IL', 'Cook County', '60657', NULL, 41.9401813, -87.6563076, 0, 1, '2017-12-19 23:46:03', '2017-12-19 23:46:03'),
(15, 10, 'sell', '277 S 79th St Unit 707', 'West Des Moines', 'IA', 'Polk County', '50266', NULL, 41.5647011, -93.8170218, 0, 1, '2017-12-21 06:53:18', '2017-12-21 06:53:18'),
(16, 11, 'sell', '1249 W Cademon Ct', 'Lincoln', 'NE', 'Lancaster County', '68523', NULL, 40.7343711, -96.7422792, 0, 1, '2017-12-27 19:33:30', '2017-12-27 19:33:30'),
(17, 12, 'sell', '16149 Lamb Ave', 'Fort Lupton', 'CO', 'Weld County', '80621', NULL, 40.1059804, -104.7512917, 0, 1, '2018-01-07 22:32:40', '2018-01-07 22:32:40'),
(18, 13, 'sell', '19 Buccaneer St', 'Murrells Inlet', 'SC', 'Horry County', '29576', NULL, 33.5412378, -79.0589066, 0, 1, '2018-01-10 02:12:23', '2018-01-10 02:12:23'),
(19, 16, 'sell', '435 N Michigan Ave Ste 200', 'Chicago', 'IL', 'Cook County', '60611', NULL, 41.890422, -87.623702, 0, 1, '2018-01-10 06:47:58', '2018-01-10 06:47:58'),
(20, 18, 'sell', '77 E Cedar St', 'Chicago', 'IL', 'Cook County', '60611', NULL, 41.902223, -87.625435, 0, 1, '2018-01-10 06:51:11', '2018-01-10 06:51:11'),
(21, 18, 'sell', '105 Camelot Cir', 'Coraopolis', 'PA', 'Allegheny County', '15108', NULL, 40.4927344, -80.1403097, 0, 1, '2018-01-11 07:27:50', '2018-01-11 07:27:50'),
(22, 10, 'sell', '79 Angus Run', 'Seneca', 'SC', 'Oconee County', '29672', NULL, 34.7026988, -82.9943485, 0, 1, '2018-01-12 22:38:58', '2018-01-12 22:38:58'),
(23, 1, 'sell', '5 Via Meseta', 'Rancho Santa Margarita', 'CA', 'Orange County', '92688', NULL, 33.6415856, -117.5879345, 0, 1, '2018-01-17 03:25:30', '2018-01-17 03:25:30'),
(24, 3, 'sell', '2304 Horseshoe Cir', 'Longmont', 'CO', 'Weld County', '80504', NULL, 40.267121, -105.111195, 0, 1, '2018-01-21 10:10:41', '2018-01-21 10:10:41'),
(25, 19, 'sell', '140 Bay St Apt 6D', 'Jersey City', 'NJ', 'Hudson County', '07302', NULL, 40.7208885, -74.0391533, 0, 1, '2018-01-24 09:37:42', '2018-01-24 09:37:42'),
(26, 20, 'sell', '1334 Beechfern Cir', 'Elgin', 'SC', 'Kershaw County', '29045', NULL, 34.1272736, -80.8395301, 0, 1, '2018-01-26 05:25:50', '2018-01-26 05:25:50'),
(27, 21, 'sell', '7845 100th Ave', 'Vero Beach', 'FL', 'Indian River County', '32967', NULL, 27.7370687, -80.5321898, 0, 1, '2018-02-12 03:24:25', '2018-02-12 03:24:25'),
(28, 22, 'sell', '4249 Cumorah Ave', 'Center Valley', 'PA', 'Lehigh County', '18034', NULL, 40.530609, -75.4051646, 0, 1, '2018-02-12 04:42:07', '2018-02-12 04:42:07'),
(29, 22, 'sell', '17 Dellwood Rd', 'Edison', 'NJ', 'Middlesex County', '08820', NULL, 40.5598356, -74.3418387, 0, 1, '2018-02-13 09:23:11', '2018-02-13 09:23:11'),
(30, 23, 'sell', '2 Tarleton Ln', 'Bella Vista', 'AR', 'Benton County', '72715', NULL, 36.428658, -94.247468, 0, 1, '2018-02-21 07:07:57', '2018-02-21 07:07:57'),
(31, 24, 'sell', '109 Foliage View Rd', 'Alabaster', 'AL', 'Shelby County', '35007', NULL, 33.1913848, -86.8434811, 0, 1, '2018-02-22 09:30:15', '2018-02-22 09:30:15'),
(32, 25, 'sell', '3299 Cambridge Ave Apt 3G', 'Bronx', 'NY', 'Bronx County', '10463', NULL, 40.8850633, -73.90847149999999, 0, 1, '2018-02-24 22:47:03', '2018-02-24 22:47:03'),
(33, 26, 'sell', '18206 Elkwood St', 'Reseda', 'CA', 'Los Angeles County', '91335', NULL, 34.212462, -118.5297973, 0, 1, '2018-02-25 03:28:14', '2018-02-25 03:28:14'),
(34, 26, 'sell', '18206 Elkwood St', 'Reseda', 'CA', 'Los Angeles County', '91335', NULL, 34.212462, -118.5297973, 0, 1, '2018-02-25 03:34:20', '2018-02-25 03:34:20'),
(35, 27, 'sell', '18206 Elkwood St', 'Reseda', 'CA', 'Los Angeles County', '91335', NULL, 34.212462, -118.5297973, 0, 1, '2018-02-25 03:35:08', '2018-02-25 03:35:08'),
(36, 27, 'sell', '18206 Elkwood St', 'Reseda', 'CA', 'Los Angeles County', '91335', NULL, 34.212462, -118.5297973, 0, 1, '2018-02-25 03:53:23', '2018-02-25 03:53:23'),
(37, 27, 'sell', '201 Raven Top Dr', 'Penrose', 'NC', 'Transylvania County', '28766', NULL, 35.22867, -82.61825069999999, 0, 1, '2018-02-27 03:02:13', '2018-02-27 03:02:13'),
(38, 27, 'sell', '201 Raven Top Dr', 'Penrose', 'NC', 'Transylvania County', '28766', NULL, 35.22867, -82.61825069999999, 0, 1, '2018-02-27 03:05:48', '2018-02-27 03:05:48'),
(39, 28, 'sell', '4632 Sharon View Rd', 'Charlotte', 'NC', 'Mecklenburg County', '28226', NULL, 35.1383304, -80.80457849999999, 0, 1, '2018-03-03 21:06:56', '2018-03-03 21:06:56'),
(41, 28, 'sell', '4632 Sharon View Rd', 'Charlotte', 'NC', 'Mecklenburg County', '28226', NULL, 35.1383304, -80.80457849999999, 0, 1, '2018-03-03 21:54:42', '2018-03-03 21:54:42'),
(42, 28, 'sell', '117 Sion Ct', 'Rocky Mount', 'NC', 'Nash County', '27803', NULL, 35.9510846, -77.8637272, 0, 1, '2018-03-09 16:18:53', '2018-03-09 16:18:53'),
(43, 28, 'sell', '24 Robert Treat D', 'bridgeport', 'DE', 'New Haven County', '06460', NULL, 41.2280865, -72.9982787, 0, 1, '2018-03-12 22:56:35', '2018-03-12 22:56:35'),
(44, 28, 'sell', '400 Brookside Dr Unit E', 'Andover', 'MA', 'Essex County', '01810', NULL, 42.68645739999999, -71.1964796, 0, 1, '2018-03-17 21:20:59', '2018-03-17 21:20:59'),
(45, 28, 'sell', '50 Avery Park Dr', 'North Andover', 'MA', 'Essex County', '01845', NULL, 42.6375245, -71.05444279999999, 0, 1, '2018-03-19 01:51:38', '2018-03-19 01:51:38'),
(46, 29, 'sell', 'N S 1 Dr', 'Wallace', 'MI', 'Menominee County', '11224', NULL, 45.2542727, -87.69524899999999, 0, 1, '2018-03-20 08:54:58', '2018-03-20 08:54:58'),
(47, 30, 'sell', '73 Chestnut Ave', 'Closter', 'NJ', 'Bergen County', '07624', NULL, 40.965249, -73.951236, 0, 1, '2018-03-24 19:59:36', '2018-03-24 19:59:36'),
(48, 30, 'sell', '18206 Elkwood St', 'Reseda', 'CA', 'Los Angeles County', '91335', NULL, 34.212462, -118.5297973, 0, 1, '2018-03-24 21:42:18', '2018-03-24 21:42:18'),
(49, 31, 'sell', '190 Newport Rd', 'Hull', 'MA', 'Plymouth County', '02045', NULL, 42.28160159999999, -70.8778859, 0, 1, '2018-03-24 23:16:12', '2018-03-24 23:16:12'),
(50, 32, 'sell', '814 Latimer St', 'York', 'PA', 'York County', '17404', NULL, 39.9743209, -76.7310899, 0, 1, '2018-03-27 11:29:46', '2018-03-27 11:29:46'),
(51, 33, 'sell', '305 Hawk View Ct', 'Nashville', 'TN', 'Davidson County', '37207', NULL, 36.246713, -86.774194, 0, 1, '2018-03-28 09:19:56', '2018-03-28 09:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_details`
--

CREATE TABLE `user_basic_details` (
  `id` int(5) UNSIGNED NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_basic_details`
--

INSERT INTO `user_basic_details` (`id`, `full_name`, `phone_number`, `email`, `dob`, `created_at`) VALUES
(1, 'qwieqwoe kk', '8898540054', 'dddp@gmail.com', '1998-09-15', '2021-12-29 21:17:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_tasks`
--
ALTER TABLE `assigned_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_assignee_id` (`assignee_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_info`
--
ALTER TABLE `property_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `listing_status` (`listing_status`),
  ADD KEY `idx_settlement_status` (`settlement_status`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `property_location`
--
ALTER TABLE `property_location`
  ADD PRIMARY KEY (`house_id`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `mls_id` (`mls_id`),
  ADD KEY `idx_pl_state` (`state`(2));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_basic_details`
--
ALTER TABLE `user_basic_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_tasks`
--
ALTER TABLE `assigned_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `property_info`
--
ALTER TABLE `property_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `property_location`
--
ALTER TABLE `property_location`
  MODIFY `house_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_basic_details`
--
ALTER TABLE `user_basic_details`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
