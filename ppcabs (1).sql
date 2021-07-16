-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2021 at 11:26 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppcabs`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Devinder kumar Sharma', 'devindersharma@icloud.com', '0469008698', '$2y$10$B9QHeweVvDhRJUuCNvejrO60Ii.YO/wJGbpHaKctGHNLFE8QPpqu2', NULL, '2020-08-05 07:15:17', '2020-08-05 07:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `account_password_resets`
--

CREATE TABLE `account_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Devinder', 'devindersharma@icloud.com', '$2y$10$78SepxBlAu7vz0DKgfCYeeTt/uQdUq5oe7W.zJipgFiiVeC6g5XZa', NULL, 'UlfXxG6x3HSkJJmdLUVllrljmMSAZad8hzaIiNk9WYfiP67cKlDTfgx5AdbL', NULL, '2021-05-28 10:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('up','pu') COLLATE utf8_unicode_ci NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispatchers`
--

CREATE TABLE `dispatchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dispatchers`
--

INSERT INTO `dispatchers` (`id`, `name`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'devinder sharma', 'devindersharma@y7mail.com', '0469008698', '$2y$10$DjdeEuMySH.aiWkcdGTKauSKRQV2W0QfTqFjUiEvtGSlwmE324DEG', NULL, '2020-07-11 21:06:57', '2020-07-11 21:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher_password_resets`
--

CREATE TABLE `dispatcher_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('DRIVER','VEHICLE') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Driving Licence', 'DRIVER', NULL, '2020-06-14 07:36:01'),
(3, 'Taxi DC', 'DRIVER', NULL, '2020-07-11 20:52:39'),
(4, 'Taxi Photos', 'DRIVER', NULL, '2020-07-11 20:53:24'),
(5, 'Taxi License', 'VEHICLE', NULL, '2020-07-11 20:54:50'),
(6, 'Taxi Insurance Certificate', 'VEHICLE', NULL, '2020-07-11 20:55:16'),
(7, 'Roadworthy Certificate', 'VEHICLE', NULL, '2020-07-11 20:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `fleets`
--

CREATE TABLE `fleets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fleets`
--

INSERT INTO `fleets` (`id`, `name`, `email`, `password`, `company`, `mobile`, `logo`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'devinder sharma', 'devindersharma@y7mail.com', '$2y$10$BHyWeUWa3G8k1VbgM6qRnOPPp6jjtJT/3cwE6nFhDXuFx2cnNMCOa', 'PPCabs', '0469008698', NULL, NULL, '2020-07-08 09:49:12', '2020-07-08 09:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_password_resets`
--

CREATE TABLE `fleet_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'api', 'push.request_accepted', 'Your Ride Accepted by a Driver', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(2, 1, 'en', 'api', 'push.schedule_start', 'Your schedule ride has been started', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(3, 1, 'en', 'api', 'push.user_cancelled', 'User Cancelled the Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(4, 1, 'en', 'api', 'push.provider_cancelled', 'Driver Cancelled the Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(5, 1, 'en', 'api', 'push.arrived', 'Driver Arrived at your Location', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(6, 1, 'en', 'api', 'push.provider_not_available', 'Sorry for inconvience time, Our partner or busy. Please try after some time', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(7, 1, 'en', 'api', 'push.incoming_request', 'New Incoming Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(8, 1, 'en', 'api', 'push.document_verfied', 'Your Documents are verified, Now you are ready to Start your Business', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(9, 1, 'en', 'api', 'push.added_money_to_wallet', ' Added to your Wallet', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(10, 1, 'en', 'api', 'push.charged_from_wallet', ' Charged from your Wallet', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(11, 1, 'en', 'api', 'something_went_wrong', 'Something Went Wrong', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(12, 1, 'en', 'api', 'logout_success', 'Logged out Successfully', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(13, 1, 'en', 'api', 'user.password_updated', 'Password Updated', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(14, 1, 'en', 'api', 'user.incorrect_password', 'Incorrect Password', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(15, 1, 'en', 'api', 'user.location_updated', 'Location Updated', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(16, 1, 'en', 'api', 'user.user_not_found', 'User Not Found', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(17, 1, 'en', 'api', 'user.profile_updated', 'Profile Updated', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(18, 1, 'en', 'api', 'services_not_found', 'Services Not Found', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(19, 1, 'en', 'api', 'ride.request_inprogress', 'Already Request in Progress', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(20, 1, 'en', 'api', 'ride.request_scheduled', 'Ride Scheduled', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(21, 1, 'en', 'api', 'ride.no_providers_found', 'No Drivers Found', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(22, 1, 'en', 'api', 'ride.already_cancelled', 'Already Ride Cancelled', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(23, 0, 'en', 'api', 'ride.ride_cancelled', NULL, '2018-11-18 15:06:39', '2018-11-18 15:06:39'),
(24, 1, 'en', 'api', 'ride.already_onride', 'Already You are Onride', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(25, 1, 'en', 'api', 'user.not_paid', 'User Not Paid', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(26, 1, 'en', 'api', 'ride.provider_rated', 'Driver Rated', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(27, 1, 'en', 'api', 'promocode_expired', 'Promocode Expired', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(28, 0, 'en', 'api', 'promocode_already_in_use', NULL, '2018-11-18 15:06:39', '2018-11-18 15:06:39'),
(29, 1, 'en', 'api', 'promocode_applied', 'Promocode Applied', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(30, 1, 'en', 'api', 'ride.request_already_scheduled', 'Ride Already Scheduled', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(31, 1, 'en', 'api', 'paid', 'Paid', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(32, 1, 'en', 'api', 'added_to_your_wallet', 'Added to your Wallet', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(33, 1, 'en', 'user', 'fare_breakdown', 'FARE BREAKDOWN', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(34, 1, 'en', 'user', 'ride.finding_driver', 'Finding your Driver', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(35, 1, 'en', 'user', 'ride.accepted_ride', 'Accepted Your Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(36, 1, 'en', 'user', 'ride.arrived_ride', 'Arrived At your Location', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(37, 1, 'en', 'user', 'ride.onride', 'Enjoy your Ride', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(38, 1, 'en', 'user', 'ride.waiting_payment', 'Waiting for Payment', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(39, 1, 'en', 'user', 'ride.rate_and_review', 'Rate and Review', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(40, 1, 'en', 'user', 'ride.cancel_reason', 'Cancel Reason', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(41, 1, 'en', 'user', 'cash', 'CASH', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(42, 1, 'en', 'user', 'card.fullname', 'Full Name', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(43, 1, 'en', 'user', 'card.card_no', 'Card Number', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(44, 1, 'en', 'user', 'card.cvv', 'CVV', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(45, 1, 'en', 'user', 'profile.old_password', 'Old Password', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(46, 1, 'en', 'user', 'profile.password', 'Password', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(47, 1, 'en', 'user', 'profile.confirm_password', 'Confirm Password', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(48, 1, 'en', 'user', 'add_promocode', 'Add Promocode', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(49, 1, 'en', 'user', 'profile.first_name', 'First Name', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(50, 1, 'en', 'user', 'profile.last_name', 'Last Name', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(51, 1, 'en', 'user', 'profile.email', 'Email', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(52, 1, 'en', 'user', 'profile.mobile', 'Mobile', '2018-11-18 15:06:39', '2018-11-18 15:06:56'),
(53, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(54, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2018-11-18 15:06:39', '2018-11-18 15:06:55'),
(55, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(56, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(57, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(58, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(59, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(60, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(61, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(62, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(63, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(64, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(65, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(66, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(67, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(68, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(69, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(70, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(71, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(72, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(73, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(74, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(75, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(76, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(77, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(78, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(79, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(80, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(81, 1, 'en', 'validation', 'filled', 'The :attribute field is required.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(82, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(83, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(84, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(85, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(86, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(87, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(88, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(89, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(90, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(91, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(92, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(93, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(94, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(95, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(96, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(97, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(98, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(99, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(100, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(101, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(102, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(103, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(104, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(105, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(106, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(107, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(108, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(109, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(110, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(111, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(112, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(113, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(114, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(115, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(116, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(117, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(118, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(119, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(120, 1, 'en', 'servicetypes', 'MIN', 'Per Minute Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(121, 1, 'en', 'servicetypes', 'HOUR', 'Per Hour Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(122, 1, 'en', 'servicetypes', 'DISTANCE', 'Distance Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(123, 1, 'en', 'servicetypes', 'DISTANCEMIN', 'Distance and Per Minute Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(124, 1, 'en', 'servicetypes', 'DISTANCEHOUR', 'Distance and Per Hour Pricing', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(125, 1, 'en', 'api', 'ride.request_cancelled', 'Your Ride Cancelled', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(126, 1, 'en', 'api', 'promocode_already_in_user', 'Promocode Already in Use', '2018-11-18 15:06:55', '2018-11-18 15:06:55'),
(127, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(128, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(129, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(130, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(131, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(132, 0, 'en', 'pagination', 'previous', '« Previous عودة', '2018-11-18 15:06:56', '2018-11-18 15:09:14'),
(133, 0, 'en', 'pagination', 'next', 'Next » التالي', '2018-11-18 15:06:56', '2018-11-18 15:09:14'),
(134, 1, 'en', 'user', 'profile.general_information', 'General Information', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(135, 1, 'en', 'user', 'profile.profile_picture', 'Profile Picture', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(136, 1, 'en', 'user', 'profile.wallet_balance', 'Wallet Balance', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(137, 1, 'en', 'user', 'profile.edit', 'Edit', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(138, 1, 'en', 'user', 'profile.save', 'Save', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(139, 1, 'en', 'user', 'profile.edit_information', 'Edit Information', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(140, 1, 'en', 'user', 'profile.change_password', 'Change Password', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(141, 1, 'en', 'user', 'profile.profile', 'Profile', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(142, 1, 'en', 'user', 'profile.logout', 'Logout', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(143, 1, 'en', 'user', 'profile.name', 'Name', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(144, 1, 'en', 'user', 'booking_id', 'Booking Id', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(145, 1, 'en', 'user', 'service_number', 'Car Number', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(146, 1, 'en', 'user', 'service_model', 'Car Model', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(147, 1, 'en', 'user', 'card.add_card', 'Add Card', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(148, 1, 'en', 'user', 'card.delete', 'Delete', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(149, 1, 'en', 'user', 'card.month', 'Month', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(150, 1, 'en', 'user', 'card.year', 'Year', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(151, 1, 'en', 'user', 'card.default', 'Default', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(152, 1, 'en', 'user', 'ride.ride_now', 'Ride Now', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(153, 1, 'en', 'user', 'ride.cancel_request', 'Cancel Request', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(154, 1, 'en', 'user', 'ride.ride_status', 'Ride Status', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(155, 1, 'en', 'user', 'ride.dropped_ride', 'Your Ride is Completed', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(156, 1, 'en', 'user', 'ride.ride_details', 'Ride Details', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(157, 1, 'en', 'user', 'ride.invoice', 'Invoice', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(158, 1, 'en', 'user', 'ride.base_price', 'Base Fare', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(159, 1, 'en', 'user', 'ride.tax_price', 'Tax Fare', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(160, 1, 'en', 'user', 'ride.distance_price', 'Distance Fare', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(161, 1, 'en', 'user', 'ride.comment', 'Comment', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(162, 1, 'en', 'user', 'ride.detection_wallet', 'Wallet Detection', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(163, 1, 'en', 'user', 'ride.rating', 'Rating', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(164, 1, 'en', 'user', 'ride.km', 'Kilometer', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(165, 1, 'en', 'user', 'ride.total', 'Total', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(166, 1, 'en', 'user', 'ride.amount_paid', 'Amount to be Paid', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(167, 1, 'en', 'user', 'ride.promotion_applied', 'Promotion Applied', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(168, 1, 'en', 'user', 'ride.request_inprogress', 'Ride Already in Progress', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(169, 1, 'en', 'user', 'ride.request_scheduled', 'Ride Already Scheduled on this time', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(170, 1, 'en', 'user', 'dashboard', 'Dashboard', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(171, 1, 'en', 'user', 'payment', 'Payment', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(172, 1, 'en', 'user', 'wallet', 'Wallet', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(173, 1, 'en', 'user', 'my_wallet', 'My Wallet', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(174, 1, 'en', 'user', 'my_trips', 'My Trips', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(175, 1, 'en', 'user', 'in_your_wallet', 'in your wallet', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(176, 1, 'en', 'user', 'status', 'Status', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(177, 1, 'en', 'user', 'driver_name', 'Driver Name', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(178, 1, 'en', 'user', 'driver_rating', 'Driver Rating', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(179, 1, 'en', 'user', 'payment_mode', 'Payment Mode', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(180, 1, 'en', 'user', 'add_money', 'Add Money', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(181, 1, 'en', 'user', 'date', 'Date', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(182, 1, 'en', 'user', 'schedule_date', 'Scheduled Date', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(183, 1, 'en', 'user', 'amount', 'Total Amount', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(184, 1, 'en', 'user', 'type', 'Type', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(185, 1, 'en', 'user', 'time', 'Time', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(186, 1, 'en', 'user', 'request_id', 'Request ID', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(187, 1, 'en', 'user', 'paid_via', 'PAID VIA', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(188, 1, 'en', 'user', 'from', 'From', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(189, 1, 'en', 'user', 'total_distance', 'Total Distance', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(190, 1, 'en', 'user', 'eta', 'ETA', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(191, 1, 'en', 'user', 'to', 'To', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(192, 1, 'en', 'user', 'use_wallet_balance', 'Use Wallet Balance', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(193, 1, 'en', 'user', 'available_wallet_balance', 'Available Wallet Balance', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(194, 1, 'en', 'user', 'estimated_fare', 'Estimated Fare', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(195, 1, 'en', 'user', 'charged', 'CHARGED', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(196, 1, 'en', 'user', 'payment_method', 'Payment Methods', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(197, 1, 'en', 'user', 'promotion', 'Promotions', '2018-11-18 15:06:56', '2018-11-18 15:06:56'),
(198, 1, 'en', 'user', 'upcoming_trips', 'Upcoming trips', '2018-11-18 15:06:56', '2018-11-18 15:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2015_08_25_172600_create_settings_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2017_01_11_180503_create_admins_table', 1),
(11, '2017_01_11_180511_create_providers_table', 1),
(12, '2017_01_11_181312_create_cards_table', 1),
(13, '2017_01_11_181357_create_chats_table', 1),
(14, '2017_01_11_181558_create_promocodes_table', 1),
(15, '2017_01_11_182454_create_provider_documents_table', 1),
(16, '2017_01_11_182536_create_provider_services_table', 1),
(17, '2017_01_11_182649_create_user_requests_table', 1),
(18, '2017_01_11_182717_create_request_filters_table', 1),
(19, '2017_01_11_182738_create_service_types_table', 1),
(20, '2017_01_25_172422_create_documents_table', 1),
(21, '2017_01_31_122021_create_provider_devices_table', 1),
(22, '2017_02_02_192703_create_user_request_ratings_table', 1),
(23, '2017_02_06_080124_create_user_request_payments_table', 1),
(24, '2017_02_14_135859_create_provider_profiles_table', 1),
(25, '2017_02_21_131429_create_promocode_usages_table', 1),
(26, '2017_06_07_045207_add_social_login_to_providers_tables', 1),
(27, '2017_06_17_151030_create_dispatchers_table', 1),
(28, '2017_06_17_151031_create_dispatcher_password_resets_table', 1),
(29, '2017_06_17_151145_create_fleets_table', 1),
(30, '2017_06_17_151146_create_fleet_password_resets_table', 1),
(31, '2017_06_17_151150_add_fleet_to_providers_table', 1),
(32, '2017_06_19_130022_add_booking_id_to_user_request', 1),
(33, '2017_06_19_155736_add_cancel_reason_to_user_request', 1),
(34, '2017_06_20_154148_create_accounts_table', 1),
(35, '2017_06_20_154149_create_account_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0308c463011961b1067c6073b80afd18e34f7b38d4dc139aabe638bfd44abd66dd3ba438f3e2455b', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:26', '2020-08-02 22:15:26', '2020-08-17 15:15:26'),
('03245a2df21cd74e8a2b08b634ae00c449e8f6b75beae92c656f554d97a45cddbcb845ae8baf0b18', 123, 2, NULL, '[]', 0, '2018-11-01 09:51:07', '2018-11-01 09:51:07', '2018-11-16 02:51:07'),
('038f9c7b481ca738837fbd72d3ab8ccd9661dd238972b8f6f8f915cd819ddb5a52c3481939bc3207', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:55', '2020-08-07 03:52:55', '2020-08-21 20:52:55'),
('050a1a1695240d47854f0b869bfa173dde01d405a1f027ad27bd658323189595147141467f273318', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:54', '2020-08-07 03:52:54', '2020-08-21 20:52:54'),
('057f558831f0b2a4dd590082c97a1aff502a6555bb4be42561d8b8136043b466736853ae6c31d72d', 144, 2, NULL, '[]', 1, '2020-07-09 14:32:34', '2020-07-09 14:32:34', '2020-07-24 07:32:33'),
('0613ebb3455339582a7b7d75aa252dcd3f1e87a0016f3f5ba3c3b5aa4c489acc30de79bda2918fb0', 145, 2, NULL, '[]', 0, '2020-06-06 17:32:58', '2020-06-06 17:32:58', '2020-06-21 10:32:56'),
('06c5eb366b5a111bd5ececef00fcbede9329db5ce60c5a4051df1f568dd4a7bd2ed5803c5fb72329', 135, 2, NULL, '[]', 0, '2018-11-16 09:50:56', '2018-11-16 09:50:56', '2018-12-01 09:50:56'),
('06d3c209e33c32071a04a3ed7b1dd18cbab6859671fea02115278d11068bed06b1cfdd84f642c67b', 147, 2, NULL, '[]', 0, '2020-07-23 09:04:44', '2020-07-23 09:04:44', '2020-08-07 02:04:44'),
('07603fd62fb85449eef6cd1d3f3af16f527035ae1fe53f07bc1eff7cd108ec3a609adac9d7892492', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:03', '2020-08-02 22:15:03', '2020-08-17 15:15:03'),
('093d939417af8a7ea3a106eda432cf5e7a922cb4bd2bdd5607c8a39b1cda7fbb40b42c59c2292939', 162, 2, NULL, '[]', 0, '2021-07-06 00:03:59', '2021-07-06 00:03:59', '2021-07-20 17:03:59'),
('0a0a89f658400e35ea964d7d74aad4508c7efe968e497504ffb9986ba7eb5b1af3d2a157895d8387', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:40', '2020-08-02 22:15:40', '2020-08-17 15:15:40'),
('0bf1e907afc952625ebdb820287aa4abbf4f830dcd26d7e517aac3c0890e2097f70c78132e88e9da', 113, 2, NULL, '[]', 0, '2018-01-25 23:01:14', '2018-01-25 23:01:14', '2018-02-09 16:01:14'),
('0db4701bcf7afa67ce3aed5518cb2afe705849421cfefe923ffbb7d3540968c13e609b27847b4306', 146, 2, NULL, '[]', 0, '2020-07-25 06:10:20', '2020-07-25 06:10:20', '2020-08-08 23:10:20'),
('0e055fa48a0d3bb86a679f9f0238d285d54dbd4530d4d97fb18aa016417ff9318bc3f16708b1a1c0', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:44', '2020-08-07 12:31:44', '2020-08-22 05:31:44'),
('0eb013d282c40aa0b95cd75ede06809d9cbf2c55c433d3bcbd982f58934915bfb14a9bd34f8dbf0d', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:50', '2020-08-07 12:31:50', '2020-08-22 05:31:50'),
('0f20a39a5828755c75e94f80335db4e4b2896ffb9af4b9fea17fd243babb48f333ce74112bafe886', 122, 2, NULL, '[]', 0, '2018-11-01 06:26:42', '2018-11-01 06:26:42', '2018-11-15 23:26:42'),
('0f3ce09ad77aff912563ad7c80bbf54eab4cf073478668fe414d5fedbf1061e3f184d43880ea029c', 122, 2, NULL, '[]', 0, '2018-11-10 10:25:34', '2018-11-10 10:25:34', '2018-11-25 03:25:33'),
('10ecf42b396ef51671ef37e9f353c0ac79f30c48225803a338090c93558098adb64ef53a45775aa8', 122, 2, NULL, '[]', 0, '2018-10-31 00:21:48', '2018-10-31 00:21:48', '2018-11-14 17:21:48'),
('13a855af7593cd940e5c06aa504ce50006f22bfa312100ac1b680faccf2eb2448f941d3b1b09839c', 147, 2, NULL, '[]', 0, '2020-07-24 09:32:40', '2020-07-24 09:32:40', '2020-08-08 02:32:39'),
('141601c80063ccfbc0ef3c8f997479f1aafb490425ae7f5e9965fa47570a2a829f046588d0ca0b6e', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:07', '2020-08-07 03:53:07', '2020-08-21 20:53:06'),
('142ce7d71becb454a97a8a64b98eac16d35554f9e03f1acb798d39926093142946ab3596599dd0d6', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:17', '2020-08-02 22:15:17', '2020-08-17 15:15:17'),
('1517c00053544747dfeaea4f8b438c57d0ce0fe19c5f7f1607e809519c58a130287c27e4803e577c', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:22', '2020-07-26 04:47:22', '2020-08-09 21:47:21'),
('15560c62fd8d08c16ac0ec84474a625e2102b65dbcc9e3e59503dd235ca281d6ebd6f222f04f09e6', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:36', '2020-07-26 04:48:36', '2020-08-09 21:48:36'),
('15c8210748b9b076bb1a8bc6b7d2cf406dde6a4d23845f5ea08ebae0b66275c620af3eee4a48d042', 113, 2, NULL, '[]', 0, '2018-01-27 08:32:21', '2018-01-27 08:32:21', '2018-02-11 01:32:21'),
('1833541c4f67d32789fa8f4e7c70b58a63743e84b452e103e7e5bdfe1be98b3ae12be98c4fafde36', 147, 2, NULL, '[]', 0, '2020-07-22 17:58:39', '2020-07-22 17:58:39', '2020-08-06 10:58:39'),
('186cd64e176e71c488a07b6b6d47825489901845f50f8cd92ac624411c00ab6dd571621350df756e', 148, 2, NULL, '[]', 1, '2020-08-02 22:16:50', '2020-08-02 22:16:50', '2020-08-17 15:16:50'),
('193b1f256caf14f0c7527538943a44fa7d7178d617478d9d6261aeab082c83a339587f02d3432506', 147, 2, NULL, '[]', 0, '2020-07-24 06:09:20', '2020-07-24 06:09:20', '2020-08-07 23:09:18'),
('197be93dcd9672e7a564827a0030460d602cdf8c25620fc6bcfaddfb9210ed63a64a94d1774df1ed', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:59', '2020-08-07 12:31:59', '2020-08-22 05:31:59'),
('1a59baba724a3cc8e4154fb63d53f74431ea9f09677daef90b00ce6c126bdf9a87f7f2135bf1632a', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:53', '2020-08-07 12:31:53', '2020-08-22 05:31:53'),
('1a61e639988fa4a6bfea47f7b9f249e1d809dc4aebede9b3fd843af3d79610ac6bd671ddd3b30476', 149, 2, NULL, '[]', 1, '2020-08-07 12:32:05', '2020-08-07 12:32:05', '2020-08-22 05:32:05'),
('1b117f862a09c300b4ba34b647bb54fc74d967fcbd7a7a9d52c697bd744c7297bd37495e50daf200', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:11', '2020-08-07 03:53:11', '2020-08-21 20:53:11'),
('1bb008b6ac5ea8842f23ce538e8903a687135dec4044f01bc25cf7281471ff2169803f0d183233a6', 141, 2, NULL, '[]', 0, '2018-11-20 18:30:53', '2018-11-20 18:30:53', '2018-12-05 18:30:53'),
('1cd51ced0527420ad24332bad405d855a427f1811731aed4a377ee4dc502eade06a6c97b4e7109f0', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:08', '2020-07-26 04:47:08', '2020-08-09 21:47:08'),
('1e6faf09f63d431c25ecac1ddc2b40f23f64f2bccf473c322c7d9b56e5f82e5c0e1c8b047aceca06', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:39', '2020-08-07 03:52:39', '2020-08-21 20:52:38'),
('1fa272aae54c16f9eec0dc39d713b06bac0862d7ff7445c97724e3e7d2442108e0ef1a79e9138afa', 113, 2, NULL, '[]', 1, '2018-02-13 12:32:26', '2018-02-13 12:32:26', '2018-02-28 05:32:26'),
('1fe945126e66ddad9aa304de70faab8ffc75b34d28f1a5bf39c48344c6aea01fba56b91114f56050', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:00', '2020-07-26 04:48:00', '2020-08-09 21:48:00'),
('20421d1d249ceb43b001993d72eff579ba767b7070bbeccac9f2ec2dcef0f8481b8ca4e57d57831f', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:52', '2020-08-02 22:15:52', '2020-08-17 15:15:52'),
('205119bc085aae1e89abb4e25e9ac0d327e3e0b02391d1bffa916a23f999bd8a23485105738acdd9', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:12', '2020-07-26 04:47:12', '2020-08-09 21:47:12'),
('21a118f4d361f8e7dfd9b6048906cd559f8128e997d614ef4ecaa1e28da845e774ff9e93a17bd914', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:39', '2020-07-26 04:47:39', '2020-08-09 21:47:39'),
('21b678057ebd6ef295cc28b1ee1bd98de6356acf752c9f0b1900bc7d7bd4dda723494f67825124f6', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:38', '2020-07-26 04:47:38', '2020-08-09 21:47:38'),
('22355824ec18c012992889c789f61613ab8875a09f3509883faa8d2090ebeede3d2bf556a2f6fb1c', 147, 2, NULL, '[]', 0, '2020-07-16 21:43:22', '2020-07-16 21:43:22', '2020-07-31 14:43:21'),
('22cd318a0e3913344d81dff4000af2ca125e4ed484399af3009fc844f35578356ce3ea4f9eaa95fa', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:46', '2020-08-02 22:15:46', '2020-08-17 15:15:45'),
('237d2efb9a8befbdb02bec97232d6b74afbac6055cf12ba85ecfe40dde4c84ec2fd3c4632a65d94b', 157, 2, NULL, '[]', 1, '2020-10-08 18:55:51', '2020-10-08 18:55:51', '2020-10-23 11:55:50'),
('240f0fa03ad1db3f2cc6622eb1fc7762bffb0c7430e4f9ef46a5362fbc63eb83f6b4aa91a16c86c9', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:07', '2020-07-26 04:48:07', '2020-08-09 21:48:07'),
('25af2972dc8699e7f6df92a2e61d28db3a026b37fc645da0bae04ff029a44875952532027632b9d5', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:34', '2020-07-26 04:48:34', '2020-08-09 21:48:34'),
('2621cccff454b9e346d2541b4ba9c4e995dd39cd3d7bc26829a305c700f3cc8aa985298c7cee5d3f', 144, 2, NULL, '[]', 0, '2020-06-24 08:24:09', '2020-06-24 08:24:09', '2020-07-09 01:24:09'),
('263fecd4b380837d255a821b9e413985d7773a0558e3bc2ecddea8cd4e2984b0e73559ca73ab4913', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:37', '2020-08-02 22:15:37', '2020-08-17 15:15:37'),
('26cb52b0eda03b48c3f2c26301cfb02cd11268f5650108612474e7b9db737446ac0179bbe79eec2f', 147, 2, NULL, '[]', 0, '2020-07-25 12:17:03', '2020-07-25 12:17:03', '2020-08-09 05:17:03'),
('2766e69378edd29f4214db8e0dcc87ed63fb48f303062e0e82b29717c36838ca082393c6ae7441f1', 144, 2, NULL, '[]', 1, '2020-07-03 12:58:41', '2020-07-03 12:58:41', '2020-07-18 05:58:41'),
('27dcd47b4c84f14b187bb7ace89530007db02d6038081836df94a102ac138b3da18d39d4c80c7a78', 145, 2, NULL, '[]', 1, '2020-07-02 09:30:38', '2020-07-02 09:30:38', '2020-07-17 02:30:38'),
('2b26460e30198025f52eb3e4a1e2e9cdb12bc93464d1627be3bf11a83d99a847af8c1f3c9d37dfb2', 131, 2, NULL, '[]', 0, '2018-11-12 19:04:57', '2018-11-12 19:04:57', '2018-11-27 19:04:57'),
('2b8b18c2c3b8336fc9c6fd77a30a796f4234a12f829de201d82f17fe1b2e567fc2f6ef524ddb3e28', 154, 2, NULL, '[]', 0, '2020-08-01 23:19:53', '2020-08-01 23:19:53', '2020-08-16 16:19:52'),
('2bf08cb80b4364ef2c2d3961fb1bc92c42d79841ccf681bb19d7ae48530e37d4043a9f93a2b54adf', 122, 2, NULL, '[]', 0, '2018-10-29 08:35:13', '2018-10-29 08:35:13', '2018-11-13 01:35:13'),
('2c2263f96609171654ab3e7fcfdbe246f9aaf05a1dee9cca02c0227e161b65b90f9b1831ce332057', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:46', '2020-08-07 12:31:46', '2020-08-22 05:31:46'),
('2c9427abd40d5ed483f2bc1dabcad504baeae90145f04823cc9c1edb6544dbe82011f634b27d2a50', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:05', '2020-07-26 04:48:05', '2020-08-09 21:48:05'),
('2d48afcd3b602c85c25d6daedaa609f7e33d46d25dc0a7eee831b7200d5b7c6138451186db632c36', 147, 2, NULL, '[]', 0, '2020-07-25 01:06:12', '2020-07-25 01:06:12', '2020-08-08 18:06:12'),
('2e61782c8b20798bdfb7f458fd5547b131197a4957eaacb1a586628d0ac0416703a3eb86c6b787ab', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:09', '2020-07-26 04:48:09', '2020-08-09 21:48:09'),
('2e89773fb31effd2f2dbca2557204d05d6d6a8e2dfe690c8b5e2f0cca01da4f13b2c95e703dbd440', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:40', '2020-07-26 04:48:40', '2020-08-09 21:48:40'),
('2ef3315d9552c2871e8b7fcff5bd12f45e1c6d90b9f0eeac87534168528d9adcd0dc894bed47b892', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:45', '2020-08-07 12:31:45', '2020-08-22 05:31:44'),
('2f01ececadbb13fa4146614ca5b9d6674e13410d3dd9dbc0cb2ee6fc898e95f13c237fe73c9417c6', 148, 2, NULL, '[]', 0, '2020-07-26 04:44:16', '2020-07-26 04:44:16', '2020-08-09 21:44:15'),
('2f28310b926ee960f3025c3e11f9a0f889dfdbe58a3e29e2d91df32dc99b67dbb0a58fea7719f654', 145, 2, NULL, '[]', 0, '2020-06-06 17:32:58', '2020-06-06 17:32:58', '2020-06-21 10:32:57'),
('2f559d4bc5b42d1db4b467691ea54e3df9ddfb3ccb429a72925c98c7c0bd44ba7726e4c48709bc9b', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:56', '2020-08-07 12:31:56', '2020-08-22 05:31:56'),
('305749e7ebf41d60e43cb54e8a40dad7bc76bb57d1efce77bdc9ea84532e34e6fdefd97efde2568e', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:51', '2020-08-02 22:15:51', '2020-08-17 15:15:51'),
('308f5dbe2a465589a4790c2a07ea6e966e1df1efbca87c2460b89ba2e8232472a87d7a431af8f9fa', 150, 2, NULL, '[]', 1, '2020-07-31 12:30:54', '2020-07-31 12:30:54', '2020-08-15 05:30:54'),
('31b9ecab7ea791a710fbe9f593425a6da92536f62484ab9d204e6ebce501e9dd85f6480fde583c4b', 162, 2, NULL, '[]', 0, '2021-07-07 23:56:05', '2021-07-07 23:56:05', '2021-07-22 16:56:04'),
('326de96ea563e9d73c0078bb856b66c6ca3cbac7ccceaff1f41b41536f221d2e4c1068ef7af39591', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:13', '2020-08-07 03:53:13', '2020-08-21 20:53:13'),
('32c4e3e060ac502a32262291728045eb2db01487afba4a5c632e5a1283bba4cb12b852e263ed4af1', 113, 2, NULL, '[]', 0, '2018-01-27 10:07:25', '2018-01-27 10:07:25', '2018-02-11 03:07:25'),
('34ab53c8c7f985a4bb8c0b3cfff91cc58aef5dfeb655c3ffcd96169c50df3ba6364dca2196010039', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:15', '2020-08-07 03:53:15', '2020-08-21 20:53:15'),
('36104068b50d53e3253934a1b8e192a75d16ff77ce687a441e6ebfd189cdbc32389cb080d76de8f8', 148, 2, NULL, '[]', 0, '2020-08-02 22:16:57', '2020-08-02 22:16:57', '2020-08-17 15:16:57'),
('3a713f22f38fb1da258afe5eac36244181482c6687ee6a1ff74af2aa0f5bcde0835e6590467d0ad2', 138, 2, NULL, '[]', 0, '2018-11-18 15:59:59', '2018-11-18 15:59:59', '2018-12-03 15:59:59'),
('3a79d62d6aa38593890ee7f193f376498f6a4489813ddc9926923ff9bb50e29fa7675f64bea5abe8', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:45', '2020-08-07 03:52:45', '2020-08-21 20:52:45'),
('3b6431d9bd2dbd4405b31c0b18e135ff856662251cc8bdbaf31dda9f124d15f85f9a97943c6ddd9f', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:48', '2020-08-07 03:52:48', '2020-08-21 20:52:48'),
('3b94b753a390c3a64d2e67613f57c856ffd1df9e7da06829c77b8ac0e2fffba768d2a9b76ef8f373', 145, 2, NULL, '[]', 0, '2020-06-16 22:10:19', '2020-06-16 22:10:19', '2020-07-01 15:10:18'),
('3cf63db364f1a6dc8ff643fb7e38b4a25f6b693034ed5d3ac1ac593324413d9fe32b91bb1f2584dd', 156, 2, NULL, '[]', 0, '2020-08-30 08:39:18', '2020-08-30 08:39:18', '2020-09-14 01:39:16'),
('3e781eaa388fca8841e0af6b6b8c511592f98e8b58299c8be491ebff5930028f01b86b24d28e5544', 156, 2, NULL, '[]', 0, '2020-08-29 19:31:54', '2020-08-29 19:31:54', '2020-09-13 12:31:53'),
('3eae0d53e23ab1e95bcb4d9340ea3f6b82b126c495c4d14a873fcab7059fe48b5219a6aab102c28d', 156, 2, NULL, '[]', 0, '2020-08-13 08:18:49', '2020-08-13 08:18:49', '2020-08-28 01:18:49'),
('3f10fbdd80f3bcfab066902118c98b3489ca64a32c07901adfbf4dc4b4fa1b88d9c67fe5a840a4b2', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:57', '2020-08-07 03:52:57', '2020-08-21 20:52:57'),
('3f9631de66a24cf968c1c9b9a61e0ab7b9716753b0dbc17542f5f839b4f604ca7d8fb14252ca3793', 144, 2, NULL, '[]', 1, '2020-07-10 15:29:22', '2020-07-10 15:29:22', '2020-07-25 08:29:22'),
('42b962aad814420ef238499d0a65c78930d23d8f976747cf3e7afca5f4fc7713a74f5f25388f4b44', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:52', '2020-08-07 03:52:52', '2020-08-21 20:52:52'),
('431f27649d0e78d816231080fd016b1f82f1a6af7cc1198982e72b728bb1091d6cfa8d95af32dffe', 147, 2, NULL, '[]', 0, '2020-07-24 06:09:20', '2020-07-24 06:09:20', '2020-08-07 23:09:19'),
('43334005182829d9349be8278e79a7aa01aa032fb6dad0c1309ea42d582600e9515535147430a851', 148, 2, NULL, '[]', 1, '2020-08-02 22:16:53', '2020-08-02 22:16:53', '2020-08-17 15:16:53'),
('43946843f2fdd0a789a663b8fd864129f9f95f447063ea04db47e7d730f79261224a78fec59ddb7c', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:16', '2020-08-02 22:15:16', '2020-08-17 15:15:16'),
('4441cf21479707530ea9e3ce525d7152db1b48cbfd64c8f6692cfce2b725809f15872ed54dff2bab', 132, 2, NULL, '[]', 0, '2018-11-13 12:29:50', '2018-11-13 12:29:50', '2018-11-28 12:29:50'),
('4473a559bc9ee4b3760853246bb8e7b5671275d1ab0fefd445189c6343f6bb328f8b3c6f605fb5eb', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:08', '2020-08-07 03:53:08', '2020-08-21 20:53:08'),
('44a28b2be19b915f2e02719cadfd271fd5606a2b2f68b9f971ebc93d616a2f799f87a77dceef5dd7', 139, 2, NULL, '[]', 0, '2018-11-18 16:15:05', '2018-11-18 16:15:05', '2018-12-03 16:15:05'),
('452c0cf01ba478ada05a268575909241d3b78344e4dc68fd48db9017f0b52941a4705068940c7a8f', 144, 2, NULL, '[]', 1, '2020-07-10 15:29:26', '2020-07-10 15:29:26', '2020-07-25 08:29:26'),
('469af62a6e85083af08bd54bd1971d32aa12809a8c2f06ae98d1e220bdb874c3059fd21fba89b670', 147, 2, NULL, '[]', 0, '2020-07-25 12:18:24', '2020-07-25 12:18:24', '2020-08-09 05:18:24'),
('47942f06351a20d53e84590ff34e141c9bb055b4296ce771254e15a6298904cedd62f1a0da273fb1', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:27', '2020-08-02 22:15:27', '2020-08-17 15:15:27'),
('48352af75fdf1653b63c502cd6923e2cfa196cbedc7f81cf18224157c5ce569a21137a46d178592b', 150, 2, NULL, '[]', 1, '2020-08-02 22:14:55', '2020-08-02 22:14:55', '2020-08-17 15:14:55'),
('48dc7f562fac4e3cacd9e41cac709db9ff6a8e1efc4e2891f66b87290fac6763961b4e1d582c3029', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:02', '2020-08-02 22:15:02', '2020-08-17 15:15:02'),
('48efdcd463ba5c077c4fd6a75e80726a1dbada06dbc928245bad297909a39828425b9fe66572361c', 127, 2, NULL, '[]', 0, '2018-11-10 08:48:54', '2018-11-10 08:48:54', '2018-11-25 01:48:54'),
('48fb7e82c0675a9d3883c0f0b4aa43323697e662ec0bf316a81d93fc9b3380a9c0d33958162b6a2f', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:11', '2020-07-26 04:48:11', '2020-08-09 21:48:11'),
('4b207885a8d2d095a0c04add7e418c06dd2603335f20dda793378ada5c77f5ea28dcaf5c9e82fab6', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:14', '2020-08-02 22:15:14', '2020-08-17 15:15:14'),
('4b84a47bf95f9a5cfe2ce056fa59edaa45dd37a98ca8ca728708aaaaabe1c0deecc4b3189f96577a', 150, 2, NULL, '[]', 1, '2020-08-02 22:14:56', '2020-08-02 22:14:56', '2020-08-17 15:14:56'),
('4bbb33a6a4cfe454752b4f1ffef252d525ca2459c1cf47ebf522068daa3d37ff5bb21ae11f746783', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:25', '2020-07-26 04:48:25', '2020-08-09 21:48:25'),
('4cdaae0cbae76003a5afe905dd358ed9c7e2c37dd8301d02491da35db4491ab53cdf0b68cd88e4bd', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:01', '2020-08-07 03:53:01', '2020-08-21 20:53:01'),
('4ed2dea1572ebe7acafd472d052c94ee55b26589ea18723b78f617f87055f70c33cb644c0a35fc99', 141, 2, NULL, '[]', 0, '2018-11-20 04:33:05', '2018-11-20 04:33:05', '2018-12-05 04:33:05'),
('4edbd7c4572c27a5cd4f6000e0120891e22cf00b16f4eb5314a108cbd5fd65ee879553c8562fca00', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:25', '2020-08-02 22:15:25', '2020-08-17 15:15:25'),
('50761abb899bcb9b445dde67d93d563dd44c8629cb4d9a12013fdd1069e81387bdb53799c94ed17c', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:31', '2020-07-26 04:48:31', '2020-08-09 21:48:31'),
('50ad1f692337931c75eab0c8ba98bd80ed8eea5b426b0dd019dcbad3aa1b569ee94a1b1018e2259c', 145, 2, NULL, '[]', 0, '2020-07-02 09:30:39', '2020-07-02 09:30:39', '2020-07-17 02:30:39'),
('51469d0b0bf11c4c00fd83b36ead9b4476f64daffbf5ed6e6d8112b774af729de21f9cb1ed2ddd62', 153, 2, NULL, '[]', 0, '2020-07-31 13:37:42', '2020-07-31 13:37:42', '2020-08-15 06:37:42'),
('5281ec127e753281074570bab9ea481c8164e4050faf77141785135850489f01908372dbd4fb0e99', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:39', '2020-08-02 22:15:39', '2020-08-17 15:15:39'),
('52957df7894530149db31c9550b9714c7f866d1278bf576bf10b19b1bad61262924ab3c08b0dea0f', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:36', '2020-08-02 22:15:36', '2020-08-17 15:15:36'),
('551b0e66e7c603bda554bce42f55559555e4d05510f7ef5ba78f2d6df9f007968dc72dfcd4b4b544', 145, 2, NULL, '[]', 1, '2020-05-30 13:37:33', '2020-05-30 13:37:33', '2020-06-14 06:37:33'),
('5613ddb1a13e43b2224ced90936169e00f6536c88667734554baddbc8d3bbd8d962e7be4e91f8a5f', 126, 2, NULL, '[]', 0, '2018-11-05 20:40:03', '2018-11-05 20:40:03', '2018-11-20 13:40:03'),
('564228b9100839c9b474a5a25097ed5ed54316be561bafdd97e3d2e37f27d4387d884ebdd47e6849', 149, 2, NULL, '[]', 1, '2020-08-07 12:32:03', '2020-08-07 12:32:03', '2020-08-22 05:32:03'),
('5743d691d935ce0d048b69326314fb2dcc5f4b5c9b0aab22bb83d3954e8d83c690012046d8910dac', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:24', '2020-07-26 04:48:24', '2020-08-09 21:48:24'),
('5754f2a1e338108a856b517839178d02b0c54220801badddb2ba3b6588326e851638958ed50d2bc6', 144, 2, NULL, '[]', 0, '2020-07-09 14:32:36', '2020-07-09 14:32:36', '2020-07-24 07:32:36'),
('578e2df26cd9fd6f6f43056352af83bd28cceea8f6045ca48927ecdb29760f5bc982f38389fe35b9', 158, 2, NULL, '[]', 0, '2020-09-18 00:32:37', '2020-09-18 00:32:37', '2020-10-02 17:32:37'),
('57ee81897ce088454372886bdf966997987288753a31a2cbc51bdeceeb9e098c5ef425ab86984681', 145, 2, NULL, '[]', 0, '2020-05-30 10:01:02', '2020-05-30 10:01:02', '2020-06-14 03:01:02'),
('58349954cd418c7105358d885c4b473bfed3f6b166631bad770a8e68acfb1dbea3e160be68d232f1', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:23', '2020-07-26 04:47:23', '2020-08-09 21:47:23'),
('58b2a042c4cd258f6b70a167ef68e86a7c9eeb35b8f0ec4c1e60b4268e4eb565d9cf2aa3ddf68cad', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:50', '2020-08-07 03:52:50', '2020-08-21 20:52:50'),
('58ea631d6fae42d728eb480df7b47c55e995094a9778cb0504473dc1defa21b1ac53f8e3c9e63523', 144, 2, NULL, '[]', 0, '2020-06-21 10:12:26', '2020-06-21 10:12:26', '2020-07-06 03:12:26'),
('5aec631b44d2eb9f11d6798d6777baf2d4aecbd3632f9ee0434a076d8b968c9dc99f2abf989970c1', 147, 2, NULL, '[]', 0, '2020-07-23 09:02:37', '2020-07-23 09:02:37', '2020-08-07 02:02:37'),
('5f1cb6f4a56fbac66bdd6f771b935ff2d635e504eb10319274e2de76047beb2204545c1f903c633e', 122, 2, NULL, '[]', 0, '2018-10-25 21:54:18', '2018-10-25 21:54:18', '2018-11-09 14:54:18'),
('5f26a561e280e83a563834f5c135c2a0ff2247ab0081256c9e8e8943ed9691013aa769197c2d4cad', 144, 2, NULL, '[]', 0, '2020-06-04 16:08:01', '2020-06-04 16:08:01', '2020-06-19 09:08:00'),
('5f346a5419451f49388f1f4a2244335c2be16eeb9cdc469a696ed799ecca23923fafdcb09976f82f', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:41', '2020-08-02 22:15:41', '2020-08-17 15:15:41'),
('60cb94541168af719ec1d5e0cab433e97c540b47d55f92152b0d8875569dab14a62c0286a1c12c56', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:32', '2020-07-26 04:47:32', '2020-08-09 21:47:32'),
('60ed4791dad3d9c3c612f1dce0afcd0dc44c92beef990d79ff20e0967c642f250f7b54be72656429', 144, 2, NULL, '[]', 0, '2020-07-10 15:29:27', '2020-07-10 15:29:27', '2020-07-25 08:29:27'),
('621ddf5571551241bf92f7c61586564f365e6958b61699087de815e4aa9302fbc6e14282222db8bc', 145, 2, NULL, '[]', 0, '2020-06-16 09:09:34', '2020-06-16 09:09:34', '2020-07-01 02:09:34'),
('6248af6b64d6d80a4b082b7dca2320ac9041be5031837c88e6643bbb69158a80d7de97067609c7e1', 144, 2, NULL, '[]', 1, '2020-07-03 12:47:04', '2020-07-03 12:47:04', '2020-07-18 05:47:04'),
('627212bf3b850bf8873768edc154373c62b68403187730f247258d1efa6fa72e594c7f917f10b16b', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:42', '2020-08-07 03:52:42', '2020-08-21 20:52:42'),
('640ab897957f36041f673c74a5b697214932eb66931f71146094b352cdb63f1f35e5ed6985959829', 125, 2, NULL, '[]', 0, '2018-11-05 20:07:23', '2018-11-05 20:07:23', '2018-11-20 13:07:23'),
('644d2788e43c4e12e1e60de0729a3158a1c3d05e0f660de6e3ae151a2f0b9d576f46d78f58f0c708', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:42', '2020-08-07 12:31:42', '2020-08-22 05:31:42'),
('65e91d959972e00591fc3f7d6a9e2dbfd529295ef6b1d45d811c4b8f37043e8b7f4956177de7be51', 147, 2, NULL, '[]', 0, '2020-07-16 17:26:46', '2020-07-16 17:26:46', '2020-07-31 10:26:45'),
('664e425befcefeff7b025e828da976a84099629fbe6b8428938bcb1e829d75066bfb17663717eaba', 159, 2, NULL, '[]', 0, '2020-11-08 14:07:27', '2020-11-08 14:07:27', '2020-11-23 07:07:27'),
('6800ab289ef166aa412952f1f2f707c6ee1af9c85538589085bc0e3464d6b181deb8a5b92935e2a5', 154, 2, NULL, '[]', 0, '2020-08-01 23:19:54', '2020-08-01 23:19:54', '2020-08-16 16:19:54'),
('68df837ccd427ffc9a006a20984066f7bc4a16ccb9152afc078a77f47a32719855a3417768611b2c', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:30', '2020-07-26 04:47:30', '2020-08-09 21:47:30'),
('6ad7a3c87c17ef0791b5fee0eb070b30d69a088d5b35a0a5a4b73f636b7ff5a0e3977e24e7ab1e6b', 147, 2, NULL, '[]', 0, '2020-07-16 21:43:22', '2020-07-16 21:43:22', '2020-07-31 14:43:20'),
('6afc3fbb533f0bc52d5429ad9235211cfc9478fe6f742410e063d8f8bc508d5822c494945e5cfbdc', 144, 2, NULL, '[]', 1, '2020-05-30 09:22:09', '2020-05-30 09:22:09', '2020-06-14 02:22:09'),
('6b24a00bf9e9ecadcfad5c7b518d3fdacec14fd266541f41a57eb2cab6f6fa6f6db5fc76bc9fee4b', 146, 2, NULL, '[]', 0, '2020-07-25 06:10:17', '2020-07-25 06:10:17', '2020-08-08 23:10:16'),
('6c88ed69edff5df95693a0536d5f77c85a6f04e1cfaf78c3cbe988f56df77978ce688212eaeb8fb1', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:29', '2020-07-26 04:48:29', '2020-08-09 21:48:29'),
('6d6f9d1ee79ab9842019c42c272c2a78a2754f27f1d9cafea02f3f15729c0f084b155e088b4b4432', 150, 2, NULL, '[]', 1, '2020-08-02 22:14:57', '2020-08-02 22:14:57', '2020-08-17 15:14:57'),
('6ddbc9f9588f34ad0d2da90112d293c72bffa8b6449a9f00a4eb1afaf7c3b678cd951f2ffda24179', 146, 2, NULL, '[]', 0, '2020-07-10 15:30:19', '2020-07-10 15:30:19', '2020-07-25 08:30:19'),
('6eedd43008028cc5133569611fca5373fb7d2ed7bca0d5da0a91677c6b047165e1f9e7ecae9ba631', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:32', '2020-08-02 22:15:32', '2020-08-17 15:15:32'),
('6f10b4627c40e8150665d5122d4ff9e4a5802f844fb0babcc54faae95aa9c1c7292c60713c2e37c4', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:18', '2020-08-07 03:53:18', '2020-08-21 20:53:18'),
('6f387f7f2a06aa0ab484e5c67efe7d06d9a0b6cf87ba576d19048b69f772bbb208aafd5384117ceb', 144, 2, NULL, '[]', 1, '2020-07-10 15:29:23', '2020-07-10 15:29:23', '2020-07-25 08:29:23'),
('6f90e902a9b78658f3ce16a56fcd2d8ee2e6e910349db2e80b30fe35183a291be77ec3777da47aa9', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:04', '2020-07-26 04:48:04', '2020-08-09 21:48:04'),
('6fbf42172050d44f8955b85aba0bd31369416353b8d6e6467401ee2319e08a83069cbb993af2d2d8', 122, 2, NULL, '[]', 0, '2018-11-07 16:10:42', '2018-11-07 16:10:42', '2018-11-22 09:10:42'),
('77a9dd8569190e611d34aa7b512057cbc06fde23457ba6be19c41861abfd2e1993aafd85fda7dc17', 149, 2, NULL, '[]', 1, '2020-07-30 17:16:45', '2020-07-30 17:16:45', '2020-08-14 10:16:45'),
('788002a7437593b0b0b94389712ae609dfdccda75a2128dca09e13f64c74241a5b1e710c2acaac0d', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:20', '2020-07-26 04:47:20', '2020-08-09 21:47:20'),
('794309554dd7b7be471225300c0ed178c50d42e10f2aa07c3a37e9c4c3846c1189179bf239b7a880', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:23', '2020-08-02 22:15:23', '2020-08-17 15:15:22'),
('7b50512d032a6fc9f3fbfbe918647446d5bbe24e170543bce6758eea006682b8b971f15e6387b8b8', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:13', '2020-07-26 04:48:13', '2020-08-09 21:48:13'),
('7e9dbc6d28b3338ba724136abca9e6a5d51694a63fc2cc9229a7bc19fc94d3041710468d62ebd13c', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:41', '2020-08-07 03:52:41', '2020-08-21 20:52:41'),
('7f735a4ce1b339b87cd730d91fc346ef613775ed180d9f74df81695f115fbc65135574a9b37a96fd', 162, 2, NULL, '[]', 0, '2021-06-23 11:48:11', '2021-06-23 11:48:11', '2021-07-08 04:48:11'),
('81a4de9b114c0647c14ae292adfe9e12875189dec98ad1cc9c34fc712107c5d11c603f544716fd87', 148, 2, NULL, '[]', 1, '2020-08-02 22:16:48', '2020-08-02 22:16:48', '2020-08-17 15:16:48'),
('836ac7ec5ff86b995bda658c2ab838861d09196c66e0b176967376a5613f2c067e3390ec36a9d96b', 146, 2, NULL, '[]', 0, '2020-07-09 14:36:55', '2020-07-09 14:36:55', '2020-07-24 07:36:55'),
('83dbb6789664d3529d9ede77ec33b89b64c1e381ebbecac2d94c26be98a33639bbda5e71731aab92', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:50', '2020-08-02 22:15:50', '2020-08-17 15:15:50'),
('846b7cf5d654723f0b8469b80f890a819019feef24f120441cacf839d6588048080c60deaf82320b', 137, 2, NULL, '[]', 0, '2018-11-17 12:24:31', '2018-11-17 12:24:31', '2018-12-02 12:24:31'),
('84a4b8a3f157d4cdcc58af8afef5c8f839293a288af48ec8795802b3fed2b6398358acf201ab471f', 144, 2, NULL, '[]', 0, '2020-07-06 06:22:26', '2020-07-06 06:22:26', '2020-07-20 23:22:25'),
('8643876bf0a8778adfacd8434a0ceff0823d3efa7e664a0c7b0ce0dd1e2332a94236761650829c40', 145, 2, NULL, '[]', 1, '2020-06-16 09:09:33', '2020-06-16 09:09:33', '2020-07-01 02:09:33'),
('87301473d872a2c599586c3620506c83d8532f3afcad7f5d1e3eef6f42bbc3e28d77f3168c695293', 122, 2, NULL, '[]', 0, '2018-10-25 21:53:50', '2018-10-25 21:53:50', '2018-11-09 14:53:50'),
('87b6a79f4261bcdefb9a4c288189dddebab74bccaf87f2b864569e16850ff9f11f52c9325ce6eefb', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:05', '2020-08-07 03:53:05', '2020-08-21 20:53:05'),
('8934012629bbf187668c9214817a5aeaeb663e24d42e4e686ba10075b535452fa92c9d97097edd89', 147, 2, NULL, '[]', 0, '2020-07-22 17:58:36', '2020-07-22 17:58:36', '2020-08-06 10:58:35'),
('89c72bf77fcd76f61ac13c1784d6e51af04420ed9778aa0e139ce3505d8c0b1a97186f7653917714', 145, 2, NULL, '[]', 0, '2020-05-30 09:59:51', '2020-05-30 09:59:51', '2020-06-14 02:59:51'),
('8ab4b09eeb41c71662c515b48f510b3c885e368197a3b78883811a52b6066aa58b2f6a2cf621c97c', 145, 2, NULL, '[]', 0, '2020-06-06 17:32:58', '2020-06-06 17:32:58', '2020-06-21 10:32:56'),
('8ab4e4d3f26e75934bc3a95c7d201a609b552c41e01bfc176ce223eac83d199db1540b0f99bf1f68', 150, 2, NULL, '[]', 0, '2020-08-02 22:15:54', '2020-08-02 22:15:54', '2020-08-17 15:15:53'),
('8b543249e7b7dcbe3bd5d6dc90446058ce92cdb285408b3d446e16868ad3ff5398dc5494085c0087', 144, 2, NULL, '[]', 0, '2020-07-06 06:22:28', '2020-07-06 06:22:28', '2020-07-20 23:22:28'),
('8b5ab6377d4d4962cfb9049e041a88b03c5158dac7e6e864158d8920e2a8ceb7ced02d53e61bfce7', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:19', '2020-08-02 22:15:19', '2020-08-17 15:15:18'),
('8bb4282f696ddf8166c2f615a85e1c4d99b331c6e5113bc546381867c15e5b2034576a80c3c8c626', 145, 2, NULL, '[]', 0, '2020-05-31 09:05:55', '2020-05-31 09:05:55', '2020-06-15 02:05:54'),
('8cf13a1152bba65397e37805e43032f823bc86821d6de28a9a4fda736f5c0911cf513bdc89d96029', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:14', '2020-07-26 04:47:14', '2020-08-09 21:47:14'),
('8d1ce7bb78fb1147da9de756168571a965ee556030c65de985c309b5cc02ea52be3af3b1cb3b1436', 144, 2, NULL, '[]', 0, '2020-06-22 00:33:34', '2020-06-22 00:33:34', '2020-07-06 17:33:34'),
('8eab45cceac34614f8c1e4a28c7c9e3490a7b8c5b4432bd4e6cc15655d783a81471501c2e631f314', 144, 2, NULL, '[]', 0, '2020-06-21 10:21:38', '2020-06-21 10:21:38', '2020-07-06 03:21:38'),
('902113425fc07dd704d6ecad1daf3456f485252a49c9f226661af615c50e7642807f515b3b99f431', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:49', '2020-08-07 12:31:49', '2020-08-22 05:31:49'),
('939373b7ec6dfea796b39422b4a6a496e0e8d670bfeedf321dd4f91acf90dc6887aa4e5dc95702ef', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:34', '2020-08-02 22:15:34', '2020-08-17 15:15:33'),
('950b6f8a09f5447287465a87e7978db2dc644208e6bed1b12a405cb58a7ea4f0a56d7837f4521d37', 157, 2, NULL, '[]', 1, '2020-10-08 18:55:58', '2020-10-08 18:55:58', '2020-10-23 11:55:58'),
('96e36bea06ef54a3d2836a6060874b6dd19d619da721ba1dec54e8ec841092d38740d32440e37eaa', 134, 2, NULL, '[]', 0, '2018-11-15 08:05:05', '2018-11-15 08:05:05', '2018-11-30 08:05:05'),
('97b2d91580692e5dda01ba96e3872fdb1fd6ab1e142097543e5914817d83bc677838ac6b06b5d992', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:18', '2020-07-26 04:47:18', '2020-08-09 21:47:18'),
('97bdd5cc3c0d8258ecc4c2d40d687960a847c9634c13a478a850534c046ddbc88aa724f20859c163', 145, 2, NULL, '[]', 0, '2020-05-30 12:52:58', '2020-05-30 12:52:58', '2020-06-14 05:52:58'),
('98168348fcd770aef49d423954e0941b5f5b47f29db0626828d25f0e9a5a6fe26220afc2ffe75de7', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:21', '2020-08-07 03:53:21', '2020-08-21 20:53:21'),
('997cad7d4237ec564d636365d871664103dc8b1adf4eb8c11c8d6fa584a34f3aa80b7b9e2d9c6363', 162, 2, NULL, '[]', 0, '2021-07-03 12:42:18', '2021-07-03 12:42:18', '2021-07-18 05:42:17'),
('9b0362c08b5bcf31c04aecc27277b614ff5db2100ba29f28597363a1850611e1f1405a44c6787449', 159, 2, NULL, '[]', 1, '2020-09-18 00:48:24', '2020-09-18 00:48:24', '2020-10-02 17:48:24'),
('9ca3927632a45821906a72a594158076583412386ce9a9bbdd5cbdb343cf46514d3466e3cfcc72d1', 146, 2, NULL, '[]', 0, '2020-07-25 06:10:17', '2020-07-25 06:10:17', '2020-08-08 23:10:17'),
('9d58df8b4e53a600b7d3527db967370e5e2f5dc4d2c19ef6d58ca6108ad5e52c3050119cec580d29', 130, 2, NULL, '[]', 0, '2018-11-12 18:42:53', '2018-11-12 18:42:53', '2018-11-27 18:42:53'),
('9d68a20a60c3c3b01f2e3a1b3497f1d8711dbf970f217d4d9a72b310f0141d1cb9fdc3392ac459a5', 155, 2, NULL, '[]', 0, '2020-08-02 22:17:23', '2020-08-02 22:17:23', '2020-08-17 15:17:23'),
('9daf9d08c1b8a5708e160b2e2df6d31f6255f6fbc292fc798d54300e22f25a288bbd0aeb1e46dfaf', 144, 2, NULL, '[]', 0, '2020-07-02 13:02:53', '2020-07-02 13:02:53', '2020-07-17 06:02:53'),
('9e3213a625c1c9fd6a7063ee80d03f52bb45855016c31088d2c1458393357166e6f9dfca5e5a320c', 144, 2, NULL, '[]', 1, '2020-07-10 15:29:19', '2020-07-10 15:29:19', '2020-07-25 08:29:18'),
('9ef337efa000d0dd219d010e0b1dbbdae161bf8697f397b75857c43b93c49e3268ddc6ba0b186183', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:11', '2020-07-26 04:47:11', '2020-08-09 21:47:11'),
('9f10e491b2535308a60076c8ceceeb2050974ecc110d8912209b177861d7a3f450adc611567581a5', 148, 2, NULL, '[]', 1, '2020-08-02 22:16:54', '2020-08-02 22:16:54', '2020-08-17 15:16:54'),
('9fd875f410bfb858c4f0d823ed93355b85731d55112227db82e8d054c44523e52cee0d0d249c59ff', 150, 2, NULL, '[]', 1, '2020-08-02 22:14:59', '2020-08-02 22:14:59', '2020-08-17 15:14:59'),
('a1758447ebf79791983e844a90ef9295103d532acc32202004e49b149a471fc2ec0f093dec4492c0', 124, 2, NULL, '[]', 0, '2018-11-03 03:32:55', '2018-11-03 03:32:55', '2018-11-17 20:32:55'),
('a1b89fb44831a46b469f3556ef547dc60230b97e0253a9217ac36da4eb00e7410864108ffb363fde', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:43', '2020-08-02 22:15:43', '2020-08-17 15:15:43'),
('a37bb12d986ba7662b29f331dde4f93e3c5ed0e1aa31306aa2903dc9bf1a05f49b1c0900b13b1443', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:16', '2020-07-26 04:47:16', '2020-08-09 21:47:16'),
('a3d09c3dabad67dcbaa002005a4319a950dc1c3e3f187f450f9c014d7d6db31b066647cc387bd27c', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:19', '2020-08-07 03:53:19', '2020-08-21 20:53:19'),
('a577ed3b222282af75ea3c35a6d50f8782e7039ee72283495451c55e6a4ad84d027ec8d455ef4fbd', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:12', '2020-08-07 03:53:12', '2020-08-21 20:53:11'),
('a5a3b87f7bc0c90642c0a2df92681063f9a40929e3a7d25aad5e8845e6d2ed21e40f15860cdba748', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:22', '2020-07-26 04:48:22', '2020-08-09 21:48:22'),
('a5ad5179e5ad7a6f4eca2f5e883eb8f0093ccd1b1277c1031d20be8d13a99113611d47259287e469', 150, 2, NULL, '[]', 1, '2020-08-02 22:14:58', '2020-08-02 22:14:58', '2020-08-17 15:14:58'),
('a6c86a52b301864cfffbbb3bac9ce2f4148867f4fcdb16cba30cb07837420dc82016387395b88141', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:46', '2020-08-07 03:52:46', '2020-08-21 20:52:46'),
('a99427afe96ec671a41d2e52bec909de45714d73f6a601e19944a3df52d165c448c0d3dc4651dbb1', 147, 2, NULL, '[]', 0, '2020-07-25 12:13:23', '2020-07-25 12:13:23', '2020-08-09 05:13:22'),
('aa607cd17ce2a970b5053d888663ba2d2b485e990496c168b8e801a5b1d756316c7a1f8a4d31b79b', 145, 2, NULL, '[]', 1, '2020-06-16 22:10:19', '2020-06-16 22:10:19', '2020-07-01 15:10:19'),
('aac884c4c57efcfa7aaa81e40097f08fcb43ef583a6517696546db485541d38a06e0c620d56e12c0', 128, 2, NULL, '[]', 0, '2018-11-11 01:08:54', '2018-11-11 01:08:54', '2018-11-25 18:08:54'),
('abda0d35adf51053b64df6efd8782a1c8bcfe9901870618ede09a113fc4e19f3e59fc5c152f87d1a', 113, 2, NULL, '[]', 1, '2018-01-26 09:26:45', '2018-01-26 09:26:45', '2018-02-10 02:26:45'),
('acba9eed33ce3662914c0ecac0f6a8fc23b0fc37cefb29d84f6da6b7e55bef0deafa79191a50bde0', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:20', '2020-08-02 22:15:20', '2020-08-17 15:15:20'),
('ad842737d02679bc7cf9d7d2884eab1868dadf0217511d55e0f399c42ea1c319efa9c29284fcda6b', 145, 2, NULL, '[]', 0, '2020-06-16 10:56:56', '2020-06-16 10:56:56', '2020-07-01 03:56:56'),
('adf4a8b51571c5b7f2cbdb0c4dca080ac79548a95ff731a9380d81de7ab5bc2a609f5bb89089ef10', 146, 2, NULL, '[]', 0, '2020-07-20 15:00:38', '2020-07-20 15:00:38', '2020-08-04 08:00:38'),
('adf7786b3e8bd2e42664c2fab374a2d95972e661ce05b2248a521919f0417d33a266a27950d03800', 148, 2, NULL, '[]', 1, '2020-08-02 22:16:51', '2020-08-02 22:16:51', '2020-08-17 15:16:51'),
('ae71289e1240a945c2046e241524bda4b98ae917822e267e901af5767d70aa7181c2712d8b8d88f5', 137, 2, NULL, '[]', 0, '2018-11-19 12:30:37', '2018-11-19 12:30:37', '2018-12-04 12:30:37'),
('ae990fb4313ef3e5866e995534d11b977f6917983d11eef0586b105e7eb78a190b81d08ef7e5003a', 149, 2, NULL, '[]', 0, '2020-07-27 08:44:04', '2020-07-27 08:44:04', '2020-08-11 01:44:04'),
('b1bae8b044bb86dc71aae8b63ae55ecde8eae800148ae3b914f6de2272901d70ace9d3cce9e45360', 163, 2, NULL, '[]', 0, '2021-07-08 00:08:21', '2021-07-08 00:08:21', '2021-07-22 17:08:21'),
('b3e3e9edf84ea82258b3f32b300294a389b0625ae35cd4da9f818b53d5561fbd49562e56d8a88583', 148, 2, NULL, '[]', 1, '2020-07-26 12:15:36', '2020-07-26 12:15:36', '2020-08-10 05:15:36'),
('b5766b16242bb68e6f77cc1bd19948cc9a2bd1838a5499c708a457afbe491b224421181270756bbc', 117, 2, NULL, '[]', 0, '2018-02-03 12:55:34', '2018-02-03 12:55:34', '2018-02-18 05:55:34'),
('b6742914b8c201b620b4a6ad68547cdf306f9eb853cdaf5fa3ba2c9d01913c8aff0564fdb9af5d49', 150, 2, NULL, '[]', 1, '2020-08-02 22:14:52', '2020-08-02 22:14:52', '2020-08-17 15:14:52'),
('b790c9ef4833d66e1b36d01854a2c71e12293e5958fd62fbcb6114aca9e343ec54c91aea43c4d883', 122, 2, NULL, '[]', 0, '2018-11-12 14:17:39', '2018-11-12 14:17:39', '2018-11-27 07:17:39'),
('b79a3842778b39b0b71ec08ef69d575dbf90782c4ddc158243dd9736c7df5dbdd8cdc7e1ee15d2f3', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:33', '2020-07-26 04:48:33', '2020-08-09 21:48:33'),
('b822962e0e1f6a6d577fd6f12dcf47659a07c24d2748bc4df4a4e1862ebd5ce25f0e8902ca59be71', 113, 2, NULL, '[]', 0, '2018-01-25 22:05:06', '2018-01-25 22:05:06', '2018-02-09 15:05:06'),
('b9410bc8ea2040139b6a4f2436455a99950faec57a2d145477a9a907c7112932fcec3a0d793eb089', 156, 2, NULL, '[]', 0, '2020-08-13 08:18:49', '2020-08-13 08:18:49', '2020-08-28 01:18:49'),
('b958134228117ce5720382beacefa17d911701d98412e496b177c09bfaaace77f66e0f829f2fb2bd', 120, 2, NULL, '[]', 1, '2018-10-29 21:34:14', '2018-10-29 21:34:14', '2018-11-13 14:34:14'),
('ba1ace3688f81f2bd2849ccc2cda79e6fac2ae1494305f5f60b21a8122f3f25c1e3bc46733a9c437', 144, 2, NULL, '[]', 1, '2020-05-30 09:22:08', '2020-05-30 09:22:08', '2020-06-14 02:22:07'),
('ba8b36689c7c2c87fd34f6fa6ad5fb3522774b12627964bd8e2b3b855cfa6a1229d64a353e18af96', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:21', '2020-08-02 22:15:21', '2020-08-17 15:15:21'),
('bb00be3c5e3c3bce4a187c3ce04d934b503461852153dc19a914bc63e73bcca0d1d02fde77b124f1', 147, 2, NULL, '[]', 0, '2020-07-25 12:13:23', '2020-07-25 12:13:23', '2020-08-09 05:13:21'),
('bb448c199a5e3662efee1104a1af2db2bd230e6fd4d39a5c0b419cc6a71b63f80d604c10d2433b11', 164, 2, NULL, '[]', 0, '2021-07-09 03:39:30', '2021-07-09 03:39:30', '2021-07-23 20:39:29'),
('bc8bc75037469b38599077b4f682c3b71efa5e5f90bf6d950479910e8456a541891b807bb77f8290', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:02', '2020-08-07 03:53:02', '2020-08-21 20:53:02'),
('bdc38eb7ef7fead4c688875393446f484a5bf4f8d5c118919c150c13b2f84f8493e76037dddf82ef', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:58', '2020-08-07 12:31:58', '2020-08-22 05:31:58'),
('be4399866d41bd43a1a4793029f61022c3ead3758946b1d2104d2e0ebaa6ef820b374a4fc080f56c', 144, 2, NULL, '[]', 1, '2020-07-10 15:29:25', '2020-07-10 15:29:25', '2020-07-25 08:29:25'),
('be43cf24cf2caee6c17e28f51dcb3078ce4f13df45ef9555392d5b4faf071c003d65f4f4a4bec212', 143, 2, NULL, '[]', 0, '2018-11-20 10:12:08', '2018-11-20 10:12:08', '2018-12-05 10:12:08'),
('be91797281a6f9583f92ff76f780879b12bac46107dd9da0e9dd04262ac4053bdd3bcfda26b59e92', 144, 2, NULL, '[]', 0, '2020-06-19 11:06:54', '2020-06-19 11:06:54', '2020-07-04 04:06:54'),
('c03c2cda29d182ad45f8a4350079c46f9aced5442036a9505a7ba28a105082c4c3f4b4b34750f5a6', 164, 2, NULL, '[]', 0, '2021-07-10 19:01:02', '2021-07-10 19:01:02', '2021-07-25 12:01:02'),
('c28fd23c3da4dfe689ca80707eba34fb88ed3ba75f1413dfca2d110739f7fe65ecef104181f75a7c', 122, 2, NULL, '[]', 0, '2018-10-30 08:11:33', '2018-10-30 08:11:33', '2018-11-14 01:11:33'),
('c2985f640a7ce356816e87c62038789f7d7b819b95a7a8eb66f3e001d9bc59c7882bb356fabe32ad', 146, 2, NULL, '[]', 0, '2020-07-08 11:53:52', '2020-07-08 11:53:52', '2020-07-23 04:53:52'),
('c2eacf9f129a02e3c5f25a31c6981ee342a5af29a2fc7564c5966461ce16afeaff8fddcfa3787a80', 137, 2, NULL, '[]', 0, '2018-11-17 12:24:59', '2018-11-17 12:24:59', '2018-12-02 12:24:59'),
('c3cd3a5d56a4632ba66d899dcec89042010ea0553d3eca7e6b1052e422defd0473d3a6a0bea0b94d', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:29', '2020-07-26 04:47:29', '2020-08-09 21:47:29'),
('c4c39121af0f42fc75515e767296bd06158c78b8a39ac0d4cb0597b6b6238f2aa74ee0d4cc4de291', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:03', '2020-08-07 03:53:03', '2020-08-21 20:53:03'),
('c5260b8ae24d4a29927dd50c26c90b8370cb6ec8ed68383f93064cadb955a0b92019fb6b6378333d', 146, 2, NULL, '[]', 0, '2020-07-22 18:07:53', '2020-07-22 18:07:53', '2020-08-06 11:07:53'),
('c66e0cd0bb4a78058b46868f2a25d0768eab9b05f04bb494fdcf0c17fc59de38d36ffc1bdf58dcd7', 111, 2, NULL, '[]', 0, '2018-01-29 07:19:50', '2018-01-29 07:19:50', '2018-02-13 00:19:50'),
('c84f1b7589bca7ce81f116c875b1fbfe101dedf0d27d2a06a7a0c595e238970e39556cdd684f44e3', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:58', '2020-08-07 03:52:58', '2020-08-21 20:52:58'),
('c8b6714595b71ec768c28c52b5239d15f2190dd28d3f10e00d057653ffb7bebf02ef2c9100b86d20', 156, 2, NULL, '[]', 0, '2020-08-11 10:47:38', '2020-08-11 10:47:38', '2020-08-26 03:47:38'),
('ca952f0a021edc0de28b5ac578df23199a58cad7476a5150a72cde952810b8d41b50fcbfb543eaf8', 148, 2, NULL, '[]', 0, '2020-07-26 12:15:36', '2020-07-26 12:15:36', '2020-08-10 05:15:35'),
('ca9869114cfbd848582d5f2c5358efcbdb5b36cc6d2494508b9bb0858d88c5dfb483bd06e8b3dab5', 156, 2, NULL, '[]', 0, '2020-08-30 08:39:18', '2020-08-30 08:39:18', '2020-09-14 01:39:17'),
('cb7efc7e2815cb8b34144babf28de2a5da5abee1a03f3778beed0e913599de8fa8012c8863164133', 135, 2, NULL, '[]', 0, '2018-11-16 06:31:37', '2018-11-16 06:31:37', '2018-12-01 06:31:37'),
('cbb231f743018e07def91bedda704335d4360cf642cd59bb5535dc568b33a416bf6c0996d2933030', 122, 2, NULL, '[]', 0, '2018-10-26 01:39:26', '2018-10-26 01:39:26', '2018-11-09 18:39:26'),
('cc4902e4a4744a8504eb69a3c670b151c2f99aec5f95775bac680cbde1db281d6dd2367b280d6eee', 147, 2, NULL, '[]', 0, '2020-07-22 19:00:46', '2020-07-22 19:00:46', '2020-08-06 12:00:45'),
('cd98bc2ee5124950ae89f25bc74cd7eb4be2032b13a3f9295a9a9da5cecae48408d64bd13b3f0632', 144, 2, NULL, '[]', 0, '2020-06-21 10:23:17', '2020-06-21 10:23:17', '2020-07-06 03:23:17'),
('cedd763a2b753c1164cd16a83a8d9ce6c8515ae55c01e3e2a16cb0fd746672960ddb522d6a886372', 145, 2, NULL, '[]', 0, '2020-06-16 10:53:05', '2020-06-16 10:53:05', '2020-07-01 03:53:05'),
('cfab8c9a99a6453941570e62d1667620ffaad7fea0fea7ce30940c747390e356db055406ce9c5465', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:00', '2020-08-07 03:53:00', '2020-08-21 20:53:00'),
('d11969e5a5e8a5795c1f741a3f802637a82153e816a43448cda3ca1f9dd980efd5a64b12456e3c0a', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:09', '2020-08-07 03:53:09', '2020-08-21 20:53:09'),
('d173969a26f674042181a7fcfe30af35dbecd641733ff43649e31e6da9966c37756d018fbeaaa12e', 113, 2, NULL, '[]', 0, '2018-01-27 10:23:36', '2018-01-27 10:23:36', '2018-02-11 03:23:36'),
('d231e98c4d86c0347db7e2a4795af34a320223885760d70e9099d15ca52f72c1faadbe4526c36a22', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:36', '2020-07-26 04:47:36', '2020-08-09 21:47:36'),
('d4791d0310e7b52dac974462603554230b9c2b4518bd954b5c7960fec9d33d2fe359c1506648a28d', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:24', '2020-08-02 22:15:24', '2020-08-17 15:15:24'),
('d64f7b2cae6bcb733d4af3e1912e3bea1dabcc81c5b360b972d191e48886545e56bea88bfd3886ca', 144, 2, NULL, '[]', 0, '2020-06-22 00:33:35', '2020-06-22 00:33:35', '2020-07-06 17:33:35'),
('d65b10fcadff3c8c24c2761abb0b11ab0ac1243967277efbb2d1a5f4463eed311e9ed483c69e082e', 160, 2, NULL, '[]', 0, '2021-05-28 10:23:18', '2021-05-28 10:23:18', '2021-06-12 03:23:18'),
('d71447d048e15717757d95b4c25a0cde738ca5412dd43a92f8b1173214aa456c4565ad811f0331d6', 145, 2, NULL, '[]', 0, '2020-05-30 12:52:58', '2020-05-30 12:52:58', '2020-06-14 05:52:57'),
('d826ee5dda2eaf187c552dec2a68ade9de3c1da0710eaa96a312ae2d870a0c3c29e343d1186e93b6', 144, 2, NULL, '[]', 0, '2020-05-09 20:07:59', '2020-05-09 20:07:59', '2020-05-24 13:07:58'),
('d885ccc92d992c42937f39dff4aeefce645735a7fc0205ac03d88a3984175e2fe2e13962c81162f5', 157, 2, NULL, '[]', 0, '2020-10-08 18:56:03', '2020-10-08 18:56:03', '2020-10-23 11:56:03'),
('d93cfb9e0f8fae761ba6438d5f75997dde3b77d898b21fbffd86cfb866dd7e5c4e3cd55b8daf448a', 149, 2, NULL, '[]', 1, '2020-08-07 12:32:04', '2020-08-07 12:32:04', '2020-08-22 05:32:04'),
('d9b8df764ed5b3019aa5ac5f914bc9104a081a15cdde66590aadb6f0e56fe84d461ee99839ff6c09', 117, 2, NULL, '[]', 0, '2018-02-03 12:55:36', '2018-02-03 12:55:36', '2018-02-18 05:55:36'),
('dcc2921b786c0b94b0557345d6d50d8adba9afd1411d561988e959974b79f3a3d78b960beba4848d', 149, 2, NULL, '[]', 1, '2020-08-07 12:32:00', '2020-08-07 12:32:00', '2020-08-22 05:32:00'),
('dcee12c6f81bc073693af6145e36cccd48dc41abc30132a066a0a400c3c326c793bbdc8853712195', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:51', '2020-08-07 12:31:51', '2020-08-22 05:31:51'),
('dcff33a32caf6a14b65845c4f97ec39e2a95966e10d46184caa4611140047bff8ca07a16bb536aa5', 144, 2, NULL, '[]', 1, '2020-07-10 15:29:20', '2020-07-10 15:29:20', '2020-07-25 08:29:20'),
('ddddf696af5180b6e049d5c10fe33cbd254cab32ab33a8cde08c39f27aeca7148e329e8e3a1cd463', 146, 2, NULL, '[]', 0, '2020-07-09 10:13:20', '2020-07-09 10:13:20', '2020-07-24 03:13:20'),
('e0195ac0675f676e6b5c0ed525fc7c3bf3f9b188ea9480065deb7ae8efa7ae8f1a08ad4aff62f186', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:48', '2020-08-07 03:52:48', '2020-08-21 20:52:48'),
('e087b813b33b41e1363b733a302343a225cbdee0bc0a392cfa4e846912ee097b8cf089f0d30618ef', 161, 2, NULL, '[]', 0, '2021-06-22 00:33:14', '2021-06-22 00:33:14', '2021-07-06 17:33:14'),
('e39e883ac89430bbf1a433f85439acbe62fe2642d6e629af3db8fc2b8cd03363ceb0d080e73fab68', 144, 2, NULL, '[]', 0, '2020-06-21 07:59:16', '2020-06-21 07:59:16', '2020-07-06 00:59:16'),
('e401bfae8d0352a3d7bf57aa2d389db88521b7331b3be16bc25eb3c50b3183c2c992a4a4247b0388', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:16', '2020-08-07 03:53:16', '2020-08-21 20:53:16'),
('e434751e2a36266b3226bc7f0bf89e95d38010039825463936b88f0bc7b296eb83dfb02395cb1cf1', 142, 2, NULL, '[]', 0, '2018-11-20 04:47:15', '2018-11-20 04:47:15', '2018-12-05 04:47:15'),
('e4ac066a2a4945fdbff8a8fe23263d76312ad50c35cc13697cd3e0e65275ab756ead70827edcc387', 162, 2, NULL, '[]', 0, '2021-07-15 14:43:28', '2021-07-15 14:43:28', '2021-07-30 07:43:28'),
('e4be078c66be13b338c98961c9ebfb729ceea31a896f71c9a2cfb1b3793d11cc4efbbcf48d8cb0cf', 120, 2, NULL, '[]', 1, '2018-10-10 22:22:24', '2018-10-10 22:22:24', '2018-10-25 15:22:24'),
('e512a9f8b20829b3de5c3d0b6d69367f741c406e4d07093443e3c14e600d225ddf0b734a52e66fe3', 147, 2, NULL, '[]', 0, '2020-07-26 04:48:43', '2020-07-26 04:48:43', '2020-08-09 21:48:43'),
('e695c058d9c8a601cb7da70bdfcf84cfb49605c3e29875d41b9cc31118b09d32585cbbddd3bb4fff', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:54', '2020-08-07 12:31:54', '2020-08-22 05:31:54'),
('e7cfcd75f9c1b2e8c721673ed0bc1091793dbeabeb6c557e5f34a65056b33b47878ef8550c30e1f4', 147, 2, NULL, '[]', 1, '2020-07-25 12:16:12', '2020-07-25 12:16:12', '2020-08-09 05:16:12'),
('e7e13c0a61cfaf9b335e4821a8d85041dc091fff9c1e8f12256cd6939a7b0a5974e6dc9f3dcf73c0', 149, 2, NULL, '[]', 1, '2020-08-07 12:32:02', '2020-08-07 12:32:02', '2020-08-22 05:32:01'),
('e8f40a1ffa8b6b28a05249870176b2a683d07502833535c4e9412cf30c1da2d4817e8760e7aad678', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:55', '2020-08-07 12:31:55', '2020-08-22 05:31:55'),
('e96546a500fae16a816649e9b50188f000545c6dd36edecf46d33c14c7b056e372a3995865032a7f', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:30', '2020-08-02 22:15:30', '2020-08-17 15:15:29'),
('e96dd1f186b7416edfd1d72144111792763897f45a3da88c27f181487f73832b72d807c3329cc304', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:48', '2020-08-07 12:31:48', '2020-08-22 05:31:48'),
('e9af4dd691cf19f32fda105b4c49489b669c31146728471b83767b17fa6c09f612b21722280b0c93', 129, 2, NULL, '[]', 0, '2018-11-12 20:37:18', '2018-11-12 20:37:18', '2018-11-27 13:37:17'),
('ea1804e27c053b7747f1a5b0ba544410b5e80d591206597956de7573012a4981227574a186bf7d5d', 120, 2, NULL, '[]', 0, '2018-10-29 21:34:15', '2018-10-29 21:34:15', '2018-11-13 14:34:15'),
('ea22a2e9b9194e8a5ab220b37b67ee671960a881cacc257b60d196375a361be4af282470535cbc4a', 145, 2, NULL, '[]', 0, '2020-06-06 17:32:59', '2020-06-06 17:32:59', '2020-06-21 10:32:59'),
('eb295fd60c6305d8ca9f41e5f61b99d38d5faa75bab55e510e78ada92e6b1251a4fe1a09cd5d4b17', 144, 2, NULL, '[]', 1, '2020-05-09 20:08:00', '2020-05-09 20:08:00', '2020-05-24 13:08:00'),
('eba52b483ae6d932ba60b480dd2b56dbd96acda956b69f161aac643075ac06bfeec7b6b72613d039', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:31', '2020-08-02 22:15:31', '2020-08-17 15:15:30'),
('ed1861547554468ff1f1f956616f08169e02c22614279281c17a7c13e328fec476cdc0d069c07b0b', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:26', '2020-07-26 04:47:26', '2020-08-09 21:47:26'),
('ee119df323fa15373ad5f1465da703c22ad317615753f59129dedd8209b7a897f34d958627cdf25d', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:27', '2020-07-26 04:48:27', '2020-08-09 21:48:27'),
('ee1f6ae7138268168377e9ce636db94027070cf2195aaeb39c2a107e07dce6f4da986b60b6b70e6b', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:44', '2020-08-07 03:52:44', '2020-08-21 20:52:43'),
('eef8b843bde6fea1075a3f3fc1044b94b37ba454bc4f804e163733ed9c54efea1a5f37953e17cafb', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:15', '2020-07-26 04:48:15', '2020-08-09 21:48:15'),
('ef4c1a0845e9837fab91c28c9591a302ad0cc1776cd5f89c12af89d4b3526f1f0c7e0d804ebe0daf', 133, 2, NULL, '[]', 0, '2018-11-13 20:35:51', '2018-11-13 20:35:51', '2018-11-28 20:35:50'),
('f0743a92e396b3eea87724b3aa4b38979a3c69bb7dcabe9f99ec8ec554536ad010fef16c270e52bf', 157, 2, NULL, '[]', 1, '2020-09-14 15:28:12', '2020-09-14 15:28:12', '2020-09-29 08:28:12'),
('f0e4b71ea10f1751cc433709cda6c863ea340338efb3865069698c9c991dd86d7b558584e64952db', 122, 2, NULL, '[]', 0, '2018-10-26 02:23:57', '2018-10-26 02:23:57', '2018-11-09 19:23:57'),
('f0ee1d6ed232fc29276b365b489afd489964242ceae0558956e792fa6c15214407213cac4b6735fb', 149, 2, NULL, '[]', 1, '2020-08-07 03:53:17', '2020-08-07 03:53:17', '2020-08-21 20:53:17'),
('f2a91ac95852ce2b4958d3861c4bc178604631974a1ad2b2f27151dd4483edbd0013ff7e5bccdeb4', 149, 2, NULL, '[]', 1, '2020-08-07 12:31:40', '2020-08-07 12:31:40', '2020-08-22 05:31:40'),
('f2adb03213f435c9ddc51511dbb3fd87742f287874940788eb539b8fb3812f3860322907f4e0bee5', 156, 2, NULL, '[]', 0, '2020-08-29 19:31:55', '2020-08-29 19:31:55', '2020-09-13 12:31:55'),
('f2e81c07b50611c012709ca5ef483e5fda13e364bbc3f8dd4237caef0b508c94458b151ec101e7ff', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:21', '2020-07-26 04:48:21', '2020-08-09 21:48:21'),
('f3146fed3b5a2e8060b2e26752af153401a3df10e980785ccb74061b01645c983feaf3e4646a85e7', 164, 2, NULL, '[]', 0, '2021-07-10 19:15:16', '2021-07-10 19:15:16', '2021-07-25 12:15:16'),
('f3d864675474f5d7905c6a40c240987c59359a8f29193eb29843948021309fd0e3ecc9e46c133728', 146, 2, NULL, '[]', 0, '2020-07-20 15:00:35', '2020-07-20 15:00:35', '2020-08-04 08:00:34'),
('f4800a9b24629e4792ef563a234d82094735bcb822de25d92b9822eb4f9a51185033b40ad8212e0c', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:48', '2020-08-02 22:15:48', '2020-08-17 15:15:47'),
('f4bfdf05e737446d1c3157277d9f33b7dd6e5c90818dcb41108a19ce5f0523c51d0a951460cbef31', 148, 2, NULL, '[]', 1, '2020-08-02 22:16:52', '2020-08-02 22:16:52', '2020-08-17 15:16:52');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f6bf86d98bcadfe98d6ed7c2e2fd89d392d184071015b8487b6e7577f8e6220a56a5867e266556e9', 113, 2, NULL, '[]', 0, '2018-02-13 12:32:28', '2018-02-13 12:32:28', '2018-02-28 05:32:28'),
('f97c70360fb85398b171ead93fca0c5f10ab0cdec918bf3347f6a62cf1a5e299741f2282446628b9', 147, 2, NULL, '[]', 0, '2020-07-20 12:31:57', '2020-07-20 12:31:57', '2020-08-04 05:31:56'),
('f9dc87d0e23e350a03f656ee3f4edb745ff288f44b1073830aca3c105cfc6b91f0d2c8f21d90b9cb', 149, 2, NULL, '[]', 1, '2020-08-07 03:52:53', '2020-08-07 03:52:53', '2020-08-21 20:52:53'),
('f9e82ebe94f16e83e8fb3ffe3a7c854a6d7f86e1cf1d185058c434a7ee13fbd9ba4430a8439a5360', 147, 2, NULL, '[]', 1, '2020-07-26 04:47:35', '2020-07-26 04:47:35', '2020-08-09 21:47:34'),
('f9e8552cf8f95a8fa77cb29826888bc5d218ad5b6ba27430ba74a45843bf96c8d683331598119ad5', 147, 2, NULL, '[]', 1, '2020-07-26 04:48:38', '2020-07-26 04:48:38', '2020-08-09 21:48:37'),
('fa38f0e8ad64646266e5ee283c4247b5d5cb005d6d6aadbb3146291d7dc863fbb0a6a967154b1785', 144, 2, NULL, '[]', 0, '2020-05-30 09:22:11', '2020-05-30 09:22:11', '2020-06-14 02:22:11'),
('fc261eb5f46178268a022942faa39435183ca298c88984d8f521a29e07b9bfc7ab6b9829057f7233', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:28', '2020-08-02 22:15:28', '2020-08-17 15:15:28'),
('fcb42fc84e4dbfce98544cff944dd0168963c701d7023cb73942617249af430a6b5bcc7e0ed97d56', 162, 2, NULL, '[]', 0, '2021-07-03 12:42:18', '2021-07-03 12:42:18', '2021-07-18 05:42:17'),
('fd0cb721c2c6ba14684625c4329411fcee9bb8d0b1dd591d5065ed4373556d0d153c650492a9c75d', 155, 2, NULL, '[]', 0, '2020-08-02 22:23:49', '2020-08-02 22:23:49', '2020-08-17 15:23:49'),
('fd46cebdc36efb88b02f6afc5fb274044828f9479f65fc6be04234bb9b43d8c22cf2781d8aca548c', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:35', '2020-08-02 22:15:35', '2020-08-17 15:15:35'),
('feba82da4ae44e6c4779731ebfbbbce75a654bb402cd561c750895445efed3b345ff1a4dd9cea98b', 149, 2, NULL, '[]', 0, '2020-08-07 12:32:07', '2020-08-07 12:32:07', '2020-08-22 05:32:07'),
('febfb27cab9599c9def61fd810379cfc50825b5a29ee63f1286e3a5c6624822589b576194a3fe647', 150, 2, NULL, '[]', 1, '2020-08-02 22:15:01', '2020-08-02 22:15:01', '2020-08-17 15:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'RideShare Personal Access Client', 'NvTN1CeLtNygzZFNPixRuUkDAo4knyz8RBqaNisS', 'http://localhost', 1, 0, 0, '2017-12-08 20:52:36', '2017-12-08 20:52:36'),
(2, NULL, 'RideShare Password Grant Client', 'WifS1rMi3LvuorP1G2UdtKZairUNSH2iMqrKivPf', 'http://localhost', 0, 1, 0, '2017-12-08 20:52:36', '2017-12-08 20:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-12-08 20:52:36', '2017-12-08 20:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0178354d299e0a8e0a9af25d778e0bff4a9591bf7207e5b74094cdf4f2429f48f13ec0131cb95424', '3f10fbdd80f3bcfab066902118c98b3489ca64a32c07901adfbf4dc4b4fa1b88d9c67fe5a840a4b2', 1, '2020-11-04 20:52:57'),
('036072497569ce239a65bca18f2df2c6f0a10c6f69468f3097e1f32d6b3ea0fe0da1272e20682871', '0308c463011961b1067c6073b80afd18e34f7b38d4dc139aabe638bfd44abd66dd3ba438f3e2455b', 1, '2020-10-31 15:15:26'),
('03d37efcee72996094bd2b9cc5bea5d532a041445dd0a146baae8e75e216e50159a9092ee573ee1c', '9ef337efa000d0dd219d010e0b1dbbdae161bf8697f397b75857c43b93c49e3268ddc6ba0b186183', 1, '2020-10-23 21:47:11'),
('04d84c05a6ef9877b993ec0605ff14916971252224cbe39d076df7fbf99cb42adc6b92a14fbcaf5c', '2bf08cb80b4364ef2c2d3961fb1bc92c42d79841ccf681bb19d7ae48530e37d4043a9f93a2b54adf', 0, '2019-01-27 01:35:13'),
('083a052170845dbf60c61665c33c38ab3a952435eb73af6ed2ca89b3e404131c5a19146f2068b194', 'a5ad5179e5ad7a6f4eca2f5e883eb8f0093ccd1b1277c1031d20be8d13a99113611d47259287e469', 1, '2020-10-31 15:14:58'),
('08967e3cd5276379d7c7f796173f7fdca37c10087a27670db7fd81684e0c2a8596fc241221c478dc', '1a59baba724a3cc8e4154fb63d53f74431ea9f09677daef90b00ce6c126bdf9a87f7f2135bf1632a', 1, '2020-11-05 05:31:53'),
('09446935289c97ee2e99077b71c3a758dcb0b0cc59f3a4eb31015017f200a85a69bd7be2d529b3a2', 'f4800a9b24629e4792ef563a234d82094735bcb822de25d92b9822eb4f9a51185033b40ad8212e0c', 1, '2020-10-31 15:15:47'),
('0962863bef43cd7a8d03320e21c96ccac134563460b8a523ec6090cac041b61d33523469e72e56f8', '8bb4282f696ddf8166c2f615a85e1c4d99b331c6e5113bc546381867c15e5b2034576a80c3c8c626', 0, '2020-08-29 02:05:54'),
('0a43aaa561e1d2505b1f30dcb002a78ca78acefeb74a998ca4d8fb38df35b20aefe8b9c505dd143d', '0e055fa48a0d3bb86a679f9f0238d285d54dbd4530d4d97fb18aa016417ff9318bc3f16708b1a1c0', 1, '2020-11-05 05:31:44'),
('0ae46ce4aea6ce3b67b2d7ef06e366cf12055295c03c595efd2eb81606d0cc90bafd5357f8961d4d', '6248af6b64d6d80a4b082b7dca2320ac9041be5031837c88e6643bbb69158a80d7de97067609c7e1', 1, '2020-10-01 05:47:04'),
('0d27f1a8d07dc51f8fce1ee0c2540598c53a43acad69b29368d681af91def037907e617d34635c38', '3eae0d53e23ab1e95bcb4d9340ea3f6b82b126c495c4d14a873fcab7059fe48b5219a6aab102c28d', 0, '2020-11-11 01:18:49'),
('0d7bc4b4504ef6c1b72c7a0e83012b9cd359bcce2bf801b5cdba63f7c8079627a0dde329f5de2e8b', 'e4ac066a2a4945fdbff8a8fe23263d76312ad50c35cc13697cd3e0e65275ab756ead70827edcc387', 0, '2021-10-13 07:43:28'),
('0e1180ef1409f30e54d1b00f465f5bbcd91782ba8ed467ff02809116796ea0d7064c75bd7a0fcd2a', '093d939417af8a7ea3a106eda432cf5e7a922cb4bd2bdd5607c8a39b1cda7fbb40b42c59c2292939', 0, '2021-10-03 17:03:59'),
('0e92ca9e0eedcd018c4d1fd2829b066d97d82e03c6e22ea135d67ec98e31677870d820bd740d40fd', '32c4e3e060ac502a32262291728045eb2db01487afba4a5c632e5a1283bba4cb12b852e263ed4af1', 0, '2018-04-27 03:07:25'),
('0f6e78b42e77c08b64232524ee21c5f93c3ad8f5ac9b40abdc1f6beae5139a1b401ee5011dc78466', '47942f06351a20d53e84590ff34e141c9bb055b4296ce771254e15a6298904cedd62f1a0da273fb1', 1, '2020-10-31 15:15:27'),
('0fb16cb2a15ef624e82f2151f195c9f899f0a88a20344a063ac4ec98bf6bc296654960220eb3205f', '27dcd47b4c84f14b187bb7ace89530007db02d6038081836df94a102ac138b3da18d39d4c80c7a78', 1, '2020-09-30 02:30:38'),
('0fdaae68c9f089052756b0bfcb3f085b7ea6bad53ce428b29363d7cf93aa892e0a37bafa0fecd36f', '4b84a47bf95f9a5cfe2ce056fa59edaa45dd37a98ca8ca728708aaaaabe1c0deecc4b3189f96577a', 1, '2020-10-31 15:14:56'),
('11cd9767bdefba5c5d09d4f9ffca1adbcd8f7d5f7ec6889a8e13e69c785161fd884e1d929f1b6127', 'd231e98c4d86c0347db7e2a4795af34a320223885760d70e9099d15ca52f72c1faadbe4526c36a22', 1, '2020-10-23 21:47:36'),
('1200cdf84e38d2e827e0e41afab5cadf5de89a086d01a96f646502eda84168dd75113aa9620ec143', '788002a7437593b0b0b94389712ae609dfdccda75a2128dca09e13f64c74241a5b1e710c2acaac0d', 1, '2020-10-23 21:47:20'),
('1201a265937a8a17c8b1b140008e11b2b0f8b04ffa82364683b29ea2d1eecfb880443102ac2629d1', 'fc261eb5f46178268a022942faa39435183ca298c88984d8f521a29e07b9bfc7ab6b9829057f7233', 1, '2020-10-31 15:15:28'),
('13a753bc79cbd58d93152edb214dd73ba25f910f9bb718bb3537e57dd87423a36ea25eb8bb832994', '6f387f7f2a06aa0ab484e5c67efe7d06d9a0b6cf87ba576d19048b69f772bbb208aafd5384117ceb', 1, '2020-10-08 08:29:23'),
('14314616bac16311b684967ae23f3ba2a93e74ffa34fabfd99466a72e92c7c45c43479ca25200077', '939373b7ec6dfea796b39422b4a6a496e0e8d670bfeedf321dd4f91acf90dc6887aa4e5dc95702ef', 1, '2020-10-31 15:15:33'),
('147a68a3a4409c4de80b4c0317ba6e4db8ceb2a8895d87f5abbe0df50486f6f094b34ed4a27d4bb7', '0db4701bcf7afa67ce3aed5518cb2afe705849421cfefe923ffbb7d3540968c13e609b27847b4306', 0, '2020-10-22 23:10:20'),
('14e545781bd8fadf3f926be07af96d353f88e7446debae3d696423a577963e9f5d70ab027536b0c9', '3cf63db364f1a6dc8ff643fb7e38b4a25f6b693034ed5d3ac1ac593324413d9fe32b91bb1f2584dd', 0, '2020-11-28 01:39:16'),
('152bf28ad38a09b2c63f1499cfd5bed9f47b156b77d7f823481fd24edcd1480803ec6eb6aae24226', '5281ec127e753281074570bab9ea481c8164e4050faf77141785135850489f01908372dbd4fb0e99', 1, '2020-10-31 15:15:39'),
('152f9b03b3f61f1b3b3088d10b80dc4f7974f5089f0fc48d8de327c89a5fa2c72dde5e20c08291fc', '81a4de9b114c0647c14ae292adfe9e12875189dec98ad1cc9c34fc712107c5d11c603f544716fd87', 1, '2020-10-31 15:16:48'),
('15583b2b1258057d55391fa645422ebf854d95eb009ebc6838cc36abee484be157132803f3f19788', '26cb52b0eda03b48c3f2c26301cfb02cd11268f5650108612474e7b9db737446ac0179bbe79eec2f', 0, '2020-10-23 05:17:03'),
('1667d72f06322ae76e1185977b6140e0f2fe25acfd83e6836d73f2cad6d69db5115012bd269d9ca9', 'd93cfb9e0f8fae761ba6438d5f75997dde3b77d898b21fbffd86cfb866dd7e5c4e3cd55b8daf448a', 1, '2020-11-05 05:32:04'),
('16f03c77643eff24c7a3509a37a12281892bcaa2b6e5904928657dfed5146292fe875227abe2dc2e', 'e401bfae8d0352a3d7bf57aa2d389db88521b7331b3be16bc25eb3c50b3183c2c992a4a4247b0388', 1, '2020-11-04 20:53:16'),
('17d493a1d9dd25d599bc3897bf2d0dc133bb1596d0b90cc0fede8b7867c8e4340df583084b1bc70c', 'd11969e5a5e8a5795c1f741a3f802637a82153e816a43448cda3ca1f9dd980efd5a64b12456e3c0a', 1, '2020-11-04 20:53:09'),
('184bcb740398cae4b4b78710838854df4903288637c0867072292c775f9325191ef480241d46384f', 'bc8bc75037469b38599077b4f682c3b71efa5e5f90bf6d950479910e8456a541891b807bb77f8290', 1, '2020-11-04 20:53:02'),
('18a2af6421db2eab496aa7ff25331d1c84ec395423ba98318cd40fbd057c2eb3da1f5c7e0c355661', 'f3146fed3b5a2e8060b2e26752af153401a3df10e980785ccb74061b01645c983feaf3e4646a85e7', 0, '2021-10-08 12:15:16'),
('18c0d5a78b0603db79ee2e929dd0aada76b6c33460b3c8a0332740d72ab7c3aea5c88e3f5795b4e6', '2c2263f96609171654ab3e7fcfdbe246f9aaf05a1dee9cca02c0227e161b65b90f9b1831ce332057', 1, '2020-11-05 05:31:46'),
('19aa639ceb7dba67e8d6d2c63c9adeb28226f419b0933fb91bf6aaa944a9df05761672d734051aed', 'ae71289e1240a945c2046e241524bda4b98ae917822e267e901af5767d70aa7181c2712d8b8d88f5', 0, '2019-02-17 12:30:37'),
('19d14bdd5f1706471f13c6cd6fa992a91b7ae5573c193d9cebeafdcf24846f8b80b93f30d951272e', 'f2e81c07b50611c012709ca5ef483e5fda13e364bbc3f8dd4237caef0b508c94458b151ec101e7ff', 1, '2020-10-23 21:48:21'),
('19efe76c06e9f08940088b5396aa0292e21501d47b534cde8bf3696a7396c132f187149175435fa4', '97bdd5cc3c0d8258ecc4c2d40d687960a847c9634c13a478a850534c046ddbc88aa724f20859c163', 0, '2020-08-28 05:52:58'),
('1a82bad2d44f6891de593ec2e35144373695a6d7b9e9a18e1d77ab58fd014db9b81f02db1dabafe2', 'c4c39121af0f42fc75515e767296bd06158c78b8a39ac0d4cb0597b6b6238f2aa74ee0d4cc4de291', 1, '2020-11-04 20:53:03'),
('1a9e83b5d07bad83e119d1ea83e0005fa725aac0bda5778ec2b13d1874c0c15d2e8bc15c209d90f5', '0613ebb3455339582a7b7d75aa252dcd3f1e87a0016f3f5ba3c3b5aa4c489acc30de79bda2918fb0', 0, '2020-09-04 10:32:56'),
('1bfd6f7836fb1dc8f49958856d41ab617072e681239ea495767130a419268c8bc7f209a564105155', '3b6431d9bd2dbd4405b31c0b18e135ff856662251cc8bdbaf31dda9f124d15f85f9a97943c6ddd9f', 1, '2020-11-04 20:52:48'),
('1d678e81523b1b8d82e0d2f6d531421b01e82fbcfc7c37511fd89113f3c4c88ca4a557fd1f449e5d', '9daf9d08c1b8a5708e160b2e2df6d31f6255f6fbc292fc798d54300e22f25a288bbd0aeb1e46dfaf', 0, '2020-09-30 06:02:53'),
('1d7490422ad89623be8d66eaa26f371ecc40b075474b5778879fd295db9487230dff9c2584f93602', '197be93dcd9672e7a564827a0030460d602cdf8c25620fc6bcfaddfb9210ed63a64a94d1774df1ed', 1, '2020-11-05 05:31:59'),
('1ff5110b8242d1e4b7004c640c3a9b5911baf9023cb930782a88cc4f1254b38923654a10c5f5254c', '237d2efb9a8befbdb02bec97232d6b74afbac6055cf12ba85ecfe40dde4c84ec2fd3c4632a65d94b', 1, '2021-01-06 11:55:50'),
('2067e2dd6d13ca1d07272a92561c6ab0da278a0eb98433f0cec583b6c21ab99707342c0da5ba5497', '83dbb6789664d3529d9ede77ec33b89b64c1e381ebbecac2d94c26be98a33639bbda5e71731aab92', 1, '2020-10-31 15:15:50'),
('215ff26579042f9efae9b9db4cf8ab45074454ac363d0a58108e8a169367eaa820c1b9836707a9f7', '48fb7e82c0675a9d3883c0f0b4aa43323697e662ec0bf316a81d93fc9b3380a9c0d33958162b6a2f', 1, '2020-10-23 21:48:11'),
('22b845f1636d18eda47965112dca29b7be0ee182ffafb89cad9053e11f282bd74fd3318a3178787e', 'a577ed3b222282af75ea3c35a6d50f8782e7039ee72283495451c55e6a4ad84d027ec8d455ef4fbd', 1, '2020-11-04 20:53:11'),
('23f285a01fc85dd90b6310662f67490ea0b8e496a00e1947396e2baf336b46859bb30fad48e58d1e', '21a118f4d361f8e7dfd9b6048906cd559f8128e997d614ef4ecaa1e28da845e774ff9e93a17bd914', 1, '2020-10-23 21:47:39'),
('23fd865e57666eb2ae9a0297e1ed2fa50e42ba2d6ea42a4e741341e443c2fe780c40f210f0056e31', '1b117f862a09c300b4ba34b647bb54fc74d967fcbd7a7a9d52c697bd744c7297bd37495e50daf200', 1, '2020-11-04 20:53:11'),
('250af25f79c3512087fa5d1d8d5cf6ee76a9ed37888151efd5fbbdfa3590ede2d1df965103f9a0ae', 'e7cfcd75f9c1b2e8c721673ed0bc1091793dbeabeb6c557e5f34a65056b33b47878ef8550c30e1f4', 1, '2020-10-23 05:16:12'),
('254b4ad426c4ef8b0e6540e441a5774150a0045808b120fb3a271f0a52eb8b54124145f05a24a21d', '2ef3315d9552c2871e8b7fcff5bd12f45e1c6d90b9f0eeac87534168528d9adcd0dc894bed47b892', 1, '2020-11-05 05:31:44'),
('26ce3e21ec530b246e0ec77513a5408ae6756c3deec55a00fdf52377d92d87d1051b7ddb335690ae', 'e512a9f8b20829b3de5c3d0b6d69367f741c406e4d07093443e3c14e600d225ddf0b734a52e66fe3', 0, '2020-10-23 21:48:43'),
('28e70278e5b122149a5157fc866ec850b986d9a870ef2d5d139ba8a86c2da330d4a23a9bb130de1b', '84a4b8a3f157d4cdcc58af8afef5c8f839293a288af48ec8795802b3fed2b6398358acf201ab471f', 0, '2020-10-03 23:22:25'),
('2a626c98577859965a0c28d515da2cb4f3ef2c1bd3a8b9c14fa65b5d95a88a569040a5403f878dbb', 'f6bf86d98bcadfe98d6ed7c2e2fd89d392d184071015b8487b6e7577f8e6220a56a5867e266556e9', 0, '2018-05-14 05:32:28'),
('2b25943c3f9cd28fb93b128e1799d70864fd6766687f6c5a9b132520cb3eba60ceef940e72a37592', 'ef4c1a0845e9837fab91c28c9591a302ad0cc1776cd5f89c12af89d4b3526f1f0c7e0d804ebe0daf', 0, '2019-02-11 20:35:50'),
('2bd86d4cd3f0d61427cb64cb6121007cd05cb2fe3ad3345fd805498c386fa7e9c5ddf2163bc89848', '2c9427abd40d5ed483f2bc1dabcad504baeae90145f04823cc9c1edb6544dbe82011f634b27d2a50', 1, '2020-10-23 21:48:05'),
('314229a9bc79142b954f1abe80252217103672ea403383efd6fd2c17a6daa2ca5d1da75358cb519f', '5aec631b44d2eb9f11d6798d6777baf2d4aecbd3632f9ee0434a076d8b968c9dc99f2abf989970c1', 0, '2020-10-21 02:02:37'),
('3173f8c6a9feec4794b7dbf2d4006d7204e3c7e170fa97b0ab08239c871fb5c3ee3e286421e9d7f1', '6ad7a3c87c17ef0791b5fee0eb070b30d69a088d5b35a0a5a4b73f636b7ff5a0e3977e24e7ab1e6b', 0, '2020-10-14 14:43:20'),
('31b4c81577ac310d77552d5c3aeb9c207e655a0619e55455c966a48c3482f0e73ed2a4abf879e3da', 'b958134228117ce5720382beacefa17d911701d98412e496b177c09bfaaace77f66e0f829f2fb2bd', 1, '2019-01-27 14:34:14'),
('329a045396c91316dc711f26eb63612d825a9623ea4d9264212412046f8b0f335e89b2f3eb95bd41', '8cf13a1152bba65397e37805e43032f823bc86821d6de28a9a4fda736f5c0911cf513bdc89d96029', 1, '2020-10-23 21:47:14'),
('3306f5de08ec1a698fb1c6420d0ad0a502bdbc5d8358147eab32169ea53d195aefb89988888d6919', 'ddddf696af5180b6e049d5c10fe33cbd254cab32ab33a8cde08c39f27aeca7148e329e8e3a1cd463', 0, '2020-10-07 03:13:20'),
('334d684f0032a57ee45a9a531e76cb8be1f552130fb0f7cd567f0d641dab8fbc9c951194b6edb9f4', 'f9dc87d0e23e350a03f656ee3f4edb745ff288f44b1073830aca3c105cfc6b91f0d2c8f21d90b9cb', 1, '2020-11-04 20:52:53'),
('338c87ec86760acb2c48e1d65a5b848a2897cf6a114031efe0b4b65732d6fd0bff289c029f63f824', 'acba9eed33ce3662914c0ecac0f6a8fc23b0fc37cefb29d84f6da6b7e55bef0deafa79191a50bde0', 1, '2020-10-31 15:15:20'),
('338f883babbd48956be029380fc3940f67c3bea3d6c5e3e0093dfe8dc26970d8d2c8a201db7e4a40', '1e6faf09f63d431c25ecac1ddc2b40f23f64f2bccf473c322c7d9b56e5f82e5c0e1c8b047aceca06', 1, '2020-11-04 20:52:38'),
('34bdd31e23de2824a4ead42e134a127a82646df8a6cd9bf720a50bf454e12200bdc05b126919ca00', '51469d0b0bf11c4c00fd83b36ead9b4476f64daffbf5ed6e6d8112b774af729de21f9cb1ed2ddd62', 0, '2020-10-29 06:37:42'),
('34cfd4eaf3b8d70605882b4d37e980395d6660125ff11a8f445bc5c916248d6890baf3ee7dfc29fb', '58349954cd418c7105358d885c4b473bfed3f6b166631bad770a8e68acfb1dbea3e160be68d232f1', 1, '2020-10-23 21:47:23'),
('37615b6fc61f0956c8ec3f9159a1778495da2ec98f0fa3e0308bee416296f521d92f20c9abab489d', '1cd51ced0527420ad24332bad405d855a427f1811731aed4a377ee4dc502eade06a6c97b4e7109f0', 1, '2020-10-23 21:47:08'),
('3974f78ec8e96e4dfbe1cd61cd3f6862223e8426be325f282b6c3468961a76ff1891e6b3eee5c8d1', '950b6f8a09f5447287465a87e7978db2dc644208e6bed1b12a405cb58a7ea4f0a56d7837f4521d37', 1, '2021-01-06 11:55:58'),
('398573e936bd608cdca9b98531cc2450a69c98b87e910496bdbf89614b131a335333e669e0bb7d37', 'aac884c4c57efcfa7aaa81e40097f08fcb43ef583a6517696546db485541d38a06e0c620d56e12c0', 0, '2019-02-08 18:08:54'),
('39b0aca4f9b1a2352f2a2955e6b51c1057cfb6a545db70d0787b01330c27804b52ef890aea77a781', '6ddbc9f9588f34ad0d2da90112d293c72bffa8b6449a9f00a4eb1afaf7c3b678cd951f2ffda24179', 0, '2020-10-08 08:30:19'),
('3b22cb8b527681dadd2c264b4ccc2c4e1f93f1433c633d445f60c655a2848dcc09aefdbfd336210f', '5743d691d935ce0d048b69326314fb2dcc5f4b5c9b0aab22bb83d3954e8d83c690012046d8910dac', 1, '2020-10-23 21:48:24'),
('3b6328d90861fb0f298ebd7749e19541845f7d6538ac86865039f8752c7b788c40b2ec2061508d3e', 'b1bae8b044bb86dc71aae8b63ae55ecde8eae800148ae3b914f6de2272901d70ace9d3cce9e45360', 0, '2021-10-05 17:08:21'),
('3ca3a233ccfaed46a511d62e146772288a17adba29536483f045af01482b8aba2fac33cc997cae04', '68df837ccd427ffc9a006a20984066f7bc4a16ccb9152afc078a77f47a32719855a3417768611b2c', 1, '2020-10-23 21:47:30'),
('3d626925aad033a7ef878d8f1c46789a83b1a54f7732a757a298105bd1f7dd5d52d86c5bc20a2318', 'abda0d35adf51053b64df6efd8782a1c8bcfe9901870618ede09a113fc4e19f3e59fc5c152f87d1a', 1, '2018-04-26 02:26:45'),
('3ee05067d20faf8f6ff3e128f5abda0b9f45e9e6a055e90b83cb62bf6b6cd6f221862f0640b019b9', 'dcee12c6f81bc073693af6145e36cccd48dc41abc30132a066a0a400c3c326c793bbdc8853712195', 1, '2020-11-05 05:31:51'),
('3ee95ab3e8a06c3ff1ff31b2cefbcd8e6a82a7e4c0e940e43bdefea0d95af49a9eb8f936e10d557b', '794309554dd7b7be471225300c0ed178c50d42e10f2aa07c3a37e9c4c3846c1189179bf239b7a880', 1, '2020-10-31 15:15:22'),
('415b1de86d3e7e2cf008435869b1b82d3ac0ce29cf4ca128953c659c9340a62f0862148865bdbf3d', '4b207885a8d2d095a0c04add7e418c06dd2603335f20dda793378ada5c77f5ea28dcaf5c9e82fab6', 1, '2020-10-31 15:15:14'),
('425dcefbb78b00522c1ec4140d639eb2c78675c83c86d3cb3cab56c8b1bf71ee11f7fe94ba978f6b', '44a28b2be19b915f2e02719cadfd271fd5606a2b2f68b9f971ebc93d616a2f799f87a77dceef5dd7', 0, '2019-02-16 16:15:05'),
('4333cb0674c109ce5cea720bd5ec943a749415ad26c1b3829cae2bbadcb4671b868656346b37efbe', 'bdc38eb7ef7fead4c688875393446f484a5bf4f8d5c118919c150c13b2f84f8493e76037dddf82ef', 1, '2020-11-05 05:31:58'),
('437f425cbe4a939fc80aa55c679c6b18e691391fea1cdf35c5c1dedd129095569ec736b1c5a422b2', 'bb00be3c5e3c3bce4a187c3ce04d934b503461852153dc19a914bc63e73bcca0d1d02fde77b124f1', 0, '2020-10-23 05:13:21'),
('44499432aed735a294ae61bf60d03ac277d003ca6a29b40774d8e898cad22793036936cdc757a1e0', '057f558831f0b2a4dd590082c97a1aff502a6555bb4be42561d8b8136043b466736853ae6c31d72d', 1, '2020-10-07 07:32:33'),
('44a004afdd1f7e6499acf771d81b129efe25d43deb8223f6bd3dd908aa69b2f25e79e25665dedc0a', '9fd875f410bfb858c4f0d823ed93355b85731d55112227db82e8d054c44523e52cee0d0d249c59ff', 1, '2020-10-31 15:14:59'),
('4569795a82e652f2e4d8dcc605a4f4918cb9b3d06ffca96db74a02c8d3b5c22ed293a79683eb68b7', '551b0e66e7c603bda554bce42f55559555e4d05510f7ef5ba78f2d6df9f007968dc72dfcd4b4b544', 1, '2020-08-28 06:37:33'),
('4666473fef74c97036db56fa03203230f4c8456481a7e91954511334888b7baf7154e5889031f7fb', 'fd0cb721c2c6ba14684625c4329411fcee9bb8d0b1dd591d5065ed4373556d0d153c650492a9c75d', 0, '2020-10-31 15:23:49'),
('46bfb59b35b63a50dc77adbc9a516ea55d0764554cd56a011c2cd001b694f8481ca7cbf0e4d947a8', '8ab4e4d3f26e75934bc3a95c7d201a609b552c41e01bfc176ce223eac83d199db1540b0f99bf1f68', 0, '2020-10-31 15:15:53'),
('473b9215ce87568a39d7105801a4abf489b7c190e759f3a1a54ac5815211a321c7f7de6f274c282d', '97b2d91580692e5dda01ba96e3872fdb1fd6ab1e142097543e5914817d83bc677838ac6b06b5d992', 1, '2020-10-23 21:47:18'),
('479e7685d545ec70e67463d5e829507f0f94c62ea28dd8ea402269f2c13338600ba66cdefd795df5', 'ba8b36689c7c2c87fd34f6fa6ad5fb3522774b12627964bd8e2b3b855cfa6a1229d64a353e18af96', 1, '2020-10-31 15:15:21'),
('4a19269aeab54d30a575a6a8e1a5b74868d81ca05d458e4596bf4757734239736aec2aa368c5ec46', '58ea631d6fae42d728eb480df7b47c55e995094a9778cb0504473dc1defa21b1ac53f8e3c9e63523', 0, '2020-09-19 03:12:26'),
('4b67dcb550a9a88a5617caecf528a736f618bcff8316287fad527fe67c58dac35c3dbad5bbd9e559', '13a855af7593cd940e5c06aa504ce50006f22bfa312100ac1b680faccf2eb2448f941d3b1b09839c', 0, '2020-10-22 02:32:39'),
('4c36498f289c4c858b9b2181ac0539dd856c3b934f229b1c7c55ac0e75b732364056a5a783bb7eb6', '3a713f22f38fb1da258afe5eac36244181482c6687ee6a1ff74af2aa0f5bcde0835e6590467d0ad2', 0, '2019-02-16 15:59:59'),
('4c49221c2aedd91e52ca36b3b9a81ab9a25ef01440f2bcb10a5ee8c3d748e2e658ca6056071e8e75', 'c3cd3a5d56a4632ba66d899dcec89042010ea0553d3eca7e6b1052e422defd0473d3a6a0bea0b94d', 1, '2020-10-23 21:47:29'),
('4ca3c3e8a2a5ac26e6b5df764b9bc9ee524439eb970db1a383062052e19dff5effe965934e038b63', 'f2a91ac95852ce2b4958d3861c4bc178604631974a1ad2b2f27151dd4483edbd0013ff7e5bccdeb4', 1, '2020-11-05 05:31:40'),
('4e858f14c40129762f7a5e599a69249e324a3b58ab088459604496a240eb23b85d869621a75c25bf', '60cb94541168af719ec1d5e0cab433e97c540b47d55f92152b0d8875569dab14a62c0286a1c12c56', 1, '2020-10-23 21:47:32'),
('4ec9adf02cf5a124f910546cda46ab2ca408701b8d57a29323327f3329eae62d71ea320140aabeca', '578e2df26cd9fd6f6f43056352af83bd28cceea8f6045ca48927ecdb29760f5bc982f38389fe35b9', 0, '2020-12-16 17:32:37'),
('4fde84495a18de20b2345ff0b097c9b2b0843a054332b03116a960a19a68729164e182d6dbecb95a', 'eba52b483ae6d932ba60b480dd2b56dbd96acda956b69f161aac643075ac06bfeec7b6b72613d039', 1, '2020-10-31 15:15:30'),
('4febc3c08805ec6432b61b944212dc8b63cfb875509d9cb80b3864c69f63456d9920221e7fe9b655', '6f90e902a9b78658f3ce16a56fcd2d8ee2e6e910349db2e80b30fe35183a291be77ec3777da47aa9', 1, '2020-10-23 21:48:04'),
('50a07aee8dc88779710413952cdc76a165c7cf9fb3729c69b8430cc24698bbb06dd668477db33815', '5f346a5419451f49388f1f4a2244335c2be16eeb9cdc469a696ed799ecca23923fafdcb09976f82f', 1, '2020-10-31 15:15:41'),
('50e640811a70cd0af2ce21b44db77c65c9493215508a99d00a15b595aed38e08ad6250d6f378d7ae', 'd71447d048e15717757d95b4c25a0cde738ca5412dd43a92f8b1173214aa456c4565ad811f0331d6', 0, '2020-08-28 05:52:57'),
('52db064d981deb1f9ee0a3199e2f981f40238ed018d6a2192a113225eeadc598ea19152bfed36d58', 'cfab8c9a99a6453941570e62d1667620ffaad7fea0fea7ce30940c747390e356db055406ce9c5465', 1, '2020-11-04 20:53:00'),
('538601e268a75f2a5c6f78bc614a1b8a2483bd61188f50efb647373b3e3c7a88da9895e017cb6f87', '2f28310b926ee960f3025c3e11f9a0f889dfdbe58a3e29e2d91df32dc99b67dbb0a58fea7719f654', 0, '2020-09-04 10:32:57'),
('53a2853a64b0c12168722cc9137e039b42f4e2496f664030582108865b7e2548f1abb76a81f7af9b', '8643876bf0a8778adfacd8434a0ceff0823d3efa7e664a0c7b0ce0dd1e2332a94236761650829c40', 1, '2020-09-14 02:09:33'),
('5526f3038ec3c07f0b32afb5b4f748cc819476283df5cebc6bf82f2b6281b0b9a873b0f13530818a', '621ddf5571551241bf92f7c61586564f365e6958b61699087de815e4aa9302fbc6e14282222db8bc', 0, '2020-09-14 02:09:34'),
('5570090d7655c5a29782b87cbdb41f2cbb23acd2d2e0f32e8406a2e5eadd44ea97f8cae1ba7602c1', '305749e7ebf41d60e43cb54e8a40dad7bc76bb57d1efce77bdc9ea84532e34e6fdefd97efde2568e', 1, '2020-10-31 15:15:51'),
('558c1dc1233f5f7bcad9d742f2e4056efcef5826dae61a71a694ae2d98180cc567f038b8931bde24', '50761abb899bcb9b445dde67d93d563dd44c8629cb4d9a12013fdd1069e81387bdb53799c94ed17c', 1, '2020-10-23 21:48:31'),
('55a788bfae3615822523d0823a0219d69d4c5f0758fe89c9283fe6c0893402ad8c56245d87cb5d72', '6eedd43008028cc5133569611fca5373fb7d2ed7bca0d5da0a91677c6b047165e1f9e7ecae9ba631', 1, '2020-10-31 15:15:32'),
('5777ea9d9694909ec16b901418f2a37f6df5a46c7fb390d96a13d34d6760665aae176abb59391a51', 'd65b10fcadff3c8c24c2761abb0b11ab0ac1243967277efbb2d1a5f4463eed311e9ed483c69e082e', 0, '2021-08-26 03:23:18'),
('57a90e20ddc7082205192767140bec68a362f56f9ec1845775c90a0d70802d16050c0aac6ee62b7c', '664e425befcefeff7b025e828da976a84099629fbe6b8428938bcb1e829d75066bfb17663717eaba', 0, '2021-02-06 07:07:28'),
('58646113fe266beeaee8fd5849127b31b63b432224c70791ef4f932558012d2ab317dc9f0f50332c', '48352af75fdf1653b63c502cd6923e2cfa196cbedc7f81cf18224157c5ce569a21137a46d178592b', 1, '2020-10-31 15:14:55'),
('5cdef070f54bad366e37adb35dd841eb9866d6c1192e70b148628a2267b4026832570cab7460e414', 'fcb42fc84e4dbfce98544cff944dd0168963c701d7023cb73942617249af430a6b5bcc7e0ed97d56', 0, '2021-10-01 05:42:17'),
('5dbbfdb80300a8bcf5fa6aeba7ca5222446fdfa69b602ed4b38c288717de324236837dcb8873826c', 'c66e0cd0bb4a78058b46868f2a25d0768eab9b05f04bb494fdcf0c17fc59de38d36ffc1bdf58dcd7', 0, '2018-04-29 00:19:50'),
('5e734689e307da3cbd536336743b0c6744e7a298f226164dafefb31d6c9fc7049e45d376fed72e0c', '640ab897957f36041f673c74a5b697214932eb66931f71146094b352cdb63f1f35e5ed6985959829', 0, '2019-02-03 13:07:23'),
('5ffc0839ab79a093527832ac1a3279b684a8241b3a72f482f298b5dc8b4532f17fcd3cf7dac8a91c', '57ee81897ce088454372886bdf966997987288753a31a2cbc51bdeceeb9e098c5ef425ab86984681', 0, '2020-08-28 03:01:02'),
('60a6f446b673aa990aed2ef9501517c01699580733d1f4b90f6089dd65bfc9d82b7d3e574da5f490', '240f0fa03ad1db3f2cc6622eb1fc7762bffb0c7430e4f9ef46a5362fbc63eb83f6b4aa91a16c86c9', 1, '2020-10-23 21:48:07'),
('6255ebbf7ddfec919404a3a4d2ebb99cda71c722decf2e7d1468f55410f10bc7ed26dc9f3e21b319', 'f9e82ebe94f16e83e8fb3ffe3a7c854a6d7f86e1cf1d185058c434a7ee13fbd9ba4430a8439a5360', 1, '2020-10-23 21:47:34'),
('630b3b0e078d2992fbed1b1d8b4292d45618f8e346786929c0fe13d21b3c416545a6698f3216f51c', '65e91d959972e00591fc3f7d6a9e2dbfd529295ef6b1d45d811c4b8f37043e8b7f4956177de7be51', 0, '2020-10-14 10:26:45'),
('64da53f06f8daebf6581ba94885a7508192d74ad338a71cadf21d59d60ce9c6d4960282caca8d334', '87b6a79f4261bcdefb9a4c288189dddebab74bccaf87f2b864569e16850ff9f11f52c9325ce6eefb', 1, '2020-11-04 20:53:05'),
('65807da8fe90c55222c6d100ded47d924864088bd679e8f048ea7f1718931f4e39262c55e26ebf23', 'be4399866d41bd43a1a4793029f61022c3ead3758946b1d2104d2e0ebaa6ef820b374a4fc080f56c', 1, '2020-10-08 08:29:25'),
('660f37cc6d3c301bdb574a0700b13c994a54058f8144af368c4792e42eb8ce9a768b9adc0e2b812a', '6f10b4627c40e8150665d5122d4ff9e4a5802f844fb0babcc54faae95aa9c1c7292c60713c2e37c4', 1, '2020-11-04 20:53:18'),
('66159a9c6bdac6509523c82aa94c3a616306dc5586cd4b1f3c9ad50ce1d8488b33bee6fd79df382c', 'b5766b16242bb68e6f77cc1bd19948cc9a2bd1838a5499c708a457afbe491b224421181270756bbc', 0, '2018-05-04 05:55:34'),
('66981e29323e8b6364cadb9e85da12162ac70d3e62fd5607a9959423126fad0954654a90cf704175', 'fd46cebdc36efb88b02f6afc5fb274044828f9479f65fc6be04234bb9b43d8c22cf2781d8aca548c', 1, '2020-10-31 15:15:35'),
('6997f16fbf92afd5c9a34d7c159311a05107e3b9b8006d38d40118675a5d7eb6bad6e7e76e2c4920', '8d1ce7bb78fb1147da9de756168571a965ee556030c65de985c309b5cc02ea52be3af3b1cb3b1436', 0, '2020-09-19 17:33:34'),
('6a973d115394d75f67c8099f3de912e2505975b82e4f415b9a26b4e557a0062e67b9d2e38e2ff1b1', '15560c62fd8d08c16ac0ec84474a625e2102b65dbcc9e3e59503dd235ca281d6ebd6f222f04f09e6', 1, '2020-10-23 21:48:36'),
('6c9b95ac7e438f13f789e369fade911b25416cb20f6ae52e884ddee59fbd951aa38479a57cac8a09', 'a99427afe96ec671a41d2e52bec909de45714d73f6a601e19944a3df52d165c448c0d3dc4651dbb1', 0, '2020-10-23 05:13:22'),
('6d56c73ec8b51895bed58f0bb752f958bceed50652132ef60f24cc62a7f19743cd5f932def532118', 'e087b813b33b41e1363b733a302343a225cbdee0bc0a392cfa4e846912ee097b8cf089f0d30618ef', 0, '2021-09-19 17:33:14'),
('6d959c8fe368aa42fa804c824571e0d08aa0870248df5b740db6c2cac026966e32f8e2e68ae93c37', '07603fd62fb85449eef6cd1d3f3af16f527035ae1fe53f07bc1eff7cd108ec3a609adac9d7892492', 1, '2020-10-31 15:15:03'),
('6f0130514c31ada4959d11349a60cc69e17a9636e89ceb5eb9187ddc400ac81307408384de959e3d', 'e96dd1f186b7416edfd1d72144111792763897f45a3da88c27f181487f73832b72d807c3329cc304', 1, '2020-11-05 05:31:48'),
('6f99ca029f54fc901f54be539e7fd6938c6ec0adcecdbbec19ff46b7978ea88d09e4fd40e82e2aeb', '1833541c4f67d32789fa8f4e7c70b58a63743e84b452e103e7e5bdfe1be98b3ae12be98c4fafde36', 0, '2020-10-20 10:58:39'),
('6fdc34636ad6cc17a4c25a41745690a82bf63ea67439fe014fd6bafd3593aacfcd11272082525909', 'adf7786b3e8bd2e42664c2fab374a2d95972e661ce05b2248a521919f0417d33a266a27950d03800', 1, '2020-10-31 15:16:51'),
('7133f19cbc2b2c263db374e57efeec4b2e16156cf466559e8674e97eacd960a5c38eeaf8f947a847', '1a61e639988fa4a6bfea47f7b9f249e1d809dc4aebede9b3fd843af3d79610ac6bd671ddd3b30476', 1, '2020-11-05 05:32:05'),
('71a89d48601f215de4a3275e4e74bb849d9797820479c7d9c361e763c9eabedba2b9c02c2eb1245c', 'b79a3842778b39b0b71ec08ef69d575dbf90782c4ddc158243dd9736c7df5dbdd8cdc7e1ee15d2f3', 1, '2020-10-23 21:48:33'),
('72557bdf6a4b1d2d5e63220fbe2b3127f16d6987ba11285ee4aa6fb95f55afff638e03648296e514', 'ed1861547554468ff1f1f956616f08169e02c22614279281c17a7c13e328fec476cdc0d069c07b0b', 1, '2020-10-23 21:47:26'),
('73b4df29877f3acf8bd3dd0c2c4ae08d4b0bf031b9f729cd69fd5383c7589d2a51c130a40cd1f5dd', 'f9e8552cf8f95a8fa77cb29826888bc5d218ad5b6ba27430ba74a45843bf96c8d683331598119ad5', 1, '2020-10-23 21:48:37'),
('744f18e75a17e6850adb7d62d7c47c54ccd736e046d883203213492dffa71f13449d3f3601c69497', 'a1758447ebf79791983e844a90ef9295103d532acc32202004e49b149a471fc2ec0f093dec4492c0', 0, '2019-01-31 20:32:55'),
('75bc153d2eb7f62c4340c07d14cf00bed1e4fa5a5a371576a8cf37636770f5ec326253202a628227', 'ea1804e27c053b7747f1a5b0ba544410b5e80d591206597956de7573012a4981227574a186bf7d5d', 0, '2019-01-27 14:34:15'),
('7895b536e13a817286a8583c45ae8ed906423dbe093d65390ee15063a38cc4b2d96cfc6dad3ca8a6', 'dcc2921b786c0b94b0557345d6d50d8adba9afd1411d561988e959974b79f3a3d78b960beba4848d', 1, '2020-11-05 05:32:00'),
('79657f84c23e5628b98ce394e7c2830d3ab604471070b453881232b07adbb00ab6ed7c8e18b46f88', '5754f2a1e338108a856b517839178d02b0c54220801badddb2ba3b6588326e851638958ed50d2bc6', 0, '2020-10-07 07:32:36'),
('7969d6b34de80760aaaf56acdc4ba21863bda2986056dc1c2002e83ead05f0e6516ba814d06c4828', '205119bc085aae1e89abb4e25e9ac0d327e3e0b02391d1bffa916a23f999bd8a23485105738acdd9', 1, '2020-10-23 21:47:12'),
('79e22a464ebc990b422e45d5636636f327108e62417a1cdd251c97b3f5641b579b7f99751be87c84', 'e96546a500fae16a816649e9b50188f000545c6dd36edecf46d33c14c7b056e372a3995865032a7f', 1, '2020-10-31 15:15:29'),
('7a17f2128439229c5984cc2d75b684f44e68140a8323f1d72475e4736271433e9938fda4e7e9a7e9', 'aa607cd17ce2a970b5053d888663ba2d2b485e990496c168b8e801a5b1d756316c7a1f8a4d31b79b', 1, '2020-09-14 15:10:19'),
('7a4868bb46b57f32520b58bf42b499e2845ed1eea78256b8c51785a4ea7ff8d6ead727187216e451', '6800ab289ef166aa412952f1f2f707c6ee1af9c85538589085bc0e3464d6b181deb8a5b92935e2a5', 0, '2020-10-30 16:19:54'),
('7bd493a97c94c4e9299c702384a69cbca03a9e85d4531527a8734d92b22c3af068382c5d3d9e458e', 'fa38f0e8ad64646266e5ee283c4247b5d5cb005d6d6aadbb3146291d7dc863fbb0a6a967154b1785', 0, '2020-08-28 02:22:11'),
('7bdad83c9dfd5451be8351c4e9d389a4bf74cc3df6191cdc01ddb22fc53463fd8236be10acbaa129', '2b8b18c2c3b8336fc9c6fd77a30a796f4234a12f829de201d82f17fe1b2e567fc2f6ef524ddb3e28', 0, '2020-10-30 16:19:52'),
('7eefeaee419d5af8854593ce19d6df32c16f686ec0a35281faa975b9087788e4463e6c5bad56f4fb', 'adf4a8b51571c5b7f2cbdb0c4dca080ac79548a95ff731a9380d81de7ab5bc2a609f5bb89089ef10', 0, '2020-10-18 08:00:38'),
('7f31e7b03d2977129a0500f6f139824f72e256b64686739c8f4d2c8ede6be51e8ca3a6f6d14d75ca', '48dc7f562fac4e3cacd9e41cac709db9ff6a8e1efc4e2891f66b87290fac6763961b4e1d582c3029', 1, '2020-10-31 15:15:02'),
('80af8c023fdb9f34b655537c42e3c70fdffbd88cddafdc6fa44b54b586ffd7bcafa7f69f7f670bf3', '8b5ab6377d4d4962cfb9049e041a88b03c5158dac7e6e864158d8920e2a8ceb7ced02d53e61bfce7', 1, '2020-10-31 15:15:18'),
('811523d659ef85e7ac12fbf324200c3b7409cd3570752c2ad569f326ee8ac3f4be86ab3e5cf645b0', '4bbb33a6a4cfe454752b4f1ffef252d525ca2459c1cf47ebf522068daa3d37ff5bb21ae11f746783', 1, '2020-10-23 21:48:25'),
('81961840be4fd8d32a120b7caafcb68e56e4dbe54d13bce17968bca120bb7d6d3900fb9d11dd1387', '9f10e491b2535308a60076c8ceceeb2050974ecc110d8912209b177861d7a3f450adc611567581a5', 1, '2020-10-31 15:16:54'),
('834af4aaa18d1e157ad7e80b08641ec19162d780cfe7821651fc25ce8e57770ec9a44daf59f859c2', 'a5a3b87f7bc0c90642c0a2df92681063f9a40929e3a7d25aad5e8845e6d2ed21e40f15860cdba748', 1, '2020-10-23 21:48:22'),
('83b5845f40d7170b6bdbdab7e5aed3e9025ffdf5e4c3e32b6870b6535296a0bee4060691b8dbb805', '0bf1e907afc952625ebdb820287aa4abbf4f830dcd26d7e517aac3c0890e2097f70c78132e88e9da', 0, '2018-04-25 16:01:14'),
('84945b205b536c3c2962d847f33564b62f089be9a48d2f590d3dce8dfd7bba60697881f64218c2db', '96e36bea06ef54a3d2836a6060874b6dd19d619da721ba1dec54e8ec841092d38740d32440e37eaa', 0, '2019-02-13 08:05:05'),
('85716bcc5e51f027c26a035f75990bffe9377456d9e915cb31a706b32e4dc3fc47ba745913248a3c', '4441cf21479707530ea9e3ce525d7152db1b48cbfd64c8f6692cfce2b725809f15872ed54dff2bab', 0, '2019-02-11 12:29:50'),
('8579fb072ac1c9c9f10d57837bbb2946088ab0b8309fd92bbce2178cc2200cd518626d05b9b93490', '2e61782c8b20798bdfb7f458fd5547b131197a4957eaacb1a586628d0ac0416703a3eb86c6b787ab', 1, '2020-10-23 21:48:09'),
('85bdd2a4334ac2d43bfc667773c6f813e065fcb2785bc79921a814a672cc3c4c83f4fb2c842ce555', '141601c80063ccfbc0ef3c8f997479f1aafb490425ae7f5e9965fa47570a2a829f046588d0ca0b6e', 1, '2020-11-04 20:53:06'),
('86ea7ad5b7201580294d675f1a307043fbfb81a2eedf51d2081f6ce45899020e6e93f2d5801a1b1c', '6d6f9d1ee79ab9842019c42c272c2a78a2754f27f1d9cafea02f3f15729c0f084b155e088b4b4432', 1, '2020-10-31 15:14:57'),
('87f3aadf67ebf92331ac73d411c046259797d935e8dbe59f11beca0553f2740acaa699e5f9ad7c27', 'cd98bc2ee5124950ae89f25bc74cd7eb4be2032b13a3f9295a9a9da5cecae48408d64bd13b3f0632', 0, '2020-09-19 03:23:17'),
('88ae3092583ee2f073213bceebe5a118a3fa9eb4615ccc69ec1aca9c19e9bbaea2bbb745b4ecf596', 'd826ee5dda2eaf187c552dec2a68ade9de3c1da0710eaa96a312ae2d870a0c3c29e343d1186e93b6', 0, '2020-08-07 13:07:58'),
('89475a40c04ef2c9ed563411723aaf7e1c37cb748c1900ed002af11e86a26be3eeb117213cc35c48', '142ce7d71becb454a97a8a64b98eac16d35554f9e03f1acb798d39926093142946ab3596599dd0d6', 1, '2020-10-31 15:15:17'),
('89a82b015ce36bf24500872d2caa6a1a71eea482d7ba8340199b778195e9836f9e07e783b924f3e3', '7b50512d032a6fc9f3fbfbe918647446d5bbe24e170543bce6758eea006682b8b971f15e6387b8b8', 1, '2020-10-23 21:48:13'),
('8ab5b88da631d919df8d42a123500416eea92ee3415d7ffba0d63de72718bfb1922505f5f2ae67e0', 'd885ccc92d992c42937f39dff4aeefce645735a7fc0205ac03d88a3984175e2fe2e13962c81162f5', 0, '2021-01-06 11:56:03'),
('8b01cdd89840e7f323654cc51bdf4e5126bfa4d2d25e93a51bcad84d3473cf2473884c55ea6445ca', '431f27649d0e78d816231080fd016b1f82f1a6af7cc1198982e72b728bb1091d6cfa8d95af32dffe', 0, '2020-10-21 23:09:19'),
('8c2d3fa495dce1b91786fbb8ceb58072520c8a7d9a65e501029e98bf3b6147aa7fd6bdc4e5a84a8e', '4cdaae0cbae76003a5afe905dd358ed9c7e2c37dd8301d02491da35db4491ab53cdf0b68cd88e4bd', 1, '2020-11-04 20:53:01'),
('8d84221ca119d8d5041168df23651a4b781d36bc9131e185bd0ac09c80516562788f0a12d5f1aa63', '0f3ce09ad77aff912563ad7c80bbf54eab4cf073478668fe414d5fedbf1061e3f184d43880ea029c', 0, '2019-02-08 03:25:33'),
('8db7b9d5499e5ed235baa88654bc3b1b3fbd06a360935db7eeb551deb56bdc78162d942f88a7b65d', '050a1a1695240d47854f0b869bfa173dde01d405a1f027ad27bd658323189595147141467f273318', 1, '2020-11-04 20:52:54'),
('8f32e943f81a3c7cf06efb5fc00d29c85cc638298c5ec78559cdaf885d2c606449c390badd4694f7', '564228b9100839c9b474a5a25097ed5ed54316be561bafdd97e3d2e37f27d4387d884ebdd47e6849', 1, '2020-11-05 05:32:03'),
('90a679178d19942b1c7cf7239c670926190554dcfee19479dd70d7148fed49d8147314867820a4c9', 'b9410bc8ea2040139b6a4f2436455a99950faec57a2d145477a9a907c7112932fcec3a0d793eb089', 0, '2020-11-11 01:18:49'),
('91120b035019c78d036193d930bc8a895750e9c8041ef368e0a85b96d13c51c3ed058db9adbc3ea9', 'b822962e0e1f6a6d577fd6f12dcf47659a07c24d2748bc4df4a4e1862ebd5ce25f0e8902ca59be71', 0, '2018-04-25 15:05:06'),
('9238b7f4bd67fec78acfbee296663972d1b7d9fbe0f546241e6f7e0acf3957b18da341cd5d69ab1a', 'febfb27cab9599c9def61fd810379cfc50825b5a29ee63f1286e3a5c6624822589b576194a3fe647', 1, '2020-10-31 15:15:00'),
('931e61942c32defd4fbd72e1cf7a356698618b94311f999fa1ed801031fc5ac406e286934469d88d', '6b24a00bf9e9ecadcfad5c7b518d3fdacec14fd266541f41a57eb2cab6f6fa6f6db5fc76bc9fee4b', 0, '2020-10-22 23:10:16'),
('93ed586171761b7a02a4b5fa9cf7260e8624bfff2e539dbd9ab61fc0cb57c8551b7f3330bfa2ad28', '3f9631de66a24cf968c1c9b9a61e0ab7b9716753b0dbc17542f5f839b4f604ca7d8fb14252ca3793', 1, '2020-10-08 08:29:22'),
('94c460a853eb7f611cd6e09e55e49e1e685bd0505635a48ad0d2e27d3b7dcd13909b30154d83f5e8', 'e9af4dd691cf19f32fda105b4c49489b669c31146728471b83767b17fa6c09f612b21722280b0c93', 0, '2019-02-10 13:37:17'),
('969e5861c8bbc616e10a1246210918b701b9db12017552ec7928f856635dc64a5bf179080dbe7085', 'e8f40a1ffa8b6b28a05249870176b2a683d07502833535c4e9412cf30c1da2d4817e8760e7aad678', 1, '2020-11-05 05:31:55'),
('96c20cf8f04c1af41d5ebf6d7ab2d8ed5e044369dae852e3d8c1733c1b35b2ee8164bb854d5b376a', '42b962aad814420ef238499d0a65c78930d23d8f976747cf3e7afca5f4fc7713a74f5f25388f4b44', 1, '2020-11-04 20:52:52'),
('96ec700894fcf73f145410cb48988033772d489a46f33a3db7d307a5a898e4debf861838ae6b08a9', '60ed4791dad3d9c3c612f1dce0afcd0dc44c92beef990d79ff20e0967c642f250f7b54be72656429', 0, '2020-10-08 08:29:27'),
('977ee8c3eaaac7b005c0537da51400eda13d6c66f4351c9859580d217c843230d008300c9fc9b396', 'f97c70360fb85398b171ead93fca0c5f10ab0cdec918bf3347f6a62cf1a5e299741f2282446628b9', 0, '2020-10-18 05:31:56'),
('9798ea5a905d503bc92e605c82860f4c57e354d3c346c6f3b7033655d73691011f6d4857eeee80b3', '21b678057ebd6ef295cc28b1ee1bd98de6356acf752c9f0b1900bc7d7bd4dda723494f67825124f6', 1, '2020-10-23 21:47:38'),
('9834eb1182451fe743e626f466259f159b8680862606be473e532f151a54a9526bb4edb1d17a9ccd', 'ee1f6ae7138268168377e9ce636db94027070cf2195aaeb39c2a107e07dce6f4da986b60b6b70e6b', 1, '2020-11-04 20:52:43'),
('9883cae7e259e56164fb5444dc4842904c4b358dbeeb89c3c8220d90f52f4d64bc73004e56c17f0d', 'a1b89fb44831a46b469f3556ef547dc60230b97e0253a9217ac36da4eb00e7410864108ffb363fde', 1, '2020-10-31 15:15:43'),
('98b7646f8829d43aa3a09ef7fc1ac460352cbb98997b7c0c30fc9d3be55a1c48afa4317376fb4704', '2e89773fb31effd2f2dbca2557204d05d6d6a8e2dfe690c8b5e2f0cca01da4f13b2c95e703dbd440', 1, '2020-10-23 21:48:40'),
('98c352ff8bf76bce69aef2a8e15620552d0c4b7058326f01762e02f238bc41bf11d07253a7eefd5f', 'd4791d0310e7b52dac974462603554230b9c2b4518bd954b5c7960fec9d33d2fe359c1506648a28d', 1, '2020-10-31 15:15:24'),
('9b25aa5ba891d7f5476c5f4f658d5e71a5b585df6392c8ad975717087393a3579b1def39bed9a740', 'ea22a2e9b9194e8a5ab220b37b67ee671960a881cacc257b60d196375a361be4af282470535cbc4a', 0, '2020-09-04 10:32:59'),
('9b8852db44f767ceb822640042aec05d23ba4848f3060b04f88460600e012058e69eddb9e1fa3792', '997cad7d4237ec564d636365d871664103dc8b1adf4eb8c11c8d6fa584a34f3aa80b7b9e2d9c6363', 0, '2021-10-01 05:42:17'),
('9c92aed96aedabf8fe463b7f1666e5776c5a3e1ae5ec558dfa463c53d188afdfccbb73301e1a2260', '3a79d62d6aa38593890ee7f193f376498f6a4489813ddc9926923ff9bb50e29fa7675f64bea5abe8', 1, '2020-11-04 20:52:45'),
('9dc2f0eb45706e088147ca5635f274179a6ebabbafb37cc8dfc31d5dace2d28527ef592078491a0f', 'cbb231f743018e07def91bedda704335d4360cf642cd59bb5535dc568b33a416bf6c0996d2933030', 0, '2019-01-23 18:39:26'),
('9efd7bab42e370c6020f3dcac9f5c9a38ba1452d6362200762024cced6626a374a7020c90314a246', '0a0a89f658400e35ea964d7d74aad4508c7efe968e497504ffb9986ba7eb5b1af3d2a157895d8387', 1, '2020-10-31 15:15:40'),
('9fc1c77e0a2cad82365e433f8457321b47bf9f0427670197fc74ee528bff3b95721866a7a4854823', 'e434751e2a36266b3226bc7f0bf89e95d38010039825463936b88f0bc7b296eb83dfb02395cb1cf1', 0, '2019-02-18 04:47:15'),
('a1aa0acc50730a49b22801e43efb2787a1956b0f78e19717afbe9531b7cee5d6faad0510c9394a76', 'eb295fd60c6305d8ca9f41e5f61b99d38d5faa75bab55e510e78ada92e6b1251a4fe1a09cd5d4b17', 1, '2020-08-07 13:08:00'),
('a241ed7b5b88beec8968ca07e1ca09d1a36178c0f2aeeb8ed71d2eff2b67c0367c244050cc386028', '43946843f2fdd0a789a663b8fd864129f9f95f447063ea04db47e7d730f79261224a78fec59ddb7c', 1, '2020-10-31 15:15:16'),
('a3505f3fdcdefc496620f46995f9087b1e43ff39b56685b32547af593901098c5d3c476cee384eee', '9d58df8b4e53a600b7d3527db967370e5e2f5dc4d2c19ef6d58ca6108ad5e52c3050119cec580d29', 0, '2019-02-10 18:42:53'),
('a400161573a5810ffd77dcfeed5abfb2b3a7b992a5afd9bb81d97a4c7088dd54e1b33efe4b73372c', 'c28fd23c3da4dfe689ca80707eba34fb88ed3ba75f1413dfca2d110739f7fe65ecef104181f75a7c', 0, '2019-01-28 01:11:33'),
('a6249ac034605e37e8fbe447b51cd5f16a4e742f685f7ae3ef0e9563c8c19ce668ecf0575399aa08', '87301473d872a2c599586c3620506c83d8532f3afcad7f5d1e3eef6f42bbc3e28d77f3168c695293', 0, '2019-01-23 14:53:50'),
('a726aaa2b75c2a2b5870fca9bf1982c204eee7c4325999f8cd631da339675e4053332236e74a0474', '1517c00053544747dfeaea4f8b438c57d0ce0fe19c5f7f1607e809519c58a130287c27e4803e577c', 1, '2020-10-23 21:47:21'),
('a76dbafd120c5d05a2a1fa4c400abdae9b369068b4152f3bd57c23ec2b74a653a7df86e3588be467', '469af62a6e85083af08bd54bd1971d32aa12809a8c2f06ae98d1e220bdb874c3059fd21fba89b670', 0, '2020-10-23 05:18:24'),
('a8d366a1db0c7f923118e8750a6ff9acdd25369537a702b0aa802dd2acbf9f0a5ddbe6de0a5d6d68', 'b6742914b8c201b620b4a6ad68547cdf306f9eb853cdaf5fa3ba2c9d01913c8aff0564fdb9af5d49', 1, '2020-10-31 15:14:52'),
('a8f3f74a0746aaa98b91fe28903b6cbf3360bf6a8a957bc4a3743c8038a652a896b4b3aff63eacba', 'c2985f640a7ce356816e87c62038789f7d7b819b95a7a8eb66f3e001d9bc59c7882bb356fabe32ad', 0, '2020-10-06 04:53:52'),
('aa83a89298205cdf8f5d732a8d2679e44f1e04edff847c9e06f981b767002c9dbf0e764ec66c2c7d', '89c72bf77fcd76f61ac13c1784d6e51af04420ed9778aa0e139ce3505d8c0b1a97186f7653917714', 0, '2020-08-28 02:59:51'),
('aab1705ed3a2e2b50ce25765674d87788ed48463c76d865c09f5e43013cb1e598af0ca451f05c3ce', '3e781eaa388fca8841e0af6b6b8c511592f98e8b58299c8be491ebff5930028f01b86b24d28e5544', 0, '2020-11-27 12:31:53'),
('ab69fd2457559b2fc349e3a61f6805b08c9b191db21b44e7b69132e96f550fa78111cbf6bf73b550', '038f9c7b481ca738837fbd72d3ab8ccd9661dd238972b8f6f8f915cd819ddb5a52c3481939bc3207', 1, '2020-11-04 20:52:55'),
('ac6a252be8ac9793a64eba24c270a47ed88cbebcbe26df17e0d4a98c465bb3ebced20b52fe600b17', '77a9dd8569190e611d34aa7b512057cbc06fde23457ba6be19c41861abfd2e1993aafd85fda7dc17', 1, '2020-10-28 10:16:45'),
('adf056a5a8b6068aa525e58eae9fc1c8d17f30f45fe9887ef4021ee14705cf95f3127243136e2695', 'b3e3e9edf84ea82258b3f32b300294a389b0625ae35cd4da9f818b53d5561fbd49562e56d8a88583', 1, '2020-10-24 05:15:36'),
('adfb9f97a9f359bbe6b17fc9abaeae7f1ab128387ed92133bfc1cbd6a7b502fd62ad83c798eb3db2', 'ba1ace3688f81f2bd2849ccc2cda79e6fac2ae1494305f5f60b21a8122f3f25c1e3bc46733a9c437', 1, '2020-08-28 02:22:07'),
('ae5f422537afaf464ba8c23f506822fb20d6441b451d179cb9a9b3305006756f689d777459367c21', 'ae990fb4313ef3e5866e995534d11b977f6917983d11eef0586b105e7eb78a190b81d08ef7e5003a', 0, '2020-10-25 01:44:04'),
('af8847fd9ded49ff151b79c284c3d97b6ebe8304c1d04e73c9505dee5915721ebf41814125488671', '452c0cf01ba478ada05a268575909241d3b78344e4dc68fd48db9017f0b52941a4705068940c7a8f', 1, '2020-10-08 08:29:26'),
('afcc4df603a3b3f6725c607e0fe10c048309a1b14ef938aec188aec63902ff32529588d17fb7f763', 'be43cf24cf2caee6c17e28f51dcb3078ce4f13df45ef9555392d5b4faf071c003d65f4f4a4bec212', 0, '2019-02-18 10:12:08'),
('b093bc67e8504bc80576639a7810e7615c439eeac1b1455e83d64560aa5528446d394040de869d3a', '06d3c209e33c32071a04a3ed7b1dd18cbab6859671fea02115278d11068bed06b1cfdd84f642c67b', 0, '2020-10-21 02:04:44'),
('b0cbba11ceb8a40222809486fc0debb58c3f3c5298b5bbbe22c3605ccffe7f381d0a1dd372ace1fb', '2621cccff454b9e346d2541b4ba9c4e995dd39cd3d7bc26829a305c700f3cc8aa985298c7cee5d3f', 0, '2020-09-22 01:24:09'),
('b2924934474adca74a7fbdb125d1e81d67b981d009f59edf3222e7c4ea02a36004e541ac7b8d4aff', '308f5dbe2a465589a4790c2a07ea6e966e1df1efbca87c2460b89ba2e8232472a87d7a431af8f9fa', 1, '2020-10-29 05:30:54'),
('b2bf25b57238edea172b151a73485ee96910e00d78a082a81399ac87a51ba36c9a83e250ad8ac36a', '627212bf3b850bf8873768edc154373c62b68403187730f247258d1efa6fa72e594c7f917f10b16b', 1, '2020-11-04 20:52:42'),
('b3b846f33fd25efc8a0b6ab5e0c9e2dc4cf6c4f3f758b2aab6b8cd0759b3e8435bc2b44702fc5e4f', 'f4bfdf05e737446d1c3157277d9f33b7dd6e5c90818dcb41108a19ce5f0523c51d0a951460cbef31', 1, '2020-10-31 15:16:52'),
('b5f260ae0359bba0b9c5f02a76592d73bf07e48afd201618703a7f134b2d4192eb7bf33ab95d5f2f', '2b26460e30198025f52eb3e4a1e2e9cdb12bc93464d1627be3bf11a83d99a847af8c1f3c9d37dfb2', 0, '2019-02-10 19:04:57'),
('b67d71038ef2152f588cff1568822dadf02fc2b78f5542e08676a02939d311ed79912eb29780839e', 'd9b8df764ed5b3019aa5ac5f914bc9104a081a15cdde66590aadb6f0e56fe84d461ee99839ff6c09', 0, '2018-05-04 05:55:36'),
('b93dce640b8e2eca6d6d811ba5cb6627fd65cee4bf41483a5f5eeafdc8352521922ac1350784f5c7', 'b790c9ef4833d66e1b36d01854a2c71e12293e5958fd62fbcb6114aca9e343ec54c91aea43c4d883', 0, '2019-02-10 07:17:39'),
('b9ce9442f25f2dfdb30886485e4abbcd3918d84068bded4644effeb4eaf70408e375c36cc74c63e0', 'a37bb12d986ba7662b29f331dde4f93e3c5ed0e1aa31306aa2903dc9bf1a05f49b1c0900b13b1443', 1, '2020-10-23 21:47:16'),
('bbecb6059145bcb241d002dc4a606649f389265812ac4e4615d1ab38ed6ad242e074b9e75c50ef6a', 'ca952f0a021edc0de28b5ac578df23199a58cad7476a5150a72cde952810b8d41b50fcbfb543eaf8', 0, '2020-10-24 05:15:35'),
('bc117ebf01481b452a29a1cf711eaba0782a3b21920806ca3c34ce75148fbc2cbdc352496995cced', '31b9ecab7ea791a710fbe9f593425a6da92536f62484ab9d204e6ebce501e9dd85f6480fde583c4b', 0, '2021-10-05 16:56:05'),
('bc51beb1c8cf059885e2d12d19a7765719afca9444f42d8f635fbd9a2f50000378daae7d1971f281', 'be91797281a6f9583f92ff76f780879b12bac46107dd9da0e9dd04262ac4053bdd3bcfda26b59e92', 0, '2020-09-17 04:06:54'),
('bfa6d7cd9268d4b103fd62323f7f885db2f5c7c4efd131ec275a8c17da96c705cac281c83f47b361', 'e695c058d9c8a601cb7da70bdfcf84cfb49605c3e29875d41b9cc31118b09d32585cbbddd3bb4fff', 1, '2020-11-05 05:31:54'),
('bfaad63c10ba738a0473316405005511c1886215ed6378f30cb9b43b4ff418df1ec5473cd5f8a099', 'ad842737d02679bc7cf9d7d2884eab1868dadf0217511d55e0f399c42ea1c319efa9c29284fcda6b', 0, '2020-09-14 03:56:56'),
('c08446fc58f690c291f28c0fb11af50127e8f3e8d00db696cd62febe4bf52d478bd6c13e80163001', '9b0362c08b5bcf31c04aecc27277b614ff5db2100ba29f28597363a1850611e1f1405a44c6787449', 1, '2020-12-16 17:48:24'),
('c08b8675c9d6e349e130755d02f6a74d86238d549cd37f685b398a4c101c61c8c00cfd7069ccc753', '2d48afcd3b602c85c25d6daedaa609f7e33d46d25dc0a7eee831b7200d5b7c6138451186db632c36', 0, '2020-10-22 18:06:12'),
('c1e1e8e19522b11ef588b9f959683564895673a044796426b88f7be81a2c7c6dce4006a1b4294c01', 'dcff33a32caf6a14b65845c4f97ec39e2a95966e10d46184caa4611140047bff8ca07a16bb536aa5', 1, '2020-10-08 08:29:20'),
('c3348e2ff8fa4c0b3e910cf4e7feaf52a89eebed9ad1f7739b881e8b25fef551aeaf0c4a686d5bdf', 'e4be078c66be13b338c98961c9ebfb729ceea31a896f71c9a2cfb1b3793d11cc4efbbcf48d8cb0cf', 1, '2019-01-08 15:22:24'),
('c3450e9ec947fb3846d8de8aea970875344c7e40808fa0aec4f5c247915cf58b37ab4c7e24df0b81', 'ee119df323fa15373ad5f1465da703c22ad317615753f59129dedd8209b7a897f34d958627cdf25d', 1, '2020-10-23 21:48:27'),
('c3956268a2dcea5994ba5071b570034260c4bdf2d253dc70dc41ffadaeb33253eaeba105173bd41c', '25af2972dc8699e7f6df92a2e61d28db3a026b37fc645da0bae04ff029a44875952532027632b9d5', 1, '2020-10-23 21:48:34'),
('c4637aa177caed84c7ead7cc7e78e248129656d01dc742fcfbda8ae497bcbd0f32e5fd878f779faf', '836ac7ec5ff86b995bda658c2ab838861d09196c66e0b176967376a5613f2c067e3390ec36a9d96b', 0, '2020-10-07 07:36:55'),
('c48102e711847f84012fdf29c81f19a802d961b9a11f31677a3e3b091041cd0badd2ba213d9c268a', 'f0ee1d6ed232fc29276b365b489afd489964242ceae0558956e792fa6c15214407213cac4b6735fb', 1, '2020-11-04 20:53:17'),
('c5395403143e99b5392a4efc606946673ce0747df05b87be21f208379716cf31917896ce808b98c4', '193b1f256caf14f0c7527538943a44fa7d7178d617478d9d6261aeab082c83a339587f02d3432506', 0, '2020-10-21 23:09:18'),
('c54f988a7d47d646ee16bb0843bd444460ab3948655bb6ac3b69a432999985bd7b4924f488cd9ab7', '6c88ed69edff5df95693a0536d5f77c85a6f04e1cfaf78c3cbe988f56df77978ce688212eaeb8fb1', 1, '2020-10-23 21:48:29'),
('c6334039ae8687715ed518d25c4a5d9d33f75d2f6853fb697f5550c74c74ccbd4383c6f04e94ff58', 'f2adb03213f435c9ddc51511dbb3fd87742f287874940788eb539b8fb3812f3860322907f4e0bee5', 0, '2020-11-27 12:31:55'),
('c84c42afb4a95aca65d04dcd3d47e3d1446f7cd7cb03bd730b4f4235e4d6988c98feea96a6ef0307', '34ab53c8c7f985a4bb8c0b3cfff91cc58aef5dfeb655c3ffcd96169c50df3ba6364dca2196010039', 1, '2020-11-04 20:53:15'),
('c9a2f344638379bc9e984511bdf4eed6cfea13a668763a4ed1752392e3f3fa64129f5a538301daec', '263fecd4b380837d255a821b9e413985d7773a0558e3bc2ecddea8cd4e2984b0e73559ca73ab4913', 1, '2020-10-31 15:15:37'),
('c9d8db4d5a061e5119c0b9d278a58f56381338c0834e1e3f8c20a102e7766d6f1da2528fce31f8b9', '3b94b753a390c3a64d2e67613f57c856ffd1df9e7da06829c77b8ac0e2fffba768d2a9b76ef8f373', 0, '2020-09-14 15:10:18'),
('ca2ad643ef85974dab3daff431b6677f1782815975c87321b002963116e2641110d29ab8ee2f3c4c', '5f26a561e280e83a563834f5c135c2a0ff2247ab0081256c9e8e8943ed9691013aa769197c2d4cad', 0, '2020-09-02 09:08:01'),
('caaf13265b955c6b315edcc5785cffb339a75b0a92359fc2688d64e0467e3a12ecaae05eabb3f387', 'c5260b8ae24d4a29927dd50c26c90b8370cb6ec8ed68383f93064cadb955a0b92019fb6b6378333d', 0, '2020-10-20 11:07:53'),
('cbc6a5acf4580b17662f2df76f2e091726c9a590893c40853332607114c21d9ebe2818b335fda407', '8934012629bbf187668c9214817a5aeaeb663e24d42e4e686ba10075b535452fa92c9d97097edd89', 0, '2020-10-20 10:58:35'),
('cbd6778e4511a04c52493e50213f4cbbc6f76e5c8d58299e0497416fb5ea71f611c0f368cc9c421d', '846b7cf5d654723f0b8469b80f890a819019feef24f120441cacf839d6588048080c60deaf82320b', 0, '2019-02-15 12:24:31'),
('cbe30a38a7973043cf2d9c86e73de1fb7f81f946b48cfd4b66e9a5dc8d3f73d19d50c0f43e7ef7d4', '9e3213a625c1c9fd6a7063ee80d03f52bb45855016c31088d2c1458393357166e6f9dfca5e5a320c', 1, '2020-10-08 08:29:18'),
('cc22384797fd345a6c3737e3164294e59d196d0053f9cb3077b437d868715ae5c4454998cf946e6a', 'e0195ac0675f676e6b5c0ed525fc7c3bf3f9b188ea9480065deb7ae8efa7ae8f1a08ad4aff62f186', 1, '2020-11-04 20:52:48'),
('cd2cb83ff4abc26531f29823dd33c0c57e96d9dcbdacbb674aa9d3cd3b0e960c6a6026c325994408', '1bb008b6ac5ea8842f23ce538e8903a687135dec4044f01bc25cf7281471ff2169803f0d183233a6', 0, '2019-02-18 18:30:53'),
('cd71085df577ccc4af383c5f8775cb44aaf91fcdd370d5a50df3495246726813090f170d3db90a02', 'eef8b843bde6fea1075a3f3fc1044b94b37ba454bc4f804e163733ed9c54efea1a5f37953e17cafb', 1, '2020-10-23 21:48:15'),
('cf16697ab2dd3f3c41f8ed7f744c237cd3a6a4db828e010ad05fad5d4c43706b70543b273fb0a83f', '03245a2df21cd74e8a2b08b634ae00c449e8f6b75beae92c656f554d97a45cddbcb845ae8baf0b18', 0, '2019-01-30 02:51:07'),
('cf5818f651fb3144981d07fbb5b53c510c0b7c932173247d272051197e462eb86c0b926a7376d7aa', '22cd318a0e3913344d81dff4000af2ca125e4ed484399af3009fc844f35578356ce3ea4f9eaa95fa', 1, '2020-10-31 15:15:45'),
('d182ccec3781dbc12a72b17dfd607f490f999c835a058029b1866dab418f2290513496b625809787', '15c8210748b9b076bb1a8bc6b7d2cf406dde6a4d23845f5ea08ebae0b66275c620af3eee4a48d042', 0, '2018-04-27 01:32:21'),
('d192ac41851f1c9f2b2b91772370e3a9990e411cd0fd1b69a1807e2cbf9c9ac01f5bcfd2b085cb3b', 'a6c86a52b301864cfffbbb3bac9ce2f4148867f4fcdb16cba30cb07837420dc82016387395b88141', 1, '2020-11-04 20:52:46'),
('d2af84867bbc21b6daecbbb9b5f4b1879ea343aaf93d79524842b1129ab29bf62f42185913425aeb', 'cc4902e4a4744a8504eb69a3c670b151c2f99aec5f95775bac680cbde1db281d6dd2367b280d6eee', 0, '2020-10-20 12:00:45'),
('d2f39bf1b7cdb7db884556f43906d0653668e5d2fa22acc70bfe9329d7dbafcde0919022a286f4a6', 'a3d09c3dabad67dcbaa002005a4319a950dc1c3e3f187f450f9c014d7d6db31b066647cc387bd27c', 1, '2020-11-04 20:53:19'),
('d385ae6cfb60ed6a04096579029f2585ef2131b841d80b77b870e5d17cdbc36e7cc2f11edd2caf5c', '326de96ea563e9d73c0078bb856b66c6ca3cbac7ccceaff1f41b41536f221d2e4c1068ef7af39591', 1, '2020-11-04 20:53:13'),
('d4d8efc7e9c9456cf0d8a9fba27c1c135d64691a3caa16ca8006453a8e95355294cd8b0303d5ff5e', '36104068b50d53e3253934a1b8e192a75d16ff77ce687a441e6ebfd189cdbc32389cb080d76de8f8', 0, '2020-10-31 15:16:57'),
('d56ce2126c52e86df932c60a1d9ad0ac82b10456f004575c4d12120ffcb07f8331649af9a4f99dbf', '48efdcd463ba5c077c4fd6a75e80726a1dbada06dbc928245bad297909a39828425b9fe66572361c', 0, '2019-02-08 01:48:54'),
('d6b066d6aef220155380bc3662a9ad2d3e1ec963208c3e84f8f1aca4e49e8ea9b87454bbbb93891a', '50ad1f692337931c75eab0c8ba98bd80ed8eea5b426b0dd019dcbad3aa1b569ee94a1b1018e2259c', 0, '2020-09-30 02:30:39'),
('d7e01f516181fb2bfa25f446c2bee33712b65caabd7141993995bf2c753b76cc72bee55d68d61ea0', '4edbd7c4572c27a5cd4f6000e0120891e22cf00b16f4eb5314a108cbd5fd65ee879553c8562fca00', 1, '2020-10-31 15:15:25'),
('da8b89bc03e2b9f7b402e135dcb75404f71c231988f150f5699d713a0d2a6209529b50a7e9d3a7dd', 'd173969a26f674042181a7fcfe30af35dbecd641733ff43649e31e6da9966c37756d018fbeaaa12e', 0, '2018-04-27 03:23:36'),
('db54f8be25997b8998671b966699f27c070069f0b5b033f24dc86e0b9f4d2d940da4352b2cf63109', '2766e69378edd29f4214db8e0dcc87ed63fb48f303062e0e82b29717c36838ca082393c6ae7441f1', 1, '2020-10-01 05:58:41'),
('db92847eb730527d57c22d2e3e14aeaf7606164da60f006fc5b4810c5ec5887d880d16c5fbb2a633', '98168348fcd770aef49d423954e0941b5f5b47f29db0626828d25f0e9a5a6fe26220afc2ffe75de7', 1, '2020-11-04 20:53:21'),
('dbaf0f63be1e0829eb3e4a19135df609c5bdce9e3f100fe72d3deadef967c26ef6be69e75a201120', '0eb013d282c40aa0b95cd75ede06809d9cbf2c55c433d3bcbd982f58934915bfb14a9bd34f8dbf0d', 1, '2020-11-05 05:31:50'),
('dcef9140102e3fab8952f43dea573f7c45f75e08883c6e93e935b67a57b040f480098a5c0eca3db9', '43334005182829d9349be8278e79a7aa01aa032fb6dad0c1309ea42d582600e9515535147430a851', 1, '2020-10-31 15:16:53'),
('dd73a2a2152aa732d36da47cd9181fc33b19a9aa9b7339cc40075fa1880e70e8f8247877f400789f', '5f1cb6f4a56fbac66bdd6f771b935ff2d635e504eb10319274e2de76047beb2204545c1f903c633e', 0, '2019-01-23 14:54:18'),
('ddccfbae4cc2604ed7147d1e9db19345c6956175fbaf4a5f95c5409eb780f4e29ff11cf1a36429a7', '8b543249e7b7dcbe3bd5d6dc90446058ce92cdb285408b3d446e16868ad3ff5398dc5494085c0087', 0, '2020-10-03 23:22:28'),
('de21f6a9df5160af275a14159ede06bf638720328cc9506993988dfccc28a49dbe61fb6476d08945', '186cd64e176e71c488a07b6b6d47825489901845f50f8cd92ac624411c00ab6dd571621350df756e', 1, '2020-10-31 15:16:50'),
('e09b6c614f0d80806a43ee03a1ef1e7583dbc0fad7f8f1d62dee0b36e419437100130d43e19dae3d', '52957df7894530149db31c9550b9714c7f866d1278bf576bf10b19b1bad61262924ab3c08b0dea0f', 1, '2020-10-31 15:15:36');
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('e196dae06804b9b0dc109ba7b6a43667d4cf518a9ccfbdc53b2901b8c204be11abc7922b1437698f', 'ca9869114cfbd848582d5f2c5358efcbdb5b36cc6d2494508b9bb0858d88c5dfb483bd06e8b3dab5', 0, '2020-11-28 01:39:17'),
('e1be5b2cb49e8fe72969e3f2cb3862660efeb85a516a139d00993dbe558599a3876effcf209d59bf', 'cedd763a2b753c1164cd16a83a8d9ce6c8515ae55c01e3e2a16cb0fd746672960ddb522d6a886372', 0, '2020-09-14 03:53:05'),
('e235569e1605fc3326d79f7b58ef7ec4da3a55a8117da0352e8256376b6f8cd5a172f0fbfc5d18bb', '9d68a20a60c3c3b01f2e3a1b3497f1d8711dbf970f217d4d9a72b310f0141d1cb9fdc3392ac459a5', 0, '2020-10-31 15:17:23'),
('e36e1773587da7042fd5cdc3144f8cd3bf3c1c529074e0b2757b194b7983c01d2260e626358b11c9', 'f0743a92e396b3eea87724b3aa4b38979a3c69bb7dcabe9f99ec8ec554536ad010fef16c270e52bf', 1, '2020-12-13 08:28:12'),
('e616451657b8ebecddc4b1bf7ff5fb5c84df74af6e9dbeb8af838f14c441570d7d0348605c96af0a', 'cb7efc7e2815cb8b34144babf28de2a5da5abee1a03f3778beed0e913599de8fa8012c8863164133', 0, '2019-02-14 06:31:37'),
('e64522ed6c3983a4d4ed886b3550a8c537dfc5771b536b18fb2bd12893b74c8cf5c379d66ef00c34', '2f01ececadbb13fa4146614ca5b9d6674e13410d3dd9dbc0cb2ee6fc898e95f13c237fe73c9417c6', 0, '2020-10-23 21:44:15'),
('e6c0249e9748038101912fb6a6f5636f23c853ef0c314f4313e87e03d02714e181179504cd8dcd45', 'c03c2cda29d182ad45f8a4350079c46f9aced5442036a9505a7ba28a105082c4c3f4b4b34750f5a6', 0, '2021-10-08 12:01:02'),
('e6cfece275a71283bf6e3b7beb896af8b4c944ee458fd691aa3da212b19fcc6b7a4578c3d4c1c3f6', 'f3d864675474f5d7905c6a40c240987c59359a8f29193eb29843948021309fd0e3ecc9e46c133728', 0, '2020-10-18 08:00:34'),
('e86b97b529e726b18c5206cd4fa1e25e83fdb4571f476e98b6b1e12fe17aab834cb270a66c37e1e9', '6afc3fbb533f0bc52d5429ad9235211cfc9478fe6f742410e063d8f8bc508d5822c494945e5cfbdc', 1, '2020-08-28 02:22:09'),
('e9b4e8b9ee858a185797929767061e704f79c8a5669a76a8f0ded745435fa07f201d83c65ecdef91', '7f735a4ce1b339b87cd730d91fc346ef613775ed180d9f74df81695f115fbc65135574a9b37a96fd', 0, '2021-09-21 04:48:11'),
('ea159b7e8086399eea31421591612322c02d2a31512c0221ebdf103e5646776e1cdee2285c951984', 'feba82da4ae44e6c4779731ebfbbbce75a654bb402cd561c750895445efed3b345ff1a4dd9cea98b', 0, '2020-11-05 05:32:07'),
('ea983155d6e4cf542823f52fcd9c7ca43097b86bc3405b8154ba17ed9b1f7347c195f793c02817ff', '4473a559bc9ee4b3760853246bb8e7b5671275d1ab0fefd445189c6343f6bb328f8b3c6f605fb5eb', 1, '2020-11-04 20:53:08'),
('ea990b5de8c4f6aa4f9ba571041c54e07a30b6f6f82044885b1df2a6dd262607c21dda850ef7a7bc', '10ecf42b396ef51671ef37e9f353c0ac79f30c48225803a338090c93558098adb64ef53a45775aa8', 0, '2019-01-28 17:21:48'),
('eab7d947dcdf09a8d5a7b32c5664c941efaadec5064d03a76ff3f7885861635e46567aea688195bf', 'bb448c199a5e3662efee1104a1af2db2bd230e6fd4d39a5c0b419cc6a71b63f80d604c10d2433b11', 0, '2021-10-06 20:39:29'),
('eb9d2d6415ca96c750946436f51337a3ac9282d6b46cb9a56fea0e54bfa87e08bedda4e35ef12582', '22355824ec18c012992889c789f61613ab8875a09f3509883faa8d2090ebeede3d2bf556a2f6fb1c', 0, '2020-10-14 14:43:21'),
('ec466068491b661fc4c7bc8fd5c7f7db7c7a153a3cc17cfb83250cab0be226209dd0d2018a08da62', '0f20a39a5828755c75e94f80335db4e4b2896ffb9af4b9fea17fd243babb48f333ce74112bafe886', 0, '2019-01-29 23:26:42'),
('ec971f777de919a6c7ba1b0a5c60891417d0257aa8ef220b0adb634686af340c2f26046d5fe8407e', 'f0e4b71ea10f1751cc433709cda6c863ea340338efb3865069698c9c991dd86d7b558584e64952db', 0, '2019-01-23 19:23:57'),
('ed2f8bc66b943a669bf59df54d9832637580c56ca9906997b103199122e3f1977c2b386f8b6b4761', '06c5eb366b5a111bd5ececef00fcbede9329db5ce60c5a4051df1f568dd4a7bd2ed5803c5fb72329', 0, '2019-02-14 09:50:56'),
('ed5887466abbd77008d2e7322b2a5dfb838607b41d03a968baf1ae611c6131ec32ecdd900d56d7e7', 'd64f7b2cae6bcb733d4af3e1912e3bea1dabcc81c5b360b972d191e48886545e56bea88bfd3886ca', 0, '2020-09-19 17:33:35'),
('ed59d5900e7a15b09cb1008b04062121103d6220517601aeaa97c007815c5a8d42d43fcd3d73133e', '4ed2dea1572ebe7acafd472d052c94ee55b26589ea18723b78f617f87055f70c33cb644c0a35fc99', 0, '2019-02-18 04:33:05'),
('edad02a94d442ac0795a1ac12bc0d10573b025b5cb44ab1b42f463201d3573686a8754fa3047bf23', '1fe945126e66ddad9aa304de70faab8ffc75b34d28f1a5bf39c48344c6aea01fba56b91114f56050', 1, '2020-10-23 21:48:00'),
('edbbdc1ca9a47829848e411066ebd2ed782e77789ec16db385e2dc63446bafeb47e54ddb3439f2ab', '644d2788e43c4e12e1e60de0729a3158a1c3d05e0f660de6e3ae151a2f0b9d576f46d78f58f0c708', 1, '2020-11-05 05:31:42'),
('ee2d76f358c83b55da522b227480dbb7a48742146e5c5d0adc0710aed44aa5efe839487e8728bc29', '20421d1d249ceb43b001993d72eff579ba767b7070bbeccac9f2ec2dcef0f8481b8ca4e57d57831f', 1, '2020-10-31 15:15:52'),
('f0ee53baef6f68f7f9805d0437d4ec25b19a0ea254960ced5f69b6533895384a21665ef74bdd1573', '9ca3927632a45821906a72a594158076583412386ce9a9bbdd5cbdb343cf46514d3466e3cfcc72d1', 0, '2020-10-22 23:10:17'),
('f123ba6ef4b2e8ed704acc79bb276c97913704f1c54d53226ec1db425809ba2d749ecc565e6eaec4', 'c8b6714595b71ec768c28c52b5239d15f2190dd28d3f10e00d057653ffb7bebf02ef2c9100b86d20', 0, '2020-11-09 03:47:38'),
('f2125fbfa289b3276ce45d3b0cfbbb586808f857e7792a3a75be9446cb39e727c16122821a52a3c0', '58b2a042c4cd258f6b70a167ef68e86a7c9eeb35b8f0ec4c1e60b4268e4eb565d9cf2aa3ddf68cad', 1, '2020-11-04 20:52:50'),
('f25f9e19d9274751673daa99ecdc7a1c4233af2c9352e4c4f1785e893524fa8bdfe494040f9d3768', 'c2eacf9f129a02e3c5f25a31c6981ee342a5af29a2fc7564c5966461ce16afeaff8fddcfa3787a80', 0, '2019-02-15 12:24:59'),
('f41f9d355b12263e68d23c39d3496f8e0462a9ae727feef23a380c3d89883a0d348b633faf2965c0', 'c84f1b7589bca7ce81f116c875b1fbfe101dedf0d27d2a06a7a0c595e238970e39556cdd684f44e3', 1, '2020-11-04 20:52:58'),
('f46dae83831ad99102c521e4929f4f829524e845eab53c79ed5d38c0b23eaf0f30054d0b6750bc2b', '6fbf42172050d44f8955b85aba0bd31369416353b8d6e6467401ee2319e08a83069cbb993af2d2d8', 0, '2019-02-05 09:10:42'),
('f53a4f2d00c03b29db9259238aa8497e025f84253b82ab582388ab1e3723dc4e42efbe41242c8ecf', '1fa272aae54c16f9eec0dc39d713b06bac0862d7ff7445c97724e3e7d2442108e0ef1a79e9138afa', 1, '2018-05-14 05:32:26'),
('f63297d9c7c4a5e1f9bae5f96d36961d0974c0591f75cedaa5a869650c6900e99b0e194b55d6490e', '2f559d4bc5b42d1db4b467691ea54e3df9ddfb3ccb429a72925c98c7c0bd44ba7726e4c48709bc9b', 1, '2020-11-05 05:31:56'),
('f86c5c509dcb5784804d17c059f5f66f8e013c63edb7cdef1ea9c105b8ae9cbc836873334cf3f86b', '902113425fc07dd704d6ecad1daf3456f485252a49c9f226661af615c50e7642807f515b3b99f431', 1, '2020-11-05 05:31:49'),
('fbb33e06d3bba52a2a79459900a427b6ee3d72330cd56db88dd3fe475afd7cf08df7609c647f579c', 'e39e883ac89430bbf1a433f85439acbe62fe2642d6e629af3db8fc2b8cd03363ceb0d080e73fab68', 0, '2020-09-19 00:59:16'),
('fc99ce18fc31ee2ae285981cba6d3d86db883830bfd103591386dc8e342dd427ec16b1b78ace7b5f', '5613ddb1a13e43b2224ced90936169e00f6536c88667734554baddbc8d3bbd8d962e7be4e91f8a5f', 0, '2019-02-03 13:40:03'),
('fccccd4877312be246d72d8681bba68a398e7dcf818bf082a6be7d28395c2fbdbf69b08559f83a0b', '8eab45cceac34614f8c1e4a28c7c9e3490a7b8c5b4432bd4e6cc15655d783a81471501c2e631f314', 0, '2020-09-19 03:21:38'),
('fe06d710e080cd2933fa4c0ba9a24ead6b202940f9ee1ae214d51fd59470fefb8657cbdade17de02', '8ab4b09eeb41c71662c515b48f510b3c885e368197a3b78883811a52b6066aa58b2f6a2cf621c97c', 0, '2020-09-04 10:32:56'),
('fe1a7ffde0e1fba16c0a4fdee45b52f0a168e2f8ec17847b592346701c697b6ae6056b310bedfb14', 'e7e13c0a61cfaf9b335e4821a8d85041dc091fff9c1e8f12256cd6939a7b0a5974e6dc9f3dcf73c0', 1, '2020-11-05 05:32:01'),
('ff0c0216c9fc924a43258108735e3661581ab5f8e3494ad1a59214c347e105689e4fda0257ab3c1b', '7e9dbc6d28b3338ba724136abca9e6a5d51694a63fc2cc9229a7bc19fc94d3041710468d62ebd13c', 1, '2020-11-04 20:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '073b9a7dc92d679f4f9c782a1660e6296c92f0ec18b8ee79368b059e8eb84ad8', '2020-04-25 14:33:17'),
('erhamender@gmail.com', 'aca805d1b138146e8687188741000fa402daf18761d26ba576f2b9bc1a83381e', '2020-08-06 19:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `expiration` datetime NOT NULL,
  `status` enum('ADDED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `promo_code`, `discount`, `expiration`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ahs123', 5.00, '2017-12-08 00:00:00', 'EXPIRED', '2020-07-11 20:19:14', '2017-12-08 23:25:04', '2020-07-11 20:19:14'),
(2, 'WELCOME', 6.00, '2020-07-31 00:00:00', 'EXPIRED', NULL, '2020-07-11 20:21:31', '2020-08-11 10:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `promocode_usages`
--

CREATE TABLE `promocode_usages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promocode_usages`
--

INSERT INTO `promocode_usages` (`id`, `user_id`, `promocode_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 146, 2, 'EXPIRED', '2020-07-11 20:22:28', '2020-08-13 08:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(4,2) NOT NULL DEFAULT '5.00',
  `status` enum('onboarding','approved','banned') COLLATE utf8_unicode_ci NOT NULL,
  `fleet` int(11) NOT NULL DEFAULT '0',
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `otp` mediumint(9) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `avatar`, `rating`, `status`, `fleet`, `latitude`, `longitude`, `otp`, `remember_token`, `created_at`, `updated_at`, `login_by`, `social_unique_id`) VALUES
(160, 'Jaspreet ', 'Singh', 'Jas_paulsingh@yahoo.co.in', '', '$2y$10$pCOJ1Wpw33.J0LDpWFOYn.VnxlAXZGuJMW1jr0whSF4awIr1vZKJ2', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-07-31 22:10:18', '2020-07-31 22:10:18', 'manual', NULL),
(161, 'Amandeep ', 'Jhanji ', 'Jhanjiaman@gmail.com', '', '$2y$10$Gdjlbz89kkhpNt6LORPYvOiv8oE/IHrPBNVc7sPqTLzTHJbGhFJKm', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-01 16:12:23', '2020-08-01 16:12:23', 'manual', NULL),
(162, 'Sam', 'Govila ', 'samgovila@gmail.com', '', '$2y$10$UuwfAuODrbQZEI1CHGS/1.gXpPcLQvz55HNH2CqCE2ysnwqqJCBjy', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-01 16:15:15', '2020-08-01 16:15:15', 'manual', NULL),
(163, 'Preet ', 'Aulakh ', 'preet@silver13taxi.com', '', '$2y$10$C7BMylWR6./R/yWNOdGj0OstPjqVgh9mytoKnWJArRBQhNmzlEUC2', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-01 16:20:07', '2020-08-01 16:20:07', 'manual', NULL),
(164, 'Muhammad ', 'Zubair ', 'zubair.rig@gmail.com', '', '$2y$10$LxkYGX1LlaDeq0TJz3ZpHOXiB7Qbb.nxVr9BR4qambDIoZbD9sCy.', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-01 16:22:02', '2020-08-01 16:22:02', 'manual', NULL),
(165, 'Mohammad', 'Ilyas', 'ilyas.ameen6@gmail.com', '', '$2y$10$xq8J/6W3uqL1y1TLLVvRFuRo9PGd11kIh1bevXoJ.0M3qb.Qei/.6', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-01 16:29:28', '2020-08-01 16:29:28', 'manual', NULL),
(166, 'Awaiz', 'Khab', 'khan.awaiz@gmail.com', '', '$2y$10$JyUqjR4975ZRyfDY2BVZdOYQRMxxEiTbNENA8JLjvSiBfQkfjoM9q', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-01 17:24:51', '2020-08-01 17:24:51', 'manual', NULL),
(171, 'Mohamed ', 'Nachar ', 'nachar6@gmail.com', '', '$2y$10$bv.XjszbqkB14UCFoCyKLew5FxHFzgDMU28Q6eO5bhQrBe0xdu9ly', NULL, 5.00, 'onboarding', 0, -37.58172500, 144.92368590, 0, NULL, '2020-08-02 15:26:29', '2020-10-27 09:24:43', 'manual', NULL),
(173, 'Rajesh', 'Gupta', 'rgupta11in@yahoo.com', '', '$2y$10$5o1oV/umRfKSrzz4hE8bFeKlQ.LyIWQ9WbG8Qt6FX8kh2dp4X5ToK', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-04 18:33:07', '2020-08-04 18:33:07', 'manual', NULL),
(174, 'Asad', 'Syed', 'Asadd.1@hotmail.com', '', '$2y$10$yv5vktlYbm8Alx.sUg50juVr5QmMOOSkeeXWxpkaC0ZBUZUT0tKha', NULL, 5.00, 'onboarding', 0, -37.74485030, 144.80032670, 0, NULL, '2020-08-05 08:36:35', '2020-08-09 12:02:04', 'manual', NULL),
(175, 'Sukhjinder ', 'Singh', 'sukhjot03@gmail.com', '', '$2y$10$wvFF1yDEfraj/68kUqzWb.GOA0Y3VaCmiYNtx5oWhoIEzpcBTdB2a', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-05 10:40:29', '2020-08-05 10:40:29', 'manual', NULL),
(177, 'Lucky ', 'Brar', 'yaad1230@yahoo.com', '', '$2y$10$c3jpM2C5KiW7AF1dvte2H.L0ZJqdRaWP/ZoRHZnzw07TIRlxjfrFG', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-05 10:59:10', '2020-08-05 10:59:10', 'manual', NULL),
(178, 'ANJESH ', 'SHARMA ', 'Anjesh_sharma84@Yahoo.com.au', '', '$2y$10$NwSLvGxBcME7W4DnpzL.ju8AcZsCqoFvs9MrWYy4gIcdsVRYFFGVW', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-05 20:28:25', '2020-08-05 20:28:25', 'manual', NULL),
(180, 'Syed ', 'Hussain', 'mohd.mahroosh@hotmail.com', '', '$2y$10$aiNxPLr362Gdu9WXimCrIOmtknANPxh/TOzs4hhgnsiaRBnalnbj2', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-08-09 22:53:25', '2020-08-09 22:53:25', 'manual', NULL),
(181, 'Devinder', 'Sharma', 'devindersharma2016@gmail.com', '', '$2y$10$zzFQJqs0yI1rG0Se9k/i0OqSHTp.9HgyF6WXFVrNmJ2jpCqXwiOHy', NULL, 5.00, 'approved', 0, -37.59940180, 144.99920640, 0, NULL, '2020-08-30 08:53:42', '2020-08-30 09:01:10', 'manual', NULL),
(182, 'Gagandeep', 'Singh', 'gagan_aus333@yahoo.com', '', '$2y$10$uYvVKEt7SMQRRH8GNVfhVukNgmvgT5bbhFcn2J8NCQRTD7SVdXqdu', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-09-21 18:35:54', '2020-09-21 18:35:54', 'manual', NULL),
(183, 'Manpreet', 'Singh', 'manpreettoor2000@gmail.com', '', '$2y$10$3TFwNKvCDFu1.ElUiH4fR.0OwGBWI.VpmnCF0q1200lKq/RLL.tsK', NULL, 5.00, 'onboarding', 0, NULL, NULL, 594082, NULL, '2020-11-09 21:18:46', '2020-11-11 22:15:03', 'manual', NULL),
(184, 'Manpreet', 'Singh', 'manpreettoor2000@yahoo.co.in', '', '$2y$10$SnxO4tIfQNKRnGry04/QlON7SPRcDNLH9OtYqohQ2M0lp1tev9c0y', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2020-11-11 22:19:19', '2020-11-11 22:19:19', 'manual', NULL),
(185, 'hamender', 'yadav', 'yhamender@gmail.com', '', '$2y$10$gQ119We7JjRux24vy2A33ekxLSsZ016FK1bDusyeX3biZrGWddHn6', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, 'BlEh6Ukmo2gMYpajktqvo5MUcfT5S8tOV5gu0dcsYScWncyKzGXzKk43dSrJ', '2021-06-23 11:40:05', '2021-07-10 18:30:36', 'manual', NULL),
(186, 'ham', 'ham', 'er@gmail.com', '', '$2y$10$R/MtkJht5b0cEtEDfwjg4.F5S1q9LrfIbwYamMu5EpYov626fi4aC', NULL, 5.00, 'approved', 0, 28.06132850, 76.10421130, 0, 'IkCrV0RTkSmyUX8a8LaOEMvd2Zlf71bwm0J4xkVFfbyuYtOzZsHcqJOK15dY', '2021-07-11 02:41:55', '2021-07-16 03:53:07', 'manual', NULL),
(187, 'gvom', 'g', 'ha@g.com', '', '$2y$10$u3DR7w3bKdxFWl85ThncNOFuin4taO0HkI06xzlRd.0.eb1O4hGp2', NULL, 5.00, 'onboarding', 0, NULL, NULL, 0, NULL, '2021-07-15 14:23:27', '2021-07-15 14:23:27', 'manual', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provider_devices`
--

CREATE TABLE `provider_devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `udid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sns_arn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_devices`
--

INSERT INTO `provider_devices` (`id`, `provider_id`, `udid`, `token`, `sns_arn`, `type`, `created_at`, `updated_at`) VALUES
(1, 114, '46C44589-528D-458E-8699-0DF3E33CF5D0', 'AABBCCDDEEFF', NULL, 'ios', '2018-01-27 08:34:05', '2018-02-15 07:11:50'),
(2, 115, '1d3a916be105e5ee', 'dzLKyyyQ19o:APA91bGYKc94-GcRI-iJG2lSA9IdkDMvTxErhi91xYabJUIPapqTVHeluWhue0LxhPwbl-ArPjhDkLpRzotnNpJ8x3nYron3oYoSg8W8ETQJ5fChx2KybdGViWZU0OHl99qnNsw4sylE', NULL, 'android', '2018-01-28 06:35:32', '2018-01-28 06:35:32'),
(3, 116, '543ad3086d985f47', 'fDQj5sc3qxM:APA91bEIt1ogr1UVpTj2pDegLIS_2qbu1vdGv6lCr9u9LqgxH0L8r3iaRvFWjjTveG1LpLbLOOkodRILPFexhTNunxEBMGmCbD_6cmJqx3ezQzLyBsCORmyjaBuUJg42hUdPphfmsCnV', NULL, 'android', '2018-02-01 07:26:57', '2018-02-13 17:28:39'),
(4, 117, '', '', NULL, 'android', '2018-10-10 22:28:19', '2018-10-11 02:46:39'),
(5, 118, '3be5f8617cc82267', 'd_ftal2-T7o:APA91bHJ0pyAMADs1msdz5cHlsNXv3cGStkgjghPSBWy0lCEqVvEJdRFj5FzrE56vyH3_J7dNxW1gyLTMjFoifQyssnUXpW08vfYCYv9L3IkTd-QbSI69-3B1RwCvQgllXMsah8ASeuL', NULL, 'android', '2018-10-11 02:50:53', '2018-10-11 02:50:54'),
(6, 119, '91e2877936282d2a', 'e1oWCTjqtG4:APA91bH32xI2oeNx4af3lczBydkw8z8zLJt2hJuVKfwtPUxjLWeB-NqSamkgFhLXnmfA-ERfSBP47fN6RVkuoqc7OJT0pK0BWWQgYOo37t5d2QaELMwwvmVoQk9HWvz02zLtNjZBwJ1u', NULL, 'android', '2018-10-19 21:59:38', '2018-10-19 21:59:39'),
(7, 120, '3be5f8617cc82267', 'd_ftal2-T7o:APA91bHJ0pyAMADs1msdz5cHlsNXv3cGStkgjghPSBWy0lCEqVvEJdRFj5FzrE56vyH3_J7dNxW1gyLTMjFoifQyssnUXpW08vfYCYv9L3IkTd-QbSI69-3B1RwCvQgllXMsah8ASeuL', NULL, 'android', '2018-10-21 04:08:51', '2018-10-21 04:08:51'),
(8, 121, '3be5f8617cc82267', 'd_ftal2-T7o:APA91bHJ0pyAMADs1msdz5cHlsNXv3cGStkgjghPSBWy0lCEqVvEJdRFj5FzrE56vyH3_J7dNxW1gyLTMjFoifQyssnUXpW08vfYCYv9L3IkTd-QbSI69-3B1RwCvQgllXMsah8ASeuL', NULL, 'android', '2018-10-21 04:30:50', '2018-10-21 04:30:50'),
(9, 122, '2762f1056424a908', 'dWoMxhSDJoA:APA91bFC3gNLxMpF9dCZ1qDLJxUDw33-_Ik-GHWAa9s4kXQl1iP3URCAbG4fgsQ2uB2iOLqp6ol2CdYVntkOawk7JNOQR3H3HeeaJ0SIt5bIfq-Wxm_fEPbgjL236wiYJA5hfkgUuNTy', NULL, 'android', '2018-10-25 21:45:35', '2018-11-10 10:23:12'),
(10, 123, '3e2d451e7d10c28c', 'd-wOCyBIXI8:APA91bHF-Tf5x81BmBTfvE9YKs84r7VYVyNnE67qvTFI4YvgmKC40fd2yHlWipmaBbym8JQiWMh1AD7Oj5aMBl-nKwBjh7ZbHezHQHQ7ANXRCbgRrj2ldRYVjzDH3S1AZOT9tU1MTqEY', NULL, 'android', '2018-10-29 02:17:45', '2018-10-29 02:17:46'),
(11, 124, '9354cabbb0521eab', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2018-11-01 23:38:40', '2018-11-01 23:47:15'),
(12, 125, '50620c667ff373ce', 'c10VwHM5T84:APA91bG9sqihDgMD6aDpc3bFy_m-3TiHbazN3ZSWzqwahfUgGa9S8EvalshHe7P4POq2MB9c-MhyPMbErm7_gWLYIIxAZT2lWuAH0djHKjJVbXwc_p38IDjo6__-x4dTWoLjj4GmTM5M', NULL, 'android', '2018-11-05 20:06:19', '2018-11-05 20:40:46'),
(13, 126, '50620c667ff373ce', 'c10VwHM5T84:APA91bG9sqihDgMD6aDpc3bFy_m-3TiHbazN3ZSWzqwahfUgGa9S8EvalshHe7P4POq2MB9c-MhyPMbErm7_gWLYIIxAZT2lWuAH0djHKjJVbXwc_p38IDjo6__-x4dTWoLjj4GmTM5M', NULL, 'android', '2018-11-05 21:13:19', '2018-11-05 21:13:20'),
(14, 127, '10e7c9030d597819', 'dTD0tKW63Ag:APA91bEw_HziP-YuTtzqeN8_KJszeqO9AvO2Wddmtw9ZlDC_FFyaRxmI1WUwxXZY9zZLWFnTIp7AppGeJWvtwexiSu2GWKID9CpfkSfchzP4rm6gJCoy4nq_XZVKKiWVnVaw5kRd6W90', NULL, 'android', '2018-11-05 21:28:50', '2018-11-05 21:29:10'),
(15, 128, '7ae188ef0a24d6c3', 'eTAVK0VkUVc:APA91bGhrs9INJaTzHzZa5GSCD-PHxB82ZqemaAB9dZcjFXg20zhGCC7epmGt_AP8wghw-9EFb6XK9C9nNRyB6-lDoLN0S8F9UXyaHIVOMgLLO5nozrVfQ30EkkRnsdX2Ua3Kd_5O19K', NULL, 'android', '2018-11-09 18:04:03', '2018-11-09 18:04:04'),
(16, 129, '8666fce808b4a957', 'eV9L0EiBHSQ:APA91bF-ZjOwydQfbL73WLIZQWtm91rDTOyWR5ya849_un5WM10lduTOw8ex3npMu5833Nesgg1S6WPgCtntfoe_qNJSNql6BaHedEnhq0k7DO7Y32ft31et9xtcgkIGdv0lhLAapckb', NULL, 'android', '2018-11-12 05:14:32', '2018-11-12 05:15:04'),
(17, 130, 'c956ce0135bb8faf', 'e-c_VWnfGt8:APA91bGlk8uZ4g0p3ns53OfHjSKgrZTIOSrf0NC6nLJ-xrUbx0im2YNdVFjf6VDteLJhBw0zebjIl7PFoNvft-2OPnpQLAEm4_MSOZRka84cFxKSaC5vHnVsI0kuEBAGxc387jzHNxkQ', NULL, 'android', '2018-11-12 20:34:59', '2018-11-12 16:26:40'),
(18, 131, '50620c667ff373ce', 'cLDXFpR2h60:APA91bE2dNhOYu0TXifJARFC-C1Q9IMO__3aQPzvDicYPEVyr9m53S5E1hzF64Y3ImUAcgLs-xbuLnMOb4Nz10r8f3YcNaUlUcbi6Cwyvr-mnl7d4jDiOYupayFMrqHvclTLtdYWe46T', NULL, 'android', '2018-11-12 18:58:46', '2018-11-12 19:20:15'),
(19, 132, '3eb118eb3d1d9b84', 'dGMqJo4wyfA:APA91bFijfph3BGe-jlCjsW-hbbBgQY1W10cWatvpoW3y31EIpLKdU053k0rDsTLLPYxNtCIr2KLV95osSaZ39GtqRCfrmG5WcQMdAVwYzJVU9-vamawsoerckJFyZYDZf6IxMezyI2b', NULL, 'android', '2018-11-12 19:18:11', '2018-11-12 19:18:11'),
(20, 133, 'c956ce0135bb8faf', 'cNiRRjvUTaE:APA91bEgCHrVYG73BdKQkJDS-uXLQveapiCv-YUEFh_iIg2FY16UzALRm0CyXG6Y-8QdLYGwXGXLsCZvUles_wDgAR4gIZ42xoN_9Hc6hh2bsExZVex8n5yKIWsWhXVb7tA5TxIInLPl', NULL, 'android', '2018-11-13 11:42:44', '2018-11-13 11:42:45'),
(21, 134, '50620c667ff373ce', 'fpLXL7CAq0A:APA91bHvg9fYs7DcFu1Lp0hL2_N0ggZPC0Qo7opYnQOq_hZ8Lrf346ip4GPTgxaunPPRnZATL4yiqC0lPtg2vrCZyNKSs5C-mEFCFAuGdZBJft2a9-KHXquL8d4YTmtUHHjE-THml9Ow', NULL, 'android', '2018-11-13 12:25:57', '2018-11-13 12:25:57'),
(22, 135, 'b7f5657e279f61ca', 'fGjrI3psGlA:APA91bHtT8tdnI5QmGJGCbJPjiNaB0amgIoPd0d5rgprcZiR9oQANj_KCDGgULFOnSxCdxHcZbhLUAaZH_InkMMqAGcPgS23qFBUR3a-S1DVrfxb7ERsPfMohqMrRHDJRaxAyZUILzAt', NULL, 'android', '2018-11-13 12:37:25', '2018-11-13 12:37:26'),
(23, 137, 'b7f5657e279f61ca', 'fGjrI3psGlA:APA91bHtT8tdnI5QmGJGCbJPjiNaB0amgIoPd0d5rgprcZiR9oQANj_KCDGgULFOnSxCdxHcZbhLUAaZH_InkMMqAGcPgS23qFBUR3a-S1DVrfxb7ERsPfMohqMrRHDJRaxAyZUILzAt', NULL, 'android', '2018-11-13 13:19:40', '2018-11-13 13:19:41'),
(24, 138, '', '', NULL, 'android', '2018-11-13 22:38:27', '2018-11-13 22:43:06'),
(25, 139, 'e110cf68a7b795d4', 'cOrW8i_Nv1w:APA91bHfnaO6VGMXR-_M5VMOfeEC19dTRVs3S3NYkVYAoGvPQBKhzESnkUD4aoWV7W0LAUy01tA8IuHImvYxACP94_Jp9axNiHLs1hYedR7eNRwFGztBCfKkrkAu7y2TCTocMvQduB31', NULL, 'android', '2018-11-15 07:53:13', '2018-11-15 07:53:14'),
(26, 140, 'c956ce0135bb8faf', 'eKNL5HxzSN4:APA91bFTuuMTI_MostuMYg4h6BeSc_psAjG4zlfmoUWPxylTygOogtJXSGhwtoL9wHbLP4gR5M9Udgrk4O6VK6DyeySBcI_Q99c38p5pBuPiyqYEdfWn5-3GwVf1tfoLUR602qrCdCge', NULL, 'android', '2018-11-17 12:28:37', '2018-11-17 12:28:38'),
(27, 141, '5116fae118c1cabc', 'cYzBe-uNDVY:APA91bED5PRAB70X9bJ1TFRqFmSbIqkrWdCokRaR6rmbHoFGZ1fvpBszGyPBivsXd63mcdDxnZInpsfaEVKTvNv3QsG9WNkPvjprqrEH7_cEj-LGpOMXr6wgfkj6OlSPQchFPS6R1vs5', NULL, 'android', '2018-11-18 16:07:56', '2018-11-18 16:07:57'),
(28, 142, '5116fae118c1cabc', 'cYzBe-uNDVY:APA91bED5PRAB70X9bJ1TFRqFmSbIqkrWdCokRaR6rmbHoFGZ1fvpBszGyPBivsXd63mcdDxnZInpsfaEVKTvNv3QsG9WNkPvjprqrEH7_cEj-LGpOMXr6wgfkj6OlSPQchFPS6R1vs5', NULL, 'android', '2018-11-18 16:10:32', '2018-11-18 16:10:32'),
(29, 143, '578fdbcc169d7a32', 'fz4ZXaj0fx0:APA91bHt03TXtbauvMUXWyKs1n2_h-eGKGsflCZzknlxS1Who9l7MmszMTF1m1FiqA1Q4WHVDIzaR966SEaHAR_NJMu8q7hQ2gfYhPGwzzL78-qxLTKTH1l0YrIAyVgP1Qn8k4mVjHUj', NULL, 'android', '2018-11-19 12:26:50', '2018-11-19 12:26:51'),
(30, 144, '2bbf075622421530', 'dGgYCnxyrUc:APA91bFmqTvBcil7zA6jfNRRDJ-d1D7d1-jFwW-nPaVZG2IcxGbAgizqjTHUWM5Wumw8SWP7MfJPFlAt2uxtGSh96ujSXxBUqNuRHOjM4Bxk2NMLvSs8Wo6F20uWtg2wE83yFnHnz2ME', NULL, 'android', '2018-11-20 04:26:48', '2018-11-20 18:32:01'),
(31, 145, '578fdbcc169d7a32', 'fz4ZXaj0fx0:APA91bHt03TXtbauvMUXWyKs1n2_h-eGKGsflCZzknlxS1Who9l7MmszMTF1m1FiqA1Q4WHVDIzaR966SEaHAR_NJMu8q7hQ2gfYhPGwzzL78-qxLTKTH1l0YrIAyVgP1Qn8k4mVjHUj', NULL, 'android', '2018-11-20 10:26:17', '2018-11-20 10:26:55'),
(32, 149, '1f183eaec094d687', 'cPZ3zBjckMU:APA91bFZgJtBjuCHQ-P7figYl4xaDU8bkXjdwPGkdRmZ5OuMBMF1Xxps7BzcoZIjvcyiMWpc87tYLWmFhobDcAUZYhpVtjYjyOMgeSj0wbncwwQB6_hkQjAW808PXpOo89vqTRIm1Akc', NULL, 'android', '2018-11-20 10:31:44', '2018-11-20 10:31:45'),
(33, 150, '', '', NULL, 'android', '2020-05-30 14:15:32', '2020-06-16 22:17:22'),
(34, 151, 'a1c110d772cc5601', 'cHRt-XLCS8g:APA91bFmZuLyB8cMowTynrFuKgfYcXpRTon7Iqv6XLvWLaMEo_ttBOBBTlocR-Elg5cty_WnWD4bvUJfEHlJdWJ2Wv0rOU14klDIF4nzDp2akXfZbupnUxT_FPr7cEifxKyvpPJrH9df', NULL, 'android', '2020-06-03 13:19:34', '2020-07-04 11:22:44'),
(35, 152, '4a8177280fbb9176', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-06-16 09:04:33', '2020-07-08 09:17:37'),
(36, 153, 'eeee516c1ca330b5', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-07-08 12:01:52', '2020-07-26 22:13:15'),
(37, 154, 'a1c110d772cc5601', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-07-16 17:37:10', '2020-07-25 02:54:34'),
(38, 154, 'a1c110d772cc5601', 'fc4RQ3pIcK0:APA91bHiIewOJgxF7JHrEuPK0P6MSSB1v8NGUuZzuPRgvBDsyiKrLdaUPqihMKWQ97GkJ14ukUnMt7VAlNuk6ZpM5mmUHjI9s0GBTl6W9Ooit4SWDGN6SZzcvdDLD7vvUrKfbegu3WsC', NULL, 'android', '2020-07-16 17:37:10', '2020-07-16 17:37:10'),
(39, 155, '', '', NULL, 'android', '2020-07-23 19:03:30', '2020-07-29 04:12:30'),
(40, 156, 'a6a5732cae50a79f', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-07-27 08:43:23', '2020-07-30 17:02:13'),
(41, 157, 'a6a5732cae50a79f', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-07-31 12:38:24', '2020-07-31 12:38:25'),
(42, 158, 'f7d4690b402507f4', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-07-31 12:51:02', '2020-07-31 12:51:03'),
(43, 159, 'f7d4690b402507f4', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-07-31 12:51:29', '2020-07-31 12:51:30'),
(44, 160, 'b01a2696ab73f172', 'fvfwsWXreJI:APA91bHewqjCgkIqZy6LIbH1LXBeFb9swTnK3x5_-_nXll9kTzcBqmzsPCH1GJGhd0hq802PXRMmsiBCVZDes0LVao8Cjq5w5ZJebDLHxFxDZPWEngXXnM3hYfXL7M3Jl39YPfLxR1s0', NULL, 'android', '2020-07-31 22:10:18', '2020-08-01 16:19:21'),
(45, 161, '244fa05ff577c7ae', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-01 16:12:23', '2020-08-01 19:24:14'),
(46, 162, '6543c8b55b9f14ef', 'fSrDsbsbuYk:APA91bEhg5ILReGlVWJkjxKtNe5odnoh-OB2r8KEuVsOOD6obdld8BUabSt-ba-yZGT1UxTExj8t76RMi5-gHH73gz2_iS1KeDJg0oSzGGL1Hef-2gZ1iQhyfRqM8iD36Z88dymqsV8A', NULL, 'android', '2020-08-01 16:15:15', '2020-08-01 16:15:16'),
(47, 163, 'b01a2696ab73f172', 'fvfwsWXreJI:APA91bHewqjCgkIqZy6LIbH1LXBeFb9swTnK3x5_-_nXll9kTzcBqmzsPCH1GJGhd0hq802PXRMmsiBCVZDes0LVao8Cjq5w5ZJebDLHxFxDZPWEngXXnM3hYfXL7M3Jl39YPfLxR1s0', NULL, 'android', '2020-08-01 16:20:07', '2020-08-01 16:20:08'),
(48, 164, 'ef1c7c77c2caf174', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-01 16:22:02', '2020-08-01 16:22:04'),
(49, 165, '8a2bff1e7d5ee5ab', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-01 16:29:28', '2020-08-02 11:47:40'),
(50, 166, '1b28fbbff279ea1f', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-01 17:24:51', '2020-08-01 17:25:33'),
(51, 167, '7339d706e992d485', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-01 20:29:17', '2020-08-01 20:29:18'),
(52, 168, 'c5d3acb6821cf301', 'dj36mAQGDLQ:APA91bE8LDXG34XBhMXW6shRREqycaK1IvWrecAIDTcePSB-uAdyU6jkZCexHVrewBvpuorbr-mSjWySQMI38ANNVqrRI7SrR-zNNNFmJ0ym9G_Gx31lhPJ3S8JAOdYmfvRnM6r2A2QP', NULL, 'android', '2020-08-01 22:40:47', '2020-08-01 22:41:20'),
(53, 170, '8483d8d8de3e572', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-01 23:22:02', '2020-08-01 23:22:04'),
(54, 171, '55a4eff5eec56d7a', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-02 15:26:29', '2021-01-13 14:31:55'),
(55, 172, '216c0b23d401285e', 'dSQ-H6ymXVg:APA91bEs8R87gvvVykftXXOtQUL0uQWhyw_QqYknJ-hQNhPaTBSyq38v3_Sx3ehWzzZFESasTnw3_2NDX3FYepmg1V4d0PlIym-Jdi5uy9rzqo439SPJ9FJI8cG9zM4Okhss7Q4TG4gd', NULL, 'android', '2020-08-02 22:18:34', '2020-08-02 22:22:26'),
(56, 173, '8ef939852a3cf920', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-04 18:33:07', '2020-08-04 18:33:09'),
(57, 174, 'b4e407e584fc665e', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-05 08:36:35', '2020-08-05 16:12:07'),
(58, 175, '3b3c70b7cc6de4a0', 'fJU2nznf5S4:APA91bG1i76A6EirkCCTdk4ZDFq992Y34Yrd3suBc7xkxrfDS4NKuQcKcVfPEXfgh9uCFdItsGVQv5gI_KlrLPvAYTLqJhh1Wu0WtVTrMrZugzT-1Chu6Bo3XQP-y_7bD5-UX385gSR8', NULL, 'android', '2020-08-05 10:40:29', '2020-08-05 10:40:29'),
(59, 177, '50327db56492f028', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-05 10:59:10', '2020-08-05 10:59:12'),
(60, 178, '1760e279ed8d2001', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-05 20:28:26', '2020-08-05 20:29:20'),
(61, 179, 'cf7ab398fc9792a0', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-06 15:33:11', '2020-08-06 15:33:13'),
(62, 180, '54ba7573e4e41256', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-09 22:53:25', '2020-08-09 22:53:25'),
(63, 181, '16b459fd40504c4a', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-11 10:19:19', '2020-08-30 08:56:02'),
(64, 182, '058bc431b45c927d', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-11 10:20:17', '2020-09-21 18:35:55'),
(65, 183, '16b459fd40504c4a', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-17 20:18:41', '2020-08-17 20:18:43'),
(66, 184, 'd82b653d3c274a33', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-21 03:14:50', '2020-11-11 22:19:20'),
(67, 181, '16b459fd40504c4a', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-08-30 08:53:42', '2020-08-30 08:53:42'),
(68, 182, 'd82b653d3c274a33', 'd5QFBSgNqgI:APA91bH6raOdSIC6C7pgJF750LD3DPLD4YY2Zt-FYvUNYj4XVdJjNO7idCR-dGzUTbo0RpHrxQEGqBRQcSnKRDqRO5NxNV5VuFhIga6eVI1cYsaNJuMmoalUjVseqQFa4rFC6EPLRhCB', NULL, 'android', '2020-09-01 18:21:08', '2020-09-01 18:21:08'),
(69, 182, 'f7d4690b402507f4', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-09-14 15:28:58', '2020-09-14 15:28:58'),
(70, 182, '058bc431b45c927d', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-09-21 18:35:54', '2020-09-21 18:35:54'),
(71, 183, 'd82b653d3c274a33', 'd5QFBSgNqgI:APA91bH6raOdSIC6C7pgJF750LD3DPLD4YY2Zt-FYvUNYj4XVdJjNO7idCR-dGzUTbo0RpHrxQEGqBRQcSnKRDqRO5NxNV5VuFhIga6eVI1cYsaNJuMmoalUjVseqQFa4rFC6EPLRhCB', NULL, 'android', '2020-11-09 21:18:46', '2020-11-09 21:18:46'),
(72, 184, 'd82b653d3c274a33', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2020-11-11 22:19:19', '2020-11-11 22:19:19'),
(73, 185, '22ef1793df7fc0c7', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2021-06-23 11:40:06', '2021-07-10 19:20:56'),
(74, 186, '22ef1793df7fc0c7', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2021-07-11 02:41:55', '2021-07-16 03:52:06'),
(75, 187, 'e68d7ac12eb73afb', 'COULD NOT GET FCM TOKEN', NULL, 'android', '2021-07-15 14:23:27', '2021-07-15 14:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `provider_documents`
--

CREATE TABLE `provider_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ASSESSING','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_profiles`
--

CREATE TABLE `provider_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_secondary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_profiles`
--

INSERT INTO `provider_profiles` (`id`, `provider_id`, `language`, `address`, `address_secondary`, `city`, `country`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 112, 'English', '', '', '', 'US', '', '2017-12-08 23:15:23', '2017-12-08 23:15:23'),
(2, 116, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-05 15:02:54', '2018-02-05 15:02:54'),
(3, 121, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-21 05:16:24', '2018-10-21 05:16:24'),
(4, 122, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-26 02:48:44', '2018-10-26 02:48:44'),
(5, 134, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 12:34:56', '2018-11-13 12:34:56'),
(6, 144, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-20 05:35:29', '2018-11-20 05:35:29'),
(7, 150, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-03 13:09:56', '2020-06-03 13:09:56'),
(8, 168, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-02 23:45:54', '2020-08-02 23:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `provider_services`
--

CREATE TABLE `provider_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('active','offline','riding') COLLATE utf8_unicode_ci NOT NULL,
  `service_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_services`
--

INSERT INTO `provider_services` (`id`, `provider_id`, `service_type_id`, `status`, `service_number`, `service_model`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(2, 2, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(3, 3, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(4, 4, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(5, 5, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(6, 6, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(7, 7, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(8, 8, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(9, 9, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(10, 10, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(11, 11, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(12, 12, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(13, 13, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(14, 14, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(15, 15, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(16, 16, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(17, 17, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(18, 18, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(19, 19, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(20, 20, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(21, 21, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(22, 22, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(23, 23, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(24, 24, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(25, 25, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(26, 26, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(27, 27, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(28, 28, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(29, 29, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(30, 30, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(31, 31, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(32, 32, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(33, 33, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(34, 34, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(35, 35, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(36, 36, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(37, 37, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(38, 38, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(39, 39, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(40, 40, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(41, 41, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(42, 42, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(43, 43, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(44, 44, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(45, 45, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(46, 46, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(47, 47, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(48, 48, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(49, 49, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(50, 50, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(51, 51, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(52, 52, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(53, 53, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(54, 54, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(55, 55, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(56, 56, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(57, 57, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(58, 58, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(59, 59, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(60, 60, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(61, 61, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(62, 62, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(63, 63, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(64, 64, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(65, 65, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(66, 66, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(67, 67, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(68, 68, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(69, 69, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(70, 70, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(71, 71, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(72, 72, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(73, 73, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(74, 74, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(75, 75, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(76, 76, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(77, 77, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(78, 78, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(79, 79, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(80, 80, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(81, 81, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(82, 82, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(83, 83, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(84, 84, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(85, 85, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(86, 86, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(87, 87, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(88, 88, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(89, 89, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(90, 90, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(91, 91, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(92, 92, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(93, 93, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(94, 94, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(95, 95, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(96, 96, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(97, 97, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(98, 98, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(99, 99, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(100, 100, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(101, 101, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(102, 102, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(103, 103, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(104, 104, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(105, 105, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(106, 106, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(107, 107, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(108, 108, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(109, 109, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(110, 110, 1, 'active', '4ppo3ts', 'Audi R8', '2017-12-08 20:12:43', '2017-12-08 20:12:43'),
(111, 111, 1, 'active', '2335', 'AUDI', '2017-12-08 22:06:29', '2017-12-08 22:09:11'),
(112, 113, 3, 'offline', 'lxz 2344', 'suzuki 2017', '2017-12-08 23:11:47', '2017-12-08 23:15:23'),
(113, 112, 3, 'active', 'lxz 2344', 'suzuki 2017', '2017-12-08 23:12:31', '2017-12-09 00:36:07'),
(114, 114, 1, 'active', '1213', '1990', '2018-01-25 23:09:44', '2018-02-15 07:13:28'),
(115, 115, 1, 'riding', '2211', 'Audi', '2018-01-28 06:34:38', '2018-02-03 13:13:03'),
(116, 116, 1, 'offline', '3939TX', 'Chrysler 200', '2018-02-01 11:07:50', '2018-02-13 17:30:21'),
(117, 117, 1, 'offline', 'CY123', 'AUDI Q7', '2018-10-10 22:52:18', '2018-10-11 02:46:39'),
(118, 118, 1, 'active', '12121212', 'audi', '2018-10-11 02:54:00', '2018-10-11 02:54:46'),
(119, 121, 2, 'offline', 'uk07ta2282', '2018', '2018-10-21 05:04:29', '2018-10-21 05:15:52'),
(120, 122, 1, 'riding', 'CY123', 'Audi', '2018-10-25 21:47:29', '2018-11-07 16:11:47'),
(122, 131, 1, 'active', 'uk07ta4901', 'audi q3', '2018-11-12 18:59:27', '2018-11-12 19:14:29'),
(123, 132, 2, 'active', 'uk082222', 'BMW', '2018-11-12 19:18:50', '2018-11-12 19:19:16'),
(124, 133, 2, 'active', 'PB 11 BC 9911', '2008', '2018-11-13 11:43:19', '2018-11-13 11:45:43'),
(125, 134, 1, 'active', 'UK07TA 9857', 'INDIGO', '2018-11-13 12:27:18', '2018-11-13 12:31:56'),
(126, 135, 1, 'active', '	UK07TB2281', 'audi q3', '2018-11-13 12:38:30', '2018-11-13 13:16:01'),
(127, 137, 2, 'riding', '	UK07TB2281', 'BMW', '2018-11-13 13:20:55', '2018-11-13 13:35:22'),
(128, 138, 2, 'offline', 'abcd', 'efgh', '2018-11-13 22:40:49', '2018-11-13 22:43:06'),
(129, 140, 1, 'active', 'PB 11 BC 9911', '2008', '2018-11-17 12:29:13', '2018-11-17 12:42:08'),
(130, 142, 2, 'active', 'uk07ta0023', 'Matiz', '2018-11-18 16:12:33', '2018-11-18 16:22:08'),
(131, 144, 1, 'offline', 'dhl89', 'bmw', '2018-11-20 04:29:14', '2018-11-20 18:32:25'),
(132, 150, 1, 'offline', 'hr350770', 'audi', '2020-05-30 14:16:10', '2020-06-16 22:17:22'),
(133, 151, 2, 'active', 'Sdsad', 'asd', '2020-06-03 13:19:09', '2020-06-15 06:44:31'),
(135, 152, 5, 'offline', 'hr350770hr', 'trhtrd', '2020-06-16 11:03:09', '2020-07-08 09:11:58'),
(136, 153, 1, 'active', '2415M', 'ford station wagon', '2020-07-08 12:33:27', '2020-07-20 15:11:42'),
(137, 154, 2, 'active', 'hr350770', 'audi', '2020-07-16 17:38:21', '2020-07-22 07:03:24'),
(138, 155, 1, 'offline', 'hr3507702', 'audi', '2020-07-23 19:01:45', '2020-07-29 04:12:30'),
(139, 156, 1, 'offline', 'hr09090909', 'Taxi', '2020-07-27 08:38:37', '2020-07-27 08:49:05'),
(141, 168, 5, 'active', 'M7272', 'KLUGER', '2020-08-02 12:42:55', '2020-08-02 18:24:14'),
(142, 172, 1, 'active', '2415M', 'ford station wagon', '2020-08-02 22:19:33', '2020-08-02 22:22:29'),
(143, 179, 1, 'offline', '2415M', 'ford station wagon', '2020-08-06 15:34:25', '2020-08-06 15:34:25'),
(144, 182, 1, 'active', '2415M', 'Ford falcon wagon', '2020-08-13 10:15:02', '2020-08-13 10:17:36'),
(145, 183, 1, 'offline', '2271M', 'Ford 2011', '2020-08-17 20:36:01', '2020-08-17 20:36:01'),
(146, 184, 1, 'offline', 'ABC ', 'Maruti swift', '2020-08-25 22:47:25', '2020-08-25 22:47:25'),
(147, 181, 1, 'active', '2415M', 'ford station wagon', '2020-08-30 08:54:39', '2020-08-30 08:57:00'),
(148, 185, 2, 'active', 'hr32', 'audi', '2021-07-05 13:30:32', '2021-07-06 15:39:08'),
(149, 186, 2, 'offline', 'hr32', 'audi', '2021-07-11 02:43:03', '2021-07-16 03:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `request_filters`
--

CREATE TABLE `request_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request_filters`
--

INSERT INTO `request_filters` (`id`, `request_id`, `provider_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 16, 114, 2, '2018-02-03 13:11:02', '2018-02-03 13:11:23'),
(10, 16, 115, 0, '2018-02-03 13:11:02', '2018-02-03 13:11:02'),
(11, 17, 115, 0, '2018-02-03 13:13:03', '2018-02-03 13:13:03'),
(32, 51, 122, 0, '2018-11-07 16:11:27', '2018-11-07 16:11:27'),
(38, 55, 132, 2, '2018-11-12 19:21:19', '2018-11-12 19:21:30'),
(47, 62, 137, 0, '2018-11-13 13:35:10', '2018-11-13 13:35:10'),
(48, 82, 154, 0, '2020-07-20 12:33:24', '2020-07-20 12:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `fixed` int(11) NOT NULL,
  `price` float NOT NULL,
  `minute` float NOT NULL,
  `distance` float NOT NULL,
  `calculator` enum('MIN','HOUR','DISTANCE','DISTANCEMIN','DISTANCEHOUR') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `provider_name`, `image`, `capacity`, `fixed`, `price`, `minute`, `distance`, `calculator`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Economy Sedan', 'PPCabs', 'http://sanjeevnitravels.com/sanjeevni-app/uploads/424b1f7ec3b843f8e6f51126344a17feb8b9ec42.png', 4, 4, 1.38, 0.4, 1, 'DISTANCEMIN', NULL, 1, '2017-12-08 20:12:27', '2020-07-08 09:39:59'),
(2, 'Economy Maxi Van', 'PPCabs', 'http://8476991100.com/uploads/4a94808f4b637857e94e99bd4f479e27c80b99f5.png', 10, 5, 1.5, 0.4, 1, 'DISTANCEMIN', NULL, 1, '2017-12-08 20:12:27', '2020-07-08 09:41:07'),
(5, 'Premium 6 seator taxi', 'PPCabs', 'http://sanjeevnitravels.com/sanjeevni-app/uploads/a02d3e1b335274f9ac865037ea6cd36d36716e4f.png', 6, 5, 1, 2.4, 1, 'DISTANCEMIN', 'fghfghfh', 0, '2018-11-20 12:59:11', '2020-07-08 09:42:01'),
(7, 'Premium Sedan', 'PPCabs', 'http://sanjeevnitravels.com/sanjeevni-app/uploads/d746cd5328b11ae43f9b71d47cb133f9e2d2ef8b.png', 4, 20, 0, 20, 0, 'MIN', 'Tempoo', 0, '2018-11-20 17:11:43', '2020-07-08 09:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'PPCabs'),
(2, 'site_logo', 'https://studiotesseract.in/app/uploads/2d6e894b8eee2e59d66eb9759c06fb48e26bd28b.png'),
(3, 'site_email_logo', 'http://localhost/logo-white.png'),
(4, 'site_icon', 'http://studiotesseract.in/app/uploads/6f9a91e0c5307fe68eab2697d2927ef596684cd1.png'),
(5, 'site_copyright', '© 2018 PPCabs taxi service pvt ltd'),
(6, 'provider_select_timeout', '20'),
(7, 'provider_search_radius', '5'),
(8, 'base_price', '50'),
(9, 'price_per_minute', '50'),
(10, 'tax_percentage', '0'),
(11, 'stripe_secret_key', ''),
(12, 'stripe_publishable_key', ''),
(13, 'CASH', '0'),
(14, 'CARD', '0'),
(15, 'manual_request', '0'),
(16, 'default_lang', 'en'),
(17, 'currency', 'AU$'),
(18, 'distance', 'Km'),
(19, 'scheduled_cancel_time_exceed', '10'),
(20, 'price_per_kilometer', '10'),
(21, 'commission_percentage', '10'),
(22, 'store_link_android', 'https://play.google.com/store/apps/details?id=com.ppcabs.customer'),
(23, 'store_link_ios', ''),
(24, 'daily_target', '1000'),
(25, 'surge_percentage', '0'),
(26, 'surge_trigger', '0'),
(27, 'demo_mode', '0'),
(28, 'booking_prefix', 'JB'),
(29, 'sos_number', '000'),
(30, 'contact_number', '0469008698'),
(31, 'contact_email', 'ppcabs@yahoo.com'),
(32, 'social_login', '1'),
(33, 'page_privacy', '<p>TEST UPDATE PRIVACY POLICY</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wallet_balance` double(8,2) NOT NULL DEFAULT '0.00',
  `rating` decimal(4,2) NOT NULL DEFAULT '5.00',
  `otp` mediumint(9) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `payment_mode`, `email`, `mobile`, `password`, `picture`, `device_token`, `device_id`, `device_type`, `login_by`, `social_unique_id`, `latitude`, `longitude`, `stripe_cust_id`, `wallet_balance`, `rating`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(151, 'Devinder', 'Sharma', 'CASH', 'devindersharma@icloud.com', '', '$2y$10$P7iKv68EhUkOdY9UUHrVaeBmhfvbtqx02LGlAVIqrjV7zdG7UMHs.', '', 'COULD NOT GET FCM TOKEN', 'cf7ab398fc9792a0', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, 'rdhEy0ScYn4bJuSZtTFqYJZwwKDgLuxr9zBc36THqa7DniiFqWegrJO0fuzL', '2020-07-31 13:26:00', '2020-08-07 01:54:50'),
(156, 'Devinder', 'Sharma', 'CASH', 'devindersharma2016@gmail.com', '', '$2y$10$kzpB41WEDj5MJeGTRD2.Mu8DuJKLMC6lYFNn5n0jIxp/atY6ruBi2', '', '', '', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2020-08-11 10:47:36', '2020-08-11 10:49:22'),
(159, 'Daniel ', 'Sinha', 'CASH', 'donsinha@gmail.com', '', '$2y$10$8AzJizQz8lEB5XYzf1GwbOESj8angQNc6HmBD5NmOxBeVpHVQ.9qi', '', 'COULD NOT GET FCM TOKEN', '82e7221e58b42ad7', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2020-09-18 00:48:23', '2020-09-18 00:48:23'),
(160, 'Hamender', 'Yadav', 'CASH', 'erhamender@gmail.com', '', '$2y$10$78SepxBlAu7vz0DKgfCYeeTt/uQdUq5oe7W.zJipgFiiVeC6g5XZa', '', 'COULD NOT GET FCM TOKEN', 'b86fa8e9bc13da84', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2021-05-28 10:23:16', '2021-05-28 10:23:16'),
(161, 'hamender', 'yadav', 'CASH', 'ham@gmail.com', '', '$2y$10$h0SDqWKWJuU8cWNHjtyw7eUJQkQwFIUJWbVFJ068tUEZLosy5jzNO', '', 'COULD NOT GET FCM TOKEN', '22ef1793df7fc0c7', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2021-06-22 00:33:13', '2021-06-22 00:33:13'),
(162, 'hamender', 'yadav', 'CASH', 'er@gmail.com', '', '$2y$10$kA/orxJKFfjUsTpzal.A/OgXl0yNOQsTARqF.6.YyfXPQKSfCJL9G', '', 'COULD NOT GET FCM TOKEN', '22ef1793df7fc0c7', 'android', 'manual', '', 28.06503850, 76.09993100, NULL, 0.00, 5.00, 0, 'QqNaQSiFPDmWLFO9FILKipTPoBUbczKGnI4b543JE2DDKxbR9sbHmd9iLt3S', '2021-06-23 11:48:10', '2021-07-09 03:36:09'),
(163, 'h', 'a', 'CASH', 'a@g.com', '', '$2y$10$a0xtzk3b7FtLiPgi5KbAWeT7FffZXWvjioKM7o5G.U2bn2gvKx/GW', '', 'COULD NOT GET FCM TOKEN', 'ea031269d471c484', 'android', 'manual', '', NULL, NULL, NULL, 0.00, 5.00, 0, NULL, '2021-07-08 00:08:20', '2021-07-08 00:08:20'),
(164, 'jh', 'h', 'CASH', '1@g.com', '', '$2y$10$lnestHCkGyVIFytYOYlbRuFJF6o3iUgY0xElYRo1KxNedaHyXnwei', '', 'COULD NOT GET FCM TOKEN', '22ef1793df7fc0c7', 'android', 'manual', '', 29.05877570, 76.08560100, NULL, 0.00, 5.00, 0, '30HMa6FdWLtnJVbTs3Sot0ASY3FuNhTsaUT3TWCuSZBZe5AO9HUUpOttxMyw', '2021-07-09 03:39:28', '2021-07-10 18:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL DEFAULT '0',
  `current_provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('SEARCHING','CANCELLED','ACCEPTED','STARTED','ARRIVED','PICKEDUP','DROPPED','COMPLETED','SCHEDULED') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_by` enum('NONE','USER','PROVIDER') COLLATE utf8_unicode_ci NOT NULL,
  `cancel_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `distance` double(15,8) DEFAULT NULL,
  `s_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_latitude` double(15,8) NOT NULL,
  `s_longitude` double(15,8) NOT NULL,
  `d_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_latitude` double(15,8) NOT NULL,
  `d_longitude` double(15,8) NOT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `user_rated` tinyint(1) NOT NULL DEFAULT '0',
  `provider_rated` tinyint(1) NOT NULL DEFAULT '0',
  `use_wallet` tinyint(1) NOT NULL DEFAULT '0',
  `surge` tinyint(1) NOT NULL DEFAULT '0',
  `route_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_requests`
--

INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `distance`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TRNX335187', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 5.00000000, '9 Burnhays Rd, Stoke-on-Trent ST6 4HH, UK', 53.05202820, -2.20193690, '537 / 539 Leek Road, Hanley, Stoke-on-Trent ST1 3ER, UK', 53.01746200, -2.16706600, '2018-01-27 08:38:45', NULL, '2018-01-27 08:39:51', '2018-01-27 08:40:53', 1, 1, 0, 0, 'mwxbIfbmLu@gDlBm@C_AKyA|B_ATKf@W|E{DxA_A`B_AdCwAj@c@PG\\CpBCb@MvBc@hBcAbAm@hBqAt@s@|@w@vIcInD{CnBgBjE}DzEqEbDmC`BqA~AgAdAi@f@UbE_B|@g@r@s@j@s@j@{@nAmBbAeBdBaDxBeD~CmFzHuMpAoBv@cATmA?IDSBEZsAPmADu@D}BAuD?iCToFR}APeATaAd@oAXu@n@_AdA}@fCoAl@Yx@Yl@WhEsAbBe@j@M~Da@xAAz@Bp@F@CBCFCD?p@eAPe@Pk@x@{CTsAF{@DkB@cBFu@Nu@`@y@b@aAvD_If@cAbFgIhBhEjE~JlApCTd@QL', '2020-07-08 09:50:32', '2018-01-27 08:38:45', '2020-07-08 09:50:32'),
(2, 'TRNX598170', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 5.00000000, '17 Burnhays Rd, Stoke-on-Trent ST6 4HH, UK', 53.05207900, -2.20216990, '537 / 539 Leek Road, Hanley, Stoke-on-Trent ST1 3ER, UK', 53.01746200, -2.16706600, '2018-01-27 08:47:25', NULL, NULL, NULL, 0, 0, 0, 0, 'cwxbIbcmL_AcElBm@C_AKyA|B_ATKf@W|E{DxA_A`B_AdCwAj@c@PG\\CpBCb@MvBc@hBcAbAm@hBqAt@s@|@w@vIcInD{CnBgBjE}DzEqEbDmC`BqA~AgAdAi@f@UbE_B|@g@r@s@j@s@j@{@nAmBbAeBdBaDxBeD~CmFzHuMpAoBv@cATmA?IDSBEZsAPmADu@D}BAuD?iCToFR}APeATaAd@oAXu@n@_AdA}@fCoAl@Yx@Yl@WhEsAbBe@j@M~Da@xAAz@Bp@F@CBCFCD?p@eAPe@Pk@x@{CTsAF{@DkB@cBFu@Nu@`@y@b@aAvD_If@cAbFgIhBhEjE~JlApCTd@QL', '2020-07-08 09:51:00', '2018-01-27 08:47:25', '2020-07-08 09:51:00'),
(3, 'TRNX346245', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 5.00000000, '23 Burnhays Rd, Stoke-on-Trent ST6 4HH, UK', 53.05192100, -2.20246440, '537 / 539 Leek Road, Hanley, Stoke-on-Trent ST1 3ER, UK', 53.01746200, -2.16706600, '2018-01-27 08:48:55', NULL, '2018-01-27 08:49:18', '2018-01-27 08:49:29', 1, 1, 0, 0, 'mvxbIfemLuAgGlBm@C_AKyA|B_ATKf@W|E{DxA_A`B_AdCwAj@c@PG\\CpBCb@MvBc@hBcAbAm@hBqAt@s@|@w@vIcInD{CnBgBjE}DzEqEbDmC`BqA~AgAdAi@f@UbE_B|@g@r@s@j@s@j@{@nAmBbAeBdBaDxBeD~CmFzHuMpAoBv@cATmA?IDSBEZsAPmADu@D}BAuD?iCToFR}APeATaAd@oAXu@n@_AdA}@fCoAl@Yx@Yl@WhEsAbBe@j@M~Da@xAAz@Bp@F@CBCFCD?p@eAPe@Pk@x@{CTsAF{@DkB@cBFu@Nu@`@y@b@aAvD_If@cAbFgIhBhEjE~JlApCTd@QL', '2020-07-08 09:51:10', '2018-01-27 08:48:55', '2020-07-08 09:51:10'),
(4, 'TRNX273076', 111, 115, 115, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 21.00000000, 'Korang Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, 'Islamabad, Islamabad Capital Territory, Pakistan', 33.66003650, 73.22935420, '2018-01-28 06:39:50', NULL, '2018-01-28 06:40:35', '2018-01-28 06:40:43', 1, 1, 0, 0, '{f}kEk`l}LdBqAaAgC_D}HkAwCc@iAMW}@m@q@g@w@aAW]]u@Ia@U{AOcC?g@Hc@t@yAXs@NMRq@d@cBd@eAjAwAdBcBbB_B~BiBrAsA`@aBFaBGo@Uw@[m@uCnB}MdJaIxFuGnEsOlKsa@nXoClBqDdCmAx@_HzEgJnG{HhFwNxJiVrPkE`DmCjBuMnIiTfOgAl@wO~KmGfEqVnPsWjQkNdJu@d@wMbJDx@FnCAbAXON}GBkADiDBaBY_AO{@UgC[oDUmCs@eHQyBEk@Su@Q[mAyAkBoBsB{Ba@w@]oA[iDuAwReB{PgAgKAq@GmC]qBsEoPmDyMwCgKgB{EoDsL{Hy]UaBIu@GwCJqB|@mIN_B@{@C{AG{@Kw@Ks@a@{A[mA_AsAw@o@mEgDiA_A_@c@a@m@e@gAcB_HgDmOoBcI_@oAOmAeB{HIe@KaAGuF_@e^BeBCcDCgEKyKMkNGeH@}BPqJv@{[RqKN_GXcHn@}Cr@uCb@iBRa@x@u@t@s@Ta@Ny@Bk@EqAI_FI}BGsBCcC@o@L{C^iKp@eOl@sLBkAG]]}@_C}FyJuUi@oA]kAcG{\\a@wAeBeEeD}Ho@DcAIc@GSMMWk@cB]_A[w@eAcAeBuA{GkFy@gAYi@_AyA[u@WQc@McDgAkB[o@]c@m@i@wAu@mCg@kBKs@OgAYq@q@qAE{@UmAKQOEsB_@}Bq@_EeAUCQEEI[TKDI@IESWO?u@D_ARcA^QEGJMF', '2020-07-08 09:51:21', '2018-01-28 06:39:50', '2020-07-08 09:51:21'),
(5, 'TRNX382821', 113, 0, 115, 1, 'CANCELLED', 'USER', 'ho', 'CASH', 0, 7.00000000, 'Street 26, Rawalpindi 46000, Pakistan', 33.57992830, 73.09806520, 'Pakistan Town, Rawalpindi, Pakistan', 33.57531840, 73.14307400, '2018-01-28 07:03:10', NULL, NULL, NULL, 0, 0, 0, 0, 'aq}kEk~c}LcAmBaAr@Ym@j@c@pB}A~BaA^Kf@WVGfAk@fAo@|@e@n@c@bAm@b@_@`@Qh@IpAe@|A_Af@e@~CmEh@s@Rc@ViANeAD_@\\iAjAiBT]?E@GBE`@{BJ_@l@u@aBy@KKUu@wBoHSgBGS~C}AlA_@vBe@hDeAbAw@n@gBFYdCiOxAHlAY`@[v@eAnCcDhAsAx@i@pBsAA?GEGM?SFOJIN@JFFN?FpCPt@Td@ZxBjB|AjArAz@pAx@r@Pb@Hb@L\\ZTTXN^B^Et@e@n@i@cAkHcAmFi@}Cs@gCgAiEKwACsBQyBWiDWeCw@mE{@kF_AiFiFeZmAiHEWiB{JeBaKs@cECIEWEUKi@Mm@A?gDdAORSRSLWJUB[?QSsCn@kCv@KCUy@{CjCq@gAeBqC}BsDgCsE{AgCkBaD{AaCkCkEg@o@AS^o@\\m@f@i@RNd@XbAb@', '2020-07-08 09:51:31', '2018-01-28 07:03:10', '2020-07-08 09:51:31'),
(6, 'TRNX679082', 113, 0, 115, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, 'Korang Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, 'Pakistan Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57531840, 73.14307400, '2018-01-28 17:18:07', NULL, NULL, NULL, 0, 0, 0, 0, '{f}kEk`l}LdBqAaAgC_D}HkAwCc@iAMW}@m@q@g@w@aAW]]u@Ia@U{AOcC?g@Hc@t@yAXs@NMRq@|ElEvAoCpBa@tB`F\\j@xEnGtAjBLTc@l@EDRNd@XbAb@', '2020-07-08 09:51:40', '2018-01-28 17:18:07', '2020-07-08 09:51:40'),
(7, 'TRNX815432', 113, 0, 114, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, 'Korang Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57820140, 73.13938610, 'Pakistan Town, Rawalpindi, Islamabad Capital Territory, Pakistan', 33.57531840, 73.14307400, '2018-01-28 17:21:24', NULL, NULL, NULL, 0, 0, 0, 0, '{f}kEk`l}LdBqAaAgC_D}HkAwCc@iAMW}@m@q@g@w@aAW]]u@Ia@U{AOcC?g@Hc@t@yAXs@NMRq@|ElEvAoCpBa@tB`F\\j@xEnGtAjBLTc@l@EDRNd@XbAb@', '2020-07-08 09:51:52', '2018-01-28 17:20:23', '2020-07-08 09:51:52'),
(8, 'TRNX909567', 113, 114, 114, 1, 'CANCELLED', 'PROVIDER', 'far away', 'CASH', 0, 19.00000000, 'City-Sadar Road, Rawalpindi 46000, Pakistan', 33.60640190, 73.05421500, 'Korang Town, Rawalpindi, Pakistan', 33.57820140, 73.13938610, '2018-01-30 22:20:50', NULL, NULL, NULL, 0, 0, 0, 0, 'cwblE{k{|LLaBAGz@@fBEdAE?Tr@ARnAJ?f@IxCe@pAY^Dj@Ch@AJCJ[z@cGTkCn@Nr@NB@J}@jBiLh@aDVgAXs@b@_Ab@g@NQM_@Qe@Im@Bk@bAoFT[TQ\\GnIsCvC}@fEmAzA[nBS|L}@hG[rX{AxCSxAErADfARZAREPQR_@@Wg@eDm@wDw@iGi@mF[cFY_Dc@kBk@{A_AuAsF}G}BmCe@i@k@_AcEuHkBkDWMa@Ua@O]Im@Cw@Jc@NYN}@d@oA^gALwA?aP{@_AMy@S_AYmAo@mA{@m@k@oAcBaAqBY}@i@yBSgBKeBy@aQSeHQcFe@cJ_AkNMo@kA_CeLsQoAcBu@gA}KiQ}Uy_@MYSy@Eu@@m@Hc@vGmVnGyUl@kBvMm_@bI}QvDoIRu@TiAJ}@FyACqB]}Ba@gBQm@a@_AgA}A]a@_As@{EgCy@e@wHaEm@]iAq@i@A{@Bs@XqAt@w@n@Yn@?`@F`@P\\b@RZ@|AWbAYp@e@fE}CjFqDjMkIvLcIlA{@zOqKzPgL`IuFvMsI`FwDpGeEnD{B~CyBpF{D|GsE`EsCr@a@jF_EbBcAxBwAhIaGpD}BlGaE|HqFzDiClLkIRj@sLzHqGlEsFzDcDxB_DjBJLVx@PhA?t@EVYdAc@`A[^m@h@eAx@_BvAaD~C}@lAWd@Wp@WjASp@E^iAjCCT?z@PbDHj@Tt@X`@f@p@l@h@t@f@n@j@\\t@|A|DrBbFlB|EMPeBpA', '2020-07-08 09:52:03', '2018-01-30 22:20:50', '2020-07-08 09:52:03'),
(9, 'TRNX235481', 115, 116, 116, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 12.39100000, '1472 Willow Avenue, Des Plaines, IL, United States', 42.04774900, -87.88731400, 'ORD airport, Chicago, IL, United States', 41.97416250, -87.90732140, '2018-02-01 11:10:59', '2018-02-01 00:00:00', NULL, NULL, 0, 0, 0, 0, 'kks_GrplwOuDvIuB?OG[EMIMOzCaHtB_FnAqCnAyBh@mAfBoGzCeLzDkOn@_C\\cA\\s@bA}Ah@m@hAy@t@a@HCFOlBw@f@Wv@q@|@oAXm@v@}BZ_AJGRm@xAgETo@f@iA|@oAv@u@bA}@|A_A|@w@POd@s@b@}@Vo@L[NIDGL]Zk@n@}@h@i@jA}@v@c@`Ac@r@WdHiBfG_BtBm@LIFIDI`Ck@jAYdB[lBWrAKrCIlG@dRH`TFxABlBN|B\\bCn@nDvA`PpGjBj@~Bd@pBTnAF~@@|C?`F@jG?vL@bJAtAEfCWvBc@tBm@jGsBlOcFnAa@pA[lASfBS|BIbA?`BFvBRrB^vG`BrPbEtA\\z@TJTNLbA`@nAp@v@r@xA|A\\Xd@Tj@Nn@HTDLJpCPlAN`ARdAd@lA`Al@v@vArCzC|Jp@lBV`@vAnBz@rCpAhElEpN|@pCvD|LbAtDrEtNfAjDnC~I^jBNpB@pBKrB[lBi@dBu@xA]f@QRoItJiKbM]d@Yp@Qx@Gx@?nBA`[D~@Hv@|BfMVl@`@b@PJTFpBV\\FXKj@?l@DhDf@`@Jn@Jf@P`@FFDTLRFTITOT[P[^}@r@sA', '2020-07-08 09:52:13', '2018-02-01 11:10:59', '2020-07-08 09:52:13'),
(10, 'TRNX598790', 116, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 7.65000000, '7051 Barry Street, Rosemont, IL, United States', 42.00692540, -87.89179620, 'ORD airport, Chicago, IL, United States', 41.97416250, -87.90732140, '2018-02-01 11:25:11', '2018-02-01 00:00:00', NULL, NULL, 0, 0, 0, 0, 'ink_G|jmwObF?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', '2020-07-08 09:52:23', '2018-02-01 11:25:11', '2020-07-08 09:52:23'),
(11, 'TRNX740351', 116, 116, 116, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 30.66000000, '7051 Barry Street, Rosemont, IL, United States', 42.00692540, -87.89179620, 'Loop, Chicago, IL, United States', 41.87863510, -87.62505490, '2018-02-01 11:28:51', '2018-02-01 00:00:00', NULL, NULL, 0, 0, 0, 0, 'ink_G|jmwObF?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XiAx@eB~AMLa@p@TvUB|DX?OoTCcAD[D}@PiAVu@NU^e@~@q@n@a@`@OrAUx@Ct@@tCEnFEjADjA@@Y@M@AAuENcC\\yBZmAz@aCf@kBDKD[B]|CcJvOgc@vCiIrGsQdA_CdBuCjA_Bv@aAnBsBhBkBx@q@Vi@lAqAdDgD|B}B`AoAn@u@Xe@r@qAvHeQf@kAzKqVvDsI`B_Eb@kA~@uChAaEbC}J|AkH~@qF`@{Cd@sE^aGD]BmAFyGAcFOmJDq@EaCI}GE{@OmIUaN_@sSSuMUaNDyI@oEV{KZaI`@cHjBgXh@qFp@aFHi@|@oF`@uCRsBZ}FDkCCqYIkj@GaRAkPMiw@D}CFsAT}BLy@d@cCn@oBb@cAh@iAbMcXdSub@zHkP`JqRt@iBf@wAb@yAnAsFRcAz@_GfAqE^oAnAiDpBmEpH{OXm@jG}MzAyCrDoGfCqEvAwCp@sB`A}DlAwFTs@`@}@`AsB~@cBv@iA~BsDdByCh@_ATSxDiHfGkM|A_D~EgKxFwMtCqGLYdB{DhAcCvE{JfCiFl@sA`AwBpBeEnIoQnBkEh@aBbAaDh@sA\\q@~@sAf@g@jA_Aj@a@t@g@xBcAfIsDzBoAb@[j@i@|AeBpA{Bt@eBr@}Bd@}Br@yEj@oDh@sCb@{Al@{AzAeDjDiHXm@`BmDzCiGbGyLl@oA`JsQzDcIn@oApDcHhGcMdByDl@_Bp@oB`BwEnBcFr@yAZo@tBkE|AaDvNyZvGgNjDsHnBeEjGuM|McYbAiBl@}@vAoBf@m@rAyAhAgAbA_AxB{Az@e@`DeB`PeIvCeBfAm@j@[xAaAhAaArAwAlFoGdAaAdAs@`Ag@z@]~@Yt@MpAOhAC|ADpERtBBpBGvAOtDi@rA_@hBs@zBw@fHeCnBy@bB}@bBkArAoA`AeAz@eAj@_A|BgEFKfAmBtCyEtBgDn@iAz@eBr@uArC}EbAeBn@iA`B{ChAmBd@s@jAsAnCqCj@i@nDyBfBw@v@UhB]nAOfBGtFIvCA~BMxCEzAVdD`@NM|@CfDErCHvA@A_@?y@A{@K{_@GkS?g@GmJ@_FCeHCuNIuKGmIGqE', '2020-07-08 09:52:32', '2018-02-01 11:28:51', '2020-07-08 09:52:32'),
(12, 'TRNX155810', 115, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 33.83600000, '1472 Willow Avenue, Des Plaines, IL, United States', 42.04774900, -87.88731400, 'Loop, Chicago, IL, United States', 41.87863510, -87.62505490, '2018-02-01 13:17:00', '2018-02-01 01:00:00', NULL, NULL, 0, 0, 0, 0, 'kks_GrplwOuDvIuB?OG[EMIMOzCaHtB_FnAqCnAyBh@mAfBoGzCeLzDkOn@_C\\cA\\s@bA}Ah@m@hAy@t@a@PStCoAv@q@|@oAXm@v@}BZ_AJGRm@xAgE|@yB|@oAv@u@bA}@|A_A|@w@v@cAb@}@Vo@L[NIDGL]Zk@n@}@h@i@jA}@xBgAr@WdHiBfG_BtBm@LIFIDI`Ck@jAYdB[lBWrAKrCIlG@dRHzVJlBN|B\\bCn@pUhJjBj@~Bd@pBTnCH~J@bU@bJAtAEfCWvBc@tBm@jGsBlOcF`D}@lASfBS|BIdDFvBRrB^NZLH|DpAn@Tr@Zt@VzAz@dBv@t@NlABt@KdAYDAf@ORIhEuAvDmAn@W|@q@x@gAVk@Pe@VqALgA@q@CiFHiBJ{@Nm@`@wAHm@vAoDn@gBv@}BlE_O|@wEd@kDt@qIf@gGLqC@oADwBDsIOaO@}@M_K_@mQ_@eUOgGe@{[FiPd@mQVcF\\uFxB_[ZyC|A_Kv@kFf@iGJuD@sDCc\\AqBQcw@Gef@Es_@D{BLkBj@aEb@kBv@yBlAkC|P{^t\\ms@|FaMlAkDp@iCr@aDTiAx@yFjA}EfAeDnBmEt@aBfQm_@tDeHxAeCvCiFxAcD|@yCpAgG`@gBf@qAN_@x@cBdAmBdBiC|CgFXg@l@cAPMnBoD`C{EvDaIb@w@lDqHbCeF`FiLvB_Fx@eBHSlD{HpFiLxBoEz@oBfFwKrJuSbCsH^w@l@cA|@gAx@u@dBmA|Ay@hGsCtB}@zBoAfA}@bBiBrA_Ct@eBr@}Bd@}Bh@qD`@kCl@mD^{A`@qA|AkDzBuEpAoCTg@`EqIdFaKlDoHnGgM`BkDjGaMbCyErGuMvAiDl@eBnByFbCgGrAoCbCcFnNiZ`BiDhMiXdE{I|GwNjHkOpAaClBwC~@mAnAuAzByB`@_@dAu@tBqAb@UbL}F|FyCnBkAh@[pBgAjCkBp@o@dGkHjAkAz@q@jAs@tB{@z@SlAQbAGrA@dGVv@BtBCdBKdBUdBYdAUlCaAbEuAlHkCpC{A|AiAlBoBxAcBdDaGPYvAeCfAeBbC_ErBqDlBuDzEgIvB_E|AgCd@q@fAiApCqC@ATUjC_BDCxAw@n@YbAWpCc@vFOhFGzAClEMZAdARb@FvC\\HKFC~CExAAfDLl@AA]?S?g@Ai@EqQKeZAcH?KEcH?aECeNEwNEqIQcO', '2020-07-08 09:52:42', '2018-02-01 13:17:00', '2020-07-08 09:52:42'),
(13, 'TRNX588370', 113, 114, 114, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, 'Chaudhry Sarfraz Rd, Rawalpindi 46000, Pakistan', 33.57933450, 73.10010600, 'Korang Town, Rawalpindi, Pakistan', 33.57820140, 73.13938610, '2018-02-01 18:58:34', NULL, '2018-02-01 18:59:06', '2018-02-01 18:59:45', 1, 1, 0, 0, 'ql}kEukd}L^x@R^LGZOVO`DkBjCeBZOTCnAWj@W|A_Af@e@lAcBpAiBh@s@Rc@ViANeAD_@\\iAjAiBT]?E@GBEH@BD?FADbATn@NjDp@N@N?tAYzAYhCu@`AYp@IPBpAd@rD~Ar@e@fB}@hBiAnEiC`Ae@\\I^CBGDAH@BBvBHjBLjBFd@LjBBfBEJCPGcBeKq@eDQuAKw@@_ABgAHc@`@cAJU`GsId@u@Li@AI}AgAyAeBQSu@}GIq@}@mDa@{Bc@}B{AqFQcAIgDq@yIOsA[gB_@qByA}I]iBq@oDi@iDUaB{AwHoB}KyTfGiMlDuIdC_FtAY@iEpAG?GQc@sBm@qAy@yCFk@F[F_@f@u@tAsBlAmBD_@?cG?kGBcD?aCCCCG@M?C}AiDcAaCcAwBiAuBy@kBeBpA', '2020-07-08 09:52:52', '2018-02-01 18:58:34', '2020-07-08 09:52:52'),
(14, 'TRNX395450', 115, 116, 116, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 6.95800000, '7151 Barry St, Rosemont, IL, United States', 42.00849100, -87.89149700, 'ORD airport, Chicago, IL, United States', 41.97416250, -87.90732140, '2018-02-03 09:57:41', '2018-02-02 22:00:00', NULL, NULL, 0, 0, 0, 0, '}wk_GzhmwO?`AsB?cAACyBC{BG}FMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', '2020-07-08 09:53:02', '2018-02-03 09:57:41', '2020-07-08 09:53:02'),
(15, 'TRNX437095', 117, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00686310, -87.89160120, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-03 12:58:28', NULL, '2018-02-03 12:59:49', '2018-02-03 13:00:24', 1, 1, 0, 0, '{mk_G|jmwOtE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', '2020-07-08 09:53:11', '2018-02-03 12:58:28', '2020-07-08 09:53:11'),
(16, 'TRNX939054', 118, 114, 114, 1, 'SCHEDULED', 'NONE', NULL, 'CASH', 0, 10.35000000, 'Chaklala Scheme 3, Rawalpindi, Punjab, Pakistan', 33.58247060, 73.09217550, 'Airport Housing Society, Rawalpindi, Punjab, Pakistan', 33.59483840, 73.13201010, '2018-02-03 13:11:01', '2018-02-03 12:40:00', NULL, NULL, 0, 0, 0, 0, 'wa~kEwwb}LfBb@}@`Ga@lDrA^}AjBaBrB}DrEwG~HiDdEwAhBgGpHwGbI]^EBI?c@EmAG_@Aa@\\u@n@c@v@ARANCDQ\\QJQBQ?KAUAk@NwAlAo@^e@RkA^eAHuABoCQ{CIoDUeBMaASwAe@q@]y@g@qAiAw@_AgAgBs@iBo@aCUaB_AiSy@oSiA}RUaC[}@u@wAeLsQoAcBu@gAcGoJoA}BoCqEmMgSsAsBwAaCe@w@K[Mq@Ce@?_@Ds@VmAlB{GpCgK~@aDvAkFpA_F~@_DzBoGvEeMnCiIv@uBlGmNpAaDvAwCVo@Ry@ZiCFcCCaAa@_DWiAg@sAq@mA]m@OQCDI@qAo@gAUuAIyCH}@G}B[i@EiAA]LYPSVOf@Ap@Np@P^n@e@bBeAjEaDvAaAnHaFlKkHjIwFjJkGdH}EzArDnCpGBFKVkAzCm@lAm@bB|@n@JFDAv@qBDAn@ZNHo@bB', '2020-07-08 09:53:21', '2018-02-03 13:11:01', '2020-07-08 09:53:21'),
(17, 'TRNX302235', 118, 0, 115, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 10.35000000, 'Chaklala Scheme 3, Rawalpindi, Punjab, Pakistan', 33.58247060, 73.09217550, 'Airport Housing Society, Rawalpindi, Punjab, Pakistan', 33.59483840, 73.13201010, '2018-02-03 13:13:03', '2018-02-03 13:00:00', NULL, NULL, 0, 0, 0, 0, 'wa~kEwwb}LfBb@}@`Ga@lDrA^}AjBaBrB}DrEwG~HiDdEwAhBgGpHwGbI]^EBI?c@EmAG_@Aa@\\u@n@c@v@ARANCDQ\\QJQBQ?KAUAk@NwAlAo@^e@RkA^eAHuABoCQ{CIoDUeBMaASwAe@q@]y@g@qAiAw@_AgAgBs@iBo@aCUaB_AiSy@oSiA}RUaC[}@u@wAeLsQoAcBu@gAcGoJoA}BoCqEmMgSsAsBwAaCe@w@K[Mq@Ce@?_@Ds@VmAlB{GpCgK~@aDvAkFpA_F~@_DzBoGvEeMnCiIv@uBlGmNpAaDvAwCVo@Ry@ZiCFcCCaAa@_DWiAg@sAq@mA]m@OQCDI@qAo@gAUuAIyCH}@G}B[i@EiAA]LYPSVOf@Ap@Np@P^n@e@bBeAjEaDvAaAnHaFlKkHjIwFjJkGdH}EzArDnCpGBFKVkAzCm@lAm@bB|@n@JFDAv@qBDAn@ZNHo@bB', '2020-07-08 09:53:35', '2018-02-03 13:13:03', '2020-07-08 09:53:35'),
(18, 'TRNX410902', 118, 0, 0, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 3.31000000, 'Chaklala Scheme 3, Rawalpindi, Punjab, Pakistan', 33.58247060, 73.09217550, 'Airport Road, Rawalpindi, Punjab, Pakistan', 33.58769930, 73.07479970, '2018-02-03 13:16:22', '2018-02-03 12:48:00', NULL, NULL, 0, 0, 0, 0, 'wa~kEwwb}LfBb@}@`Ga@lDrA^}AjBaBrB}DrEwG~HiDdEwAhBgGpHwGbI]^EBI?c@EmAG_@Aa@\\u@n@c@v@ARANCDDRdApBlBlDnB`Ff@jAh@bAh@t@hC~CtBdCrBjC`AxA`@x@Xz@Pz@RrAj@bG^fEBTQHM}A]aDMi@QcC_@mCSw@Wy@[o@i@}@iCgD', '2020-07-08 09:53:44', '2018-02-03 13:16:22', '2020-07-08 09:53:44'),
(19, 'TRNX171552', 117, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00690240, -87.89157530, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-03 13:16:58', NULL, '2018-02-03 13:18:04', '2018-02-03 13:18:29', 1, 1, 0, 0, 'cnk_G|jmwO|E?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', '2020-07-08 09:53:54', '2018-02-03 13:16:58', '2020-07-08 09:53:54'),
(20, 'TRNX731924', 117, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 6.00000000, '2812 S Scott St, Des Plaines, IL 60018, USA', 42.00249320, -87.87501350, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-03 16:20:17', NULL, '2018-02-03 16:21:24', '2018-02-03 16:22:43', 1, 1, 0, 0, 'ssj_G|ajwOZv[HfKD~GB~G?V`D?tB?vC?xBHxC?lD?bD@tBEdIEjB?r@EzASzA]`Bq@`BcAh@e@`AeA^e@t@mAvCkGxAkCn@}@`@a@x@u@h@a@r@a@^Ox@Wf@Mr@KtCYz@IzCOxAEN?BD@@@@HBhATdAb@|DzBjHrEfBdAd@LX@z@G`BM\\?\\D^LLJbAvAbAtDl@bBhEfNlDfL`@jBPpBBrBIpBYlBg@fBs@zA_@f@oHvIw@z@gCxCwF~Ga@d@Yl@Ux@Iz@?z@At\\Bz@Fv@|BhMRn@^f@f@Xf@HnBVVKd@Aj@DtDh@pAVf@PZDHBVPNDTCTMVYP[b@eAr@sA', '2020-07-08 09:54:04', '2018-02-03 16:20:17', '2020-07-08 09:54:04'),
(21, 'TRNX618945', 115, 0, 0, 1, 'SEARCHING', 'NONE', NULL, 'CASH', 0, 4418.41600000, '1472 Willow Avenue, Hoboken, NJ, United States', 40.75504310, -74.02963570, '1472 North Willow Avenue, Rialto, CA, United States', 34.12636800, -117.37512710, '2018-02-04 08:45:48', '2018-02-03 21:00:00', NULL, NULL, 0, 0, 0, 0, 'k~vwFb|ybMo{AbqEdsC|rLkwJn|\\_aMhpb@auDp~XnKz~VoyBtim@iXlnTscGftJ_t@bzLmnNt~Vg{C|oy@|zCh||@l`Hh}_Ads@d~w@}y@lxi@unKvz[ffD`y_@igAfrs@ttE`{a@vwNts]iiL`va@tmHxfg@chDty^msJxza@swLlgX{eCx|j@cqCh{r@s|@~qo@ovBf}~@_VhzaAp~BzrfB|eJb{q@cl@tmRwpPtdRmtEtbbBseL|f}@ayIvds@loGfk}@kuCbxfBopSrukAm`X`rhA\\hp|BuzF~vaBaqUtrk@sCz~wB|xD~doBqbFlyg@rhM~nh@ljRlru@g{@l`w@npAt~gA~uGtugAxnSvygAzhIfki@pCp}g@xY`s{@slDtzr@xs@zd^xUvkk@quGljqAw{Dt{l@zjAdp]{cL`{VadNnHwcCh|SgbDj}u@qx@r}UafGbl}AsGpyhErnE~q|C|~@lpn@j}IjsDr{DrpO~iHtku@dyCjpi@wZhucBeHbuvB`xCrgSdfRjrOrzXpn[beBb{YzlApuXtqOhfQtkR~iTzvRdy\\|gHnbn@hxJd_`@zDrenEc^|lrA`zJpam@xsLbqw@dzCx|q@qpCxfhAeoJf_u@ysTt_o@yze@ltgBypM|s}BvyBnt_AzvPtnvBpnRzhl@tsThvuAnh_@|s|@xlU`yNpxa@duf@rmPjwq@xqEzxkA|eUjzpAhpGngZpcQnvQhtS`d]hvLfuUrrCz`RhuOpbRc|B~ee@glCxhTy`Cd}KlwDrnUbjFv~NjfA`gUltNpue@dlOzyJfbAlyIwgJjcFuvN~zMtmCfv`@m|Lpib@zaGllb@v_Bndn@lfJj~Tl{@dhk@`iD|ch@lvGf~u@|vQjvc@jk_@~c^j{Pn{Gr{FhfXqq@zae@{hVlts@pjHhwg@zpo@vpx@sy@|vm@lrCxy{@wyKz~m@pzHdcr@jtLncn@~_Clq_AjxN`bsAa}QvlOkkFhyTaxCxxg@|bYhjg@``VfqO|yOffTpuEn~PidEjtVc~@xhOfnUx|Grx_@fnFjs_@ynFhhl@hc^dmT`m`@d_`@dz]lrMx~OncTtmFls[vsLxi_@hfh@pp]x{Y~jDh}[hh[bqw@b`Ebr`@t~Rpdq@r}Wlzc@`xd@dbf@toO~c]|xQt{Q|hYrbDj_^`{HrbZ`gW`rs@ngQ~Ol|JdpPtueAxol@xz~@jcd@f~xA`zO~ipAbx}@nni@bsf@jm]jvCthEjnE{{D|uQs_PtkJqkC~t@dmE', '2018-02-04 08:48:27', '2018-02-04 08:45:48', '2018-02-04 08:48:27'),
(22, 'TRNX528405', 115, 0, 116, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 12.39100000, '1472 Willow Avenue, Des Plaines, IL, United States', 42.04774900, -87.88731400, 'ORD airport, Chicago, IL, United States', 41.97416250, -87.90732140, '2018-02-04 08:46:53', '2018-02-03 21:20:00', NULL, NULL, 0, 0, 0, 0, 'kks_GrplwOuDvIuB?OG[EMIMOzCaHtB_FnAqCnAyBh@mAfBoGzCeLzDkOn@_C\\cA\\s@bA}Ah@m@hAy@t@a@HCFOlBw@f@Wv@q@|@oAXm@v@}BZ_AJGRm@xAgETo@f@iA|@oAv@u@bA}@|A_A|@w@POd@s@b@}@Vo@L[NIDGL]Zk@n@}@h@i@jA}@v@c@`Ac@r@WdHiBfG_BtBm@LIFIDI`Ck@jAYdB[lBWrAKrCIlG@dRH`TFxABlBN|B\\bCn@nDvA`PpGjBj@~Bd@pBTnAF~@@|C?`F@jG?vL@bJAtAEfCWvBc@tBm@jGsBlOcFnAa@pA[lASfBS|BIbA?`BFvBRrB^vG`BrPbEtA\\z@TJTNLbA`@nAp@v@r@xA|A\\Xd@Tj@Nn@HTDLJpCPlAN`ARdAd@lA`Al@v@vArCzC|Jp@lBV`@vAnBz@rCpAhElEpN|@pCvD|LbAtDrEtNfAjDnC~I^jBNpB@pBKrB[lBi@dBu@xA]f@QRoItJiKbM]d@Yp@Qx@Gx@?nBA`[D~@Hv@|BfMVl@`@b@PJTFpBV\\FXKj@?l@DhDf@`@Jn@Jf@P`@FFDTLRFTITOT[P[^}@r@sA', '2020-07-08 09:54:13', '2018-02-04 08:46:53', '2020-07-08 09:54:13'),
(23, 'TRNX280329', 117, 116, 116, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00686290, -87.89158850, 'O\'Hare Transfer Metra Platform 1, Chicago, IL 60666, USA,Chicago,Illinois', 41.99618302, -87.88134925, '2018-02-04 11:08:36', NULL, '2018-02-04 11:09:40', '2018-02-04 11:09:47', 1, 1, 0, 0, '{mk_G|jmwOtE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?Ne@PkAp@{Ff@EFc@f@eDNs@FILExAa@h@CLH@J', '2020-07-08 09:54:22', '2018-02-04 11:08:36', '2020-07-08 09:54:22'),
(24, 'TRNX863565', 117, 116, 116, 1, 'CANCELLED', 'USER', 'I do not need the service any more. thanks ', 'CASH', 0, 5.00000000, '5801 N River Rd, Rosemont, IL 60018, USA', 41.98413380, -87.86029090, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-04 11:32:32', NULL, NULL, NULL, 0, 0, 0, 0, 'y_g_GxegwO?a@CG_Ak@UE_@FMLC\\J|@c@@FuAAIEOy@{@OSSb@bAv@DPOjCEpAUtDGx@?h@Jx@Xj@t@|@DJr@v@X^Xj@Pt@Hd@JlAOnFQjGOzF?z@@~A@z@FhBB^XbC`@`CR|@h@lB~CfKzGvTtHfVbAtDl@bBhEfNlDfL`@jBPpBBrBIpBYlBg@fBs@zA_@f@oHvIw@z@gCxCwF~Ga@d@Yl@Ux@Iz@?z@At\\Bz@Fv@|BhMRn@^f@f@Xf@HnBVVKd@Aj@DtDh@pAVf@PZDHBVPNDTCTMVYP[b@eAr@sA', '2020-07-08 09:54:32', '2018-02-04 11:32:32', '2020-07-08 09:54:32'),
(25, 'TRNX174554', 117, 116, 116, 1, 'CANCELLED', 'USER', 'test', 'CASH', 0, 8.00000000, '7059 Barry St, Rosemont, IL 60018, USA', 42.00687080, -87.89152100, '10000 W O\'Hare Ave, Chicago, IL 60666, USA', 41.97416250, -87.90732140, '2018-02-05 11:50:09', '2018-02-09 02:33:00', NULL, NULL, 0, 0, 0, 0, '}mk_G|jmwOvE?@r@cEzCa@`@Ud@]fAO|@Cd@s@?{@Hc@Jo@XoAHYQw@Sm@AGyFKwIKyJMeMAiBAw@FUZy@jHkBxCo@nCc@jCWlAKnDOnKEvH?dDB`CDjF?`G?vGIdE?|@Cx@IrBa@pAe@rAs@dAw@fAgAlAaB`C{ElB{Dp@cAd@k@t@s@h@e@dAo@RGv@[nAYdCWlAMnBMpDKJJ|@PZHl@V~BpAtG~DlDzBr@X`@DXAbCSp@@h@L\\Xx@lAbAtDrEtNlEpN`@fBTrBBpBGrBWlBe@fBs@~A}@nAoItJkHvImB|B[j@Ut@Mx@A~@At\\@x@Fz@zBhMPp@\\h@b@Zj@LjBVL@NI`@Cf@BXBhDf@`@Jn@Jf@P`@FTNPHRAVKTWR[FM^}@r@sA', '2020-07-08 09:54:41', '2018-02-05 11:50:09', '2020-07-08 09:54:41'),
(26, 'TRNX379931', 117, 116, 116, 1, 'CANCELLED', 'USER', 'This was just a text ', 'CASH', 0, 50.00000000, '2011 Scott St, Des Plaines, IL 60018, USA', 42.01347270, -87.87463920, '5700 S Cicero Ave, Chicago, IL 60638, USA', 41.78677590, -87.75218840, '2018-02-05 15:04:11', NULL, NULL, NULL, 0, 0, 0, 0, 'ewl_Gr_jwOfT@\\FIsFEwEFW?eBCiFCgElAu@tBg@`C[jJU|GSrAK|Ba@HEBCDMDOv@QhEuAbEuAbPkFtBi@vAUlBOlCGvCJ~APv@LvG|AhAXtPdEdM~CvL~CvJzBhCf@zBT|CJlEKd[iCrFYlE@`Ej@xBh@xAj@zBdAdOrIrPjJtC~A~ZdQtOvI`C|AzDzBh@ZbFlCxExB~TlGzIlCbJ`DnD`BnBbAhBfAn@`@dAt@jBhBhBtBdAvAdC`ErAzC|BdHp@nCb@`Ct@jGdAxJjFbh@vBrUvElg@|@hFp@nCr@~BpAhDnAbCnB|C`BrBzAxApCtB`DdBxBz@pEbAd@FxDRnUBx^FzvANrD@pN@rV?rEIpBKrEg@vBa@vViFlB[lDUdCG|EHtALnCZzJfBxJbBrGh@nEJdEIhSiA|AKfCO|CWnG}@fP_CvPiCdAO`AOzAKrFJnD^jLfC|JxB`SbEbAPdCNjHKzIg@|JQtM?xFGrHK~@A~CDbJ\\jJd@bBLpFX`FB~BKlJcAbQyBnBQbCKz\\k@fJStBQ`Ca@rDiA`EqB`DeBrMwG|B}@bFsAxASlBOdBS`LQn@BzHOdEKrEe@lFqA|UcHfFsAbGaBp^yJfJkBrD]|FUda@YrPOvCGrQQtNCnVUtKQR?fAI~Eo@fCe@rBa@TLv@Ot@M|AMjACzAHlB^xB|@dC`BbDjBzANzAKv@YpAy@d@e@fCmDlDyEtIkL~@qAvAcBl@k@nBqAj@Wd@Qp@Q`@Ez@JZNZX^p@Lb@Fz@IbA]v@g@d@_@Jg@?WGc@Y[e@Oa@M}@MaBI}CIc@GkIKqMUcVEkI@uQN_MJuGBuKa@eo@GmFu@_QuBgZgBcVk@{IsAiQWmDyBa[i@qFq@cD_A{CsAwCeBkCgCiC{UqPcM{IwFsEqEsEuNqOyP{QiCaDaEgG_FyIkE_HcHaJoAmAiAqAq[qZwLeLmIeIaBmBqAoB}@eBgAgC{@sCq@aDe@uDO}BK{CD{FVyKBqFWcEk@sDa@aBy@{BaB}D}BgGsAmE}AoGcAiFeAeHwByRgAkHoCgNkK_f@o`@giB]wAGkAAQ{A{HyAoHeBoIDo@BGHK`@Gf@?hEI~HIjGGdBAn@OdFG|BC`EE|BCjMQ~RUhD@bCGdCA~DI`BABk@IyLOq]GmNx@APDRPVf@JNNDhBACyHEqIIcAUs@sCqD_@y@G_AKs[BgCDUVW`A[|AIr@BxAF`BALFtWf^JD', '2020-07-08 09:54:51', '2018-02-05 15:04:11', '2020-07-08 09:54:51'),
(27, 'TRNX575583', 120, 0, 117, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 4.00000000, 'C-176,, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.71016340, 76.69442470, 'Sahibzada Ajit Singh Nagar, Punjab, India', 30.70464860, 76.71787260, '2018-10-11 02:43:55', NULL, NULL, NULL, 0, 0, 0, 0, 'ccmzDumbsM{RtOmB`BOU{BhBQNQ[u@yAaBcDqHyMmD_HqJsQuIyOyAcCI]Sg@n@i@|PgNlPqMr@i@bNsKlJwHdGwEfDkCdDkCbFaEfDkC~LwJJKFH', '2020-07-08 09:55:00', '2018-10-11 02:43:55', '2020-07-08 09:55:00'),
(28, 'TRNX246219', 120, 0, 117, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 19.00000000, 'C-176,, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.71057340, 76.69442660, 'Chandigarh Airport Area, Chandigarh, 160003, India', 30.67525600, 76.79795200, '2018-10-11 02:45:54', NULL, NULL, NULL, 0, 0, 0, 0, 'wdmzDilbsMkG|E_GxEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@i@_Aa@k@cAkBqFgKaFsJO_@k@iAv@k@xIiHfG_FdFaES_@yDmHsFaKcB_DwD_HdDqCj@cA?E?I@SAc@ESeAoB_EoHiAyB{DsH{AoCeIsOiHoM}@sAy@eBe@cAW@WGSWEOAW@KBIPYZKN?NF|@[t@c@jHaFzBwAj@_@PsAF{@@k@AEm@iA}CyFsAqCk@{Ag@eBs@uC]kBAAEAGGEM?ODMBAMoBqA{VIaBSsAMo@y@gCsCuFQDM?WIOSEY?SL_@LKTEVBT@PCZOfFwD`KmH~JgHf@_@JSFU?KFSJMJIRCRBN?TIf@[`CiB|FqE~E{DxGcF`EeDd@[HEV[LU?I?WHUPQTET@HDl@Ul@a@hKsI`Au@|LaKxAyA?EAMD[LSPKRCTDXC~@s@jC}BzFuEjEsDfB_B|FcFLQN_@?E?MFYPSVIXDJFrBaBpGwFtEiEtEcEtEgERYAEAOD_@JSJGRGTBZ@FCjAeAdJwIbLoKhBeBHs@LaBDq@K[Wk@mF_KeJcQe@q@aAiBkGoL_DeGyAkCyAcC[c@c@[QEKAWGUOQYGg@Dk@T[VO\\G^DDBXI^UpDaDjEcErGgG|PyOlDuD~@gAhAuA^YZ]\\i@NY@MAI?UH]VS\\C@?n@a@bAcAxGeIhEeFzAeA~HuBlJkCjLaDlNuDhH{BpJqD~N}Fb@hBzHj`@tB`KTtBFfABz@CjAIx@e@hCSx@', '2020-07-08 09:55:09', '2018-10-11 02:45:54', '2020-07-08 09:55:09'),
(29, 'TRNX945912', 120, 0, 118, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 5.00000000, '2nd Floor, C-175, City Business Center, Industrial Area, Phase 8B, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.71054180, 76.69440840, 'SCO-41, Near Rose Garden, Phase-3B2, Sector 60, Phase 3B-2, Sector 60, Sahibzada Ajit Singh Nagar, Punjab 160059, India', 30.71161160, 76.71972540, '2018-10-11 02:56:24', NULL, NULL, NULL, 0, 0, 0, 0, 'udmzDklbsMmG~E_GxEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@GKFGzLyJrJyHzJyHrAkApN_LtJwHbBoA\\cAFm@?a@_@u@iFeJsEiIaD{FVQjA{@fB{Ax@m@jAeA|@o@d@e@j@y@n@oAPJb@|@mBrB', '2020-07-08 09:55:18', '2018-10-11 02:56:24', '2020-07-08 09:55:18'),
(30, 'TRNX345432', 120, 0, 118, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 5.00000000, '2nd Floor, C-175, City Business Center, Industrial Area, Phase 8B, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.70996520, 76.69429440, 'Sahibzada Ajit Singh Nagar, Punjab, India', 30.70464860, 76.71787260, '2018-10-11 02:57:26', NULL, NULL, NULL, 0, 0, 0, 0, 'c_mzDsgbsMiBnAuBlBqB_EEIgBrA_GxEiDrCOU{AlAq@j@g@aAaCwEqHyMmD_HwSa`@yByDWi@Me@GKFGzLyJ~CgCjPqMvBeBpN_L~CcCxHcGfFcEfJoHvAmAjA{@fLcJ|AoAFH', '2020-07-08 09:55:29', '2018-10-11 02:57:26', '2020-07-08 09:55:29'),
(31, 'TRNX798176', 122, 0, 122, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 10.00000000, 'Croix Blanche, 92290 Châtenay-Malabry, France', 48.77044040, 2.28585120, '94390 Orly, France', 48.72624330, 2.36524720, '2018-10-26 02:25:00', '2018-10-26 22:54:00', NULL, NULL, 0, 0, 0, 0, 'uqthHkm}LCo@BK?SAIAIHQV[l@c@nAaAxAmAzAeA|@u@hDkCpEsDVYVQXK@@@BB@DBLEHS?Kf@m@`BqArCqBnAa@z@S|@CdAHrIpAn@BdAL@@?B@@BDDBL?FADIBOA[ES@iAb@mFV{AJg@t@kCJo@?m@CWc@_C[uBq@wG]sBgAmHuAeKW{BGy@YuBGQ_@iBOy@_AcF[iCcAcMAg@@i@Hg@f@sBX}CvAeIXeBFuAF{@Ca@pA{FlBiK\\oBh@mChIa^xBqJhIk^lA{GdA_Gn@{D^iE`@eFLaC@gABwNLgD~AsS|Cma@fBoU^oGXcHNs@^mLHyLAqMMoPEiGFa@?q@Bm@Fc@Le@Pa@rCuFd@iATYPY^AjBG|AEjA@n@DzAR|AZtCv@|Al@^Pr@b@t@h@|@x@pFrF~D~DnAfAvAbAvAt@dC`AnAZbAR~BVn@BbA@zBGvAMbAQ^K^?hHmBh@GnEwA`HwB|C{@pBk@j@OTFPDJDTJXRVVFHt@nCJXb@hB@hAA@?@AB?H?FDLJBB?BAn@`GC@C@EDELAR@NHLJBHAHIDQpDkAh@Mv@STEB@BBJ@NENW@ERQDChCq@bAg@j@m@b@}@`A}CLY@DDJDDH@FCFGBK?M', '2020-07-08 09:55:40', '2018-10-26 02:25:00', '2020-07-08 09:55:40'),
(32, 'TRNX749590', 122, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 10.00000000, 'Croix Blanche, 92290 Châtenay-Malabry, France', 48.77045880, 2.28578820, '94390 Orly, France', 48.72624330, 2.36524720, '2018-10-26 02:25:34', NULL, NULL, NULL, 0, 0, 0, 0, 'qqthHwl}LGcABUC]Tc@TQlEkDtB{A|@s@hFeExCiC^OHA@B@@DBNCHS?M?C~AyAxBaBbAq@nAa@z@S|@CdAHrIpApAJb@D@B@BBBDDL?FADIBMA[EM@y@?WNyBPaBT{Ab@oBj@wBBc@Ce@w@mEu@iHKm@M}@e@qCwCmTEo@]wCISg@oCo@}CSoAY{BeAaMCmAH{@d@sBVeC^gCrAkHH}AHgA?EC_@j@iCh@_CtAsHf@sCh@qCnIy^zBoJvHs\\pA}G~B}M^sD`@kFLsBDsAB}NFmCz@{Kb@iGj@kHpB{WdCy\\PkDPuEJ_@XyHHgCDuGD}IGeNOkRFa@?iADg@VaApCqFn@_Bl@y@zDMxAAt@B`AJbBXfCl@|Af@hAb@n@^lBvAdLhLx@v@jBxAtAz@nB|@dBh@fAXdBVvAJhABvACfBI^EbAQRGRE^?hHmBh@GhBk@`EqAjFcBtGeBn@PTHVPVVLN`AhDb@hB@fA?@ABAB?F?FDLHDD?@A@Al@dGE@CBGLAP@PFLJDJAHGDOd@UfCy@VGdAU^IDBJBLENS@EPSFEfCo@bAg@h@i@d@{@x@iCXw@@FBHFFF@FCFGDI?O', '2020-07-08 09:55:48', '2018-10-26 02:25:34', '2020-07-08 09:55:48'),
(33, 'TRNX172664', 122, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 11.00000000, 'Croix Blanche, 92290 Châtenay-Malabry, France', 48.77045740, 2.28572170, 'Square Auguste Chabrières, 75015 Paris, France', 48.83471620, 2.28902730, '2018-10-26 02:51:42', NULL, NULL, NULL, 0, 0, 0, 0, 'qqthHwl}LGcABUC]OKI?GBCFCDw@@wERq@AaASi@]KM_@w@g@yAMg@Yi@[]kA}BY_@g@MgA?gD?c@M[MYSm@m@a@c@s@aA_AwAW[[i@c@i@i@c@gB}AMS?A@C?E?IGQECS_DI}B?uAD}AXwBDADM?QGMICC@UYsBgG[g@i@_@}DiBk@e@Wg@[aDmAcOAm@QaBYeA[o@sAuDeAiD?A?A?C?CAEIEo@yByAaG_AoDAYIGwA{FcAkEKm@g@gAW_@k@u@kBgCKQ?CCIEEECC?GEo@{@w@eAaAw@y@m@qBwAoFiDOUWSUM@I?IEQQQK?KLCFm@OmDwAeC}@gEcB_A_@_C}@ACACEEEAE@A@a@SsAg@kHcCoAk@WJMAoE_@sCWEgBMoBO_BOiASaAk@sCMy@MqB@oHgF}AiFyAaCw@i@UeAWkCq@iCu@wDgA{@YqEqAcCu@}A_@qCa@aG}@oBa@QE{@i@e@YG?MBIFCHCN?Fs@PkE`AoE|@mAXW@aLd@cJ\\WAsABq@FwCEuCEsBMwA?Y~@Kv@U~AANB`@?VKjAs@vFO`BC`A@PGfASpBs@dF_BnLs@lEk@vC}A`LeKdv@_@~BwDnYSrASrAUn@Ul@Qd@Sr@QlAuBlOY`CIjAW`CKp@IZYf@GFKVERAX{Af@kGCc@?QIA?mDBE?YMMIIX[pAuAbEmDpKo@rBiEsHi@_AOZSPeBPwEd@HLPVzBrC', '2020-07-08 09:55:57', '2018-10-26 02:51:42', '2020-07-08 09:55:57'),
(34, 'TRNX317079', 122, 0, 122, 1, 'CANCELLED', 'USER', 'eee', 'CASH', 0, 5.00000000, '1 Rue Jean Monnet, 92290 Châtenay-Malabry, France', 48.77042790, 2.28562600, '60 Avenue de Paris, 92320 Châtillon, France', 48.80596360, 2.29218790, '2018-10-26 02:54:14', NULL, NULL, NULL, 0, 0, 0, 0, 'mqthHyk}LGq@Co@BK?SAIEMGEIAG@KNkHTi@Em@Oi@]U[o@{AYkA[m@q@}@aAoBMMQGYE{@A_CBaAEm@WeA_AMQ{@aAk@}@m@w@S]]k@}@y@_BsA]a@@A@E?C?KEQMEMHAB?@sA{@}H_Fo@y@GCe@CmA_@k@AkKBu@Im@@oCDm@?gB?qBAiAB_B?sABSBm@A{@?[Mc@O[GI@OLGLq@rAy@nAy@xAMPODWHQ@W@?rEMnBO`BE~@OhBM?EEiAo@_Ag@MSa@WSKg@S]KAAAAE?YSq@[y@c@e@_@OOIGSKSEe@Ie@WWEYQeCoAeD}AeCyAeDeB_Au@}@_AwCaE@CAIIKG@EDAH?@c@DyLlC]PmCrE}BbEa@t@Ur@cAnCiBiDoAcCiEvHgBcDuBkE', '2020-07-08 09:56:06', '2018-10-26 02:54:14', '2020-07-08 09:56:06'),
(35, 'TRNX300784', 122, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 32.00000000, '2 Corby St, Huddersfield HD2 2SE, UK', 53.66153210, -1.78625310, 'Leeds, UK', 53.80075540, -1.54907740, '2018-10-29 08:47:50', NULL, NULL, NULL, 0, 0, 0, 0, 'qwofIb{{IXGBN?^\\lE}BtAw@t@IV_B~Bs@~@i@`BY~Ak@nFkBxLe@hC_@lE[~Fe@xE}AnKs@vDWn@Qx@]lCmBfISd@_EpEe@t@a@dBYtAWj@]ZmADeCM}@Ou@IYHMr@Al@VdAl@pBx@pBn@dAv@pBb@|AD`C?`CcAtLs@fHeAxFcB|KqBxOwAzJi@l@^~Bp@jCv@tBnAtCl@l@d@TlAMh@?\\NZ\\Rj@Ht@PhHEvCQvBcAlF{@vCa@|@w@lAaCpBkBxAqCpCYp@QnAE|@Sz@c@n@WN]?m@W]o@Q}@AcAH{@Xu@`@y@ZsADiBGiC[qFq@_I@{AuBcS{BsSmAiIuAcGwBaHmCiGqCmGwCmIgAmEu@}DuAqKmE_h@cNi_BaN{~AiBaTk@_Gw@yFuAyGgA}DwByFeBkDgC{DwCgDyCiCsF{EiFoEaGeFqBiBkB}ByAwBcCuEqDiJkDoJoCgH{ByEaCsDqBcCaB{A_BkAeAo@gCiAiBi@kB[eBQyAC_CF{Ep@_QbDsZvFaBPyCLkCA_DUyDo@qCw@sD_BmBcA{DuCaC{BqB_C_DmEkGsK_FuHyCeE_FaGaCiC{GsGqB_BwLmIeIiGoC{B{JwIqKcKsGaHyGqHuKaNqAmBwDeHmB_FkByGaAuEu@kEiAkKe@kJKaF?uFR}IXgEl@yGf@uDbAyFrBwIlHaXtAsGhA{Gp@oFdAsLf@uLJyJCaIMeFYcHyA}QgBaSoE_g@yIyaAkEeg@e@cFk@gCaCkQeDcUiBkNWiEGqFJkFLaCv@uGn@eDbAqDJk@zAmDh@_B`AoDl@}D`@gG@yFIiC[oD{@uF}AsGuAqEeB}DeBcDqBuCsEcFiXgXyCmD}B}CuBeD}BeEkB}DcCaG{BmGcDmKgEsMwCiJeBaEwBmE}EmI}A}ByBmC{MqNyHgIaMqM_D{D_BkC}BuEaHePsEqKkCaG_FuJmCiFcCoFiAkDkA}Ey@oEk@eEWw@Ea@m@sE}@iJOq@Wa@{@s@QA}BRkDN{COqDYu@UaAk@_A_A}AoBm@m@{@g@k@Q{@EaCH_DZoC^qCh@wANmBC_CYeAOSHy@t@]JcAPYTGTSh@a@r@k@l@iAr@}@Vs@G[IUMa@o@WcB@cAJq@d@qBVs@Ho@Cy@EUWq@_@_@c@a@W[eBgDkEmJaEeI}@cBw@mB_AgDc@kCWiAc@yCY_Be@uAaA{Au@}@eAwAYeAIy@H}AVcCb@eDDqEBcD}Bu@uAKGmF?G', '2020-07-08 09:56:14', '2018-10-29 08:47:50', '2020-07-08 09:56:14'),
(36, 'TRNX803815', 122, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 32.00000000, '2 Corby St, Huddersfield HD2 2SE, UK', 53.66153210, -1.78625310, 'Leeds, UK', 53.80075540, -1.54907740, '2018-10-29 08:48:50', NULL, NULL, NULL, 0, 0, 0, 0, 'qwofIb{{IXGBN?^\\lE}BtAw@t@IV_B~Bs@~@i@`BY~Ak@nFkBxLe@hC_@lE[~Fe@xE}AnKs@vDWn@Qx@]lCmBfISd@_EpEe@t@a@dBYtAWj@]ZmADeCM}@Ou@IYHMr@Al@VdAl@pBx@pBn@dAv@pBb@|AD`C?`CcAtLs@fHeAxFcB|KqBxOwAzJi@l@^~Bp@jCv@tBnAtCl@l@d@TlAMh@?\\NZ\\Rj@Ht@PhHEvCQvBcAlF{@vCa@|@w@lAaCpBkBxAqCpCYp@QnAE|@Sz@c@n@WN]?m@W]o@Q}@AcAH{@Xu@`@y@ZsADiBGiC[qFq@_I@{AuBcS{BsSmAiIuAcGwBaHmCiGqCmGwCmIgAmEu@}DuAqKmE_h@cNi_BaN{~AiBaTk@_Gw@yFuAyGgA}DwByFeBkDgC{DwCgDyCiCsF{EiFoEaGeFqBiBkB}ByAwBcCuEqDiJkDoJoCgH{ByEaCsDqBcCaB{A_BkAeAo@gCiAiBi@kB[eBQyAC_CF{Ep@_QbDsZvFaBPyCLkCA_DUyDo@qCw@sD_BmBcA{DuCaC{BqB_C_DmEkGsK_FuHyCeE_FaGaCiC{GsGqB_BwLmIeIiGoC{B{JwIqKcKsGaHyGqHuKaNqAmBwDeHmB_FkByGaAuEu@kEiAkKe@kJKaF?uFR}IXgEl@yGf@uDbAyFrBwIlHaXtAsGhA{Gp@oFdAsLf@uLJyJCaIMeFYcHyA}QgBaSoE_g@yIyaAkEeg@e@cFk@gCaCkQeDcUiBkNWiEGqFJkFLaCv@uGn@eDbAqDJk@zAmDh@_B`AoDl@}D`@gG@yFIiC[oD{@uF}AsGuAqEeB}DeBcDqBuCsEcFiXgXyCmD}B}CuBeD}BeEkB}DcCaG{BmGcDmKgEsMwCiJeBaEwBmE}EmI}A}ByBmC{MqNyHgIaMqM_D{D_BkC}BuEaHePsEqKkCaG_FuJmCiFcCoFiAkDkA}Ey@oEk@eEWw@Ea@m@sE}@iJOq@Wa@{@s@QA}BRkDN{COqDYu@UaAk@_A_A}AoBm@m@{@g@k@Q{@EaCH_DZoC^qCh@wANmBC_CYeAOSHy@t@]JcAPYTGTSh@a@r@k@l@iAr@}@Vs@G[IUMa@o@WcB@cAJq@d@qBVs@Ho@Cy@EUWq@_@_@c@a@W[eBgDkEmJaEeI}@cBw@mB_AgDc@kCWiAc@yCY_Be@uAaA{Au@}@eAwAYeAIy@H}AVcCb@eDDqEBcD}Bu@uAKGmF?G', '2020-07-08 09:56:23', '2018-10-29 08:48:50', '2020-07-08 09:56:23'),
(37, 'TRNX898294', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, '2 Corby St, Huddersfield HD2 2SE, UK', 53.66153210, -1.78625310, '21 Beacon St, Huddersfield HD2 2RS, UK,Huddersfield,England', 53.65835006, -1.78659059, '2018-10-29 08:52:30', NULL, '2018-10-29 08:53:33', '2018-10-29 08:55:28', 1, 1, 0, 0, 'qwofIb{{ILIJ@D@AL?^\\lEdDqB~CyBhCcBE^G~AEz@v@^NBHCXSXg@', '2020-07-08 09:56:32', '2018-10-29 08:52:30', '2020-07-08 09:56:32'),
(38, 'TRNX102223', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 3.00000000, '22 Reid Rd, South Dunedin, Dunedin 9012, New Zealand', -45.89477810, 170.49650970, 'Dunedin Town Hall, Dunedin, 9016, New Zealand,Dunedin,Otago', -45.87284408, 170.50284203, '2018-10-30 08:12:22', NULL, '2018-10-30 08:13:11', '2018-10-30 08:13:28', 1, 1, 0, 0, 'fybwGobso_@kBzAIFQk@a@oAe@}A_AuC_@qAm@l@eA`AqCzBcAn@K@[\\QNqAfAgBrAc@T_@F[Ca@MkA_@_AUmAEmEUm@EYIK?YGo@UiBw@cBy@}E{BgDaBgEmB_EkBsEqBmDgBoB_AgD}AeEiB[OEMkB{@mEuBcAe@M`AOpAGJ_@VkAl@cBx@KBUE}Ay@cBu@]]k@cBGS', '2020-07-08 09:56:41', '2018-10-30 08:12:22', '2020-07-08 09:56:41'),
(39, 'TRNX621471', 122, 122, 122, 1, 'CANCELLED', 'PROVIDER', NULL, 'CASH', 0, 4.00000000, '22 Reid Rd, South Dunedin, Dunedin 9012, New Zealand', -45.89479200, 170.49649770, '115 Preston Cres, Belleknowes, Dunedin 9011, New Zealand,Dunedin,Otago', -45.87441533, 170.48066318, '2018-10-30 08:19:42', '2018-10-31 18:49:00', NULL, NULL, 0, 0, 0, 0, 'hybwGobso_@mBzAt@dC|BnH|AdFbAhDb@rAe@^{BfB{BfByFlE{@p@Y^KXQ~@mAI[GUMc@c@]aAMw@EqBDeDFeDPuAN_AJmAAgAScBKo@AESR]\\[^{@x@c@ZoAt@gAj@_EtBoDlBaAf@iBz@kDrBwEbC_An@}@t@wAxAgAjAm@|@aBvCw@bBMZITIAY@c@AcAMIEW]Um@Wa@SKE?SDOHq@dAaAvAm@l@i@Rs@TYB_@CQEBl@y@n@QRE\\Bp@VlALn@Dp@CTGNEDQBOEYS{@{@OSIWKo@KgBGq@Sc@EEQGKAc@HQ^Wb@sA`BMLIVMp@QjCcAdKUhCk@zAGLIJ{ADe@@g@W}BeA_CgA', '2020-07-08 09:56:50', '2018-10-30 08:19:42', '2020-07-08 09:56:50'),
(40, 'TRNX549837', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, '22 Reid Rd, South Dunedin, Dunedin 9012, New Zealand', -45.89478160, 170.49650840, 'Timaru St, South Dunedin, Dunedin, New Zealand', -45.89410990, 170.50695950, '2018-10-30 12:19:06', NULL, '2018-10-30 12:19:33', '2018-10-30 12:19:43', 1, 1, 0, 0, 'fybwGobso_@vEuDbBsA|@w@xBoBFGe@wAkAmDw@iCgBaGeBcGaBqF[}@Us@_@w@s@}A}@qBUi@X[Z]', '2020-07-08 09:56:58', '2018-10-30 12:19:06', '2020-07-08 09:56:58'),
(41, 'TRNX131309', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 2.00000000, '22 Reid Rd, South Dunedin, Dunedin 9012, New Zealand', -45.89401340, 170.49723210, 'Timaru St, South Dunedin, Dunedin, New Zealand', -45.89410990, 170.50695950, '2018-10-31 16:59:27', NULL, '2018-10-31 17:00:07', '2018-10-31 17:00:57', 1, 1, 0, 0, 'jsbwGueso_@rBzGv@bCPl@Lb@^Y|@q@|@s@tBaBrFuEfByAu@eCcCoHeAaDy@oCyA}EsEoOSk@c@mAMUeA}BaA{Bt@y@', '2020-07-08 09:57:07', '2018-10-31 16:59:27', '2020-07-08 09:57:07'),
(42, 'TRNX565429', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Asseyri Hingun, Malé, Maldives', 4.17797020, 73.50311980, 'Maafannu, Maldives,null,null', 4.17490473, 73.50627501, '2018-11-01 06:27:37', NULL, '2018-11-01 06:29:29', '2018-11-01 06:29:55', 1, 1, 0, 0, '__oXmas_MPp@FHdABrDNrBNZwFToETaDPiDnAFSp@t@N@?', '2020-07-08 09:57:15', '2018-11-01 06:27:37', '2020-07-08 09:57:15'),
(43, 'TRNX916840', 122, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Boduthakurufaanu Magu, Malé, Maldives', 4.17789320, 73.50309450, 'Maafannu, Maldives', 4.17710500, 73.50644100, '2018-11-01 06:31:30', NULL, '2018-11-01 06:35:30', '2018-11-01 06:38:29', 1, 1, 0, 0, '}~nXias_MNl@FHdABv@@HwBXwFFw@OCa@Ek@u@W]MSd@aAv@gBHU', '2020-07-08 09:57:24', '2018-11-01 06:31:30', '2020-07-08 09:57:24'),
(44, 'TRNX509048', 123, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Boduthakurufaanu Magu, Malé, Maldives', 4.17788070, 73.50299600, 'Buruzu Magu, Malé, Maldives', 4.17220690, 73.50842710, '2018-11-02 10:55:32', NULL, '2018-11-02 10:56:25', '2018-11-02 10:56:44', 1, 1, 0, 0, 'w~nXw`s_MHZFHdABrDNfJj@pH^rABfBFLyBJyBXuFf@cJV{DNqDwBS', '2020-07-08 09:57:32', '2018-11-02 10:55:32', '2020-07-08 09:57:32'),
(45, 'TRNX396743', 123, 122, 122, 1, 'CANCELLED', 'USER', '', 'CASH', 0, 1.00000000, 'Boduthakurufaanu Magu, Malé, Maldives', 4.17789100, 73.50308810, 'Shaheedh Kudanevi Thuththu Maniku Hingun, Malé, Maldives', 4.17598050, 73.50836080, '2018-11-04 04:39:49', NULL, NULL, NULL, 0, 0, 0, 0, '}~nXgas_MNj@FHdABrDNrBNZwFToETaD^kIRiE_CA', '2020-07-08 09:57:41', '2018-11-04 04:39:49', '2020-07-08 09:57:41'),
(46, 'TRNX683540', 123, 0, 122, 1, 'CANCELLED', 'PROVIDER', '', 'CASH', 0, 1.00000000, 'Fareedhee Magu, Malé, Maldives', 4.17819690, 73.50980240, '371 Ameenee Magu, Malé 20371, Maldives', 4.17150740, 73.50896280, '2018-11-04 06:27:13', NULL, NULL, NULL, 0, 0, 0, 0, 'm_oXkkt_MH|AN~@BLvA_@Mq@UgBLBzCr@bH`BfNpDp@PF{@`A@vBRJyB?E', '2020-07-08 09:57:50', '2018-11-04 06:27:13', '2020-07-08 09:57:50'),
(47, 'TRNX786481', 123, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 1.00000000, 'Fareedhee Magu, Malé, Maldives', 4.17819600, 73.50976790, 'Ameer Ahmed Magu, Malé, Maldives', 4.17790080, 73.51451840, '2018-11-04 06:27:44', NULL, NULL, NULL, 0, 0, 0, 0, 'k_oXekt_MJpBmD]gC\\_CXCMAq@HoAJYzAkBJOHe@TyAbAqFzA^VyB\\cBb@eBf@aC', '2020-07-08 09:57:59', '2018-11-04 06:27:44', '2020-07-08 09:57:59'),
(48, 'TRNX360315', 123, 122, 122, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 1.00000000, 'Fareedhee Magu, Malé, Maldives', 4.17819370, 73.50979040, 'Ameer Ahmed Magu, Malé, Maldives', 4.17790080, 73.51451840, '2018-11-04 06:29:03', NULL, '2018-11-04 06:29:35', '2018-11-04 06:30:06', 1, 1, 0, 0, 'm_oXikt_MLtBmD]gC\\_CXCMAq@HoAJYzAkBJOHe@TyAbAqFzA^VyB\\cBb@eBf@aC', '2020-07-08 09:58:08', '2018-11-04 06:29:03', '2020-07-08 09:58:08'),
(49, 'TRNX359668', 123, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 1.00000000, 'Asseyri Hingun, Malé, Maldives', 4.17789880, 73.50310820, 'Le Cute Building, Majeedhee Magu Rd, Malé, Maldives,null,null', 4.17545580, 73.50947957, '2018-11-07 07:25:17', NULL, NULL, NULL, 0, 0, 0, 0, '__oXmas_MPp@FHdABrDNrBNZwFToETaD^kIRiELqCH_BNuCuDe@VpC^HhAR', '2020-07-08 09:58:18', '2018-11-07 07:25:17', '2020-07-08 09:58:18'),
(50, 'TRNX724386', 123, 0, 122, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 8.00000000, 'Boduthakurufaanu Magu, Malé, Maldives', 4.17790580, 73.50310760, 'Hulhumalé, Maldives', 4.21064880, 73.53879910, '2018-11-07 07:48:15', NULL, NULL, NULL, 0, 0, 0, 0, '__oXmas_M}Jk_@y@gDCY@e@Dy@F[DKr@{@r@_ATyAlBcKdAyFzAmIj@sCZkAh@_Ap@w@PMp@]l@S~@Qn@Cr@@nDRjXpA\\D|@TwAiKe@eCo@sCk@}BcAiDqBqFiCwFwCsFgG_LqCyE{AeCyDeEoCcC{BoBsB{AgDkCaDwBmEoCgFqCcEkByCiAsEcBsBYyAWmBi@eEoAqIkC{D{Ak@]}J_CyNcDmNuCoA[u@KoBIiAPeCbAgEjDkOzKiBrAuHyAwASyFiAwOwC', '2020-07-08 09:58:26', '2018-11-07 07:48:15', '2020-07-08 09:58:26'),
(51, 'TRNX565466', 122, 122, 122, 1, 'PICKEDUP', 'NONE', NULL, 'CASH', 0, 10.00000000, '1711 West Virginia Ave NE, Washington, DC 20002, USA', 38.90988020, -76.98622400, '1500 University Blvd E, Hyattsville, MD 20783, USA', 38.98576110, -76.98059760, '2018-11-07 16:11:27', NULL, '2018-11-07 16:12:17', NULL, 0, 0, 0, 0, 'irnlFtk{tM_D{DcF{FwIcKmOoQ}@aAs@mAGOMY@C@YC[G]KIOGa@AYJSRQRSTSJOH}CXiBT]Lk@Ze@^YZ[AyF@gHAiI?mQAY@UJw@Vy@DiDNcIZiKZmOh@uYdA}DlEgAdAyIbJ{@lAoGjJuArBaD`Fc@j@[f@iBtC}A`Ck@J{@NmARyB`@aANe@@aH?iC?uBDi@?[Ai@Ma@QYUiDwDw@s@a@S_B]{Jk@}ACy@@aAHu@@e@?OAqA[a@Sa@[eA}@mCoB}A_AwAm@_O_GaIeCmEmAgAYo@GgABoDn@uCh@eDp@WDWGSEQGQKYmAOcAQ}BU{Ai@mBc@}@s@gAyB{BgAgAs@k@aAi@cBc@SAoDCkAAg@C_ASy@_@}AgAaB}@wASs@CuABsNf@eBH_BXkDt@_AP{Gh@qCHa@AEXwAzCmAfCUd@YYYY_@_@EEIL[\\CF', '2020-07-08 09:58:35', '2018-11-07 16:11:27', '2020-07-08 09:58:35'),
(52, 'TRNX482684', 129, 0, 130, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 8.00000000, 'F 256, Phase 8B, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 140308, India', 30.71207390, 76.69342420, 'Sector 51, Chandigarh, India', 30.70587970, 76.74086660, '2018-11-12 20:38:22', NULL, NULL, NULL, 0, 0, 0, 0, 'ommzD_ebsMsFlEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@i@_Aa@k@cAkBqFgKaFsJO_@k@iAv@k@xIiHfG_FdFaES_@yDmHsFaKcB_DwD_HdDqCj@cA?E?I@SL]ZQVARDBBrB}@pIaHfBsAjH}F~BiBv@u@^i@Lm@@KHUVSZCF@B@j@Ip@UhF_ExIgHpKqIp@m@LUJInAcAxEwDlJoHrJyHbBoAbA{@Tc@H[BQ@I@CeB{DiCoGgCoHiA}Bk@{@y@_Au@}@}AwBRUbG{ElDoCtAnCrBxD', '2020-07-08 09:58:44', '2018-11-12 20:38:00', '2020-07-08 09:58:44'),
(53, 'TRNX769450', 129, 130, 130, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, 'F 256, Phase 8B, Industrial Area, Sector 74, Sahibzada Ajit Singh Nagar, Punjab 140308, India', 30.71207390, 76.69342420, 'Sector 51, Chandigarh, India', 30.70587970, 76.74086660, '2018-11-12 20:39:45', NULL, '2018-11-12 20:40:10', '2018-11-12 20:40:20', 1, 1, 0, 0, 'ommzD_ebsMsFlEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@i@_Aa@k@cAkBqFgKaFsJO_@k@iAv@k@xIiHfG_FdFaES_@yDmHsFaKcB_DwD_HdDqCj@cA?E?I@SL]ZQVARDBBrB}@pIaHfBsAjH}F~BiBv@u@^i@Lm@@KHUVSZCF@B@j@Ip@UhF_ExIgHpKqIp@m@LUJInAcAxEwDlJoHrJyHbBoAbA{@Tc@H[BQ@I@CeB{DiCoGgCoHiA}Bk@{@y@_Au@}@}AwBRUbG{ElDoCtAnCrBxD', '2020-07-08 09:58:53', '2018-11-12 20:39:20', '2020-07-08 09:58:53'),
(54, 'TRNX188977', 131, 131, 131, 1, 'CANCELLED', 'USER', 'chutiyapa', 'CASH', 0, 243.00000000, '19/5, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31332370, 78.02542490, 'Delhi, India', 28.68627380, 77.22178310, '2018-11-12 19:07:46', '2018-11-14 19:05:00', NULL, NULL, 0, 0, 0, 0, 'sp_xDakf{MxAsBnAsFm@E{GhJ{@rCfGfDdLrK`FbF`QvY|@hKfStUpOxLdSdWbPpNhPpRhU|Old@tVn[jQ|e@rLp`@tSxXlOxOrPtV~IxZzCn]jH~CJ`EfHdFzEdM`QxMdLpBtFGxOlCjAd@jRqGnJoAhEFsGsAZM~C{@~DgB|HhGv@vC~ALzDxGjH?lDrE`EdEbMfK|C`M~@jIvGvDdFHjIdHlGxIlFjBzClGiBdEBxExEtEnHtFlKxNlB|EtAtArHvIlOk@bPZzQlGrHG~PrI|@vXz@jDyCfInJlJ|MjLdF|HjG|Je@xGjDxMiJtGjIlFBtO~KjMhAlIi@lJtF~K|RnGzS~~@|jA~XtN`YzV`qDrfDl|BbxB`s@nv@xNnZjDdXgBrZzoAvsA`bBjcBzzAv{Axn@nh@|XhUpg@xm@j}@jmAjcA`|Azi@`l@nlAhmBb\\bn@paAreCpc@jiAzRaFtr@fIhwD|e@lmHncAtlEny@j`AbRvVdNxGFfNeLdHcEtHSdXFh]BjiBa[bcAeSriC{p@lnDov@fgAkUh`Ay[h`Bum@bV{LnN}UvKsd@hOcFvHWpf@nMxWpAh}B{@trBq@vyBiGnsEyWvcEsRhcBqHzn@kFfO{Il[m]vRiPjPy^nOy[?GmDkJdIfAbNcE`jAww@zi@qf@v[}`@z]ko@vqAwo@ji@}@dMfGf[he@t]~Vpc@bVrw@vAds@DrPzLl]zm@nC|PCda@yApu@e@z\\hCjRrLhIbKlBz^aAfvCsHldAgDfuAm^n~DseA|fBwc@|s@xDvjAxPnl@jKz_@hUzl@lYlTtGxRoAbw@g\\n`A{f@zb@mRnd@iGb|@|GbcCvT~_ArDzFChLaHdOMdH`CrH~EjVpC||@~EzwAtGd{BnJh`InSni@aAhp@|GvvBpGpy@xCnR|GjLpXe@zWsAfVdCnMl[po@dWlg@xT`\\rsBlcBttAl`AdyAjL|}@lH`_@nHnpB`NndA}C`iCyHhi@LrSjPxrA`zA|~@dy@vaBbiArZbVzg@be@fj@~UdYpP`d@bZ`n@th@xw@l|@ti@nn@zt@x}@lj@he@~fBx~Afq@xs@fMvI~hBfbBv|@`z@b_@bf@ra@pWvu@hh@liEz|D~vAz`Bbd@`l@dVt`@fFzA|GVA~McXf}AqNfx@wCnj@`Cl`B`F``DvE`{FQzk@jMdx@`RjrBXrNsFfH_CrO}K`mAHrO|DzO~Pdm@~DfC~Ey@rIyJpBxAc@dCgSdImi@dKcRzBwJvJwE|HbD~Ro]pD', '2020-07-08 09:59:01', '2018-11-12 19:07:46', '2020-07-08 09:59:01'),
(55, 'TRNX349936', 130, 132, 132, 2, 'SCHEDULED', 'NONE', NULL, 'CASH', 0, 55.00000000, 'Harnam Complex, Saharanpur Rd, Patel Nagar, Dehradun, Uttarakhand 248001, India', 30.31271710, 78.02402700, 'Haridwar, Uttarakhand, India', 29.94569060, 78.16424780, '2018-11-12 19:21:19', '2018-11-15 12:21:00', NULL, NULL, 0, 0, 0, 0, 'an_xDk`f{MnN`NbBdBLPMJeAsA}MaMwAoAqGsDkEyCaBuAoC{CcAqBkBwGGq@R_@~AqBz@}BTkBHcGVyFHi@XiCpAqMJ{BISC[FOTEt@mEp@cIToDcA{IPo@dIsQjFsJxGyAxGkAPGBWlFf@|KbAlFf@dDPRHpAAjD?tBq@hJeH|BcBfAgBzFcKxDmHhEsFxF{GlCiDpEsEnKuI`KmIhM}PvIaJdEwFdLyLpDeEv@w@zD}CbFmDnFeDlDsBtRkNdEsCpFgE~FaFtAu@dPgCfAe@dFkE~BsCj@oAnAqDrC_FjAeBlAoA|JoIjU}RrLgKfA{@zBu@rASjACrAPtBt@nEvAr@@r@g@vBkDrBwBhJmGjC_CdBuBd@y@dCwCnEqDhEqC~CuB~@YzByAnHsBtBo@pEoDfFeEpF}EhRuOrNmKbFmE|AcB~QcUbX}ZxIwI`RyNlBaAhS}EhSqClFKnKa@fJI`GNvGVzGdB|Dr@fCMpDwAlIyD~@BhAp@tBnAhG\\|Rh@d^`AxEBlJb@`Q`@xOb@~ABpGDKe@oCaKs@uCqBqIg@kDsGgVkEmNkDaMoL{VoFwMjFsBpDoA`Ec@`EOzO`AdL~@~C?`Eq@tJsDxFsBrDk@tBDfGv@jF`BrFhApC^fi@nDdDL~AEdCc@fAq@fL_HdVcPjD}BpEoBn^oMp_@kNdD{A|B_BvA}Ar@yAhAcEdE}b@bAqE`AiB`D{CpB_AtBc@bQg@vt@}BnVk@~Ga@tA[tB{@rf@}[hOuJ\\CtBoAfGwDdD{AhU{NnGeFrWwPX_@lOsJl\\_SjXaPrD}BpDcDfC}C~IyMhMeTlBkBfVi_@hE_HpBeBlB{ArYoPbQmLdCiBhCeB`KeGlAaBrJyQlD{GnBwCxAz@nAf@lAz@lK`Jz@~@p@jA|@bAxO|MjAj@~Bp@lAn@nHfGfDhCxAF~Bc@~CoBpCaBh@Oh@HVT~@~ApBj@vCZrEGfC^jK`FjCrAlLnF`b@nS~KhF~FfDjJjGfUnKrCpBlDjDdDbDpAvBVbAzAtBvEfFlDbE|@~AxCvDnB`CvBP~B?v@`@|JnI|Bf@z@@vKEzZk@lAOrECrFEpOzB`Dj@`DjAzH~EfJtGdHpDrB~@bBdA~CpAjFtBrFnBpFpAxDjAt@\\zAO`E@`LLfJL|DF`Gd@xDr@bDr@zErA~GzAx@PRIVApDbAtSdFhCpAnGfElH`F~Av@bEhAtH`BpGxB|V`OxFpDjC~BtDzDl@t@~LxOdN~P', '2020-07-08 09:59:10', '2018-11-12 19:21:19', '2020-07-08 09:59:10'),
(56, 'TRNX328445', 120, 133, 133, 2, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '2nd Floor, C-175, City Business Center, Industrial Area, Phase 8B, Sahibzada Ajit Singh Nagar, Punjab 160055, India', 30.71055340, 76.69444590, 'Sector 51, Chandigarh, India', 30.70587970, 76.74086660, '2018-11-13 11:44:59', NULL, '2018-11-13 11:45:24', '2018-11-13 11:45:29', 1, 1, 0, 0, 'sdmzDmlbsMoG`F_GxEiDrCOU{AlAq@j@iDyGqHyMmD_HwSa`@kCuESs@i@_Aa@k@cAkBqFgKaFsJO_@k@iAv@k@xIiHfG_FdFaES_@yDmHsFaKcB_DwD_HdDqCj@cA?E?I@SL]ZQVARDBBrB}@pIaHfBsAjH}F~BiBv@u@^i@Lm@@KHUVSZCF@B@j@Ip@UhF_ExIgHpKqIp@m@LUJInAcAxEwDlJoHrJyHbBoAbA{@Tc@H[BQ@I@CeB{DiCoGgCoHiA}Bk@{@y@_Au@}@}AwBRUbG{ElDoCtAnCrBxD', '2020-07-08 09:59:18', '2018-11-13 11:44:59', '2020-07-08 09:59:18'),
(57, 'TRNX686095', 132, 0, 131, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 226.00000000, '13/9, Street-2, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31269780, 78.02407160, 'Shimla, Himachal Pradesh, India', 31.10481450, 77.17340330, '2018-11-13 12:31:44', NULL, NULL, NULL, 0, 0, 0, 0, 'an_xDk`f{Mt{@ppA|_ArgAm]xOk_@h_@cVxWqo@x`Bl}ApbCzF~`BsVbpBwFbh@{TxXcm@|WsWv]_w@z`Aol@j`B~DzeAkk@f}@sQnk@}b@fhBkr@lbAco@|gBmr@~aBuaBpkBknBncCyh@`nApJnYpIre@kV`mA_\\tv@{C~kAgf@v}E}OfoCuApO_u@}BeGmAuFfLg\\brBl_@pfAxPfy@aG`{@khB|q@wj@zUod@t_@qq@`|AcfAnnCss@j}AcShkAyUptAdDnrAjSbv@cF~pCgkAtfEgIv\\uDlj@xVtt@f@h~@nA|XkMnwAsVhmBo~@|pBgUdrAaLxo@_[fBoYrEbBzQ}MaHuSfZ}MoEbBzJySdUNtQa[qKqOoQfAs_@@}Xa\\wEgd@dF}C~\\aZ_KsVeWcTnHiPcJoQtI}TyK_Y}CaF|K_LeJwJj@fDfGlDv\\RnWpBxI{Fx@af@wAmRiKePzQmGjFqEyQsb@kY_MoCaG`R`EvUyOoDaWde@sCve@w\\bOmV`b@bFpSrNxBhHxJsKnB}l@|BgW|b@oWxc@aLzXs@`^wOd[ee@bfAcx@j}Agq@hx@ea@}I{Gg^mS~Ja@sOLoSkHuNaKiGbE{]gT`ZcqAjzAs[|V_L}GefAdfAmTfOmJhUkl@vl@ap@`Qc[oMsZtUw\\lLgBba@wHfb@aQpAxCfLiWfNaXxHwYtFs]j_@oWwFuRrHaFlSiGxTp@fQoOtHkWjZeVjK}g@ja@ca@tUw@f]cNzFaWxWmZbi@zE|{@ea@f|@cT}@aYrXyUwF{SjN{GeFW_VdG_NoH{GdEgWyHqJuJ}D{HbI{PmHm`@da@of@lp@wl@jEwVjVwNKqMzPkKsCoKbb@mj@v\\o]_N_InAjNmPlKsQ_KeJnP{a@_GyMgNxJeYrYkKlCxLg[vL_e@jJix@cP{Uqb@pXeUbFuAsJsGa]kLoDyNa@fBqVaLjMkQhk@iLe^yUaM_LkLdCw_@sK_g@dGgS_Ty@gJwe@lL{XqMwGzBmRcQkAkTw\\a]L}UdViY`KvBpNmQ~JiLfC{PtFgLnY}Bj_@aUmLmPta@sb@tMuQgZ}JkAcFjKyPsPkJnDuDzPySpK}K~MwVbJfFx_@qMpOaPlHkNsEuIxSgMcLmIhMsSCuTwFg@gZtEwOaI_L}VeNwYbMmZcRiX_]qXjWySqk@|Ew\\m]ab@gOeBqIi[wc@me@iUwJoWyAwd@zSi[eCuK}GmOrPqOoZyLkWap@dCqa@yL}KhTmWm@ip@og@`Gyl@}Luq@{@kfAe@qM', '2020-07-08 09:59:27', '2018-11-13 12:31:44', '2020-07-08 09:59:27');
INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `distance`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(58, 'TRNX278904', 132, 0, 131, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 246.00000000, '3/3, Saharanpur Rd, Patel Nagar, Dehradun, Uttarakhand 248001, India', 30.31268360, 78.02419060, 'Delhi High Court, India Gate, New Delhi, Delhi, India', 28.60860360, 77.23548590, '2018-11-13 12:40:46', '2018-11-16 18:45:00', NULL, NULL, 0, 0, 0, 0, 'in_xDq`f{Mrd@bn@nAlKxSdUrc@`e@bRnOhNfRj{@fg@nZfPte@rLz`@~ShXfOpPlQrWfIx[pDh[hGfJ`JhTrWbMtKnBdGKfPnC^RlUqGbHuAbDN}GoBpFiAbE{@fHhH`@rCbHhFxJlH|InD`LpMpC|KjApHvHlCdPfKbFfGpHtLm@fKhGtDlJhHlIbN|AhHbLdI`PcBhQrAfQfGhGK`QzXdAfJGhAgCrCfBrEnDTpC~LlOhKzC`KvG~Hk@|FpCrMkJnHpIbJhAxKvJ`QO~FzAnHnFxOjV~DfQhS~Vt]jd@nUzPlRfLd]~Zn`EzuDjvBprBpe@bl@vOn_@cBvh@nrExvEbkA~kAle@d\\l`A`gA`_A~pAphAx_Bpj@do@`cApaBv_@lw@daA|dCrVrn@zDpK`G}AzF_BfFq@`NvArf@nH`jBfUpnAdP|uCl_@dxCzc@lnE~y@nv@xO`VzMfImAtO_NfW_Bhp@O|pDsp@fkCuq@pnD_v@|fAqUn{@yZheBmp@hVyTrFiLrFc\\hFiG|[_Cne@|LxS~@~dCeAloBm@pzB{GzyKok@|dB{Hpi@cHhj@gh@xPmOdRab@xLwV@GgD}JpK|A`|AsbA|bAmeAz^gp@`uAgo@~d@FdL|Gr]dh@j^nUnd@lU`t@`@tr@LhY|YxUle@lAvv@oBvkAbDbSjOrIdjE{Ibz@wCdxA}_@|vEmnAvnAqYjr@|EzqAbRtd@pJle@fZ~f@dTzVjGdQmCru@y[piAel@bd@kPp[cCj~@vHldAtKd`AhGjz@~DfTmI`Pd@dL`Hh^fEfyC~NzbG`StqDbJpm@Ixn@jFdvBvGtz@xCnSdN~FhTqA~\\g@nStEhNp]hr@~Vtg@hVnYnqB|`BtsA`~@fbB`Mbw@jGz[jHxqBjMzqEcNhe@jAbTbStrAvxAf~@tx@`aB|gAvgAz_AbhA`i@lsAzeAhgBluBzp@nv@jc@d^nfBp~Af~@f}@~hBdbBd`Ab_Af\\pa@|c@pXzr@|f@lmAbgAfo@bl@hv@|t@_KjZsS~YaNlOd@xD{AjKyFrJbH`HbKnJdRvQ~OlOgM~UGLOBwFrHfGrRzb@riAjUv@dFvDbMbKjIf@hJeU`BaHkBxUbNsRfOqG|NjCfN|I|Kr@v^fEnTnMj[|{@dfBnsFvcAt}@vK~PhAzVtFfZd_@nfBh[hsAfUf~@hJrOhm@zk@lq@~hBjG`WRxGuUdFwj@`M}StF|@hQtB~KiFdSEXb@rMnENpGDzC~BQ`GaAnGw@zBrCbFdAaBXY', '2020-07-08 09:59:35', '2018-11-13 12:40:23', '2020-07-08 09:59:35'),
(59, 'TRNX512078', 132, 0, 134, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 225.00000000, '3/3, Saharanpur Rd, Patel Nagar, Dehradun, Uttarakhand 248001, India', 30.31271390, 78.02418010, 'Cart Rd, Nabha, Shimla, Himachal Pradesh 171004, India', 31.10248600, 77.15979600, '2018-11-13 12:41:55', NULL, NULL, NULL, 0, 0, 0, 0, 'kn_xDs`f{M~{@xpA|_ArgAm]xOk_@h_@cVxWqo@x`Bl}ApbCzF~`BsVbpBwFbh@{TxXcm@|WsWv]_w@z`Aol@j`B~DzeAkk@f}@sQnk@}b@fhBkr@lbAco@|gBmr@~aBuaBpkBknBncCyh@`nApJnYpIre@kV`mA_\\tv@{C~kAgf@v}E}OfoCuApO_u@}BeGmAuFfLg\\brBl_@pfAxPfy@aG`{@khB|q@wj@zUod@t_@qq@`|AcfAnnCss@j}AcShkAyUptAdDnrAjSbv@cF~pCgkAtfEgIv\\uDlj@xVtt@f@h~@nA|XkMnwAsVhmBo~@|pBgUdrAaLxo@_[fBoYrEbBzQ}MaHuSfZ}MoEbBzJySdUNtQa[qKqOoQfAs_@@}Xa\\wEgd@dF}C~\\aZ_KsVeWcTnHiPcJoQtI}TyKqHaFmObAaF|K_LeJwJj@fDfGlDv\\RnWpBxI{Fx@af@wAmRiKyJJkDnQmGjFqEyQsb@kY_MoCaG`R`EvUyOoDaWde@sCve@w\\bOmV`b@bFpSrNxBhHxJsKnB}l@|BgW|b@oWxc@aLzXs@`^wOd[ee@bfAcx@j}Agq@hx@ea@}I{Gg^mS~Ja@sOLoSkHuNaKiGbE{]gT`ZcqAjzAs[|V_L}GefAdfAmTfOmJhUkl@vl@ap@`Qc[oMsZtUw\\lLgBba@wHfb@aQpAxCfLiWfNaXxHwYtFs]j_@oWwFuRrHaFlSiGxTp@fQoOtHkWjZeVjK}g@ja@ca@tUw@f]cNzFaWxWmZbi@zE|{@ea@f|@cT}@aYrXyUwF{SjN{GeFW_VdG_NoH{GdEgWyHqJuJ}D{HbI{PmHm`@da@of@lp@wl@jEwVjVwNKqMzPkKsCoKbb@mj@v\\o]_N_InAjNmPlKsQ_KeJnP{a@_GyMgNxJeYrYkKlCxLg[vL_e@jJix@cP{Uqb@pXeUbFuAsJsGa]kLoDyNa@fBqVaLjMkQhk@iLe^yUaM_LkLdCw_@sK_g@dGgS_Ty@gJwe@lL{XqMwGzBmRcQkAkTw\\a]L}UdViY`KvBpNmQ~JiLfC{PtFgLnY}Bj_@aUmLmPta@sb@tMuQgZ}JkAcFjKyPsPkJnDuDzPySpK}K~MwVbJfFx_@qMpOaPlHkNsEuIxSgMcLmIhMsSCuTwFg@gZtEwOaI_L}VeNwYbMmZcRiX_]qXjWySqk@|Ew\\m]ab@gOeBqIi[wc@me@iUwJoWyAwd@zSi[eCuK}GmOrPqOoZyLkWap@dCqa@yL}KhTmWm@ip@og@`Gyl@}Luq@n@}B', '2020-07-08 09:59:44', '2018-11-13 12:41:32', '2020-07-08 09:59:44'),
(60, 'TRNX140887', 132, 0, 131, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 21.00000000, '13/9, Street-2, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31300160, 78.02578170, 'Selakui, Uttarakhand, India', 30.36815850, 77.86531260, '2018-11-13 13:13:13', '2018-11-13 17:11:00', NULL, NULL, 0, 0, 0, 0, 'so_xDolf{MbByBbBkBk@q@We@OA_@?sE|F{@bBS~@o@vAKPaBcAeBqAaBuAmAkAa@`@O@KCMCO@MFMHU^mAxB_BlC_ExGyF`K_BlCq@lA[n@o@dA{@dAgA[C`@Er@Iv@WxAc@lBYj@Ot@yAtG{@fDA^@x@GpF?t@C`@GdAU~BM~@YjDQnBC|@NjGAVOr@s@dDs@bCgA|CoAbEW`Bo@`Ei@xEw@~F_BrMqA`K[nBKZcBlCoDnFq@fA}AzCy@dBaDrFqDhGwBhC{@jAOb@Kt@EfACXILEB?l@AlDGtI@`HEtCI~@YrAuChMcCtJmArFk@~B[x@q@xAm@lAoA`CyAnCaAfCSr@Kv@C~@PjH\\xMDpDP~EFpB?dGA~@WbHK|DKzC?z@AbBAhEE^GTw@rAKXA^Dt@J^bApC@l@i@Po@Dy@D]@qBOa@D[LwCxAgEzBe@PyAToALaDt@yDXw@LYLKJIRKd@Ib@YvDS~AUxAcAzI}@lGMfAw@dGgCdRi@fDWxBEj@?|@\\rEL`ANfBJdBJvCBtC?`BNrFNdId@vLJbEJnJZbJ^|PVxJFpC@fCCdP?bZEhFEdAa@~FUlEs@tLmAtV}@jSo@zKU`GG|@Kn@qCnMsBzLgA~EWr@c@f@_@ZQXkAdDYpAKv@]|HU|@Sh@c@jBy@fE]zBAz@D`@BLlA|Ax@~@bA~@pAxAb@p@Rh@z@`DhAnFb@|BXtBLzBFxBHvEJ`BZ~D@jAA|@KfAU|AOfAWpFQnBW`DGj@]lB_@tASf@sAfC}@|AsGnLkCrEcBlDMb@G~DQjCId@K`@_@hAyBpFi@pAuFtLiCpGcCxEaBrDGL{Aw@]O_AQeC_A}BcAiL}EkMaF_C_AeCkAyCoAkBy@wBuAuE{B_DiBo@_@k@g@}@c@z@_CE[{AwD{@{@', '2020-07-08 09:59:52', '2018-11-13 13:13:13', '2020-07-08 09:59:52'),
(61, 'TRNX964070', 132, 0, 137, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 2.00000000, '47/1, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31261360, 78.02542490, 'Guru Rd, Laxman Chowk, Dehradun, Uttarakhand 248001, India', 30.31315200, 78.02114450, '2018-11-13 13:31:20', NULL, NULL, NULL, 0, 0, 0, 0, 'qk_xDojf{M~CmEWWaA_Ak@q@Qa@ICQCQ@G?aAlAoBdCaAxA_@z@Ov@Wp@Wd@BBbDdB|BtAhBdB`HxGbA`AzBxB`@f@MJy@rA_CrDU`@aDgDaBwA{C}Cg@t@', '2020-07-08 10:00:00', '2018-11-13 13:31:20', '2020-07-08 10:00:00'),
(62, 'TRNX854971', 132, 137, 137, 2, 'PICKEDUP', 'NONE', NULL, 'CASH', 0, 1.00000000, '47/1, Bhandari Bagh, Dehradun, Uttarakhand 248001, India', 30.31263600, 78.02426780, 'Guru Rd, Patel Nagar, Dehradun, Uttarakhand 248001, India', 30.30881250, 78.01791410, '2018-11-13 13:35:10', NULL, '2018-11-13 13:36:08', NULL, 0, 0, 0, 0, 'in_xDq`f{MdB`B`HxGbA`AzBxB`@f@zAbCb@p@OJeA`ApA|BFF@DABa@`@oAfA_@XBDLPTRHIt@b@r@r@n@}@', '2020-07-08 10:00:08', '2018-11-13 13:35:10', '2020-07-08 10:00:08'),
(63, 'TRNX189201', 139, 142, 142, 2, 'CANCELLED', 'PROVIDER', 'xyz', 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:16:31', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', '2020-07-08 10:00:18', '2018-11-18 16:16:31', '2020-07-08 10:00:18'),
(64, 'TRNX472945', 139, 0, 142, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:18:20', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', '2020-07-08 10:00:27', '2018-11-18 16:18:20', '2020-07-08 10:00:27'),
(65, 'TRNX979865', 139, 0, 142, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:19:12', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', '2020-07-08 10:00:35', '2018-11-18 16:19:12', '2020-07-08 10:00:35'),
(66, 'TRNX980019', 139, 0, 142, 2, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:19:54', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', '2020-07-08 10:00:43', '2018-11-18 16:19:54', '2020-07-08 10:00:43'),
(67, 'TRNX854721', 139, 142, 142, 2, 'CANCELLED', 'USER', 'xyz', 'CASH', 0, 237.00000000, 'B-855, Church Wali Gali, Block A, New Ashok Nagar, New Delhi, Uttar Pradesh 110096, India', 28.59362930, 77.31000590, 'Dehradun, Uttarakhand, India', 30.31649450, 78.03219180, '2018-11-18 16:21:21', NULL, NULL, NULL, 0, 0, 0, 0, '_uomDwrzvMcDiDqCsCcI|CoDnBgBjB{Es@OWeEiC{N_J_GxJePuMof@wa@cOqL{GfAwPrEqHnB_N|DcG~AsBj@uD~@yCmBWSQe@@w@wHk\\}Iib@eHqe@GwDmF{Q_h@sc@i[cYekAcqDet@mzBeFoIgMqGwW}EkPOsJ{CuQqJoO|AiRhX_JpGePaCiMwMiIo@ob@vD}LiPSkKjE_NjCaKeRii@jFiLFM~MwTfVep@eHkd@jJ_k@{^s_@{~CcuC_u@cl@o`@oU{ToOiKqMyf@}k@om@yi@gtAsnAsZ{V}F{D_t@rI_Zz@oQIoaATiaDMa^mAgfCg[wpI_jAeeBoVa_AwMgeAq[}aBki@g~B_u@yh@yQaNcOef@yVqJuCgK_A}HbBaRgDwm@gOwuDgnAyeDmeAgjEwwA{gDu_Bq{I}fE_pC_sAud@}UcLmQ}S}P{RsJeWuJmRsBkU}By`@oSgn@ee@gh@wc@yb@{^a~@_w@{eBgzAuJnCmPi@ud@|@aSwBgYdFq~@jVuOlFoKpBuyB|k@c{DndA}}@zUocBhF}iCtG{WgA}NaLuAcTpBerB}C}Q}LyUmZw`@m_@mBkfAZce@_Soc@sXi_@oj@uJkFmb@M}WhKkh@hVeYxOaIhL}LzZ_IpHg[|a@y{@br@or@~e@{SbOrF~NvFnOkGvE}`@pRaV~Nk[b]aQlLoOtDkdB`I}uBrJ{mB`Jg]|AwqExWmeAvCu`Bh@cyCxAo^_A_[sFcU_G_QhCiFvEwCnOaErRyK|QcVvNgk@vTw|Abk@sxAb]wnDbv@}mCpr@isDxp@yy@UoGdAgMdKcLdEqSqKmz@eRkpEqz@kwCqc@eeIkdAiz@eMeDKiVvEceAomC_`@oaAc\\cn@olAimB{i@al@kcAa|Acf@sn@y~@qlA}XiUyn@oh@ciD_kDinAeoAkUuXfBsZNqJ{DsLyNoZas@ov@{m@gl@_~C}wCuzBmqB_YuN}o@ax@aN{QoG{SgOeVeGmCmIh@kMiAuO_LmFC{DaGyAiA_EvEeLlBmCgCqCr@eMwBcBaDmEaAeNaMwDcIuFkFkDxCma@cAE_Io@uH_C_BeFuMnCeSsE_PaGyOm[oI}BiMqJaIsMdBqE}FiNsGy@qMoNgOeUmD_Dm@{A}FeEgGaCcHyHgO_Ds@sCF_AcFtC_GVqI|E{\\TyNwCcIiY{Z_P}Qyz@wLmWwIiP_Pql@}[g\\yMe\\qJk\\iPqc@wVcNwIyGcMiKcIoSqSoa@m`@kQiVoD{Ow^gd@aX_TmCeKhEwKDaF', '2020-07-08 10:01:05', '2018-11-18 16:21:21', '2020-07-08 10:01:05'),
(68, 'TRNX641174', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 6.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82840820, -80.27815170, 'Miami International Airport, Miami, FL 33126, EE. UU.', 25.79502300, -80.27905000, '2018-11-20 04:34:20', NULL, NULL, NULL, 0, 0, 0, 0, 'iqs|Cji~hNJ~GHfKrDEhJOhFCpDIfCqE~BkD~AiB`AiAnCeEhGeJjGeJpLgQ`ImL|CsEfDuEhDeF~B}CFWBGvBErDMtDClCCh@Il@Op@Sj@Kn@Gh@?p@BnD`@rALpAHpBH`B?`IE|@HlA@hABhAB\\@hEEt@FbGIv@ArG?v@@h@Nb@\\Vb@HV@VFNHL@zBBdID|GFjG@bCMpAQhA[pAMZi@jAg@v@s@`AYVSDMF}@|@U\\Yn@CX?d@PxFHfDD|CFZFNdArBLJl@\\^LR@pBC', '2020-07-08 10:01:13', '2018-11-20 04:34:20', '2020-07-08 10:01:13'),
(69, 'TRNX344424', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 6.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82838410, -80.27815240, 'Miami International Airport, Miami, FL 33126, EE. UU.', 25.79502300, -80.27905000, '2018-11-20 04:35:01', NULL, NULL, NULL, 0, 0, 0, 0, 'iqs|Cji~hNJ~GHfKrDEhJOhFCpDIfCqE~BkD~AiB`AiAnCeEhGeJjGeJpLgQ`ImL|CsEfDuEhDeF~B}CFWBGvBErDMtDClCCh@Il@Op@Sj@Kn@Gh@?p@BnD`@rALpAHpBH`B?`IE|@HlA@hABhAB\\@hEEt@FbGIv@ArG?v@@h@Nb@\\Vb@HV@VFNHL@zBBdID|GFjG@bCMpAQhA[pAMZi@jAg@v@s@`AYVSDMF}@|@U\\Yn@CX?d@PxFHfDD|CFZFNdArBLJl@\\^LR@pBC', '2020-07-08 10:01:22', '2018-11-20 04:35:01', '2020-07-08 10:01:22'),
(70, 'TRNX578099', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 6.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82838670, -80.27815890, 'Miami International Airport, Miami, FL 33126, EE. UU.', 25.79502300, -80.27905000, '2018-11-20 04:35:53', NULL, NULL, NULL, 0, 0, 0, 0, 'iqs|Cli~hNJ|GHfKrDEhJOhFCpDIfCqE~BkD~AiB`AiAnCeEhGeJjGeJpLgQ`ImL|CsEfDuEhDeF~B}CFWBGvBErDMtDClCCh@Il@Op@Sj@Kn@Gh@?p@BnD`@rALpAHpBH`B?`IE|@HlA@hABhAB\\@hEEt@FbGIv@ArG?v@@h@Nb@\\Vb@HV@VFNHL@zBBdID|GFjG@bCMpAQhA[pAMZi@jAg@v@s@`AYVSDMF}@|@U\\Yn@CX?d@PxFHfDD|CFZFNdArBLJl@\\^LR@pBC', '2020-07-08 10:01:30', '2018-11-20 04:35:53', '2020-07-08 10:01:30'),
(71, 'TRNX733798', 141, 144, 144, 1, 'CANCELLED', 'PROVIDER', 'iiii', 'CASH', 0, 10.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82839040, -80.27815270, '2100 NW 42nd Ave, Miami, FL 33126, EE. UU.', 25.79586500, -80.28704570, '2018-11-20 04:38:11', NULL, NULL, NULL, 0, 0, 0, 0, 'iqs|Cji~hNJ~GzBEjFGfNSdBCJGzBEDtCFn@|AtAJZl@f@`@`@Nn@AJ@RFXLTTNNDV?FANCXZlHtGrCdC`OpMvG~FvDbDt@r@p@b@~@\\`CZbB@lGGvJGfEE?rQ@nQ?dL@zDDtBTlC`@tEBzB@zD?dGM|CGh@W`BgAxEwCrLuAtF]rA[lBOfBItE@pDAtApA@vDGtSQrFGvIE`QSvEGrD??oH@{LHmHD_FvHCfHCZA@YAmFGcHEcSMaOBYDOJO`@G|@AFEBEnDE?gAIgAAo@Dc@hEiKbIuRHQeBaA', '2020-07-08 10:01:38', '2018-11-20 04:38:11', '2020-07-08 10:01:38'),
(72, 'TRNX655682', 142, 144, 144, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 10.00000000, '165 E 7th St, Hialeah, FL 33010, EE. UU.', 25.82839980, -80.27816670, '2100 NW 42nd Ave, Miami, FL 33126, EE. UU.', 25.79586500, -80.28704570, '2018-11-20 04:49:18', NULL, '2018-11-20 04:51:21', '2018-11-20 04:51:37', 1, 1, 0, 0, 'iqs|Cni~hNJzGzBEjFGfNSdBCJGzBEDtCFn@|AtAJZl@f@`@`@Nn@AJ@RFXLTTNNDV?FANCXZlHtGrCdC`OpMvG~FvDbDt@r@p@b@~@\\`CZbB@lGGvJGfEE?rQ@nQ?dL@zDDtBTlC`@tEBzB@zD?dGM|CGh@W`BgAxEwCrLuAtF]rA[lBOfBItE@pDAtApA@vDGtSQrFGvIE`QSvEGrD??oH@{LHmHD_FvHCfHCZA@YAmFGcHEcSMaOBYDOJO`@G|@AFEBEnDE?gAIgAAo@Dc@hEiKbIuRHQeBaA', '2020-07-08 10:01:46', '2018-11-20 04:49:18', '2020-07-08 10:01:46'),
(73, 'TRNX353358', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 5.00000000, '651 E 25th St, Hialeah, FL 33013, EE. UU.', 25.84582690, -80.26802880, 'Miami Springs, Florida, EE. UU.', 25.82231980, -80.28949500, '2018-11-20 06:54:01', NULL, NULL, NULL, 0, 0, 0, 0, 'm_w|Cxi|hNQ?]mEO}BhBG~ACdDIZKdBElFIbBIbBAxB?dBCxFIrFMtc@u@hBEtACjBEBxA@xBBzAFrGB~AJ`CPbCPbTFvHHjIRjP?LfAAjBEbCCdFIjNSjFIl@?HGj@AnACDdB@p@?FDd@b@^j@h@LJJZhA`AFLLn@AH@TJZNRJH\\lEp@dOf@fJ?dC@~GmDB{B@', '2020-07-08 10:01:54', '2018-11-20 06:54:01', '2020-07-08 10:01:54'),
(74, 'TRNX643794', 141, 0, 144, 1, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 7.00000000, '651 E 25th St, Hialeah, FL 33013, EE. UU.', 25.84582570, -80.26801760, 'Miami International Airport, Miami, FL 33126, EE. UU.', 25.79502300, -80.27905000, '2018-11-20 06:54:38', NULL, NULL, NULL, 0, 0, 0, 0, 'm_w|Cxi|hNQ?]mEO}BhBG~ACdDIZKdBElFIbBIbBAxB?dBCxFIrFMtc@u@bJQdGKpGMtDG|CGrDIdEGpFM|GGtCEzEKnQUhOShCCt@CHFfBAbBCzCMfDGrDMvGEj@Ah@I~Ac@j@Kn@Gh@?p@BvEh@rAJtAFdADn@?rHE~@?|@HvB@fCHhEEt@FbGIfBAdG?j@Fh@VZ^Rj@@VFNHL@zBBdILhP@bCMpAQhAi@lBi@jAg@v@s@`AYVSDMF}@|@c@r@KXCXH`ERfH@lBHh@pAhCZPl@XVFh@ApAA', '2020-07-08 10:02:02', '2018-11-20 06:54:38', '2020-07-08 10:02:02'),
(75, 'TRNX479354', 141, 144, 144, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 8.00000000, '651 E 25th St, Hialeah, FL 33013, EE. UU.', 25.84577800, -80.26801540, '1653 W 49th St, Hialeah, FL 33012, EE. UU.', 25.86674550, -80.31504800, '2018-11-20 06:55:22', NULL, '2018-11-20 06:57:44', '2018-11-20 06:58:01', 1, 1, 0, 0, 'a_w|Cxi|hNE?W?]mEO}BA]sBBsDDgEHuINwJNiPJqULeKBgJHoJDkJBuFDW?CZL|JFfKHzP@rEThUXxV^t_@HhHLxGAbE@lRA|N?pK@|E@nF?jI@vODrN?|F?tJ@~T?xJ_B??u@r@@BA@a@@qCAo@', '2020-07-08 10:02:10', '2018-11-20 06:55:22', '2020-07-08 10:02:10'),
(76, 'TRNX795426', 141, 144, 144, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 7.00000000, 'Douglas Rdet, Hialeah, FL 33013, EE. UU.', 25.88166160, -80.26443570, 'Miami Lakes, Florida, EE. UU.', 25.90870560, -80.30866190, '2018-11-20 15:17:09', NULL, '2018-11-20 15:17:36', '2018-11-20 15:19:29', 1, 1, 0, 0, 'i_~|Cts{hNy@s@_@Qm@]_Bs@}Bq@oAS{AOoBGJTElC?vEE~AUtCGpAa@dB[rA{AlFq@xBiB~EcCpFqAhCiB~CcCvDwBnC_FtF}FlG{LxM{BdCqAtAu@`AmArBk@nAi@|Ag@lBW|AUzBIpB@dDJ~GDzCEFCLCzAWzEMxBEpB?zBAFGPKLc@TqCRyCB_DEcN`@sBFQCaJTq\\h@qCFA\\?rC@|B?fH@dEAxGEt@Kz@}@`Dg@|A]|AIrA@~DC~CG`@Qz@wAfFe@bBO`A?dA`@l@t@d@|@XNHbCl@t@\\p@d@r@|@JN\\x@DVR`AFj@D|@EBA\\F~A?D', '2020-07-08 10:02:17', '2018-11-20 15:17:09', '2020-07-08 10:02:17'),
(77, 'TRNX526716', 144, 152, 152, 5, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 165.00000000, 'Narnaul, Haryana, India', 28.06876450, 76.10678900, 'Delhi, India', 28.68627380, 77.22178310, '2020-06-30 00:30:55', NULL, '2020-06-30 04:33:56', '2020-06-30 04:34:00', 1, 1, 0, 0, 'sdijDkrooMvc@uBbi@gBrSnAzDmD|DkGx@g@~IfAfFeAvJJ|@ZlDr@nG`A|HH@gDIsDbAOt@SfBgEv@cBhBqD`D_BnCcDvBcArDUfI{GrGgOxBoOtFiPfE{NjDcIbBeMrEmO`Qh@_@yK`PyVjEcIjH}VjJwZhF}J|e@kk@dOsTlP_YlF{K|CcKbj@mj@vbAodAhnAioA~}@a~@nUkU~J}RvRcc@lEgFrQaNz\\kWr[qYv\\gYnwBowBzQgSpH}ObD_E`_@c]jVmUvf@cf@`DyHfA}AlDHE}Fd@{Mn@wD`F{KbDuPtBkLwEqEgPoOy^e^ez@uw@cxDqlDcKaNu[sj@{\\_l@c^ur@sU}c@kh@o~@{p@}lAwY{k@}d@ws@gxAq`Cm[mj@yA_GM_FnCay@lAya@qAgJge@sx@i|AqnC_u@glAe}AsjCayDqtGg|DizGmJ}OoE}DeLaG{HgFqBaD}I_[qEyOiD{GyJaPke@gt@}pBy~CoaC_wDcmEmdHm]_t@{He\\[gDO_a@bD_i@hBuZcCq~@kFk`@gFaYsEwHqEyBi\\iIke@_LkaCu~AsbAcq@mXyQkOkOaYwWgTuHsJeDmGuEks@yxAsUee@}PcPiy@cu@gXyVcR{Tu{@{iAat@a`Awg@cq@kJmYeL}b@cDoK_MaT{OsLcGwH{CcMK_LxBiUtB_^sA}HkEiG{FiCi_@a@ma@sBeRtDcG~@}Go@q{@{Wm\\mKyF{EaOi`@qc@agAsSkg@gGeMov@mu@wJwHcl@kl@wy@m_@cv@y\\aVyKoGwE}j@ed@iKcJsU_RmPqLak@ce@cCiHGqKrO{{@MiGkDkK{t@cs@ud@ac@k]_\\sKqGgU}Yg_@ch@uPqSu]a\\gaAs~@km@oi@{LaJiEaBmFYoFnA}I~E{IjCiHEoCu@uq@k`@e_Amk@{`@s}@}K}F{SuHmEgDcCyEgFoN}DcGcRwWkLwO{HsDs]eIu_@wBwd@kBcEwBwLaS{Lm[qG{Eiw@sOmCqBuH_W}FgQ_N_b@{HaYiQ}c@mf@oiAiN_[wFqHmRgQkB}CgAM_@T}HvCiF~@_MFqMiC}JyFsKaO}HcTiEYwEGcD`HyBzELV?j@W\\cAWq^aWsYqRuJ{EaLeHmC_AiAvAyEtEaApA}A_@sOqIkBk@m@K]a@iE_@kFh@}Eh@uKdAmQ`DyHh@sNfDcGeCgCuCwDwCaCiEeAwFkDmBcFcBqFiDeCgEaC}I|AeUzA}Kk@eAcD^mPvAkLxAgIAuPeDyQmBiYmFeWeFkD_AWoAtMkAvBQ', '2020-07-08 10:02:25', '2020-06-30 00:30:55', '2020-07-08 10:02:25'),
(78, 'TRNX740555', 144, 152, 152, 5, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 5.00000000, 'Unnamed Road, Huda Sector, Narnaul, Haryana 123001, India', 28.06135910, 76.10413870, 'Unnamed Road, Narnaul, Haryana 123001, India,Narnaul,Haryana', 28.02986048, 76.11340798, '2020-06-30 12:02:31', NULL, '2020-06-30 12:03:08', '2020-06-30 12:03:14', 1, 1, 0, 0, 'qvgjDcaooMmBIB{A@I`@BvI`@~AFJFJA^E~AH|ARjDJ?zBjA@RDNBN?`BUrBW|AExAIv@EHBB@HSjAsDNa@n@cCj@cBj@{A`AyCF]n@Ib@ITWlBwCTe@lAiBzA{BRQDAT?jEfAx@Bp@Ax@ERCt@_@d@Qd@GfEMxEBNPPH`@LZDl@DhA^t@NjCZ`AP~A`@t@LX?lAInBK@]?yAIcFbAOh@OXMb@aAt@{BZy@L[HGFIz@uBj@w@h@g@b@UbBk@VM|@jAh@p@`@d@l@Zx@r@t@d@f@XpCv@z@HX?|A[`A[RQ`@o@V[pEaEnA{@VKZEx@Dz@?r@Rx@Vl@Tv@Tp@Hl@?z@Ep@UZM^Cn@B', '2020-07-08 10:02:34', '2020-06-30 12:02:31', '2020-07-08 10:02:34'),
(79, 'TRNX293168', 144, 152, 152, 5, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 4.00000000, 'Unnamed Road, Huda Sector, Narnaul, Haryana 123001, India', 28.06135870, 76.10413300, 'Unnamed Road, Mohalla Mali Tibba, Narnaul, Haryana 123001, India,Narnaul,Haryana', 28.03635607, 76.11250341, '2020-07-01 02:47:06', NULL, '2020-07-01 02:47:30', '2020-07-01 02:47:44', 1, 1, 0, 0, 'qvgjDcaooMmBIB{A@I`@BvI`@~AFJFJA^E~AH|ARjDJ?zBjA@RDNBN?`BUrBW|AExAIv@EHBB@HSjAsDNa@n@cCj@cBj@{A`AyCF]n@Ib@ITWlBwCTe@lAiBzA{BRQDAT?jEfAx@Bp@Ax@ERCt@_@d@Qd@GfEMxEBNPPH`@LZDl@DhA^t@NjCZ`AP~A`@t@LX?lAInBK@]?yAIcFbAOh@OXMb@aAt@{BZy@L[HGFIz@uBj@w@h@g@b@UbBk@VM|@jAh@p@`@d@l@Zx@r@t@d@f@X`Cp@', '2020-07-08 10:02:41', '2020-07-01 02:47:06', '2020-07-08 10:02:41'),
(80, 'TRNX675962', 144, 152, 152, 5, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 2.00000000, 'Unnamed Road, Huda Sector, Narnaul, Haryana 123001, India', 28.06125840, 76.10392760, 'Chota Bara Talab Rd, Gastiwara, Narnaul, Haryana 123001, India,Narnaul,Haryana', 28.04708808, 76.10204950, '2020-07-01 23:04:52', NULL, '2020-07-01 23:05:26', '2020-07-01 23:05:39', 1, 1, 0, 0, 'wugjDq`ooMGlAgCMFyAB}A@I`@BvI`@z@Db@@JFJA^E~AH|ARjDJ?zBvABNFV?`BU`AMp@If@ClBGjAIVBNDhBDVHd@AfAM`AYZSREp@Ej@EzCG~@Dn@HdADvA?FdARn@\\@d@Jp@Rr@\\NLBHJ^BLb@DVj@NTJXp@vAb@j@xAtAXi@p@cA`@m@', '2020-07-08 10:02:48', '2020-07-01 23:04:52', '2020-07-08 10:02:48'),
(81, 'TRNX876564', 144, 152, 152, 5, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 165.00000000, 'Narnaul, Haryana, India', 28.06876450, 76.10678900, 'Delhi, India', 28.68627380, 77.22178310, '2020-07-02 11:20:43', NULL, '2020-07-02 11:21:38', '2020-07-02 11:21:47', 1, 1, 0, 0, 'sdijDkrooMvc@uBbi@gBrSnAzDmD|DkGx@g@~IfAfFeAvJJ|@ZlDr@nG`A|HH@gDIsDbAOt@SfBgEv@cBhBqD`D_BnCcDvBcArDUfI{GrGgOxBoOtFiPfE{NjDcIbBeMrEmO`Qh@_@yK`PyVjEcIjH}VjJwZhF}J|e@kk@dOsTlP_YlF{K|CcKbj@mj@vbAodAhnAioA~}@a~@nUkU~J}RvRcc@lEgFrQaNz\\kWr[qYv\\gYnwBowBzQgSpH}ObD_E`_@c]jVmUvf@cf@`DyHfA}AlDHE}Fd@{Mn@wD`F{KbDuPtBkLwEqEgPoOy^e^ez@uw@cxDqlDcKaNu[sj@{\\_l@c^ur@sU}c@kh@o~@{p@}lAwY{k@}d@ws@gxAq`Cm[mj@yA_GM_FnCay@lAya@qAgJge@sx@i|AqnC_u@glAe}AsjCayDqtGg|DizGmJ}OoE}DeLaG{HgFqBaD}I_[qEyOiD{GyJaPke@gt@}pBy~CoaC_wDcmEmdHm]_t@{He\\[gDO_a@bD_i@hBuZcCq~@kFk`@gFaYsEwHqEyBi\\iIke@_LkaCu~AsbAcq@mXyQkOkOaYwWgTuHsJeDmGuEks@yxAsUee@}PcPiy@cu@gXyVcR{Tu{@{iAat@a`Awg@cq@kJmYeL}b@cDoK_MaT{OsLcGwH{CcMK_LxBiUtB_^sA}HkEiG{FiCi_@a@ma@sBeRtDcG~@}Go@q{@{Wm\\mKyF{EaOi`@qc@agAsSkg@gGeMov@mu@wJwHcl@kl@wy@m_@cv@y\\aVyKoGwE}j@ed@iKcJsU_RmPqLak@ce@cCiHGqKrO{{@MiGkDkK{t@cs@ud@ac@k]_\\sKqGgU}Yg_@ch@uPqSu]a\\gaAs~@km@oi@{LaJiEaBmFYoFnA}I~E{IjCiHEoCu@uq@k`@e_Amk@{`@s}@}K}F{SuHmEgDcCyEgFoN}DcGcRwWkLwO{HsDs]eIu_@wBwd@kBcEwBwLaS{Lm[qG{Eiw@sOmCqBuH_W}FgQ_N_b@{HaYiQ}c@mf@oiAiN_[wFqHmRgQkB}CgAM_@T}HvCiF~@_MFqMiC}JyFsKaO}HcTiEYwEGcD`HyBzELV?j@W\\cAWq^aWsYqRuJ{EaLeHmC_AiAvAyEtEaApA}A_@sOqIkBk@m@K]a@iE_@kFh@}Eh@uKdAmQ`DyHh@sNfDcGeCgCuCwDwCaCiEeAwFkDmBcFcBqFiDeCgEaC}I|AeUzA}Kk@eAcD^mPvAkLxAgIAuPeDyQmBiYmFeWeFkD_AWoAtMkAvBQ', '2020-07-08 10:02:56', '2020-07-02 11:20:43', '2020-07-08 10:02:56'),
(82, 'JB561222', 147, 154, 154, 2, 'PICKEDUP', 'NONE', NULL, 'CASH', 0, 1.00000000, '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', 37.42199830, -122.08400000, '1625 Plymouth St, Mountain View, CA 94043, USA,Mountain View,California', 37.41563087, -122.08363172, '2020-07-20 12:33:24', NULL, '2020-07-22 06:40:47', NULL, 0, 0, 0, 0, 'ublcFrmchVNg@BQEMOKJYNUVKj@ELCVKXSTE\\@JDVTVNt@F`@?IxCKdEI`CzBBxC?zD@zD?hD?J?@UDy@BeABaBFuBJ?x@@t@@@@?`@DFvAB', NULL, '2020-07-20 12:33:24', '2020-07-22 06:40:47'),
(83, 'JB153637', 149, 156, 156, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 58.00000000, 'Unnamed Road, Huda Sector, Narnaul, Haryana 123001, India', 28.06131170, 76.10411490, 'Unnamed Road, 123110, Sector 4, Rewari, Haryana 123401, India,Rewari,Haryana', 28.18235007, 76.62585542, '2020-07-27 08:46:48', NULL, '2020-07-27 08:47:54', '2020-07-27 08:48:12', 1, 1, 0, 0, 'uugjDuaooMIpBgCM?QFiADeBzJd@z@Dl@H^EjBFxE\\n@@@sBLqFJ}CJiFdECrBN`Ih@bDRj@a@Zc@CaBA}AAeK?gL?{IGiEMsAe@oAgAuB_DcGaDuGcS}`@mH}NoE_Jo@oBaHm^mEmUy@aDiAqCmGsMqByEqEuJaTsd@cM}]yGwT}F{RyRqq@qIwYqCqK}FmTaOaj@mDcMi@uAuDcFwEaG{HiJ_HqIu@gAo@qAu@mBWcAaAuDg@{BKcBd@sNx@sUr@{YBiAGu@]eAm@}Ak@cBcBwEOy@GsA]yA{@_FiBmPy@}DuA{Ly@sIyAqM{AiK_DqQeN{f@eBkGsBcJQwAuBoQcA}Iw@oCeC}G{@kCaBcEaFsMuC}HyEcMKq@mAyCwAgFsBiHkBgHUkAM_B@oDf@oSBsE[uEa@gDm@qCg@uBcBaEwBeEqGuLmQu\\iC}Ew@sBmByFaDuJaG_RmJyYyQ{k@eKa\\_CuM_CwNcD}RwCkQyF_]aGu]eC_PAc@T{Cj@{Ex@sHNmE@yBAcBIkA}@}Fk@cB{CgHsDcHiTka@_A}BgAkEmBiO}AoLsB}Om@qEqAoF_Ss`@ePe[cF{JsAmE}@eDwFqSsIe[m@iDQyDkAu`@e@cPeBal@yCa}@QuEi@sHUqGe@oDaAsC_A_BwAuA_Ao@{EwBeAs@qAq@{EwB}FmCgCwBqB_CaAkBoB}EmJgWqGaQuO}a@uE}LoBuFkJ}VaCqGiBaEaAyA{AgBmAaAmCcBkAq@yEmCuAeAw@aAcAqBi@wBy@eHo@oICyAH{ATwAtA_Fl@eBx@eDLuBMcDg@}BUq@o@gAgDuDgJgJeDmEqBiEuAiEgJiYyH_WsQ{k@sCoJgC{HkAwFQyBCiBCqGAcH@oOEaIBgHDqAb@Wt@CCgBm@}OCgNKwQGiJ]cBFeBPgC?mJ@_PIeMG{HOaH[qHuAmSgAgPw@kMs@iKw@qM}@sNq@mKa@aIg@aGYmF]sEe@_FSiDeAuL{@yKq@eLm@mNwAi[}Caq@sAc]s@_OIMSqD{Ak\\y@uT}@gRoBoc@cCik@AgDh@{FjAuEzBmGtCoHf@_CNkCA?A?AACGAIHK}@cOMkCo@aG_@eC{@aIScJImCGiEOsF_@sDYqAA?AACACCAOJGD@tBaChEsCfGmDnCgBz@sDLwB^aIJaAGiFIcDOuHQq@OSCAAAEGBQNAp@q@rBsB`Aw@v@a@\\IjAQbCGbJJ|E@v@]lDiCbMgGjA]zFoAMq@a@kBSeAu@sC_@o@{@aATg@', NULL, '2020-07-27 08:46:48', '2020-07-27 08:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_payments`
--

CREATE TABLE `user_request_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `promocode_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed` double(10,2) NOT NULL DEFAULT '0.00',
  `distance` double(10,2) NOT NULL DEFAULT '0.00',
  `commision` double(10,2) NOT NULL DEFAULT '0.00',
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `tax` double(10,2) NOT NULL DEFAULT '0.00',
  `wallet` double(10,2) NOT NULL DEFAULT '0.00',
  `surge` double(10,2) NOT NULL DEFAULT '0.00',
  `total` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_payments`
--

INSERT INTO `user_request_payments` (`id`, `request_id`, `promocode_id`, `payment_id`, `payment_mode`, `fixed`, `distance`, `commision`, `discount`, `tax`, `wallet`, `surge`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 20.00, 7.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-01-27 08:40:53', '2018-01-27 08:40:53'),
(2, 3, NULL, NULL, NULL, 20.00, 7.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-01-27 08:49:29', '2018-01-27 08:49:29'),
(3, 4, NULL, NULL, NULL, 20.00, 31.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-01-28 06:40:43', '2018-01-28 06:40:43'),
(4, 13, NULL, NULL, NULL, 20.00, 10.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-02-01 18:59:45', '2018-02-01 18:59:45'),
(5, 15, NULL, NULL, NULL, 20.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-02-03 13:00:24', '2018-02-03 13:00:24'),
(6, 19, NULL, NULL, NULL, 20.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-02-03 13:18:29', '2018-02-03 13:18:29'),
(7, 20, NULL, NULL, NULL, 20.00, 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-02-03 16:22:43', '2018-02-03 16:22:43'),
(8, 23, NULL, NULL, NULL, 20.00, 4.50, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-02-04 11:09:47', '2018-02-04 11:09:47'),
(9, 37, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-10-29 08:55:28', '2018-10-29 08:55:28'),
(10, 38, NULL, NULL, NULL, 4.00, 4.14, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-10-30 08:13:28', '2018-10-30 08:13:28'),
(11, 40, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-10-30 12:19:43', '2018-10-30 12:19:43'),
(12, 41, NULL, NULL, NULL, 4.00, 2.76, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-10-31 17:00:57', '2018-10-31 17:00:57'),
(13, 42, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-01 06:29:55', '2018-11-01 06:29:55'),
(14, 43, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-01 06:38:29', '2018-11-01 06:38:29'),
(15, 44, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-02 10:56:44', '2018-11-02 10:56:44'),
(16, 48, NULL, NULL, NULL, 4.00, 1.38, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-04 06:30:06', '2018-11-04 06:30:06'),
(17, 53, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-12 20:40:21', '2018-11-12 20:40:21'),
(18, 56, NULL, NULL, NULL, 5.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-13 11:45:29', '2018-11-13 11:45:29'),
(19, 72, NULL, NULL, NULL, 4.00, 13.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-20 04:51:37', '2018-11-20 04:51:37'),
(20, 75, NULL, NULL, NULL, 4.00, 11.04, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-20 06:58:01', '2018-11-20 06:58:01'),
(21, 76, NULL, NULL, NULL, 4.00, 9.66, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2018-11-20 15:19:29', '2018-11-20 15:19:29'),
(22, 77, NULL, NULL, NULL, 5.00, 165.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-06-30 04:34:00', '2020-06-30 04:34:00'),
(23, 78, NULL, NULL, NULL, 5.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-06-30 12:03:14', '2020-06-30 12:03:14'),
(24, 79, NULL, NULL, NULL, 5.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-07-01 02:47:44', '2020-07-01 02:47:44'),
(25, 80, NULL, NULL, NULL, 5.00, 2.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-07-01 23:05:39', '2020-07-01 23:05:39'),
(26, 81, NULL, NULL, NULL, 5.00, 165.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-07-02 11:21:47', '2020-07-02 11:21:47'),
(27, 83, NULL, NULL, NULL, 4.00, 80.04, 8.40, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-07-27 08:48:12', '2020-07-27 08:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_ratings`
--

CREATE TABLE `user_request_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL DEFAULT '0',
  `provider_rating` int(11) NOT NULL DEFAULT '0',
  `user_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_ratings`
--

INSERT INTO `user_request_ratings` (`id`, `request_id`, `user_id`, `provider_id`, `user_rating`, `provider_rating`, `user_comment`, `provider_comment`, `created_at`, `updated_at`) VALUES
(1, 83, 149, 156, 5, 5, 'nice', 'good', '2020-07-27 08:48:42', '2020-07-27 08:48:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `account_password_resets`
--
ALTER TABLE `account_password_resets`
  ADD KEY `account_password_resets_email_index` (`email`),
  ADD KEY `account_password_resets_token_index` (`token`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatchers`
--
ALTER TABLE `dispatchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dispatchers_email_unique` (`email`);

--
-- Indexes for table `dispatcher_password_resets`
--
ALTER TABLE `dispatcher_password_resets`
  ADD KEY `dispatcher_password_resets_email_index` (`email`),
  ADD KEY `dispatcher_password_resets_token_index` (`token`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleets`
--
ALTER TABLE `fleets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fleets_email_unique` (`email`);

--
-- Indexes for table `fleet_password_resets`
--
ALTER TABLE `fleet_password_resets`
  ADD KEY `fleet_password_resets_email_index` (`email`),
  ADD KEY `fleet_password_resets_token_index` (`token`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `providers_email_unique` (`email`);

--
-- Indexes for table `provider_devices`
--
ALTER TABLE `provider_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_documents`
--
ALTER TABLE `provider_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_services`
--
ALTER TABLE `provider_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_filters`
--
ALTER TABLE `request_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispatchers`
--
ALTER TABLE `dispatchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fleets`
--
ALTER TABLE `fleets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `provider_devices`
--
ALTER TABLE `provider_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `provider_documents`
--
ALTER TABLE `provider_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `provider_services`
--
ALTER TABLE `provider_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `request_filters`
--
ALTER TABLE `request_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
