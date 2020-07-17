-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 08:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goodlearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admintype_id` bigint(20) UNSIGNED NOT NULL,
  `disable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `password`, `created_at`, `updated_at`, `admintype_id`, `disable`) VALUES
('vinhdlv123', 'Đào Lê Văn Vinh', NULL, NULL, '$2y$10$YznB4zTKXwkVWEhWpVGfPe/OMMz8CQa2O4gBQ9bfeZIY74pHF8/my', '2020-03-17 21:00:44', '2020-03-17 21:00:44', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_type`
--

CREATE TABLE `admin_type` (
  `admin_type_id` bigint(20) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_type`
--

INSERT INTO `admin_type` (`admin_type_id`, `type`) VALUES
(1, 'Nhân Viên Thống Kê'),
(2, 'Nhân Viên IT');

-- --------------------------------------------------------

--
-- Table structure for table `annouce`
--

CREATE TABLE `annouce` (
  `annouce_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `annouce`
--

INSERT INTO `annouce` (`annouce_id`, `text`, `created_at`, `updated_at`) VALUES
(546, 'Course: Angular - The Complete Guide (2020 Edition) is upload a new video', '2020-07-09 18:24:19', '2020-07-09 18:24:19'),
(547, 'Course: Angular - The Complete Guide (2020 Edition) is upload a new video', '2020-07-09 18:24:49', '2020-07-09 18:24:49'),
(548, 'Course: Angular - The Complete Guide (2020 Edition) is upload a new video', '2020-07-09 18:25:18', '2020-07-09 18:25:18'),
(549, 'Course: Angular - The Complete Guide (2020 Edition) is upload a new video', '2020-07-09 18:26:10', '2020-07-09 18:26:10'),
(550, 'Course: Angular - The Complete Guide (2020 Edition) is upload a new video', '2020-07-09 18:26:51', '2020-07-09 18:26:51'),
(551, 'Course: Angular - The Complete Guide (2020 Edition) is upload a new video', '2020-07-09 18:27:46', '2020-07-09 18:27:46'),
(552, 'Course: Angular - The Complete Guide (2020 Edition) is upload a new video', '2020-07-09 18:28:13', '2020-07-09 18:28:13'),
(553, 'Course: Angular - The Complete Guide (2020 Edition) is upload a new video', '2020-07-09 18:28:44', '2020-07-09 18:28:44'),
(554, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-09 18:41:14', '2020-07-09 18:41:14'),
(555, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-09 18:41:48', '2020-07-09 18:41:48'),
(556, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-09 18:42:37', '2020-07-09 18:42:37'),
(557, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-09 18:43:25', '2020-07-09 18:43:25'),
(558, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-09 18:43:58', '2020-07-09 18:43:58'),
(559, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 22:03:45', '2020-07-14 22:03:45'),
(560, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 22:05:55', '2020-07-14 22:05:55'),
(561, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 22:09:04', '2020-07-14 22:09:04'),
(562, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 22:26:02', '2020-07-14 22:26:02'),
(563, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 22:32:04', '2020-07-14 22:32:04'),
(564, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 22:35:08', '2020-07-14 22:35:08'),
(565, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 22:39:26', '2020-07-14 22:39:26'),
(566, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 23:26:35', '2020-07-14 23:26:35'),
(567, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-14 23:29:57', '2020-07-14 23:29:57'),
(568, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 00:00:46', '2020-07-15 00:00:46'),
(569, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 00:09:06', '2020-07-15 00:09:06'),
(570, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 00:16:41', '2020-07-15 00:16:41'),
(571, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 00:34:05', '2020-07-15 00:34:05'),
(572, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 00:38:16', '2020-07-15 00:38:16'),
(573, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 00:40:03', '2020-07-15 00:40:03'),
(574, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 00:42:37', '2020-07-15 00:42:37'),
(575, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 00:44:16', '2020-07-15 00:44:16'),
(576, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 01:02:29', '2020-07-15 01:02:29'),
(577, '<p>eeeeeee</p>', '2020-07-15 04:12:05', '2020-07-15 04:12:05'),
(578, '<p>asdasdasdasd</p>', '2020-07-15 04:16:21', '2020-07-15 04:16:21'),
(579, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:09:38', '2020-07-15 07:09:38'),
(580, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:11:29', '2020-07-15 07:11:29'),
(581, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:12:24', '2020-07-15 07:12:24'),
(582, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:13:32', '2020-07-15 07:13:32'),
(583, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:14:44', '2020-07-15 07:14:44'),
(584, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:16:14', '2020-07-15 07:16:14'),
(585, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:18:02', '2020-07-15 07:18:02'),
(586, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:26:21', '2020-07-15 07:26:21'),
(587, 'Course: Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex) is upload a new video', '2020-07-15 07:32:45', '2020-07-15 07:32:45'),
(588, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:54:54', '2020-07-15 07:54:54'),
(589, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:55:19', '2020-07-15 07:55:19'),
(590, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:55:45', '2020-07-15 07:55:45'),
(591, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:56:09', '2020-07-15 07:56:09'),
(592, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:56:58', '2020-07-15 07:56:58'),
(593, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:57:41', '2020-07-15 07:57:41'),
(594, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:58:23', '2020-07-15 07:58:23'),
(595, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:59:15', '2020-07-15 07:59:15'),
(596, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 07:59:57', '2020-07-15 07:59:57'),
(597, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 08:00:27', '2020-07-15 08:00:27'),
(598, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 08:00:59', '2020-07-15 08:00:59'),
(599, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 08:01:28', '2020-07-15 08:01:28'),
(600, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 08:01:59', '2020-07-15 08:01:59'),
(601, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 08:02:24', '2020-07-15 08:02:24'),
(602, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 08:02:53', '2020-07-15 08:02:53'),
(603, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic) is upload a new video', '2020-07-15 08:03:28', '2020-07-15 08:03:28'),
(604, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:29:17', '2020-07-15 08:29:17'),
(605, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:29:50', '2020-07-15 08:29:50'),
(606, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:30:12', '2020-07-15 08:30:12'),
(607, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:30:48', '2020-07-15 08:30:48'),
(608, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:31:07', '2020-07-15 08:31:07'),
(609, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:31:24', '2020-07-15 08:31:24'),
(610, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:32:09', '2020-07-15 08:32:09'),
(611, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:32:40', '2020-07-15 08:32:40'),
(612, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:33:50', '2020-07-15 08:33:50'),
(613, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:35:01', '2020-07-15 08:35:01'),
(614, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:35:50', '2020-07-15 08:35:50'),
(615, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:36:15', '2020-07-15 08:36:15'),
(616, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:36:36', '2020-07-15 08:36:36'),
(617, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2) is upload a new video', '2020-07-15 08:36:56', '2020-07-15 08:36:56'),
(618, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:52:29', '2020-07-15 08:52:29'),
(619, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:52:46', '2020-07-15 08:52:46'),
(620, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:53:14', '2020-07-15 08:53:14'),
(621, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:55:04', '2020-07-15 08:55:04'),
(622, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:55:42', '2020-07-15 08:55:42'),
(623, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:56:47', '2020-07-15 08:56:47'),
(624, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:57:25', '2020-07-15 08:57:25'),
(625, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:58:47', '2020-07-15 08:58:47'),
(626, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:59:14', '2020-07-15 08:59:14'),
(627, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 08:59:53', '2020-07-15 08:59:53'),
(628, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 09:00:33', '2020-07-15 09:00:33'),
(629, 'Course: Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3) is upload a new video', '2020-07-15 09:01:03', '2020-07-15 09:01:03'),
(630, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:06:48', '2020-07-15 09:06:48'),
(631, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:07:05', '2020-07-15 09:07:05'),
(632, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:07:23', '2020-07-15 09:07:23'),
(633, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:07:51', '2020-07-15 09:07:51'),
(634, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:08:15', '2020-07-15 09:08:15'),
(635, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:08:41', '2020-07-15 09:08:41'),
(636, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:09:03', '2020-07-15 09:09:03'),
(637, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:09:39', '2020-07-15 09:09:39'),
(638, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:09:58', '2020-07-15 09:09:58'),
(639, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:10:12', '2020-07-15 09:10:12'),
(640, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:10:23', '2020-07-15 09:10:23'),
(641, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:10:37', '2020-07-15 09:10:37'),
(642, 'Course: Laravel-and-Vue.js is upload a new video', '2020-07-15 09:10:53', '2020-07-15 09:10:53'),
(643, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:40:48', '2020-07-15 09:40:48'),
(644, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:43:00', '2020-07-15 09:43:00'),
(645, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:49:51', '2020-07-15 09:49:51'),
(646, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:50:13', '2020-07-15 09:50:13'),
(647, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:50:27', '2020-07-15 09:50:27'),
(648, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:50:40', '2020-07-15 09:50:40'),
(649, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:50:54', '2020-07-15 09:50:54'),
(650, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:51:06', '2020-07-15 09:51:06'),
(651, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:51:18', '2020-07-15 09:51:18'),
(652, 'Course: The Complete Node.js Developer Course (3rd Edition) is upload a new video', '2020-07-15 09:51:30', '2020-07-15 09:51:30'),
(653, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 09:58:57', '2020-07-15 09:58:57'),
(654, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 09:59:19', '2020-07-15 09:59:19'),
(655, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 09:59:35', '2020-07-15 09:59:35'),
(656, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 09:59:46', '2020-07-15 09:59:46'),
(657, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 09:59:57', '2020-07-15 09:59:57'),
(658, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 10:00:16', '2020-07-15 10:00:16'),
(659, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 10:00:37', '2020-07-15 10:00:37'),
(660, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 10:00:48', '2020-07-15 10:00:48'),
(661, 'Course: Master-Bootstrap-projects is upload a new video', '2020-07-15 10:01:00', '2020-07-15 10:01:00'),
(662, 'Course: The Complete ASP.NET MVC 5 Course is upload a new video', '2020-07-15 10:12:44', '2020-07-15 10:12:44'),
(663, 'Course: The Complete ASP.NET MVC 5 Course is upload a new video', '2020-07-15 10:13:00', '2020-07-15 10:13:00'),
(664, 'Course: The Complete ASP.NET MVC 5 Course is upload a new video', '2020-07-15 10:13:17', '2020-07-15 10:13:17'),
(665, 'Course: The Complete ASP.NET MVC 5 Course is upload a new video', '2020-07-15 10:13:34', '2020-07-15 10:13:34'),
(666, 'Course: The Complete ASP.NET MVC 5 Course is upload a new video', '2020-07-15 10:13:53', '2020-07-15 10:13:53'),
(667, 'Course: Java Web Services is upload a new video', '2020-07-15 10:15:56', '2020-07-15 10:15:56'),
(668, 'Course: Java Web Services is upload a new video', '2020-07-15 10:16:08', '2020-07-15 10:16:08'),
(669, 'Course: Java Web Services is upload a new video', '2020-07-15 10:16:36', '2020-07-15 10:16:36'),
(670, 'Course: Java Web Services is upload a new video', '2020-07-15 10:16:52', '2020-07-15 10:16:52'),
(671, 'Course: Java Web Services is upload a new video', '2020-07-15 10:17:03', '2020-07-15 10:17:03'),
(672, 'Course: React - The Complete Guide (incl Hooks, React Router, Redux) is upload a new video', '2020-07-15 10:18:04', '2020-07-15 10:18:04'),
(673, 'Course: React - The Complete Guide (incl Hooks, React Router, Redux) is upload a new video', '2020-07-15 10:18:26', '2020-07-15 10:18:26'),
(674, 'Course: React - The Complete Guide (incl Hooks, React Router, Redux) is upload a new video', '2020-07-15 10:18:38', '2020-07-15 10:18:38'),
(675, 'Course: React - The Complete Guide (incl Hooks, React Router, Redux) is upload a new video', '2020-07-15 10:19:07', '2020-07-15 10:19:07'),
(676, 'Course: React - The Complete Guide (incl Hooks, React Router, Redux) is upload a new video', '2020-07-15 10:19:23', '2020-07-15 10:19:23'),
(677, 'Course: KLTN-17-6-2020 is upload a new video', '2020-07-15 18:01:10', '2020-07-15 18:01:10'),
(678, 'Course: KLTN-17-6-2020 is upload a new video', '2020-07-15 18:03:32', '2020-07-15 18:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `annouce_room`
--

CREATE TABLE `annouce_room` (
  `fromCourse` int(11) NOT NULL,
  `toUser` varchar(100) NOT NULL,
  `annouce_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `annouce_room`
--

INSERT INTO `annouce_room` (`fromCourse`, `toUser`, `annouce_id`, `created_at`, `updated_at`) VALUES
(73, '104203580355332181612', 577, '2020-07-15 04:12:05', '2020-07-15 04:12:05'),
(73, '104203580355332181612', 578, '2020-07-15 04:16:21', '2020-07-15 04:16:21'),
(73, '2587116521525757', 577, '2020-07-15 04:12:05', '2020-07-15 04:12:05'),
(73, '2587116521525757', 578, '2020-07-15 04:16:21', '2020-07-15 04:16:21'),
(73, 'hung@gmail.com', 577, '2020-07-15 04:12:05', '2020-07-15 04:12:05'),
(73, 'hung@gmail.com', 578, '2020-07-15 04:16:21', '2020-07-15 04:16:21'),
(73, 'vinh@test.com', 577, '2020-07-15 04:12:05', '2020-07-15 04:12:05'),
(73, 'vinh@test.com', 578, '2020-07-15 04:16:21', '2020-07-15 04:16:21'),
(76, '2587116521525757', 571, '2020-07-15 00:34:05', '2020-07-15 00:34:05'),
(76, '2587116521525757', 572, '2020-07-15 00:38:16', '2020-07-15 00:38:16'),
(76, '2587116521525757', 573, '2020-07-15 00:40:03', '2020-07-15 00:40:03'),
(76, '2587116521525757', 574, '2020-07-15 00:42:37', '2020-07-15 00:42:37'),
(76, '2587116521525757', 575, '2020-07-15 00:44:16', '2020-07-15 00:44:16'),
(76, '2587116521525757', 576, '2020-07-15 01:02:29', '2020-07-15 01:02:29'),
(76, '2587116521525757', 579, '2020-07-15 07:09:38', '2020-07-15 07:09:38'),
(76, '2587116521525757', 580, '2020-07-15 07:11:29', '2020-07-15 07:11:29'),
(76, '2587116521525757', 581, '2020-07-15 07:12:24', '2020-07-15 07:12:24'),
(76, '2587116521525757', 582, '2020-07-15 07:13:33', '2020-07-15 07:13:33'),
(76, '2587116521525757', 583, '2020-07-15 07:14:44', '2020-07-15 07:14:44'),
(76, '2587116521525757', 584, '2020-07-15 07:16:14', '2020-07-15 07:16:14'),
(76, '2587116521525757', 585, '2020-07-15 07:18:02', '2020-07-15 07:18:02'),
(76, '2587116521525757', 586, '2020-07-15 07:26:21', '2020-07-15 07:26:21'),
(76, '2587116521525757', 587, '2020-07-15 07:32:45', '2020-07-15 07:32:45'),
(86, '2587116521525757', 645, '2020-07-15 09:49:51', '2020-07-15 09:49:51'),
(86, '2587116521525757', 646, '2020-07-15 09:50:13', '2020-07-15 09:50:13'),
(86, '2587116521525757', 647, '2020-07-15 09:50:27', '2020-07-15 09:50:27'),
(86, '2587116521525757', 648, '2020-07-15 09:50:40', '2020-07-15 09:50:40'),
(86, '2587116521525757', 649, '2020-07-15 09:50:54', '2020-07-15 09:50:54'),
(86, '2587116521525757', 650, '2020-07-15 09:51:06', '2020-07-15 09:51:06'),
(86, '2587116521525757', 651, '2020-07-15 09:51:18', '2020-07-15 09:51:18'),
(86, '2587116521525757', 652, '2020-07-15 09:51:30', '2020-07-15 09:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `answer_bot`
--

CREATE TABLE `answer_bot` (
  `answer_id` bigint(20) NOT NULL,
  `answer` varchar(4000) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `question_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer_bot`
--

INSERT INTO `answer_bot` (`answer_id`, `answer`, `created_at`, `updated_at`, `question_id`) VALUES
(1, 'Câu này là câu trả lời 1', '2020-03-25 06:56:43', '2020-04-20 03:04:12', 1),
(2, 'Câu trả lời 2 là câu này', '2020-03-25 06:56:43', '2020-03-25 06:56:43', 1),
(3, 'Câu trả lời thứ 3', '2020-04-20 00:04:29', '2020-04-20 03:19:31', 1),
(15, '1', '2020-04-23 23:16:47', '2020-04-23 23:16:47', 15),
(16, '2', '2020-04-23 23:16:47', '2020-04-23 23:16:47', 15),
(17, '3', '2020-04-23 23:16:47', '2020-04-23 23:16:47', 15),
(18, '1', '2020-04-24 00:16:45', '2020-04-24 00:16:45', 18),
(19, '1', '2020-04-24 00:18:06', '2020-04-24 00:18:06', 19),
(20, '2', '2020-04-24 00:18:13', '2020-04-24 00:18:13', 20),
(21, '4', '2020-04-24 00:18:17', '2020-04-24 00:18:17', 21),
(22, '5', '2020-04-24 00:19:54', '2020-04-24 00:19:54', 22),
(23, '7', '2020-04-24 00:22:11', '2020-04-24 00:22:11', 23),
(24, '8', '2020-04-24 00:24:28', '2020-04-24 00:24:28', 24),
(25, '9', '2020-04-24 00:24:51', '2020-04-24 00:24:51', 25),
(26, '123', '2020-04-24 00:25:29', '2020-04-24 00:25:29', 26),
(27, '312312', '2020-04-24 00:26:17', '2020-04-24 00:26:17', 27),
(28, 'asdasd', '2020-04-24 00:26:38', '2020-04-24 00:26:38', 28),
(29, '213213', '2020-04-24 00:36:44', '2020-04-24 00:36:44', 29),
(30, 'sadasdasdd', '2020-04-24 00:40:29', '2020-04-24 00:40:29', 30),
(31, '123fdf', '2020-04-24 00:42:42', '2020-04-24 00:42:42', 31),
(32, 'sfsdfsdf', '2020-04-24 00:43:24', '2020-04-24 00:43:24', 32),
(33, 'dvdvdvd', '2020-04-24 00:46:27', '2020-04-24 00:46:27', 33),
(34, '345345', '2020-04-24 00:47:01', '2020-04-24 00:47:01', 34),
(35, '1', '2020-04-24 00:49:42', '2020-04-24 00:49:42', 35),
(36, '345345435', '2020-04-24 00:49:49', '2020-04-24 00:49:49', 36),
(37, '12312312', '2020-04-24 00:50:48', '2020-04-24 00:50:48', 37),
(38, 'hungnd', '2020-04-24 01:52:10', '2020-04-24 01:52:10', 38),
(40, 'là tăng anh hào', '2020-06-23 03:58:35', '2020-06-23 03:58:35', 52),
(41, 'hào anh tăng', '2020-06-23 03:58:35', '2020-06-23 03:58:35', 52),
(42, '16110xxxxxx', '2020-06-23 03:58:35', '2020-06-23 03:58:35', 52),
(43, 'asdasdasdsad', '2020-06-23 03:58:35', '2020-06-23 03:58:35', 52),
(44, 'lap trinh frontend', '2020-06-29 02:34:43', '2020-06-29 02:34:43', 53),
(45, 'lap trinh backend', '2020-06-29 02:34:43', '2020-06-29 02:34:43', 53);

-- --------------------------------------------------------

--
-- Table structure for table `bill_student_course`
--

CREATE TABLE `bill_student_course` (
  `bill_student_course_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL COMMENT 'Day la student',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `currentInfo` text NOT NULL,
  `vnp_Amount` text NOT NULL,
  `vnp_BankCode` text NOT NULL,
  `vnp_BankTranNo` text NOT NULL COMMENT 'Mã giao dịch',
  `vnp_CardType` text NOT NULL,
  `vnp_TransactionNo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_student_course`
--

INSERT INTO `bill_student_course` (`bill_student_course_id`, `user_id`, `created_at`, `updated_at`, `currentInfo`, `vnp_Amount`, `vnp_BankCode`, `vnp_BankTranNo`, `vnp_CardType`, `vnp_TransactionNo`) VALUES
(10, '2587116521525757', '2020-05-29 21:35:46', '2020-05-29 21:35:46', '[{\"course_id\":70,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":1000000,\"course_updated\":\"2020-05-12 20:19:39\"}]', '1000000', 'NCB', '20200619-115307', 'ATM', '20200619-115301'),
(11, 'hung@gmail.com', '2020-05-30 00:56:21', '2020-05-30 00:56:21', '[{\"course_id\":69,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":500000,\"course_updated\":\"2020-05-13 00:51:23\"}]', '500000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(12, 'hung@gmail.com', '2020-05-30 01:01:35', '2020-05-30 01:01:35', '[{\"course_id\":73,\"name\":\"Web c\\u01a1 b\\u1ea3n\",\"priceTier\":500000,\"course_updated\":\"2020-05-30 07:23:34\"}]', '500000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(13, 'hung@gmail.com', '2020-05-30 01:07:07', '2020-05-30 01:07:07', '[{\"course_id\":70,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":1000000,\"course_updated\":\"2020-05-12 20:19:39\"}]', '1000000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(14, '2587116521525757', '2020-05-30 06:38:21', '2020-05-30 06:38:21', '[{\"course_id\":73,\"name\":\"Web c\\u01a1 b\\u1ea3n\",\"priceTier\":500000,\"course_updated\":\"2020-05-30 07:23:34\"}]', '500000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(15, '104203580355332181612', '2020-06-18 19:40:29', '2020-06-18 19:40:29', '[{\"course_id\":69,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":500000,\"course_updated\":\"2020-05-13 00:51:23\"}]', '500000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(16, '104203580355332181612', '2020-06-18 19:40:29', '2020-06-18 19:40:29', '[{\"course_id\":70,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":1000000,\"course_updated\":\"2020-05-12 20:19:39\"}]', '1000000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(20, '104203580355332181612', '2020-06-18 21:26:48', '2020-06-18 21:26:48', '[{\"course_id\":73,\"name\":\"Web c\\u01a1 b\\u1ea3n\",\"priceTier\":500000,\"course_updated\":\"2020-05-30 07:23:34\"}]', '500000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(21, 'vinh@test.com', '2020-06-18 21:29:31', '2020-06-18 21:29:31', '[{\"course_id\":70,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":1000000,\"course_updated\":\"2020-05-12 20:19:39\"},{\"course_id\":73,\"name\":\"Web c\\u01a1 b\\u1ea3n\",\"priceTier\":500000,\"course_updated\":\"2020-05-30 07:23:34\"}]', '1000000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(22, 'vinh@test.com', '2020-06-18 21:53:09', '2020-06-18 21:53:09', '[{\"course_id\":69,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":500000,\"course_updated\":\"2020-05-13 00:51:23\"}]', '500000', 'NCB', '20200619-115307', 'ATM', '20200619-115307'),
(23, 'haota@gmail.com', '2020-06-23 04:01:38', '2020-06-23 04:01:38', '[{\"course_id\":69,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":500000,\"course_updated\":\"2020-05-13 00:51:23\"}]', '500000', 'NCB', '20200623-180137', 'ATM', '13320559'),
(24, 'vinh@test1.com', '2020-06-28 18:52:40', '2020-06-28 18:52:40', '[{\"course_id\":69,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":500000,\"course_updated\":\"2020-05-13 00:51:23\"},{\"course_id\":70,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":1000000,\"course_updated\":\"2020-05-12 20:19:39\"}]', '1500000', 'NCB', '20200629-085239', 'ATM', '13323266'),
(25, 'vinhdlv@test2.com', '2020-06-29 02:09:28', '2020-06-29 02:09:28', '[{\"course_id\":70,\"name\":\"Vuejs n\\u00e2ng cao\",\"priceTier\":1000000,\"course_updated\":\"2020-05-12 20:19:39\"}]', '1000000', 'NCB', '20200629-160928', 'ATM', '13323721'),
(26, '2587116521525757', '2020-07-09 06:40:50', '2020-07-09 06:40:50', '[{\"course_id\":73,\"name\":\"Web c\\u01a1 b\\u1ea3n\",\"priceTier\":500000,\"course_updated\":\"2020-07-08 09:11:07\"},{\"course_id\":74,\"name\":\"Khoa hoc\",\"priceTier\":500000,\"course_updated\":\"2020-06-29 09:13:30\"}]', '1000000', 'NCB', '20200709-204052', 'ATM', '13332337'),
(27, '2587116521525757', '2020-07-09 09:14:05', '2020-07-09 09:14:05', '[{\"storagePackage_id\":\"6\",\"name\":\"vinh\",\"priceTier\":123213,\"course_updated\":{\"date\":\"2020-07-09 16:14:05.000000\",\"timezone_type\":3,\"timezone\":\"UTC\"}}]', '123213', 'NCB', '20200709-231407', 'ATM', '13332368'),
(28, '104203580355332181612', '2020-07-09 19:17:28', '2020-07-09 19:17:28', '[{\"course_id\":75,\"name\":\"Angular - The Complete Guide (2020 Edition)\",\"priceTier\":500000,\"course_updated\":\"2020-07-10 01:30:37\"}]', '500000', 'NCB', '20200710-091730', 'ATM', '13332471'),
(29, '2587116521525757', '2020-07-15 00:23:46', '2020-07-15 00:23:46', '[{\"course_id\":76,\"name\":\"Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex)\",\"priceTier\":1000000,\"course_updated\":\"2020-07-10 01:44:11\"}]', '1000000', 'NCB', '20200715-142346', 'ATM', '13334823'),
(30, '2587116521525757', '2020-07-15 08:10:10', '2020-07-15 08:10:10', '[{\"course_id\":77,\"name\":\"Python eCommerce  Build a Django eCommerce Web Application (Basic)\",\"priceTier\":1000000,\"course_updated\":\"2020-07-15 15:04:23\"}]', '1000000', 'NCB', '20200715-221011', 'ATM', '13335695'),
(31, '2587116521525757', '2020-07-15 18:07:22', '2020-07-15 18:07:22', '[{\"course_id\":88,\"name\":\"KLTN-17-6-2020\",\"priceTier\":2000000,\"course_updated\":\"2020-07-16 01:04:50\"}]', '2000000', 'NCB', '20200716-080720', 'ATM', '13336030');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` varchar(100) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `course_id`, `created_at`, `updated_at`) VALUES
('113777963231066507088', '70', '2020-05-12 13:24:14', '2020-05-12 13:24:14'),
('vinh@test1.com', '73', '2020-06-28 18:55:35', '2020-06-28 18:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `icon_class` text NOT NULL,
  `disable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `created_at`, `updated_at`, `icon_class`, `disable`) VALUES
(1, 'Lập trình Web', '2020-03-22 20:12:21', '2020-07-09 18:45:34', 'mdi-iframe-outline', 1),
(2, 'Lập trình Android', '2020-03-23 20:31:50', '2020-07-09 17:42:53', 'fab fa-android', 1),
(3, 'Lập trình IOS', '2020-03-23 20:32:58', '2020-07-09 17:42:58', 'fab fa-apple', 1),
(4, 'Lập trình C#', '2020-03-24 00:04:11', '2020-07-09 17:43:01', 'mdi-language-csharp', 1),
(5, 'Lập trình C/C++', '2020-03-24 00:42:30', '2020-07-09 17:43:05', 'mdi-language-cpp', 1),
(6, 'Microsoft Office', '2020-03-24 00:44:01', '2020-07-09 17:43:11', 'fab fa-windows', 1),
(7, 'Toán', '2020-03-24 00:48:21', '2020-07-09 17:43:14', 'fas fa-infinity', 1),
(8, 'Lý', '2020-03-25 19:45:12', '2020-07-09 17:43:17', 'mdi-atom', 1),
(9, 'Hóa', '2020-04-08 10:47:36', '2020-07-09 17:43:21', 'mdi-flask', 1),
(10, 'Development', '2020-07-09 17:43:49', '2020-07-09 17:43:49', 'fas fa-code', 0),
(11, 'Business', '2020-07-09 17:44:48', '2020-07-09 17:44:48', 'fas fa-credit-card', 0),
(12, 'Design', '2020-07-09 17:45:35', '2020-07-09 17:45:35', 'fas fa-eye-dropper', 0),
(13, 'Marketing', '2020-07-09 17:46:18', '2020-07-09 17:46:18', 'fas fa-money-bill-alt', 1),
(14, 'Music', '2020-07-09 17:47:28', '2020-07-09 17:47:28', 'fas fa-music', 1),
(15, 'IT and Sorftware', '2020-07-09 17:48:45', '2020-07-09 17:48:45', 'fas fa-search', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_annoucement`
--

CREATE TABLE `course_annoucement` (
  `annouce_id` bigint(20) NOT NULL,
  `annouce` text NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_comment`
--

CREATE TABLE `course_comment` (
  `user_id` varchar(100) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `course_comment_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating_value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_comment`
--

INSERT INTO `course_comment` (`user_id`, `course_id`, `comment`, `course_comment_id`, `created_at`, `updated_at`, `rating_value`) VALUES
('2587116521525757', 33, 'hay quá vinh ơi', 1, '2020-05-05 12:35:32', '2020-05-05 12:35:32', 5),
('2587116521525757', 34, 'vinh hay qua', 2, '2020-05-07 07:32:46', '2020-05-07 07:32:46', 4),
('vinhdlv123@gmail.com', 33, 'binh thuong', 3, '2020-05-07 07:32:46', '2020-05-07 07:32:46', 3),
('2587116521525757', 35, 'asdasdas', 4, '2020-07-09 06:31:46', '2020-07-09 06:31:46', 4),
('2587116521525757', 70, 'asdasdasd', 5, '2020-07-09 06:35:34', '2020-07-09 06:35:34', 5),
('2587116521525757', 69, 'dfgdfgdfg', 6, '2020-07-09 06:38:06', '2020-07-09 06:38:06', 5),
('2587116521525757', 77, 'Giọng nói tốt', 7, '2020-07-15 10:38:03', '2020-07-15 10:38:03', 4),
('2587116521525757', 86, 'Giọng nói khó nghe', 8, '2020-07-15 10:38:24', '2020-07-15 10:38:24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_like`
--

CREATE TABLE `course_like` (
  `user_id` varchar(100) NOT NULL COMMENT 'ID sử dụng với tư cách là học viên',
  `course_id` bigint(20) NOT NULL COMMENT 'ID sử dụng với ý nghĩa instructor_course',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_course`
--

CREATE TABLE `instructor_course` (
  `course_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL COMMENT 'ID sử dụng với tư cách là giảng viên',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `moneyType_id` bigint(20) DEFAULT 1,
  `priceTier_id` bigint(20) DEFAULT NULL,
  `disable` tinyint(4) NOT NULL DEFAULT 0,
  `public` tinyint(4) NOT NULL DEFAULT 0,
  `json_info_chapter` text DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor_course`
--

INSERT INTO `instructor_course` (`course_id`, `name`, `user_id`, `created_at`, `updated_at`, `description`, `moneyType_id`, `priceTier_id`, `disable`, `public`, `json_info_chapter`) VALUES
(33, 'Học lập trình 1 bởi vinh', 'vinhdlv995@gmail.com', '2020-04-25 02:39:42', '2020-07-15 07:40:21', '** #1 MOST PURCHASED BUSINESS COURSE ON UDEMY! ** OVER 300,000 STUDENTS IN 208 COUNTRIES ** \r\n\r\n** ACCORDING TO BUSINESS INSIDER: \"Getting your MBA has never been easier. Haroun is one of the highest rated professors on Udemy, so you can expect to be in good hands through the course of your education.\" **\r\n\r\n** SPECIAL $99 BONUS: FREE 384 PAGE MBA BOOK INCLUDED ($99 value). In order to further improve the student experience, there is a free download at the end of every section of this course (contains every slide & entire easy to read comprehensive scripts of all 49 lectures & >100 helpful internet links + more) keeping the course up to date, even easier to understand & even more fun and engaging! **\r\n\r\nAre you ready to take your career to the next level? In this course, you will learn everything you need to know about business….from starting a company to taking it public. This course covers all of the important topics you will learn from getting an MBA from a top school + real life practical business concepts that will help make you more successful!\r\n\r\nThis course is taught by an award winning MBA professor with significant real world experience working at Goldman Sachs as well as in the venture capital, hedge fund and consulting industries (he has founded several companies and sits on several boards). Many business concepts are simply common sense. This course will focus on business concepts that you need to know that might not be common sense. This course makes the general business, accounting and finance process very easy to understand! The professor of this course is also the author of \"101 Crucial Lessons They Don\'t Teach You in Business School,\" which Forbes magazine recently called \"1 of 6 books that all entrepreneurs need to read right now.\"\r\n\r\nThe contents of this course are all based on my work experience at several firms, including Goldman Sachs, the consulting industry at Accenture, a few companies I have started, the hedge fund industry where I worked at Citadel and also in the venture capital sector (the firm I founded had a venture capital investment in Facebook).I included helpful practical business concepts I learned while I did an MBA at Columbia University and a Bachelor of Commerce degree at McGill University. Think of this course as a “greatest hits” business summaries from my MBA, undergraduate business degree, work experience in consulting, equities, hedge funds, venture capital and starting my own companies.\r\n\r\nI have minimized “boring theoretical concepts” in this course in order to keep it as close to reality as possible. The concepts of this course have been taught by me in many classes at several universities, where the student feedback has been universally and incredibly positive (please see my LinkedIn profile for student reviews / feedback on my teaching style/effectiveness - thank you. Also please see reviews of my books in Amazon and here in Udemy on my teaching - particularly in my Udemy course on \"101 Crucial Lessons They Don\'t Teach You in Business School\").\r\n\r\nAn Entire MBA In 1 Course ®  is a registered trademark of Haroun Education Ventures, Inc. The contents of the course are copyright © 2017 Haroun Education Ventures, Inc.', 1, 0, 0, 0, '[]'),
(34, 'Học lập trình 2', 'vinhdlv995@gmail.com', '2020-04-25 02:40:18', '2020-07-15 07:40:18', '<p>đây là mô tả</p>', 1, 0, 0, 0, '[]'),
(35, 'Học lập trình 3', 'vinhdlv995@gmail.com', '2020-04-25 02:43:19', '2020-07-15 07:40:16', '<p>đây là mô tả</p>', 1, 0, 0, 0, '[]'),
(69, 'Vuejs nâng cao', 'vinhdlv995@gmail.com', '2020-05-02 00:42:06', '2020-07-15 07:40:13', '** #1 MOST PURCHASED BUSINESS COURSE ON UDEMY! ** OVER 300,000 STUDENTS IN 208 COUNTRIES ** \r\n\r\n** ACCORDING TO BUSINESS INSIDER: \"Getting your MBA has never been easier. Haroun is one of the highest rated professors on Udemy, so you can expect to be in good hands through the course of your education.\" **\r\n\r\n** SPECIAL $99 BONUS: FREE 384 PAGE MBA BOOK INCLUDED ($99 value). In order to further improve the student experience, there is a free download at the end of every section of this course (contains every slide & entire easy to read comprehensive scripts of all 49 lectures & >100 helpful internet links + more) keeping the course up to date, even easier to understand & even more fun and engaging! **\r\n\r\nAre you ready to take your career to the next level? In this course, you will learn everything you need to know about business….from starting a company to taking it public. This course covers all of the important topics you will learn from getting an MBA from a top school + real life practical business concepts that will help make you more successful!\r\n\r\nThis course is taught by an award winning MBA professor with significant real world experience working at Goldman Sachs as well as in the venture capital, hedge fund and consulting industries (he has founded several companies and sits on several boards). Many business concepts are simply common sense. This course will focus on business concepts that you need to know that might not be common sense. This course makes the general business, accounting and finance process very easy to understand! The professor of this course is also the author of \"101 Crucial Lessons They Don\'t Teach You in Business School,\" which Forbes magazine recently called \"1 of 6 books that all entrepreneurs need to read right now.\"\r\n\r\nThe contents of this course are all based on my work experience at several firms, including Goldman Sachs, the consulting industry at Accenture, a few companies I have started, the hedge fund industry where I worked at Citadel and also in the venture capital sector (the firm I founded had a venture capital investment in Facebook).I included helpful practical business concepts I learned while I did an MBA at Columbia University and a Bachelor of Commerce degree at McGill University. Think of this course as a “greatest hits” business summaries from my MBA, undergraduate business degree, work experience in consulting, equities, hedge funds, venture capital and starting my own companies.\r\n\r\nI have minimized “boring theoretical concepts” in this course in order to keep it as close to reality as possible. The concepts of this course have been taught by me in many classes at several universities, where the student feedback has been universally and incredibly positive (please see my LinkedIn profile for student reviews / feedback on my teaching style/effectiveness - thank you. Also please see reviews of my books in Amazon and here in Udemy on my teaching - particularly in my Udemy course on \"101 Crucial Lessons They Don\'t Teach You in Business School\").\r\n\r\nAn Entire MBA In 1 Course ®  is a registered trademark of Haroun Education Ventures, Inc. The contents of the course are copyright © 2017 Haroun Education Ventures, Inc.', 1, 2, 0, 0, '[]'),
(70, 'Vuejs nâng cao', '113777963231066507088', '2020-05-12 08:44:28', '2020-05-12 13:19:39', '<p>Đây là mô tả của khóa học Vuejs nâng cao</p>', 1, 3, 0, 0, '[]'),
(71, 'Học Lập Trình 4', 'vinhdlv995@gmail.com', '2020-05-12 17:51:07', '2020-05-12 17:51:07', '<p>Mô tả của lập trình 4</p>', 1, 3, 0, 0, '[]'),
(72, 'Python & Django nâng cao', 'vinhdlv995@gmail.com', '2020-05-12 17:56:18', '2020-05-12 17:56:18', '<p>Python &amp; Django nâng cao</p>', 1, 2, 0, 0, '[]'),
(73, 'Web cơ bản', '2587116521525757', '2020-05-29 05:21:12', '2020-07-15 08:16:41', '<p>Mô tả web cơ bản</p>', 1, 2, 0, 0, '[{\"value\":\"2020-07-07 03:36:58\",\"text\":\"Intro\"},{\"value\":\"2020-07-07 03:37:08\",\"text\":\"Beginer 1\"},{\"value\":\"2020-07-07 07:48:57\",\"text\":\"165456\"},{\"value\":\"2020-07-07 03:37:14\",\"text\":\"Beginer 2\"}]'),
(74, 'Khoa hoc', 'vinhdlv@test2.com', '2020-06-29 02:12:20', '2020-06-29 02:13:30', '<p>mô tả</p>', 1, 2, 0, 0, '[]'),
(75, 'Angular - The Complete Guide (2020 Edition)', '2587116521525757', '2020-07-09 18:22:10', '2020-07-15 08:14:35', '<p><strong>This course starts from scratch, you neither need to know Angular 1 nor Angular 2!</strong></p><p>Angular 10 simply is the latest version of Angular 2, you will learn this amazing framework from the ground up in this course!</p><p><strong>Join the most comprehensive, popular and bestselling Angular course on Udemy and benefit not just from a proven course concept but from a huge community as well!&nbsp;</strong></p><p>From&nbsp;<strong>Setup</strong>&nbsp;to&nbsp;<strong>Deployment</strong>, this course covers it all! You\'ll learn all about&nbsp;<strong>Components</strong>,&nbsp;<strong>Directives</strong>,&nbsp;<strong>Services</strong>,&nbsp;<strong>Forms</strong>,&nbsp;<strong>Http</strong>&nbsp;Access,&nbsp;<strong>Authentication, Optimizing an Angular&nbsp;App with Modules and Offline Compilation</strong>&nbsp;and&nbsp;<strong>much more&nbsp;</strong>- and in the end:&nbsp;You\'ll learn how to&nbsp;<strong>deploy</strong>&nbsp;<strong>an application</strong>!</p><p><strong>But that\'s not all!</strong>&nbsp;This course will also show you how to use the&nbsp;<strong>Angular&nbsp;CLI</strong>&nbsp;and feature a&nbsp;<strong>complete project</strong>, which allows you to practice the things learned throughout the course!</p>', 1, 2, 0, 0, '[{\"value\":\"2020-07-10 01:22:48\",\"text\":\"Getting Started\"},{\"value\":\"2020-07-10 01:22:55\",\"text\":\"The Basic\"},{\"value\":\"2020-07-10 01:23:06\",\"text\":\"Course Project - The Basics\"},{\"value\":\"2020-07-10 01:23:28\",\"text\":\"Debugging\"}]'),
(76, 'Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex)', '2587116521525757', '2020-07-09 18:39:40', '2020-07-15 08:14:32', '<p><strong>Hear what students are saying about the course:</strong></p><p><br></p><p><em>He knows how to teach. Splits every details into smaller parts and makes another video for each part. For this reason you don\'t feel yourself boring while watching videos because lots of them about 2-3 mins not more. One of the best teachers in Udemy that I saw.</em></p><p><em>The instructor uses an easy-to-follow approach that builds knowledge easily and incrementally.</em></p><p><em>Very well laid out tutorials that are easy to follow but also run at a pace that doesn\'t get boring.</em></p><p><strong>About the course</strong></p><p>No matter at which Metric you look at (Google Trends, Github&nbsp;Stars, Tweets ...)&nbsp;<strong>VueJS&nbsp;is the Shooting Star</strong>&nbsp;in the World of JavaScript Frameworks -&nbsp;<strong>it&nbsp;simply is&nbsp;amazing</strong>!</p><p>Frontend Frameworks are&nbsp;<strong>extremely popular</strong>&nbsp;because they give us this reactive, great User Experience we know from Mobile Apps - but now in the Browser! No wonder that&nbsp;<strong>Jobs</strong>&nbsp;requiring Frontend Framework&nbsp;Skills like VueJS&nbsp;are amongst the&nbsp;<strong>best paid</strong>&nbsp;ones in the Industry!</p><p>You may know Angular 2 and ReactJS, well,&nbsp;<strong>VueJS&nbsp;combines the Best of both Frameworks</strong>&nbsp;and makes building anything from&nbsp;<strong>small Widgets to big, Enterprise-Level Apps</strong>&nbsp;a Breeze and a whole lot of Fun! And if you don\'t know the two mentioned Frameworks:&nbsp;That\'s fine, too,&nbsp;<strong>this Course does not expect any knowledge</strong>&nbsp;of any other Frontend Framework&nbsp;- you will learn it all throughout this Course!</p>', 1, 3, 0, 0, '[{\"value\":\"2020-07-10 01:40:08\",\"text\":\"Getting Started\"},{\"value\":\"2020-07-10 01:40:31\",\"text\":\"Using Vuejs to interact with the DOM\"},{\"value\":\"2020-07-10 01:40:41\",\"text\":\"First Course Project\"}]'),
(77, 'Python eCommerce  Build a Django eCommerce Web Application (Basic)', '2587116521525757', '2020-07-15 07:52:42', '2020-07-15 08:04:23', '<p>Whether you want to:</p><p><br></p><p>- build the skills you need to get your first&nbsp;Python programming job</p><p>- move to a more senior software developer position</p><p>- get started with Machine Learning, Data Science, Django or other hot areas that Python specialises in</p><p>- or just learn Python to be able to create your own Python apps quickly.</p><p>…then you need a solid foundation in Python programming. And this course is designed to give you those core skills, fast.</p><p>This course is aimed at complete beginners who have never programmed before, as well as existing programmers who want to increase their career options by learning Python.</p><p>The fact is, Python is one of the most popular programming languages in the world – Huge companies like Google use it in mission critical applications like Google Search.</p><p>And Python is the number one language choice for machine learning, data science and artificial intelligence. To get those high paying jobs you need an expert knowledge of Python, and that’s what you will get from this course.</p><p>By the end of the course you’ll be able to apply in confidence for Python programming jobs. And yes, this applies even if you have never programmed before. With the right skills which you will learn in this course, you can become employable and valuable in the eyes of future employers.</p><p>Here’s what a few students have told us about the course after going through it.</p><p>“I had very limited programming experience before I started this course, so I have really learned a lot from the first few sections. It has taken me from essentially zero programming skill to a level where I\'m comfortable using Python to analyze data for my lab reports, and I\'m not even halfway done the course yet. There are other courses out there which focus on data analysis, but those courses are usually targeted at people who already know how to program which is why I chose this course instead. “ – Christian DiMaria</p><p><br></p><p>“I have been puttering through your Python course . In that time, though, and without finishing it yet I\'ve been able to automate quite a bit at my work. I work in a school system and unifying data from our various student information systems can be incredibly frustrating, time consuming, and at times challenging. Using your course, I\'ve learned enough to write applications that turn massive text files into dictionaries that get \"stitched\" together like a database and output to properly formatted CSV files and then uploaded via SFTP to various systems for secure processing. Our teachers, students, and the tech department have greatly benefitted from this automation. I just wanted to drop you a note thanking you for helping me learn this skill.” – Keith Medlin</p><p><br></p><p>“This course was great. Within 3 weeks I was able to write my own database related applications.” – Theo Coenen</p><p><br></p><p>And there are many more students who love the course – check out all the reviews for yourself.</p><p><strong>Will this course give you core python skills?</strong></p><p>Yes it will.&nbsp;There are a range of exciting opportunities for Python developers. All of them require a solid understanding of Python, and that’s what you will learn in this course.</p><p><strong>Will the course teach me data science, machine learning and artificial intelligence?</strong></p><p>No, it won’t do that – All of these topics are branches of Python programming.&nbsp;And all of them require a solid understanding of the Python language.</p><p>Nearly all courses on these topics assume that you understand Python, and without it you will quickly become lost and confused.</p><p>This course will give you that core, solid understanding of the Python programming language.</p><p>By the end of the course you will be ready to apply for Python programming positions as well as move on to specific areas of Python, as listed above.</p>', 1, 3, 0, 1, '[{\"value\":\"2020-07-15 14:53:12\",\"text\":\"1. Getting Started\"},{\"value\":\"2020-07-15 14:53:16\",\"text\":\"2. Hello World\"},{\"value\":\"2020-07-15 14:53:22\",\"text\":\"3. Products Component\"},{\"value\":\"2020-07-15 14:53:27\",\"text\":\"4. Templates\"},{\"value\":\"2020-07-15 14:53:32\",\"text\":\"5. Bootstrap Framework\"},{\"value\":\"2020-07-15 14:53:38\",\"text\":\"6. Search Component\"},{\"value\":\"2020-07-15 14:53:44\",\"text\":\"7. Cart Component\"},{\"value\":\"2020-07-15 14:53:52\",\"text\":\"8. Checkout Process\"}]'),
(78, 'Python eCommerce  Build a Django eCommerce Web Application (Basic Part 2)', '2587116521525757', '2020-07-15 08:26:48', '2020-07-15 08:46:29', '<p><strong>Here’s just some of what you’ll learn</strong></p><p>(It’s okay if you don’t understand all this yet, you will in the course)</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All the essential Python keywords, operators, statements, and expressions needed to fully understand exactly what you’re coding and why - making programming easy to grasp and less frustrating</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You will learn the answers to questions like What is the Python For Loop, what is Python used for, how Python switch the traditional syntax of code, and more.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Complete chapters on object-oriented programming and many other aspects of Python, including tKInter (for building GUI Interfaces) and using databases with Python.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Although this is primarily a Python 3 course, a python developer will need to work with Python 2 projects from time to time – We’ll show the difference in both versions to make sure you understand how things work differently in each version.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;How to develop powerful Python applications using one of the most powerful Integrated Development Environments on the market, IntelliJ IDEA! - Meaning you can code functional programs easier.&nbsp;<strong>IntelliJ</strong>&nbsp;has both a&nbsp;<strong>FREE</strong>&nbsp;and&nbsp;PAID version, and you can use either in this course.&nbsp;PyCharm will also work just fine.</p><p>(Don’t worry if you want to use another IDE. You’re free to use any IDE and still get the most out of this course).</p><p><br></p><p><strong>Does the course get updated?</strong></p><p>It’s no secret how technology is advancing at a rapid rate. New, more powerful hardware and software are being released&nbsp;<em>every day</em>, meaning it’s crucial to stay on top with the latest knowledge.</p><p><br></p><p>A lot of other courses on Udemy get released once, and never get updated.&nbsp;Learning from an outdated course and/or an outdated version of Python can be counter productive and even worse it could teach you the wrong way to do things.</p><p>For example if you apply some parts of Python 2 to Python 3 code, you will get completely different results.</p><p>We cover differences like this in the course and also continually update the course as well.</p><p><strong><em>What if you have questions?</em></strong></p><p>As if this course wasn’t complete enough, we offer&nbsp;<strong>full support</strong>, answering any questions you have&nbsp;<strong>7 days a week</strong>&nbsp;(whereas many instructors answer just once per week,&nbsp;<em>or not at all</em>).</p><p>This means you’ll never find yourself stuck on one lesson for days on end. With our hand-holding guidance, you’ll progress smoothly through this course without any major roadblocks.</p><p>That’s just one reason why Tim was voted&nbsp;<strong>top 10 in the&nbsp;Udemy instructor awards</strong>&nbsp;(out of a whopping 18,000 instructors), and quickly became a top-rated, bestselling instructor on the Udemy site.&nbsp;</p><p><em>Student Quote: “</em>Tim and JP are excellent teachers and are constantly answering questions and surveying students on new topics they will like to learn. This isn\'t a Python course it’s THE Python course you need.” – Sean Burger</p><p><strong><em>There’s no risk either!</em></strong></p><p>This course comes with a&nbsp;<strong>full 30 day money-back guarantee</strong>. Meaning if you are not completely satisfied with the course or your progress, simply let Tim or J-P know and they will refund you 100%, every last penny no questions asked.</p><p>You either end up with Python skills, go on to develop great programs and potentially make an awesome career for yourself, or you try the course and simply get all your money back if you don’t like it…</p><p><strong>You literally can’t lose.</strong></p><p><strong>Ready to get started, developer?</strong></p><p><strong>Enrol now&nbsp;</strong>using the “Add to Cart” button on the right, and get started on your way to creative, advanced Python brilliance. Or, take this course for a free spin using the preview feature, so you know you’re 100% certain this course is for you.</p><p><strong>See you on the inside&nbsp;<em>(hurry, your Python class is waiting!)</em></strong></p>', 1, 3, 0, 1, '[{\"value\":\"2020-07-15 15:27:19\",\"text\":\"1. Checkout Process\"},{\"value\":\"2020-07-15 15:27:31\",\"text\":\"2. Fast Track to jQuery\"},{\"value\":\"2020-07-15 15:27:39\",\"text\":\"3. Products & Async\"},{\"value\":\"2020-07-15 15:27:45\",\"text\":\"4. Custom User Model\"},{\"value\":\"2020-07-15 15:28:50\",\"text\":\"5. Custom Analytics\"}]'),
(79, 'Python eCommerce  Build a Django eCommerce Web Application (Basic Part 3)', '2587116521525757', '2020-07-15 08:42:19', '2020-07-15 08:52:02', '<p><strong><em>What if you have questions?</em></strong></p><p>As if this course wasn’t complete enough, we offer&nbsp;<strong>full support</strong>, answering any questions you have&nbsp;<strong>7 days a week</strong>&nbsp;(whereas many instructors answer just once per week,&nbsp;<em>or not at all</em>).</p><p>This means you’ll never find yourself stuck on one lesson for days on end. With our hand-holding guidance, you’ll progress smoothly through this course without any major roadblocks.</p><p>That’s just one reason why Tim was voted&nbsp;<strong>top 10 in the&nbsp;Udemy instructor awards</strong>&nbsp;(out of a whopping 18,000 instructors), and quickly became a top-rated, bestselling instructor on the Udemy site.&nbsp;</p><p><em>Student Quote: “</em>Tim and JP are excellent teachers and are constantly answering questions and surveying students on new topics they will like to learn. This isn\'t a Python course it’s THE Python course you need.” – Sean Burger</p><p><strong><em>There’s no risk either!</em></strong></p><p>This course comes with a&nbsp;<strong>full 30 day money-back guarantee</strong>. Meaning if you are not completely satisfied with the course or your progress, simply let Tim or J-P know and they will refund you 100%, every last penny no questions asked.</p><p>You either end up with Python skills, go on to develop great programs and potentially make an awesome career for yourself, or you try the course and simply get all your money back if you don’t like it…</p><p><strong>You literally can’t lose.</strong></p><p><strong>Ready to get started, developer?</strong></p><p><strong>Enrol now&nbsp;</strong>using the “Add to Cart” button on the right, and get started on your way to creative, advanced Python brilliance. Or, take this course for a free spin using the preview feature, so you know you’re 100% certain this course is for you.</p><p><strong>See you on the inside&nbsp;<em>(hurry, your Python class is waiting!)</em></strong></p><p><strong>Who this course is for:</strong></p><ul><li>Beginners with no previous programming experience looking to obtain the skills to get their first programming job.</li><li>Anyone looking to to build the minimum Python programming skills necessary as a pre-requisites for moving into machine learning, data science, and artificial intelligence.</li><li>Existing programmers who want to improve their career options by learning the Python programming language.</li><li>If you are an expert Python programmer with extensive knowledge, and many years’ experience, then this course is probably not for you.</li></ul><p><br></p>', 1, 5, 0, 1, '[{\"value\":\"2020-07-15 15:51:28\",\"text\":\"Stripe Integration\"},{\"value\":\"2020-07-15 15:51:35\",\"text\":\"Mailchimp Integration\"},{\"value\":\"2020-07-15 15:51:40\",\"text\":\"Go Live\"},{\"value\":\"2020-07-15 15:51:46\",\"text\":\"Account & Settings\"},{\"value\":\"2020-07-15 15:51:50\",\"text\":\"Selling Digital Items\"},{\"value\":\"2020-07-15 15:51:56\",\"text\":\"Graphs and Sales\"},{\"value\":\"2020-07-15 15:52:02\",\"text\":\"Thank you\"}]'),
(80, 'Laravel-and-Vue.js', '2587116521525757', '2020-07-15 09:05:06', '2020-07-15 09:11:03', '<p><br></p><p><br></p><p><strong><em>Rating: 5.0 out of 5</em></strong></p><p>Amazing course, best Laravel-Vuejs Learning experience. Updated material and clear explanations. I will return to this course over and over again to learn every time more and more. Thanks Sarthak!</p><p><br></p><p>******************************************************</p><p><strong><em>Rating: 5.0 out of 5</em></strong></p><p>By: Wisnu Pramono Etwin Saputro:</p><p>Explanation is easy to understand and I have added that I understand a lot about the material in it.</p><p>******************************************************</p><p><strong><em>Rating: 5.0 out of 5</em></strong></p><p>by Andy Brooks:</p><p>This is a great course taught by a knowledgeable expert in the field. I have learned so much from taking this course and can now take it into further expanding my knowledge in my work</p>', 1, 6, 0, 1, '[{\"value\":\"2020-07-15 16:06:10\",\"text\":\"Appendix - Vue.js Fundamental\"}]'),
(81, 'Master-Bootstrap-projects', '2587116521525757', '2020-07-15 09:22:31', '2020-07-15 09:58:25', '<p>This course will literally take you from knowing nothing about Bootstrap 3 or 4 to learning all of the utilities, components, widgets and grids and building real world themes and websites. You do NOT&nbsp;need to know Bootstrap 3 for this course. Even if you already&nbsp;know Bootstrap 4, skip the learning sections and head right for section 6 to create the simple boiler theme&nbsp;and&nbsp;start the projects. Everything is completely modular!</p><p><strong>Custom Bootstrap Sandbox</strong></p><p>I have created a completely&nbsp;custom&nbsp;HTML learning environment for the first few sections of this course. Each lecture has an html page associated with it and has a start state. As we move along through the lectures, you code along with me learning all that Bootstrap 4 offers including helpers/utilities, components, widgets, flexbox and more.</p>', 1, 4, 0, 1, '[{\"value\":\"2020-07-15 16:58:12\",\"text\":\"Chapter 1\"},{\"value\":\"2020-07-15 16:58:18\",\"text\":\"Chapter 2\"},{\"value\":\"2020-07-15 16:58:25\",\"text\":\"Chapter 3\"}]'),
(82, 'Angular - The Complete Guide (2020 Edition)', '2587116521525757', '2020-07-15 09:24:07', '2020-07-15 09:28:15', '<p><strong>This course starts from scratch, you neither need to know Angular 1 nor Angular 2!</strong></p><p><br></p><p>Angular 10 simply is the latest version of Angular 2, you will learn this amazing framework from the ground up in this course!</p><p><strong>Join the most comprehensive, popular and bestselling Angular course on Udemy and benefit not just from a proven course concept but from a huge community as well!&nbsp;</strong></p><p>From&nbsp;<strong>Setup</strong>&nbsp;to&nbsp;<strong>Deployment</strong>, this course covers it all! You\'ll learn all about&nbsp;<strong>Components</strong>,&nbsp;<strong>Directives</strong>,&nbsp;<strong>Services</strong>,&nbsp;<strong>Forms</strong>,&nbsp;<strong>Http</strong>&nbsp;Access,&nbsp;<strong>Authentication, Optimizing an Angular&nbsp;App with Modules and Offline Compilation</strong>&nbsp;and&nbsp;<strong>much more&nbsp;</strong>- and in the end:&nbsp;You\'ll learn how to&nbsp;<strong>deploy</strong>&nbsp;<strong>an application</strong>!</p><p><strong>But that\'s not all!</strong>&nbsp;This course will also show you how to use the&nbsp;<strong>Angular&nbsp;CLI</strong>&nbsp;and feature a&nbsp;<strong>complete project</strong>, which allows you to practice the things learned throughout the course!</p>', 1, 3, 0, 1, '[]'),
(83, 'React - The Complete Guide (incl Hooks, React Router, Redux)', '2587116521525757', '2020-07-15 09:25:33', '2020-07-15 10:17:34', '<p><strong>This course is fully up-to-date with the latest version of React and includes React Hooks! Of course it will be kept up-to-date in the future&nbsp;:-)</strong></p><p><br></p><p>---</p><p><strong>What\'s this course about?</strong></p><p>Learn React or dive deeper into it.&nbsp;Learn the theory, solve assignments, practice in demo projects and build one big application which is improved throughout the course:&nbsp;The Burger Builder!</p><p><strong>More details please!</strong></p><p>JavaScript is the&nbsp;<strong>major driver</strong>&nbsp;of modern web applications since it\'s the only programming language which runs in the browser and hence allows you to provide highly reactive apps. You\'ll be able to achieve mobile-app like</p>', 1, 5, 0, 1, '[{\"value\":\"2020-07-15 17:17:28\",\"text\":\"Install & Setting\"},{\"value\":\"2020-07-15 17:17:34\",\"text\":\"First Project\"}]'),
(84, 'Java Web Services', '2587116521525757', '2020-07-15 09:28:04', '2020-07-15 10:15:45', '<p><strong>Course Updated - I&nbsp;have upgraded the course to use Java Based configuration and use Spring Boot support in CXF.Enjoy!!</strong></p><p><br></p><p><strong>The ONLY course that covers the SOAP and REST web services Comprehensively!</strong></p><p><strong>Join 40,000+ students that are already enrolled!</strong></p><p><strong>Over 3000+ ... FIVE STAR Reviews! #toprated</strong></p>', 1, 2, 0, 1, '[{\"value\":\"2020-07-15 17:15:38\",\"text\":\"Installing Java\"},{\"value\":\"2020-07-15 17:15:45\",\"text\":\"First Project\"}]'),
(85, 'The Complete ASP.NET MVC 5 Course', '2587116521525757', '2020-07-15 09:29:50', '2020-07-15 10:10:36', '<p><strong>With over 40,000 happy&nbsp;students and 12,000+ positive reviews, this course is Udemy\'s most popular course for learning ASP.NET&nbsp;MVC!&nbsp;</strong></p><p><br></p><p><br></p><p>ASP.NET MVC is a server-side&nbsp;web framework for building dynamic, data-driven web&nbsp;applications. Since its first release in 2009, it has gained a lot of popularity amongst developers using Microsoft technologies. If you want to get employed as a web developer at a company that utilizes Microsoft technologies, you need to master&nbsp;ASP.NET&nbsp;MVC.</p>', 1, 0, 0, 1, '[{\"value\":\"2020-07-15 17:10:32\",\"text\":\"Chapter 1\"},{\"value\":\"2020-07-15 17:10:36\",\"text\":\"Chapter 2\"}]'),
(86, 'The Complete Node.js Developer Course (3rd Edition)', '2587116521525757', '2020-07-15 09:31:16', '2020-07-15 09:40:06', '<p><strong>This course was just completely refilmed to give you everything you need to master Node.js in 2019!</strong></p><p><br></p><p><strong>This includes new content, updated versions, new features, and more.</strong></p><p><strong>--</strong></p><p>Have you tried to learn Node before? You start a new course, and the instructor has you installing a bunch of libraries before you even know what Node is or how it works. You eventually get stuck and reach out to the instructor, but you get no reply. You then close the course and never open it again.</p><p>Sound familiar?</p>', 1, 0, 0, 1, '[{\"value\":\"2020-07-15 16:39:46\",\"text\":\"Welcom\"},{\"value\":\"2020-07-15 16:39:59\",\"text\":\"Install & Setting\"},{\"value\":\"2020-07-15 16:40:06\",\"text\":\"First Project\"}]'),
(87, 'Beginner to Pro in Excel: Financial Modeling and Valuation', '2587116521525757', '2020-07-15 10:35:10', '2020-07-15 15:20:30', '<p><strong><em>**Updated for June 2020!**</em></strong></p><p><br></p><p><strong><em>Do you want to learn how to use Excel in a real working environment?</em></strong></p><p>Are you about to graduate from university and start looking for your first job?&nbsp;</p><p>Are you a young professional looking to establish yourself&nbsp;in your new position?&nbsp;</p><p>Would you like to become your team\'s go-to person when it comes to Financial Modeling in Excel?&nbsp;</p><p><strong><em>If you answered yes to any of these, then this is the right course for you!</em></strong></p><p><strong><em>Join over 119,002 successful students taking this course!</em></strong></p>', 1, 0, 0, 0, '[]'),
(88, 'KLTN-17-6-2020', '2587116521525757', '2020-07-15 17:59:08', '2020-07-15 18:04:50', '<p>Mô tả KLTN-16-7-2020</p>', 1, 5, 0, 1, '[{\"value\":\"2020-07-16 01:00:20\",\"text\":\"Chapter 1\"},{\"value\":\"2020-07-16 01:00:28\",\"text\":\"Chapter 2\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(11) NOT NULL DEFAULT 0,
  `json_info_resourse` text DEFAULT '[]',
  `chapter_id` text NOT NULL DEFAULT '',
  `disable` tinyint(1) NOT NULL DEFAULT 0,
  `havePreview` tinyint(1) NOT NULL DEFAULT 0,
  `video_processing` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `title`, `description`, `course_id`, `created_at`, `updated_at`, `duration`, `json_info_resourse`, `chapter_id`, `disable`, `havePreview`, `video_processing`) VALUES
(71, '1. Welcome to Getting Started with eCommerce', '1. Welcome to Getting Started with eCommerce', 70, '2020-05-12 08:47:43', '2020-05-29 05:16:20', 208, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(72, '2. Software', '2. Software s', 70, '2020-05-12 08:48:05', '2020-05-29 05:16:24', 127, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(73, '1. Intro', '1. Intro', 33, '2020-05-12 17:45:47', '2020-05-29 05:14:25', 88, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(74, '2. A Fresh Virtualenv', '2. A Fresh Virtualenv', 33, '2020-05-12 17:45:56', '2020-05-29 05:14:58', 175, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(75, '3. Hello World', '3. Hello World', 33, '2020-05-12 17:46:06', '2020-05-29 05:15:01', 228, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(76, '4. Render HTML', '4. Render HTML', 33, '2020-05-12 17:46:15', '2020-05-29 05:15:05', 205, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(77, '5. Django Template', '5. Django Template', 33, '2020-05-12 17:46:32', '2020-05-29 05:15:08', 441, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(78, '1. Intro', '1. Intro', 34, '2020-05-12 17:46:58', '2020-05-29 05:16:35', 45, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(79, '2. Your First App Module', '2. Your First App Module', 34, '2020-05-12 17:47:07', '2020-05-29 05:16:39', 278, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(80, '3. Understanding CRUD', '3. Understanding CRUD', 34, '2020-05-12 17:47:15', '2020-05-29 05:16:42', 368, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(81, '4. Product Model', '4. Product Model', 34, '2020-05-12 17:47:24', '2020-05-29 05:16:45', 528, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(82, '5. Django Admin', '5. Django Admin', 34, '2020-05-12 17:47:56', '2020-05-29 05:16:48', 442, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(83, '1. Intro', '1. Intro', 35, '2020-05-12 17:48:10', '2020-05-29 05:16:51', 45, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(84, '2. Base Template', '2. Base Template', 35, '2020-05-12 17:48:19', '2020-05-29 05:16:55', 278, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(85, '3. Include Tag', '3. Include Tag', 35, '2020-05-12 17:48:28', '2020-05-29 05:16:58', 368, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(86, '4. Pass Arguments with Include', '4. Pass Arguments with Include', 35, '2020-05-12 17:48:38', '2020-05-29 05:17:00', 528, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(87, '5. Reusable List View Snippets', '5. Reusable List View Snippets', 35, '2020-05-12 17:48:47', '2020-05-29 05:17:03', 442, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(88, '1. Intro', '1. Intro', 71, '2020-05-12 17:52:24', '2020-05-29 05:17:05', 98, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(89, '2. Base Template', '2. Base Template', 71, '2020-05-12 17:52:35', '2020-05-29 05:17:08', 434, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(90, '3. Include Tag', '3. Include Tag', 71, '2020-05-12 17:52:53', '2020-05-29 05:17:11', 356, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(91, '4. Pass Arguments with Include', '4. Pass Arguments with Include', 71, '2020-05-12 17:53:05', '2020-05-29 05:17:14', 180, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(92, '5. Reusable List View Snippets', '5. Reusable List View Snippets', 71, '2020-05-12 17:53:22', '2020-05-29 05:17:17', 446, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(93, '1. Intro', '1. Intro', 72, '2020-05-12 17:56:52', '2020-05-29 05:17:21', 89, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(94, '2. Getting Started', '2. Getting Started', 72, '2020-05-12 17:57:13', '2020-05-29 05:17:24', 354, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(95, '3. Create Stripe Customer', '3. Create Stripe Customer', 72, '2020-05-12 17:57:24', '2020-05-29 05:18:04', 486, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(96, '4. Payment Method View & Stripe JS', '4. Payment Method View & Stripe JS', 72, '2020-05-12 17:57:35', '2020-05-29 05:18:28', 738, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(97, '5. Improving Payment Method Form', '5. Improving Payment Method Form', 72, '2020-05-12 17:57:49', '2020-05-29 05:18:35', 868, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(98, '6. Improving Payment Method Form Part 2', '6. Improving Payment Method Form Part 2', 72, '2020-05-12 17:58:03', '2020-05-29 05:18:32', 443, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(99, '7. Reusable Stripe Module', '7. Reusable Stripe Module', 72, '2020-05-12 17:58:20', '2020-05-29 05:18:37', 837, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(100, '8. Add Card to Customer with Stripe', '8. Add Card to Customer with Stripe', 72, '2020-05-12 17:59:01', '2020-05-29 05:18:41', 624, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(101, '9. Save Card in Django', '9. Save Card in Django', 72, '2020-05-12 17:59:15', '2020-05-29 05:18:46', 523, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(102, '10. Charge the Customer', '10. Charge the Customer', 72, '2020-05-12 17:59:29', '2020-05-29 05:18:48', 1283, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(103, '11. Putting it All Together', '11. Putting it All Together', 72, '2020-05-12 17:59:41', '2020-05-29 05:18:51', 914, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(104, '12. Guest Card Checkout', '12. Guest Card Checkout', 72, '2020-05-12 17:59:59', '2020-05-29 05:18:53', 560, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(105, '13. Changing Payment Methods', '13. Changing Payment Methods', 72, '2020-05-12 18:00:25', '2020-05-29 05:18:57', 820, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(106, '14. Improving Card UI Part 1', '14. Improving Card UI Part 1', 72, '2020-05-12 18:00:41', '2020-05-29 05:18:59', 483, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(107, '15. Improving Card UI Part 2', '15. Improving Card UI Part 2', 72, '2020-05-12 18:00:53', '2020-05-29 05:19:02', 666, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(118, 'bài 1', 'mô tả', 69, '2020-06-23 04:06:35', '2020-06-23 04:06:38', 595, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(119, 'bài 2', 'mô tả', 69, '2020-06-23 04:06:50', '2020-06-23 04:06:50', 4, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(120, 'bài 1', 'mô tả', 74, '2020-06-29 02:13:05', '2020-06-29 02:13:08', 175, '[]', '2020-07-07 02:25:12', 0, 0, 1),
(140, 'Intro 1', 'Intro 1', 73, '2020-07-06 20:39:20', '2020-07-07 01:38:38', 45, '[{\"name\":\"db.png\"},{\"name\":\"goodlearning_22_5_2020.sql\"},{\"name\":\"New Text Document.txt\"},{\"name\":\"report_AI.docx\"},{\"name\":\"run time command.txt\"},{\"name\":\"avatar.png\"}]', '2020-07-07 03:36:58', 1, 0, 1),
(141, 'begin 1.1', 'begin 1.1', 73, '2020-07-06 22:14:33', '2020-07-07 01:38:18', 45, '[]', '2020-07-07 03:37:08', 1, 0, 1),
(142, 'dsf', 'sdfdsfsdfdsds', 73, '2020-07-07 01:10:00', '2020-07-07 01:37:12', 45, '[{\"name\":\"avatar.png\"},{\"name\":\"db.png\"},{\"name\":\"goodlearning_22_5_2020.sql\"},{\"name\":\"New Text Document.txt\"},{\"name\":\"report_AI.docx\"},{\"name\":\"run time command.txt\"}]', '2020-07-07 03:36:58', 1, 0, 1),
(143, 'asdas', 'd', 73, '2020-07-07 01:39:22', '2020-07-07 01:39:38', 45, '[{\"name\":\"140.mp4\"},{\"name\":\"141.mp4\"},{\"name\":\"142.mp4\"}]', '2020-07-07 03:36:58', 1, 0, 1),
(144, 'sds', 'adsdsad', 73, '2020-07-07 01:41:46', '2020-07-07 01:46:28', 45, '[{\"name\":\"avatar.png\"},{\"name\":\"goodlearning_22_5_2020.sql\"}]', '2020-07-07 03:36:58', 1, 0, 1),
(145, '1', '1', 73, '2020-07-07 01:48:13', '2020-07-08 06:43:08', 278, '[{\"name\":\"avatar.png\"},{\"name\":\"goodlearning_22_5_2020.sql\"}]', '2020-07-07 03:36:58', 0, 0, 1),
(146, '123', '213', 73, '2020-07-07 01:50:10', '2020-07-08 06:41:57', 368, '[{\"name\":\"db.png\"},{\"name\":\"New Text Document.txt\"}]', '2020-07-07 03:36:58', 0, 1, 1),
(147, 'intro 1', 'intro 1', 73, '2020-07-08 02:10:31', '2020-07-08 02:11:14', 278, '[{\"name\":\"xampp-control.exe\"},{\"name\":\"goodlearning_22_5_2020 - Copy.sql\"}]', '2020-07-07 03:36:58', 0, 0, 1),
(148, 'intro test', 'intro test', 73, '2020-07-08 03:00:01', '2020-07-08 03:00:01', 442, '[{\"name\":\"avatar - Copy.png\"},{\"name\":\"db.png\"}]', '2020-07-07 03:36:58', 0, 0, 1),
(149, 'test2', 'test2', 73, '2020-07-08 03:01:17', '2020-07-14 22:34:41', 368, '[]', '2020-07-07 03:36:58', 1, 0, 1),
(150, 'est3', 'test3', 73, '2020-07-08 03:02:07', '2020-07-08 03:02:08', 45, '[]', '2020-07-07 03:36:58', 0, 0, 1),
(151, '121212', '12121212', 73, '2020-07-08 03:03:25', '2020-07-08 03:03:25', 45, '[]', '2020-07-07 03:36:58', 0, 0, 1),
(152, 'fdgdfgdf', 'gdfgdfg', 73, '2020-07-08 03:04:15', '2020-07-08 03:04:15', 0, '[]', '', 0, 0, 1),
(153, '23123', '123', 73, '2020-07-08 03:05:53', '2020-07-08 03:05:54', 45, '[]', '2020-07-07 07:48:57', 0, 0, 1),
(154, 'fsdfdsfsd', 'fsdfdsf', 73, '2020-07-08 03:06:37', '2020-07-08 03:06:38', 278, '[]', '2020-07-07 03:37:08', 0, 1, 1),
(155, 'sfsdfsdf', 'sdfds', 73, '2020-07-08 06:40:37', '2020-07-08 06:40:38', 278, '[]', '2020-07-07 03:36:58', 0, 1, 1),
(156, 'Course Introduction', 'Course Introduction', 75, '2020-07-09 18:24:13', '2020-07-09 18:24:19', 45, '[]', '2020-07-10 01:22:48', 0, 1, 1),
(157, 'What is Angular', 'What is Angular', 75, '2020-07-09 18:24:48', '2020-07-09 18:24:49', 278, '[]', '2020-07-10 01:22:48', 0, 1, 1),
(158, 'Angular & Angular 2 & Angular 9', 'Angular & Angular 2 & Angular 9', 75, '2020-07-09 18:25:17', '2020-07-09 18:25:18', 45, '[]', '2020-07-10 01:22:48', 0, 1, 1),
(159, 'Module Production', 'Module Production', 75, '2020-07-09 18:26:09', '2020-07-09 18:26:10', 45, '[{\"name\":\"test.ppt\"},{\"name\":\"goodlearning_22_5_2020.sql\"}]', '2020-07-10 01:22:55', 0, 0, 1),
(160, 'How an Angular App gets Loaded and Started', 'How an Angular App gets Loaded and Started', 75, '2020-07-09 18:26:49', '2020-07-09 18:26:50', 278, '[{\"name\":\"test.ppt\"}]', '2020-07-10 01:22:55', 0, 0, 1),
(161, 'Project Introduction', 'Project Introduction', 75, '2020-07-09 18:27:45', '2020-07-09 18:27:46', 368, '[]', '2020-07-10 01:23:06', 0, 0, 1),
(162, 'Planning the App', 'Planning the App', 75, '2020-07-09 18:28:12', '2020-07-09 18:28:13', 368, '[{\"name\":\"goodlearning_22_5_2020.sql\"}]', '2020-07-10 01:23:06', 0, 0, 1),
(163, 'Understanding Angular Error Messages', 'Understanding Angular Error Messages', 75, '2020-07-09 18:28:42', '2020-07-09 18:28:44', 442, '[{\"name\":\"test.ppt\"}]', '2020-07-10 01:23:28', 0, 0, 1),
(164, 'Course Introduction', 'Course Introduction', 76, '2020-07-09 18:41:13', '2020-07-09 18:41:14', 45, '[{\"name\":\"test.ppt\"}]', '2020-07-10 01:40:08', 0, 1, 1),
(165, 'Course Structure', 'Course Structure', 76, '2020-07-09 18:41:47', '2020-07-09 18:41:48', 278, '[]', '2020-07-10 01:40:08', 0, 1, 1),
(166, 'Module Introduction', 'Module Introduction', 76, '2020-07-09 18:42:35', '2020-07-09 18:42:37', 278, '[]', '2020-07-10 01:40:31', 0, 0, 1),
(167, 'Understanding VueJS Templates', 'Understanding VueJS Templates', 76, '2020-07-09 18:43:23', '2020-07-09 18:43:25', 278, '[{\"name\":\"db.png\"},{\"name\":\"goodlearning_22_5_2020.sql\"}]', '2020-07-10 01:40:31', 0, 0, 1),
(168, 'Introduction & Challenge', 'Introduction & Challenge', 76, '2020-07-09 18:43:57', '2020-07-09 18:43:58', 368, '[{\"name\":\"goodlearning_22_5_2020.sql\"},{\"name\":\"report_AI.docx\"},{\"name\":\"test.ppt\"}]', '2020-07-10 01:40:41', 0, 0, 1),
(169, 'test video', 'test video', 76, '2020-07-14 22:03:40', '2020-07-14 22:14:07', 278, '[]', '2020-07-10 01:40:08', 1, 0, 1),
(170, 'asdasd', 'asdasdasd', 76, '2020-07-14 22:05:54', '2020-07-14 22:16:59', 278, '[]', '2020-07-10 01:40:08', 1, 0, 1),
(171, '121212', '1212', 76, '2020-07-14 22:09:02', '2020-07-14 22:17:14', 45, '[]', '2020-07-10 01:40:08', 1, 0, 1),
(172, 'asdasda', 'sdasd', 76, '2020-07-14 22:10:50', '2020-07-14 22:20:04', 0, '[]', '', 0, 0, 1),
(173, '12', '121212', 76, '2020-07-14 22:14:20', '2020-07-14 22:22:30', 0, '[]', '', 0, 0, 1),
(174, 'Test video', 'Test video', 76, '2020-07-14 22:26:01', '2020-07-14 22:31:49', 278, '[]', '2020-07-10 01:40:08', 1, 0, 1),
(175, 'test video', 'test video', 76, '2020-07-14 22:32:02', '2020-07-14 22:34:53', 278, '[]', '2020-07-10 01:40:08', 1, 0, 1),
(176, 'test video', 'test video', 76, '2020-07-14 22:35:07', '2020-07-14 22:39:11', 442, '[]', '2020-07-10 01:40:08', 1, 0, 1),
(177, 'test video', 'test video', 76, '2020-07-14 22:39:25', '2020-07-14 23:26:20', 278, '[]', '2020-07-10 01:40:08', 1, 0, 1),
(178, 'test video', 'test video', 76, '2020-07-14 23:26:33', '2020-07-14 23:29:43', 442, '[]', '2020-07-10 01:40:31', 1, 0, 1),
(179, 'test v', 'test v', 76, '2020-07-14 23:29:56', '2020-07-15 00:00:17', 278, '[]', '2020-07-10 01:40:31', 1, 0, 1),
(180, 'test video', 'test video', 76, '2020-07-15 00:00:46', '2020-07-15 00:07:54', 278, '[]', '2020-07-10 01:40:08', 1, 0, 1),
(181, '21', '212', 76, '2020-07-15 00:09:04', '2020-07-15 00:11:42', 442, '[]', '2020-07-10 01:40:08', 1, 1, 1),
(182, 'test video', 'test video', 76, '2020-07-15 00:16:40', '2020-07-15 00:19:26', 442, '[]', '2020-07-10 01:40:08', 0, 1, 1),
(183, '23213123', '123123123', 76, '2020-07-15 00:34:04', '2020-07-15 00:35:49', 278, '[]', '2020-07-10 01:40:08', 0, 0, 1),
(184, 'ahihi', 'ahihi', 76, '2020-07-15 00:38:16', '2020-07-15 00:38:18', 2, '[]', '2020-07-10 01:40:08', 0, 0, 1),
(185, '123', '123', 76, '2020-07-15 00:40:02', '2020-07-15 00:40:05', 2, '[]', '2020-07-10 01:40:08', 0, 0, 1),
(186, '123', '123jjjj', 76, '2020-07-15 00:42:35', '2020-07-15 00:42:39', 2, '[]', '2020-07-10 01:40:08', 0, 0, 1),
(187, 'gbgbgngf', 'gfhfghfgh', 76, '2020-07-15 00:44:15', '2020-07-15 00:45:56', 278, '[]', '2020-07-10 01:40:08', 0, 0, 1),
(188, 'dfff', 'ffffff', 76, '2020-07-15 01:02:28', '2020-07-15 01:04:51', 442, '[{\"name\":\"avatar.png\"},{\"name\":\"class.png\"},{\"name\":\"composer.json\"},{\"name\":\"db.png\"},{\"name\":\"goodlearning_22_5_2020.sql\"}]', '2020-07-10 01:40:08', 0, 0, 1),
(190, 'fjfgh', 'gfhfghfgh', 76, '2020-07-15 07:11:26', '2020-07-15 07:11:28', 278, '[]', '2020-07-10 01:40:08', 0, 0, 0),
(191, 'asdasd', 'asdasd', 76, '2020-07-15 07:12:22', '2020-07-15 07:12:24', 278, '[]', '2020-07-10 01:40:31', 0, 0, 0),
(192, 'dfgdf', 'gdfgdfg', 76, '2020-07-15 07:13:31', '2020-07-15 07:13:32', 45, '[]', '2020-07-10 01:40:08', 0, 0, 0),
(193, 'sdasd', 'sadasd', 76, '2020-07-15 07:14:41', '2020-07-15 07:14:44', 368, '[]', '2020-07-10 01:40:31', 0, 0, 0),
(194, 'dsfdsf', 'sdfdsf', 76, '2020-07-15 07:16:13', '2020-07-15 07:16:14', 528, '[]', '2020-07-10 01:40:31', 0, 0, 0),
(195, 'dasdasd', 'asdasdsad', 76, '2020-07-15 07:18:01', '2020-07-15 07:18:02', 368, '[]', '2020-07-10 01:40:08', 0, 0, 0),
(196, 'dasdadas', 'asdasd', 76, '2020-07-15 07:19:48', '2020-07-15 07:19:48', 0, '[]', '', 0, 0, 0),
(197, 'sdfdsfsdf', 'sdf', 73, '2020-07-15 07:22:32', '2020-07-15 07:22:32', 0, '[]', '', 0, 0, 0),
(198, 'asdadasd', 'asdasdasd', 76, '2020-07-15 07:24:16', '2020-07-15 07:32:45', 278, '[]', '2020-07-10 01:40:08', 0, 0, 1),
(199, 'fghghfgh', 'fgh', 76, '2020-07-15 07:26:19', '2020-07-15 07:27:30', 45, '[]', '2020-07-10 01:40:31', 0, 0, 1),
(200, '1. Welcome to Getting Started with eCommerce', '1. Welcome to Getting Started with eCommerce', 77, '2020-07-15 07:54:52', '2020-07-15 07:57:04', 123, '[{\"name\":\"1. Welcome to Getting Started with eCommerce.vtt\"}]', '2020-07-15 14:53:12', 0, 0, 1),
(201, '2. Software', '2. Software', 77, '2020-07-15 07:55:18', '2020-07-15 07:58:01', 127, '[{\"name\":\"2. Software.vtt\"}]', '2020-07-15 14:53:12', 0, 1, 1),
(202, '1. Intro', '1. Intro', 77, '2020-07-15 07:55:44', '2020-07-15 07:58:45', 88, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 14:53:16', 0, 0, 1),
(203, '2. A Fresh Virtualenv', '2. A Fresh Virtualenv', 77, '2020-07-15 07:56:08', '2020-07-15 08:00:42', 175, '[{\"name\":\"2. A Fresh Virtualenv.vtt\"}]', '2020-07-15 14:53:16', 0, 0, 1),
(204, '1. Your First App Module', '1. Your First App Module', 77, '2020-07-15 07:56:57', '2020-07-15 08:06:19', 278, '[{\"name\":\"2. Your First App Module.vtt\"}]', '2020-07-15 14:53:22', 0, 0, 1),
(205, '2. Understanding CRUD', '2. Understanding CRUD', 77, '2020-07-15 07:57:39', '2020-07-15 08:10:45', 368, '[{\"name\":\"3. Understanding CRUD.vtt\"}]', '2020-07-15 14:53:22', 0, 0, 1),
(206, '3. Product Model', '3. Product Model', 77, '2020-07-15 07:58:22', '2020-07-15 08:15:01', 528, '[{\"name\":\"4. Product Model.mp4\"}]', '2020-07-15 14:53:27', 0, 0, 1),
(207, '4. Django Admin', '4. Django Admin', 77, '2020-07-15 07:59:14', '2020-07-15 08:19:45', 442, '[{\"name\":\"5. Django Admin.vtt\"}]', '2020-07-15 14:53:27', 0, 0, 1),
(208, '1. Intro', '1. Intro', 77, '2020-07-15 07:59:56', '2020-07-15 08:20:07', 45, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 14:53:32', 0, 0, 1),
(209, '2. Adding Bootstrap', '2. Adding Bootstrap', 77, '2020-07-15 08:00:26', '2020-07-15 08:21:05', 124, '[{\"name\":\"2. Adding Bootstrap.vtt\"}]', '2020-07-15 14:53:32', 0, 0, 1),
(210, '1. Intro', '1. Intro', 77, '2020-07-15 08:00:58', '2020-07-15 08:22:08', 143, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 14:53:38', 0, 0, 1),
(211, '2. A Basic Search View', '2. A Basic Search View', 77, '2020-07-15 08:01:26', '2020-07-15 08:27:42', 662, '[{\"name\":\"2. A Basic Search View.mp4\"},{\"name\":\"2. A Basic Search View.vtt\"}]', '2020-07-15 14:53:38', 0, 0, 1),
(212, '1. Intro', '1. Intro', 77, '2020-07-15 08:01:58', '2020-07-15 08:28:12', 65, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 14:53:44', 0, 0, 1),
(213, '2. Cart App', '2. Cart App', 77, '2020-07-15 08:02:23', '2020-07-15 08:30:21', 235, '[{\"name\":\"2. Cart App.vtt\"}]', '2020-07-15 14:53:44', 0, 0, 1),
(214, '1. Intro', '1. Intro', 77, '2020-07-15 08:02:52', '2020-07-15 08:31:02', 64, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 14:53:52', 0, 0, 1),
(215, '2. The Roadmap for the Checkout Process', '2. The Roadmap for the Checkout Process', 77, '2020-07-15 08:03:10', '2020-07-15 08:33:31', 304, '[{\"name\":\"2. The Roadmap for the Checkout Process.vtt\"}]', '2020-07-15 14:53:52', 0, 0, 1),
(216, '1. Intro', '1. Intro', 78, '2020-07-15 08:29:16', '2020-07-15 08:34:01', 64, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 15:27:19', 0, 1, 1),
(217, '2. The Roadmap for the Checkout Process', '2. The Roadmap for the Checkout Process', 78, '2020-07-15 08:29:48', '2020-07-15 08:36:51', 304, '[{\"name\":\"2. The Roadmap for the Checkout Process.vtt\"}]', '2020-07-15 15:27:19', 0, 0, 1),
(218, '3. The Order Component', '3. The Order Component', 78, '2020-07-15 08:30:10', '2020-07-15 08:41:53', 633, '[{\"name\":\"3. The Order Component.vtt\"}]', '2020-07-15 15:27:19', 0, 0, 1),
(219, '1. Intro', '1. Intro', 78, '2020-07-15 08:30:47', '2020-07-15 08:42:24', 64, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 15:27:31', 0, 0, 1),
(220, '2. Getting Started', '2. Getting Started', 78, '2020-07-15 08:31:05', '2020-07-15 08:48:34', 308, '[{\"name\":\"2. Getting Started.vtt\"}]', '2020-07-15 15:27:31', 0, 0, 1),
(221, '3. A Basic Selector', '3. A Basic Selector', 78, '2020-07-15 08:31:23', '2020-07-15 08:52:48', 210, '[{\"name\":\"3. A Basic Selector.vtt\"}]', '2020-07-15 15:27:31', 0, 0, 1),
(222, '1. Intro', '1. Intro', 78, '2020-07-15 08:32:08', '2020-07-15 08:56:07', 53, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 15:27:39', 0, 0, 1),
(223, '2. Sync vs Async', '2. Sync vs Async', 78, '2020-07-15 08:32:39', '2020-07-15 08:59:44', 300, '[{\"name\":\"2. Sync vs Async.vtt\"}]', '2020-07-15 15:27:39', 0, 0, 1),
(224, '1. Intro', '1. Intro', 78, '2020-07-15 08:33:48', '2020-07-15 09:00:39', 53, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 15:27:45', 0, 0, 1),
(225, 'Sync vs Async', 'Sync vs Async', 78, '2020-07-15 08:35:00', '2020-07-15 09:03:02', 300, '[{\"name\":\"2. Sync vs Async.vtt\"}]', '2020-07-15 15:27:45', 0, 0, 1),
(226, 'Ajax-ify a Form', 'Ajax-ify a Form', 78, '2020-07-15 08:35:49', '2020-07-15 09:09:02', 739, '[{\"name\":\"3. Ajax-ify a Form.vtt\"}]', '2020-07-15 15:27:45', 0, 0, 1),
(227, 'Handle Ajax in Django with JsonResponse', 'Handle Ajax in Django with JsonResponse', 78, '2020-07-15 08:36:14', '2020-07-15 09:15:51', 581, '[{\"name\":\"4. Handle Ajax in Django with JsonResponse.vtt\"}]', '2020-07-15 15:28:50', 0, 0, 1),
(228, 'Cart Item Count', 'Cart Item Count', 78, '2020-07-15 08:36:35', '2020-07-15 09:18:25', 169, '[{\"name\":\"5. Cart Item Count.vtt\"}]', '2020-07-15 15:28:50', 0, 0, 1),
(229, 'Refresh Cart Ajax', 'Refresh Cart Ajax', 78, '2020-07-15 08:36:55', '2020-07-15 09:27:54', 548, '[{\"name\":\"6. Refresh Cart Ajax.vtt\"}]', '2020-07-15 15:28:50', 0, 0, 1),
(230, 'Intro', 'Intro', 79, '2020-07-15 08:52:27', '2020-07-15 09:29:08', 89, '[{\"name\":\"1. Intro.vtt\"}]', '2020-07-15 15:51:28', 0, 0, 1),
(231, 'Getting Started', 'Getting Started', 79, '2020-07-15 08:52:45', '2020-07-15 09:32:21', 354, '[{\"name\":\"2. Getting Started.vtt\"}]', '2020-07-15 15:51:28', 0, 0, 1),
(232, 'Create Stripe Customer', 'Create Stripe Customer', 79, '2020-07-15 08:53:11', '2020-07-15 09:36:20', 486, '[{\"name\":\"3. Create Stripe Customer.vtt\"}]', '2020-07-15 15:51:28', 0, 1, 1),
(233, 'Payment Method View & Stripe JS', 'Payment Method View & Stripe JS', 79, '2020-07-15 08:55:02', '2020-07-15 09:41:57', 738, '[{\"name\":\"4. Payment Method View & Stripe JS.vtt\"}]', '2020-07-15 15:51:35', 0, 0, 1),
(234, 'Improving Payment Method Form', 'Improving Payment Method Form', 79, '2020-07-15 08:55:39', '2020-07-15 09:53:30', 868, '[{\"name\":\"5. Improving Payment Method Form.vtt\"}]', '2020-07-15 15:51:35', 0, 0, 1),
(235, 'Improving Payment Method Form Part 2', 'Improving Payment Method Form Part 2', 79, '2020-07-15 08:56:45', '2020-07-15 09:57:49', 443, '[{\"name\":\"6. Improving Payment Method Form Part 2.mp4\"}]', '2020-07-15 15:51:40', 0, 0, 1),
(236, 'Reusable Stripe Module', 'Reusable Stripe Module', 79, '2020-07-15 08:57:23', '2020-07-15 10:06:08', 837, '[{\"name\":\"7. Reusable Stripe Module.vtt\"}]', '2020-07-15 15:51:40', 0, 0, 1),
(237, 'Add Card to Customer with Stripe', 'Add Card to Customer with Stripe', 79, '2020-07-15 08:58:46', '2020-07-15 10:11:30', 624, '[]', '2020-07-15 15:51:46', 0, 0, 1),
(238, 'Save Card in Django', 'Save Card in Django', 79, '2020-07-15 08:59:13', '2020-07-15 10:26:58', 523, '[{\"name\":\"8. Add Card to Customer with Stripe.vtt\"}]', '2020-07-15 15:51:46', 0, 0, 1),
(239, 'Charge the Customer', 'Charge the Customer', 79, '2020-07-15 08:59:51', '2020-07-15 10:55:49', 1283, '[{\"name\":\"10. Charge the Customer.vtt\"}]', '2020-07-15 15:51:50', 0, 0, 1),
(240, 'Putting it All Together', 'Putting it All Together', 79, '2020-07-15 09:00:32', '2020-07-15 11:08:40', 914, '[{\"name\":\"11. Putting it All Together.vtt\"}]', '2020-07-15 15:51:56', 0, 0, 1),
(241, 'Guest Card Checkout', 'Guest Card Checkout', 79, '2020-07-15 09:01:01', '2020-07-15 11:24:02', 560, '[{\"name\":\"12. Guest Card Checkout.vtt\"}]', '2020-07-15 15:52:02', 0, 0, 1),
(242, '1. Getting Started With Vue.js', '1. Getting Started With Vue.js', 80, '2020-07-15 09:06:46', '2020-07-15 11:33:26', 433, '[{\"name\":\"1. Getting Started With Vue.js.vtt\"}]', '2020-07-15 16:06:10', 0, 1, 1),
(243, '2. Setup Vue Locally', '2. Setup Vue Locally', 80, '2020-07-15 09:07:03', '2020-07-15 11:41:10', 331, '[{\"name\":\"2. Setup Vue Locally.vtt\"}]', '2020-07-15 16:06:10', 0, 1, 1),
(244, '3. List Rendering - Part 1 of 3', '3. List Rendering - Part 1 of 3', 80, '2020-07-15 09:07:22', '2020-07-15 11:50:28', 235, '[{\"name\":\"3. List Rendering - Part 1 of 3.vtt\"},{\"name\":\"3.1 List Rendering - Begin.zip.zip\"},{\"name\":\"3.2 List Rendering - Final.zip.zip\"}]', '2020-07-15 16:06:10', 0, 0, 1),
(245, '10. Event Handling - Part 2 of 4', '10. Event Handling - Part 2 of 4', 80, '2020-07-15 09:07:50', '2020-07-15 11:56:47', 168, '[{\"name\":\"10. Event Handling - Part 2 of 4.vtt\"}]', '2020-07-15 16:06:10', 0, 0, 1),
(246, '11. Event Handling - Part 3 of 4', '11. Event Handling - Part 3 of 4', 80, '2020-07-15 09:08:14', '2020-07-15 12:02:43', 248, '[{\"name\":\"11. Event Handling - Part 3 of 4.vtt\"}]', '2020-07-15 16:06:10', 0, 0, 1),
(247, '12. Event Handling - Part 4 of 4', '12. Event Handling - Part 4 of 4', 80, '2020-07-15 09:08:40', '2020-07-15 12:10:03', 289, '[{\"name\":\"12. Event Handling - Part 4 of 4.vtt\"}]', '2020-07-15 16:06:10', 0, 0, 1),
(248, '13. Class Binding - Part 1 of 2', '13. Class Binding - Part 1 of 2', 80, '2020-07-15 09:09:02', '2020-07-15 12:16:38', 251, '[]', '2020-07-15 16:06:10', 0, 0, 1),
(249, '14. Class Binding - Part 2 of 2', '14. Class Binding - Part 2 of 2', 80, '2020-07-15 09:09:37', '2020-07-15 12:28:52', 509, '[]', '2020-07-15 16:06:10', 0, 0, 1),
(250, '15. Style Binding - Part 1 of 2', '15. Style Binding - Part 1 of 2', 80, '2020-07-15 09:09:56', '2020-07-15 12:33:27', 190, '[]', '2020-07-15 16:06:10', 0, 0, 1),
(251, '16. Style Binding - Part 2 of 2', '16. Style Binding - Part 2 of 2', 80, '2020-07-15 09:10:11', '2020-07-15 12:43:40', 384, '[]', '2020-07-15 16:06:10', 0, 0, 1),
(252, '17. Computed Property - Part 1 of 3', '17. Computed Property - Part 1 of 3', 80, '2020-07-15 09:10:22', '2020-07-15 12:48:18', 181, '[]', '2020-07-15 16:06:10', 0, 0, 1),
(253, '18. Computed Property - Part 2 of 3', '18. Computed Property - Part 2 of 3', 80, '2020-07-15 09:10:35', '2020-07-15 12:57:53', 391, '[]', '2020-07-15 16:06:10', 0, 0, 1),
(254, '19. Computed Property - Part 3 of 3', '19. Computed Property - Part 3 of 3', 80, '2020-07-15 09:10:51', '2020-07-15 13:13:20', 794, '[]', '2020-07-15 16:06:10', 0, 0, 1),
(255, 'Grab the PDF Guide', 'Grab the PDF Guide', 86, '2020-07-15 09:40:47', '2020-07-15 09:40:48', 45, '[{\"name\":\"78.mp4\"}]', '2020-07-15 16:39:46', 0, 1, 1),
(256, 'Printing in Color', 'Printing in Color', 86, '2020-07-15 09:42:59', '2020-07-15 09:43:00', 45, '[{\"name\":\"report_AI.docx\"}]', '2020-07-15 16:39:59', 0, 0, 1),
(257, 'Global npm Modules and nodemon', 'Global npm Modules and nodemon', 86, '2020-07-15 09:49:50', '2020-07-15 09:49:51', 278, '[]', '2020-07-15 16:39:59', 0, 1, 1),
(258, 'Section Intro: File System and Command Line Args', 'Section Intro: File System and Command Line Args', 86, '2020-07-15 09:50:12', '2020-07-15 09:50:13', 278, '[]', '2020-07-15 16:39:59', 0, 0, 1),
(259, 'Getting Input from Users', 'Getting Input from Users', 86, '2020-07-15 09:50:25', '2020-07-15 09:50:27', 442, '[]', '2020-07-15 16:39:59', 0, 0, 1),
(260, 'Argument Parsing with Yargs: Part I', 'Argument Parsing with Yargs: Part I', 86, '2020-07-15 09:50:39', '2020-07-15 09:50:40', 278, '[]', '2020-07-15 16:40:06', 0, 0, 1),
(261, 'Argument Parsing with Yargs: Part II', 'Argument Parsing with Yargs: Part II', 86, '2020-07-15 09:50:53', '2020-07-15 09:50:54', 45, '[]', '2020-07-15 16:40:06', 0, 0, 1),
(262, 'Storing Data with JSON', 'Storing Data with JSON', 86, '2020-07-15 09:51:05', '2020-07-15 09:51:06', 278, '[]', '2020-07-15 16:40:06', 0, 0, 1),
(263, 'Adding a Note', 'Adding a Note', 86, '2020-07-15 09:51:16', '2020-07-15 09:51:18', 278, '[]', '2020-07-15 16:40:06', 0, 0, 1),
(264, 'Removing a Note', 'Removing a Note', 86, '2020-07-15 09:51:29', '2020-07-15 09:51:30', 278, '[]', '2020-07-15 16:40:06', 0, 0, 1),
(265, 'Section Introduction', 'Section Introduction', 81, '2020-07-15 09:58:56', '2020-07-15 09:58:57', 45, '[]', '2020-07-15 16:58:12', 0, 0, 1),
(266, 'Headings & Basic Typography', 'Headings & Basic Typography', 81, '2020-07-15 09:59:17', '2020-07-15 09:59:19', 368, '[{\"name\":\"79.mp4\"}]', '2020-07-15 16:58:12', 0, 1, 1),
(267, 'Text Alignment & Display', 'Text Alignment & Display', 81, '2020-07-15 09:59:33', '2020-07-15 09:59:35', 278, '[]', '2020-07-15 16:58:12', 0, 1, 1),
(268, 'Floats & Fixed Positions', 'Floats & Fixed Positions', 81, '2020-07-15 09:59:45', '2020-07-15 09:59:46', 278, '[]', '2020-07-15 16:58:18', 0, 0, 1),
(269, 'Colors & Background', 'Colors & Background', 81, '2020-07-15 09:59:56', '2020-07-15 09:59:57', 278, '[]', '2020-07-15 16:58:18', 0, 0, 1),
(270, 'Margin & Padding Spacing', 'Margin & Padding Spacing', 81, '2020-07-15 10:00:14', '2020-07-15 10:00:16', 528, '[]', '2020-07-15 16:58:18', 0, 0, 1),
(271, 'Margin & Padding Spacing', 'Margin & Padding Spacing', 81, '2020-07-15 10:00:36', '2020-07-15 10:00:37', 278, '[]', '2020-07-15 16:58:18', 0, 0, 1),
(272, 'Sizing & Borders', 'Sizing & Borders', 81, '2020-07-15 10:00:47', '2020-07-15 10:00:48', 442, '[]', '2020-07-15 16:58:25', 0, 0, 1),
(273, 'CSS Breakpoints', 'CSS Breakpoints', 81, '2020-07-15 10:00:58', '2020-07-15 10:00:59', 528, '[]', '2020-07-15 16:58:25', 0, 0, 1),
(274, 'Action Parameters', 'Action Parameters', 85, '2020-07-15 10:12:43', '2020-07-15 10:12:44', 45, '[]', '2020-07-15 17:10:32', 0, 0, 1),
(275, 'Action Results', 'Action Results', 85, '2020-07-15 10:12:59', '2020-07-15 10:13:00', 278, '[]', '2020-07-15 17:10:32', 0, 0, 1),
(276, 'Convention-based Routing', 'Convention-based Routing', 85, '2020-07-15 10:13:16', '2020-07-15 10:13:17', 368, '[]', '2020-07-15 17:10:32', 0, 0, 1),
(277, 'Attribute Routing', 'Attribute Routing', 85, '2020-07-15 10:13:32', '2020-07-15 10:13:34', 528, '[]', '2020-07-15 17:10:36', 0, 0, 1),
(278, 'Passing Data to Views', 'Passing Data to Views', 85, '2020-07-15 10:13:51', '2020-07-15 10:13:52', 528, '[]', '2020-07-15 17:10:36', 0, 0, 1),
(279, 'Step 01 - Installing JDK - with installation guide PDF', 'Step 01 - Installing JDK - with installation guide PDF', 84, '2020-07-15 10:15:55', '2020-07-15 10:15:56', 45, '[]', '2020-07-15 17:15:38', 0, 0, 1),
(280, 'Step 02 - Verifying Java and Jshell', 'Step 02 - Verifying Java and Jshell', 84, '2020-07-15 10:16:06', '2020-07-15 10:16:08', 45, '[]', '2020-07-15 17:15:38', 0, 1, 1),
(281, 'Printing output to console with Java - Exercise Statements', 'Printing output to console with Java - Exercise Statements', 84, '2020-07-15 10:16:35', '2020-07-15 10:16:36', 528, '[]', '2020-07-15 17:15:45', 0, 0, 1),
(282, 'Printing output to console with Java - Exercise Solutions', 'Printing output to console with Java - Exercise Solutions', 84, '2020-07-15 10:16:50', '2020-07-15 10:16:52', 368, '[]', '2020-07-15 17:15:45', 0, 0, 1),
(283, 'Printing output to console with Java - Puzzles', 'Printing output to console with Java - Puzzles', 84, '2020-07-15 10:17:01', '2020-07-15 10:17:03', 442, '[]', '2020-07-15 17:15:45', 0, 0, 1),
(284, 'Setting Path environment variable in Windows', 'Setting Path environment variable in Windows', 83, '2020-07-15 10:18:03', '2020-07-15 10:18:04', 45, '[]', '2020-07-15 17:17:28', 0, 1, 1),
(285, 'Troubleshooting Reactjs installation', 'Troubleshooting Reactjs installation', 83, '2020-07-15 10:18:25', '2020-07-15 10:18:26', 278, '[]', '2020-07-15 17:17:28', 0, 0, 1),
(286, 'How to name a variable?', 'How to name a variable?', 83, '2020-07-15 10:18:37', '2020-07-15 10:18:38', 368, '[]', '2020-07-15 17:17:34', 0, 0, 1),
(287, '4 Important Things to Know about Variables', '4 Important Things to Know about Variables', 83, '2020-07-15 10:19:05', '2020-07-15 10:19:06', 528, '[]', '2020-07-15 17:17:34', 0, 0, 1),
(288, 'Loop to Print Multiplication Table', 'Loop to Print Multiplication Table', 83, '2020-07-15 10:19:22', '2020-07-15 10:19:23', 442, '[]', '2020-07-15 17:17:34', 0, 0, 1),
(289, 'Lesson 1', 'Mo ta Lesson 1', 88, '2020-07-15 18:01:09', '2020-07-15 18:02:55', 45, '[{\"name\":\"db.png\"},{\"name\":\"download.png\"},{\"name\":\"New Text Document.txt\"}]', '2020-07-16 01:00:20', 1, 1, 1),
(290, 'Lesson 1', 'Mo ta Lesson 1', 88, '2020-07-15 18:03:29', '2020-07-15 18:03:32', 45, '[{\"name\":\"angular.png\"},{\"name\":\"avatar.png\"},{\"name\":\"class.png\"}]', '2020-07-16 01:00:20', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_comment`
--

CREATE TABLE `lesson_comment` (
  `lesson_id` bigint(20) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `lesson_comment_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reply_of` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson_comment`
--

INSERT INTO `lesson_comment` (`lesson_id`, `comment`, `user_id`, `lesson_comment_id`, `created_at`, `updated_at`, `reply_of`) VALUES
(88, 'hay lắm', 'vinhdlv995@gmail.com', 53, '2020-05-22 19:32:44', '2020-05-22 19:32:44', NULL),
(88, 'chổ 1\'30s là sao nhỉ, em chưa hiểu ?', 'vinhdlv995@gmail.com', 54, '2020-05-22 19:33:11', '2020-05-22 19:33:11', NULL),
(83, 'dqwd', '2587116521525757', 57, '2020-05-30 06:46:37', '2020-05-30 06:46:37', 56),
(83, 'qwdwqdwqd', '2587116521525757', 58, '2020-05-30 06:46:43', '2020-05-30 06:46:43', 56),
(83, 'dwqdqd', '2587116521525757', 59, '2020-05-30 06:46:47', '2020-05-30 06:46:47', 56),
(83, 'bjhj', '2587116521525757', 61, '2020-06-14 20:00:07', '2020-06-14 20:00:07', 60),
(118, 'dkm', 'haota@gmail.com', 65, '2020-06-23 04:07:41', '2020-06-23 04:07:41', 64),
(117, 'hay thiet', '2587116521525757', 67, '2020-06-23 20:35:07', '2020-06-23 20:35:07', 66),
(145, 'binh luan', '2587116521525757', 69, '2020-07-09 06:41:48', '2020-07-09 06:41:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_bot`
--

CREATE TABLE `message_bot` (
  `question_id` int(11) NOT NULL,
  `action_question_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_bot`
--

INSERT INTO `message_bot` (`question_id`, `action_question_id`, `created_at`, `updated_at`) VALUES
(51, 1, '2020-06-23 03:59:07', '2020-06-23 03:59:07'),
(51, 15, '2020-06-23 03:59:07', '2020-06-23 03:59:07'),
(51, 36, '2020-06-23 03:59:07', '2020-06-23 03:59:07'),
(51, 52, '2020-06-23 03:59:07', '2020-06-23 03:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `moneytype`
--

CREATE TABLE `moneytype` (
  `moneyType_id` bigint(20) UNSIGNED NOT NULL,
  `moneyType` text NOT NULL,
  `disable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moneytype`
--

INSERT INTO `moneytype` (`moneyType_id`, `moneyType`, `disable`) VALUES
(1, 'VND', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pricetier`
--

CREATE TABLE `pricetier` (
  `priceTier_id` bigint(20) NOT NULL,
  `priceTier` double NOT NULL,
  `disable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricetier`
--

INSERT INTO `pricetier` (`priceTier_id`, `priceTier`, `disable`) VALUES
(0, 0, 0),
(2, 500000, 0),
(3, 1000000, 0),
(4, 1500000, 0),
(5, 2000000, 0),
(6, 2500000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `question_bot`
--

CREATE TABLE `question_bot` (
  `question_id` bigint(20) NOT NULL,
  `question` varchar(4000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type_question_bot_id` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_bot`
--

INSERT INTO `question_bot` (`question_id`, `question`, `created_at`, `updated_at`, `type_question_bot_id`) VALUES
(1, 'Câu 1 là câu nào thế cậu', '2020-03-25 06:57:45', '2020-04-22 06:26:44', 2),
(3, 'trả lời câu 3 #1', '2020-04-20 00:04:29', '2020-04-20 00:04:29', 2),
(4, 'trả lời câu 3 #2', '2020-04-20 00:04:29', '2020-04-20 00:04:29', 2),
(15, 'Hello', '2020-04-23 23:16:47', '2020-04-23 23:16:47', 2),
(36, '5435', '2020-04-24 00:49:49', '2020-04-24 00:49:49', 2),
(37, '123123', '2020-04-24 00:50:48', '2020-04-24 00:50:48', 2),
(38, 'vinhdlv', '2020-04-24 01:52:10', '2020-04-24 01:52:10', 2),
(51, 'Tin nhắn 1', '2020-04-25 22:12:44', '2020-04-25 22:12:44', 1),
(52, 'hào là thag nào', '2020-06-23 03:58:35', '2020-06-23 03:58:35', 2),
(53, 'lap trinh web', '2020-06-29 02:34:43', '2020-06-29 02:34:43', 2);

-- --------------------------------------------------------

--
-- Table structure for table `social_type`
--

CREATE TABLE `social_type` (
  `social_id` int(11) NOT NULL,
  `social` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_type`
--

INSERT INTO `social_type` (`social_id`, `social`) VALUES
(1, 'Facebook'),
(2, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `storage_package`
--

CREATE TABLE `storage_package` (
  `storagePackage_id` int(11) NOT NULL,
  `storage_size` double NOT NULL DEFAULT 0,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `disable` tinyint(1) NOT NULL DEFAULT 0,
  `price` double NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage_package`
--

INSERT INTO `storage_package` (`storagePackage_id`, `storage_size`, `name`, `created_at`, `updated_at`, `disable`, `price`, `note`) VALUES
(1, 23433, '1', '2020-07-08 22:09:17', '2020-07-08 22:44:41', 1, 21212, 'This is some note'),
(2, 457, 'ghjghjg', '2020-07-08 22:17:02', '2020-07-08 22:44:44', 1, 10000, 'This is some note'),
(3, 5677.5555, 'gyjyt', '2020-07-08 22:17:26', '2020-07-08 22:44:38', 1, 56756756.6, 'This is some note'),
(4, 10240, 'Gold', '2020-07-08 22:45:49', '2020-07-08 22:47:43', 0, 99, 'This is some note'),
(5, 5120, 'Silver', '2020-07-08 22:46:42', '2020-07-08 22:47:38', 0, 50, 'This is some note'),
(6, 12, 'vinh', '2020-07-09 08:02:38', '2020-07-09 08:03:06', 0, 123213, 'asdasdasdsad');

-- --------------------------------------------------------

--
-- Table structure for table `storage_user`
--

CREATE TABLE `storage_user` (
  `json_storagePackage` text DEFAULT '',
  `user_id` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `noMonth` int(11) NOT NULL,
  `used_space` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage_user`
--

INSERT INTO `storage_user` (`json_storagePackage`, `user_id`, `created_at`, `updated_at`, `noMonth`, `used_space`) VALUES
('{\"storagePackage_id\":6,\"storage_size\":12,\"name\":\"vinh\",\"created_at\":\"2020-07-09 15:02:38\",\"updated_at\":\"2020-07-09 15:03:06\",\"disable\":0,\"price\":123213,\"note\":\"asdasdasdsad\"}', '2587116521525757', '2020-07-09 09:14:05', '2020-07-15 18:03:30', 1, 1793457941);

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `user_id` varchar(100) NOT NULL COMMENT 'ID sử dụng với tư cách là học viên',
  `course_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`user_id`, `course_id`, `created_at`, `updated_at`) VALUES
('104203580355332181612', 69, '2020-06-18 19:40:29', '2020-06-18 19:40:29'),
('104203580355332181612', 70, '2020-06-18 19:40:29', '2020-06-18 19:40:29'),
('104203580355332181612', 73, '2020-06-18 21:26:48', '2020-06-18 21:26:48'),
('104203580355332181612', 75, '2020-07-09 19:17:28', '2020-07-09 19:17:28'),
('113777963231066507088', 33, '2020-05-11 00:22:23', '2020-05-11 00:22:23'),
('113777963231066507088', 34, '2020-05-11 00:22:31', '2020-05-11 00:22:31'),
('113777963231066507088', 35, '2020-05-11 00:22:16', '2020-05-11 00:22:16'),
('113777963231066507088', 69, '2020-05-11 01:03:35', '2020-05-11 01:03:35'),
('2587116521525757', 33, '2020-07-08 20:10:04', '2020-07-08 20:10:04'),
('2587116521525757', 34, '2020-05-10 23:33:23', '2020-05-10 23:33:23'),
('2587116521525757', 35, '2020-05-10 23:28:46', '2020-05-10 23:28:46'),
('2587116521525757', 69, '2020-05-11 19:29:21', '2020-05-11 19:29:21'),
('2587116521525757', 70, '2020-05-29 21:35:46', '2020-05-29 21:35:46'),
('2587116521525757', 73, '2020-07-09 06:40:50', '2020-07-09 06:40:50'),
('2587116521525757', 74, '2020-07-09 06:40:50', '2020-07-09 06:40:50'),
('2587116521525757', 76, '2020-07-15 00:23:46', '2020-07-15 00:23:46'),
('2587116521525757', 77, '2020-07-15 08:10:10', '2020-07-15 08:10:10'),
('2587116521525757', 85, '2020-07-15 10:25:42', '2020-07-15 10:25:42'),
('2587116521525757', 86, '2020-07-15 09:45:46', '2020-07-15 09:45:46'),
('2587116521525757', 88, '2020-07-15 18:07:22', '2020-07-15 18:07:22'),
('daolevanvinh@gmail.com', 33, '2020-04-27 04:40:00', '2020-04-27 04:40:00'),
('haota@gmail.com', 69, '2020-06-23 04:01:38', '2020-06-23 04:01:38'),
('hung@gmail.com', 33, '2020-05-30 00:53:37', '2020-05-30 00:53:37'),
('hung@gmail.com', 34, '2020-05-30 00:48:10', '2020-05-30 00:48:10'),
('hung@gmail.com', 35, '2020-05-30 00:33:21', '2020-05-30 00:33:21'),
('hung@gmail.com', 69, '2020-05-30 00:56:21', '2020-05-30 00:56:21'),
('hung@gmail.com', 70, '2020-05-30 01:07:07', '2020-05-30 01:07:07'),
('hung@gmail.com', 73, '2020-05-30 01:01:35', '2020-05-30 01:01:35'),
('vinh@test.com', 69, '2020-06-18 21:53:09', '2020-06-18 21:53:09'),
('vinh@test.com', 70, '2020-06-18 21:29:31', '2020-06-18 21:29:31'),
('vinh@test.com', 73, '2020-06-18 21:29:31', '2020-06-18 21:29:31'),
('vinh@test1.com', 69, '2020-06-28 18:52:40', '2020-06-28 18:52:40'),
('vinh@test1.com', 70, '2020-06-28 18:52:40', '2020-06-28 18:52:40'),
('vinhdlv123@gmail.com', 33, '2020-04-27 04:38:57', '2020-04-27 04:38:57'),
('vinhdlv123@gmail.com', 34, '2020-04-27 04:38:57', '2020-04-27 04:38:57'),
('vinhdlv995@gmail.com', 33, '2020-04-19 14:50:09', '2020-04-19 14:50:09'),
('vinhdlv995@gmail.com', 34, '2020-04-27 04:38:34', '2020-04-27 04:38:34'),
('vinhdlv995@gmail.com', 35, '2020-04-27 04:38:34', '2020-04-27 04:38:34'),
('vinhdlv995@gmail.com', 71, '2020-05-12 18:34:34', '2020-05-12 18:34:34'),
('vinhdlv@test2.com', 70, '2020-06-29 02:09:28', '2020-06-29 02:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` bigint(20) NOT NULL,
  `tag` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'php', '2020-03-26 07:19:24', '2020-03-26 07:19:24'),
(2, 'nodejs', '2020-03-26 07:19:24', '2020-03-26 07:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `icon_class` text NOT NULL,
  `disable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `name`, `category_id`, `created_at`, `updated_at`, `icon_class`, `disable`) VALUES
(4, 'Lập trình web cơ bản', 1, '2020-03-29 21:24:52', '2020-03-29 21:24:52', 'mdi-language-html5', 0),
(5, 'sadasdsad', 2, '2020-03-29 21:25:11', '2020-03-29 21:25:11', 'fab fa-app-store', 0),
(6, 'Lập trình VueJS', 1, '2020-03-29 21:26:55', '2020-03-29 21:27:25', 'mdi-vuejs', 0),
(7, 'Lập trình PHP', 1, '2020-04-08 11:24:10', '2020-04-08 11:24:10', 'mdi-language-php', 0),
(8, 'Lập trình Python', 1, '2020-04-08 11:24:10', '2020-04-08 11:24:10', 'mdi-language-python', 0),
(9, 'Web Development', 10, '2020-07-09 17:55:15', '2020-07-09 17:59:30', 'fab fa-internet-explorer', 0),
(10, 'Data Scient', 10, '2020-07-09 17:55:56', '2020-07-09 17:55:56', 'fas fa-database', 0),
(11, 'Mobile App', 10, '2020-07-09 17:59:04', '2020-07-09 17:59:04', 'fab fa-usb', 0),
(12, 'Game Development', 10, '2020-07-09 17:59:53', '2020-07-09 17:59:53', 'fab fa-xbox', 0),
(13, 'Software Engineering', 10, '2020-07-09 18:00:48', '2020-07-09 18:00:48', 'fas fa-cube', 0),
(14, 'Finance', 11, '2020-07-09 18:01:27', '2020-07-09 18:01:27', 'fab fa-cloudversify', 0),
(15, 'Communications', 11, '2020-07-09 18:02:00', '2020-07-09 18:02:00', 'fab fa-rocketchat', 0),
(16, 'Sales', 11, '2020-07-09 18:02:13', '2020-07-09 18:02:13', 'fas fa-pound-sign', 0),
(17, 'Strategy', 11, '2020-07-09 18:03:04', '2020-07-09 18:03:04', 'fab fa-accusoft', 0),
(18, 'Web Design', 12, '2020-07-09 18:04:50', '2020-07-09 18:04:50', 'fas fa-globe', 0),
(19, 'Graphic Design', 12, '2020-07-09 18:05:57', '2020-07-09 18:05:57', 'fas fa-sitemap', 0),
(20, 'Game Design', 12, '2020-07-09 18:06:13', '2020-07-09 18:06:13', 'fab fa-xbox', 0),
(21, '3D & Animation', 12, '2020-07-09 18:06:39', '2020-07-09 18:06:39', 'fas fa-futbol', 0),
(22, 'Digital Marketing', 13, '2020-07-09 18:08:27', '2020-07-09 18:08:27', 'fas fa-rss', 0),
(23, 'Social Media Marketing', 13, '2020-07-09 18:09:03', '2020-07-09 18:09:03', 'fab fa-facebook', 0),
(24, 'Branding', 13, '2020-07-09 18:09:26', '2020-07-09 18:09:26', 'fab fa-gg-circle', 0),
(25, 'Public Relations', 13, '2020-07-09 18:09:47', '2020-07-09 18:09:47', 'fas fa-hand-spock', 0),
(26, 'Instruments', 14, '2020-07-09 18:11:31', '2020-07-09 18:11:31', 'fas fa-certificate', 0),
(27, 'Production', 14, '2020-07-09 18:12:04', '2020-07-09 18:12:04', 'fab fa-itunes-note', 0),
(28, 'Music Sorftware', 14, '2020-07-09 18:12:36', '2020-07-09 18:12:36', 'fas fa-paperclip', 0),
(29, 'Music Techniques', 14, '2020-07-09 18:12:55', '2020-07-09 18:12:55', 'fab fa-napster', 0),
(30, 'IT Certification', 15, '2020-07-09 18:14:05', '2020-07-09 18:14:05', 'fas fa-graduation-cap', 0),
(31, 'Network and Security', 15, '2020-07-09 18:15:04', '2020-07-09 18:15:04', 'fas fa-search', 0),
(32, 'Hardware', 15, '2020-07-09 18:15:25', '2020-07-09 18:15:25', 'fas fa-desktop', 0),
(33, 'Operating Systems', 15, '2020-07-09 18:15:49', '2020-07-09 18:15:49', 'fas fa-qrcode', 0);

-- --------------------------------------------------------

--
-- Table structure for table `topic_course`
--

CREATE TABLE `topic_course` (
  `topic_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic_course`
--

INSERT INTO `topic_course` (`topic_id`, `course_id`, `created_at`, `updated_at`) VALUES
(4, 33, '2020-05-02 07:39:57', '2020-05-02 07:39:57'),
(4, 34, '2020-05-02 07:39:57', '2020-05-02 07:39:57'),
(4, 35, '2020-05-02 07:39:57', '2020-05-02 07:39:57'),
(4, 69, '2020-05-02 00:42:06', '2020-05-02 00:42:06'),
(4, 70, '2020-05-12 08:44:28', '2020-05-12 08:44:28'),
(4, 71, '2020-05-12 17:51:07', '2020-05-12 17:51:07'),
(4, 72, '2020-05-12 17:56:18', '2020-05-12 17:56:18'),
(4, 73, '2020-05-29 05:21:12', '2020-05-29 05:21:12'),
(4, 74, '2020-06-29 02:12:21', '2020-06-29 02:12:21'),
(6, 69, '2020-05-02 00:42:06', '2020-05-02 00:42:06'),
(6, 74, '2020-06-29 02:12:21', '2020-06-29 02:12:21'),
(7, 74, '2020-06-29 02:12:21', '2020-06-29 02:12:21'),
(8, 74, '2020-06-29 02:12:21', '2020-06-29 02:12:21'),
(9, 75, '2020-07-09 18:22:10', '2020-07-09 18:22:10'),
(9, 76, '2020-07-09 18:39:40', '2020-07-09 18:39:40'),
(9, 77, '2020-07-15 07:52:42', '2020-07-15 07:52:42'),
(9, 78, '2020-07-15 08:26:48', '2020-07-15 08:26:48'),
(9, 79, '2020-07-15 08:42:19', '2020-07-15 08:42:19'),
(9, 80, '2020-07-15 09:05:06', '2020-07-15 09:05:06'),
(9, 81, '2020-07-15 09:22:31', '2020-07-15 09:22:31'),
(9, 82, '2020-07-15 09:24:07', '2020-07-15 09:24:07'),
(9, 83, '2020-07-15 09:25:33', '2020-07-15 09:25:33'),
(9, 84, '2020-07-15 09:28:04', '2020-07-15 09:28:04'),
(9, 85, '2020-07-15 09:29:50', '2020-07-15 09:29:50'),
(9, 86, '2020-07-15 09:31:16', '2020-07-15 09:31:16'),
(9, 88, '2020-07-15 17:59:08', '2020-07-15 17:59:08'),
(14, 87, '2020-07-15 10:35:10', '2020-07-15 10:35:10'),
(15, 87, '2020-07-15 10:35:10', '2020-07-15 10:35:10'),
(16, 87, '2020-07-15 10:35:10', '2020-07-15 10:35:10'),
(17, 87, '2020-07-15 10:35:10', '2020-07-15 10:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `type_question_bot`
--

CREATE TABLE `type_question_bot` (
  `type_question_bot_id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_question_bot`
--

INSERT INTO `type_question_bot` (`type_question_bot_id`, `type`) VALUES
(1, 'Action'),
(2, 'Text');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `profile` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `address` text DEFAULT NULL,
  `social_id` bigint(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `active_code` text DEFAULT NULL,
  `ewallet` float NOT NULL DEFAULT 0,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `phone`, `password`, `profile`, `updated_at`, `created_at`, `address`, `social_id`, `avatar`, `active_code`, `ewallet`, `app_id`) VALUES
('102490497242525546727', 'le dao', NULL, '$2y$10$Ak31E4KwefpYFF/di7bcI.zDD1oS2wM4.onqWJ/MSg/oHV/qio/kG', NULL, '2020-05-03 06:30:59', '2020-05-03 06:30:59', NULL, 2, 'https://lh6.googleusercontent.com/-CndL1R6FOKM/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJPjFbRCULHxoD2TPPLWxAHmB7-XAA/photo.jpg&width=300&height=300', '', 0, 1),
('104203580355332181612', 'Dao Le Van Vinh', NULL, '$2y$10$viZMjRANXyPSvmAaLBkQ5ehoiQppM5hGIw8x.UOVoRtc8PtK.tFCi', NULL, '2020-05-18 19:12:33', '2020-05-18 19:12:33', NULL, 2, 'https://lh3.googleusercontent.com/-03ZsXbmZfJ8/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmlWOV0mXJu9BSonjqcAM9YptUkdw/photo.jpg&width=300&height=300', NULL, 0, 2),
('113777963231066507088', 'Vinh Đào Lê Văn', NULL, '$2y$10$SnsOigzrCyQo7JRa/P1P7OKVaNdT9PFtYGRi0rUdmTaXDhPj0i5Cy', NULL, '2020-06-29 02:09:28', '2020-05-10 23:36:23', NULL, 2, 'https://lh4.googleusercontent.com/-cqkB0QdoUI4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnAoVPZPPpr-E3Q-YGL6F1gxiWnqg/photo.jpg&width=300&height=300', NULL, 6000000, 3),
('2587116521525757', 'Văn Vinh', '123', '$2y$10$JR8AqCmV2631b1wY4MskA.W/ebyYU37Ty6LcYG6.Nu5cOdWukpuvK', '<h2><strong>About me</strong></h2><p><strong>Experience as (Web) Developer</strong></p><p><br></p><p>Starting out at the age of 13 I never stopped learning new programming skills and languages. Early I started creating websites for friends and just for fun as well. Besides web development I also explored Python and other non-web-only&nbsp;languages.&nbsp;This passion has since lasted and lead to my decision of working as a freelance web developer and consultant. The success and fun I have in this job is immense and really keeps that passion burningly alive.</p><p>Starting web development on&nbsp;the backend (PHP with Laravel, NodeJS, Python) I also became more and more of a frontend developer using modern frameworks like React, Angular or VueJS 2 in a lot of projects. I&nbsp;love both worlds nowadays!</p><p>As a self-taught developer I had the chance to broaden my horizon by studying Business Administration where I hold a Master\'s degree. That enabled me to work in a major strategy consultancy as well as a bank. While learning, that I enjoy development more than these fields, the time in this sector greatly improved my overall experience and skills.</p><p><strong>Experience as Instructor</strong></p><p>As a self-taught professional I really know the hard parts and the difficult topics when learning new or improving on already-known languages. This background and experience enables me to focus on the most relevant key concepts and topics. My track record of many 5-star rated courses, more than 700,000 students on Udemy as well as a successful YouTube channel is the best proof for that.</p><p>Whether working as development instructor or teaching Business Administration I always received great feedback. The most rewarding experience is to see how people find new, better jobs, build awesome web applications, acquire amazing projects or simply enjoy their hobby with the help of my content.</p><p>Together with Manuel Lorenz, I founded Academind to offer the best possible learning experience to our more than 800,000 students.</p>', '2020-07-15 18:07:22', '2020-05-03 06:31:43', '1233213123', 1, 'https://graph.facebook.com/v3.3/2587116521525757/picture?type=normal&width=300&height=300', '', 7000000, 4),
('daolevanvinh@gmail.com', 'vinh đào lê', '123456789', '$2y$10$NMUF3j3YuWG/1lvs5aBE/e6fwAPuPn7M9dW1rPy.moUSrIWvaiOei', 'this is my profile', '2020-05-04 19:32:11', '2020-03-28 06:46:07', 'this is my address', 0, '', NULL, 0, 5),
('haota@gmail.com', 'hào tăng', NULL, '$2y$10$LB8OlzjyAtV89bpYGNpkUu1.4R2UtLwLNuVCytPjh/bcg4y6r72W.', NULL, '2020-06-23 04:00:29', '2020-06-23 04:00:29', NULL, NULL, NULL, NULL, 0, 17),
('hung@gmail.com', 'hung', 'null', '$2y$10$ursl42H9oltQrBTRsgwu.OTT9VCs.sK6exSj4nmurdRPH3qPtAnMC', NULL, '2020-05-30 01:09:36', '2020-05-30 00:32:05', 'null', NULL, NULL, NULL, 0, 6),
('vinh@test.com', 'Vinh Test', NULL, '$2y$10$.5gm5RuNv3RQg53MgcnnE.nitETHlWmbAZRob50FTetV3wtqT8WT6', NULL, '2020-06-18 21:28:25', '2020-06-18 21:28:25', NULL, NULL, NULL, NULL, 0, 11),
('vinh@test1.com', 'Vinh', NULL, '$2y$10$ntAld8uR9odLymEP7lkYreAueySC54G7O411ABOSVSbtKnq7k5j0i', NULL, '2020-06-28 10:31:19', '2020-06-28 10:31:19', NULL, NULL, NULL, NULL, 0, 18),
('vinh@test123.com', 'vinh995', NULL, '$2y$10$ckt9twGbkoOe1eqto4h7v.GR8BPF9AK.cycKq6ODtGfUiSKxl01OG', NULL, '2020-06-19 21:25:39', '2020-06-19 21:25:39', NULL, NULL, NULL, NULL, 0, 16),
('vinhdlv123@gmail.com', 'vinh đào', NULL, '$2y$10$w5HjFngAEpPmmBYqfPO4ru0UFLbrsbmlzlGbnk582nfqFSjXxKLzO', NULL, '2020-03-08 00:48:40', '2020-03-08 00:48:40', '', 0, '', '', 0, 7),
('vinhdlv995@gmail.com', 'vinh dao le van', '0775657109', '$2y$10$n3RyADFMrR7zUP8H1G/31eZ0rC08ZC8RvlRVnkNrUtidSIZxfQ8nC', '<p>Award Winning MBA Professor, Venture Capitalist and Author.</p><p>** Chris is the #1 best selling business teacher on Udemy. He teaches full-time on Udemy; he is the author of the #1 best selling business course on Udemy called \"An Entire MBA in 1 Course,\" which has been purchased by more than 200,000 students in 11 languages in 196 countries.**  </p><p><br></p><p>** His courses have been featured in Business Insider, CNBC, Inc, Forbes, CNN, Entrepreneur &amp; on other business news websites. **</p><p><br></p><p>** According to Business Insider  \"Haroun is one of the highest rated professors on Udemy, so you can expect to be in good hands through the course of your education.\" **  </p><p><br></p><p>Chris is also the author of the book \"101 Crucial Lessons They Don\'t Teach You in Business School,\" which Business Insider wrote is \"the most popular book of 2016 according to Business Insider readers.\" In 2015 Forbes called this book \"1 of 6 books that all entrepreneurs must read right now.\"  </p><p><br></p><p>Chris is also the founder and CEO of Haroun Education Ventures, which has 3 areas of focus: </p><p><br></p><p>1: Online Business Education &amp; Self Development Courses through his subsidiary Udemy publishing platform called \"Complete Business Education,\" </p><p><br></p><p>2: Education Charities and </p><p><br></p><p>3: Edtech Venture Capital.</p><p><br></p><p>In addition he is an award winning business school professor, MBA graduate from Columbia University and former Goldman Sachs employee. He has raised/managed over $1bn in his career.  </p><p><br></p><p>Chris is passionate about educational charities and he is on the board of directors of several tech companies and ‘The Lemo Foundation’, which offers scholarships and mentoring to East Palo Alto students where the high school graduation rate is only 40%. He is also on the board of Providing Opportunities for Women (P.O.W.) which was founded by a few of his business school students.   </p><p><br></p><p>He also has work experience at hedge fund giant Citadel, consulting firm Accenture &amp; several firms that he has started, including an investment firm that had a venture capital investment in Facebook several years before the Facebook IPO.  </p><p><br></p><p>He is a frequent lecturer at several Bay Area business schools including Berkeley, Stanford, The Hult International School of Business and San Francisco State University. Chris also has an undergraduate degree with a major in Management Information Systems and International Business from McGill University where he is a McGill University Dobson Fellow (awarded for his work mentoring McGill students with venture capital start up business models).  </p><p><br></p><p>Chris has written numerous articles and has been interviewed or profiled in Forbes, Business Insider, Entrepreneur Magazine, VentureBeat, Wired Magazine, AlleyWatch and several television, podcast and radio interviews, including one with Radio Television Hong Kong (RTHK) which is Hong Kong\'s oldest and sole public service broadcaster. He has his own entrepreneurship column in Inc. magazine.  </p><p><br></p><p>Chris Haroun\'s goals are:  </p><p><br></p><p>1: Access: To help make education accessible and affordable to every person in every country (and without firewalls) by investing in disruptive edTech companies through his company (Haroun Education Ventures).  </p><p><br></p><p>2: Give: If you work for a charity, Chris is more than happy to give you his online business and self development courses for free to every employee at every charity in the world; simply send him a LinkedIn message and he will send you coupons for his courses at 100% off. Please include your \".org\" charity email address in the LinkedIn message (for example, name@charity.org).</p><p><br></p><p>3: Edutainment: His passion is to \"make business education impactful and entertaining with no boring theory; edutainment works!\"  </p><p><br></p><p>Chris is very passionate about education, education related charities and edTech start-ups/companies as he believes that all problems in the world can be solved via education; please see his recent TEDx Talk on this topic. He lives in Hillsborough, California with his wife Christine and 3 sons who are also passionate about baseball…especially the Toronto Blue Jays! : ) </p><p class=\"ql-align-right\"><br></p>', '2020-06-28 18:52:40', '2020-04-19 08:05:16', '995/56 Hồng bàng P12 Q6', 0, '', '$2y$10$bZH5zzDBgUZ1qLZexDuCVeNDeyWkDHlBVS07S7jW3bBlvNXn7WO9W', 2500000, 8),
('vinhdlv@gmail.com', 'vinh', NULL, '$2y$10$YrioCf2mHJiVwbZ42gJZT.xQKlsWsJnM9lQK0CoOrj8bY.DK6nWby', NULL, '2020-03-02 23:02:40', '2020-03-02 23:02:40', '', 0, '', '', 0, 9),
('vinhdlv@test2.com', 'vinh van', NULL, '$2y$10$D40Yr1NqeRnG.0BmcKlom.Vmez9kqc1mi.p/ze/hrLh/bHc0Hxt/G', NULL, '2020-07-09 06:40:50', '2020-06-29 02:07:42', NULL, NULL, NULL, NULL, 500000, 19),
('vinhnedkm@gmail.com', 'Văn Vinh', NULL, '$2y$10$2ggK03Z//RRpM.T94HRcNu2lBnv2isNQ4Bp0Q5vz3GqA93FSWEJe.', NULL, '2020-05-02 23:01:55', '2020-05-02 23:01:55', NULL, 1, '', '', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `usercard`
--

CREATE TABLE `usercard` (
  `card_number` varchar(20) NOT NULL,
  `card_user_name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `what_learn_instructor_course`
--

CREATE TABLE `what_learn_instructor_course` (
  `learn_id` int(11) NOT NULL,
  `learn` text NOT NULL,
  `course_id` int(11) NOT NULL COMMENT 'Đây là Instructor Course ID',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `what_learn_instructor_course`
--

INSERT INTO `what_learn_instructor_course` (`learn_id`, `learn`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Học được 1 trong khóa học lập trình 1', 33, '2020-04-27 04:07:30', '2020-04-27 04:07:30'),
(2, 'Học được 2 trong khóa học lập trình 1', 33, '2020-04-27 04:07:30', '2020-04-27 04:07:30'),
(3, 'Học được 1 trong khóa học lập trình 2', 34, '2020-04-27 04:08:31', '2020-04-27 04:08:31'),
(4, 'Học được 2 trong khóa học lập trình 2', 34, '2020-04-27 04:08:31', '2020-04-27 04:08:31'),
(5, 'Học được 1 trong khóa học lập trình 3', 35, '2020-04-27 04:08:55', '2020-04-27 04:08:55'),
(6, 'Học được 2 trong khóa học lập trình 3', 35, '2020-04-27 04:08:55', '2020-04-27 04:08:55'),
(10, '1', 69, '2020-05-02 00:42:06', '2020-05-02 00:42:06'),
(11, '2', 69, '2020-05-02 00:42:06', '2020-05-02 00:42:06'),
(12, '3', 69, '2020-05-02 00:42:06', '2020-05-02 00:42:06'),
(13, 'Kiến thức vững chắc về HTML, CSS', 70, '2020-05-12 08:44:28', '2020-05-12 08:44:28'),
(14, 'Thành thạo javascript', 70, '2020-05-12 08:44:28', '2020-05-12 08:44:28'),
(15, 'Kiến thức nâng cao về Vuejs', 70, '2020-05-12 08:44:28', '2020-05-12 08:44:28'),
(16, 'HTML', 71, '2020-05-12 17:51:07', '2020-05-12 17:51:07'),
(17, 'CSS', 71, '2020-05-12 17:51:07', '2020-05-12 17:51:07'),
(18, 'JS', 71, '2020-05-12 17:51:07', '2020-05-12 17:51:07'),
(19, 'Python', 72, '2020-05-12 17:56:18', '2020-05-12 17:56:18'),
(20, 'Django Framework', 72, '2020-05-12 17:56:18', '2020-05-12 17:56:18'),
(21, 'Kiến thức 1', 73, '2020-05-29 05:21:12', '2020-05-29 05:21:12'),
(22, 'Kiến thức 2', 73, '2020-05-29 05:21:12', '2020-05-29 05:21:12'),
(23, '1', 74, '2020-06-29 02:12:21', '2020-06-29 02:12:21'),
(24, '2', 74, '2020-06-29 02:12:21', '2020-06-29 02:12:21'),
(25, 'Develop modern, complex, responsive and scalable web applications with Angular 10', 75, '2020-07-09 18:22:10', '2020-07-09 18:22:10'),
(26, 'Fully understand the architecture behind an Angular application and how to use it', 75, '2020-07-09 18:22:10', '2020-07-09 18:22:10'),
(27, 'Use the gained, deep understanding of the Angular fundamentals to quickly establish yourself as a frontend developer', 75, '2020-07-09 18:22:10', '2020-07-09 18:22:10'),
(28, 'Create single-page applications with one of the most modern JavaScript frameworks out there', 75, '2020-07-09 18:22:10', '2020-07-09 18:22:10'),
(29, 'Build amazing Vue.js Applications - all the Way from Small and Simple Ones up to Large Enterprise-level Ones', 76, '2020-07-09 18:39:40', '2020-07-09 18:39:40'),
(30, 'Understand the Theory behind Vue.js and use it in Real Projects', 76, '2020-07-09 18:39:40', '2020-07-09 18:39:40'),
(31, 'Leverage Vue.js in both Multi- and Single-Page-Applications (MPAs and SPAs)', 76, '2020-07-09 18:39:40', '2020-07-09 18:39:40'),
(32, 'Have a fundamental understanding of the Python programming language.', 77, '2020-07-15 07:52:42', '2020-07-15 07:52:42'),
(33, 'Acquire the pre-requisite Python skills to move into specific branches - Machine Learning, Data Science, etc..', 77, '2020-07-15 07:52:42', '2020-07-15 07:52:42'),
(34, 'Understand how to create your own Python programs.', 77, '2020-07-15 07:52:42', '2020-07-15 07:52:42'),
(35, 'Understand both Python 2 and Python 3.', 77, '2020-07-15 07:52:42', '2020-07-15 07:52:42'),
(36, 'Have the skills and understanding of Python to confidently apply for Python programming jobs.', 77, '2020-07-15 07:52:42', '2020-07-15 07:52:42'),
(37, 'Beginners with no previous programming experience looking to obtain the skills to get their first programming job.', 78, '2020-07-15 08:26:48', '2020-07-15 08:26:48'),
(38, 'Anyone looking to to build the minimum Python programming skills necessary as a pre-requisites for moving into machine learning, data science, and artificial intelligence.', 78, '2020-07-15 08:26:48', '2020-07-15 08:26:48'),
(39, 'If you are an expert Python programmer with extensive knowledge, and many years’ experience, then this course is probably not for you.', 78, '2020-07-15 08:26:48', '2020-07-15 08:26:48'),
(40, 'Existing programmers who want to improve their career options by learning the Python programming language.', 78, '2020-07-15 08:26:48', '2020-07-15 08:26:48'),
(41, 'You will learn the answers to questions like What is the Python For Loop, what is Python used for, how Python switch the traditional syntax of code, and more.', 79, '2020-07-15 08:42:19', '2020-07-15 08:42:19'),
(42, 'All the essential Python keywords, operators, statements, and expressions needed to fully understand exactly what you’re coding and why - making programming easy to grasp and less frustrating', 79, '2020-07-15 08:42:19', '2020-07-15 08:42:19'),
(43, 'Complete chapters on object-oriented programming and many other aspects of Python, including tKInter (for building GUI Interfaces) and using databases with Python.', 79, '2020-07-15 08:42:19', '2020-07-15 08:42:19'),
(44, 'How to develop powerful Python applications using one of the most powerful Integrated Development Environments on the market, IntelliJ IDEA! - Meaning you can code functional programs easier', 79, '2020-07-15 08:42:19', '2020-07-15 08:42:19'),
(45, 'Create Facebook like Real time Notification and real time reply', 80, '2020-07-15 09:05:06', '2020-07-15 09:05:06'),
(46, 'Create Real Time Like/Dislike System', 80, '2020-07-15 09:05:06', '2020-07-15 09:05:06'),
(47, 'You will learn How to generate Json Web Token (JWT) in Laravel and how to login and logout with Token', 80, '2020-07-15 09:05:06', '2020-07-15 09:05:06'),
(48, 'Update : Use Laravel WebSocket package to make realtime system free', 80, '2020-07-15 09:05:06', '2020-07-15 09:05:06'),
(49, 'Update : Fixed Bug on lecture number 78', 80, '2020-07-15 09:05:06', '2020-07-15 09:05:06'),
(50, 'Learn and create amazing high quality Bootstrap 4 themes and UIs from scratch', 81, '2020-07-15 09:22:32', '2020-07-15 09:22:32'),
(51, 'Learn the Bootstrap 4 utilities, classes, components & JS widgets using a custom sandbox environment', 81, '2020-07-15 09:22:32', '2020-07-15 09:22:32'),
(52, 'Learn semantic HTML5 & modern CSS3 techniques', 81, '2020-07-15 09:22:32', '2020-07-15 09:22:32'),
(53, 'Learn to compile Sass in the easiest way possible using a GUI', 81, '2020-07-15 09:22:32', '2020-07-15 09:22:32'),
(54, 'Develop modern, complex, responsive and scalable web applications with Angular 10', 82, '2020-07-15 09:24:07', '2020-07-15 09:24:07'),
(55, 'Fully understand the architecture behind an Angular application and how to use it', 82, '2020-07-15 09:24:07', '2020-07-15 09:24:07'),
(56, 'Use the gained, deep understanding of the Angular fundamentals to quickly establish yourself as a frontend developer', 82, '2020-07-15 09:24:07', '2020-07-15 09:24:07'),
(57, 'Create single-page applications with one of the most modern JavaScript frameworks out there', 82, '2020-07-15 09:24:07', '2020-07-15 09:24:07'),
(58, 'Build powerful, fast, user-friendly and reactive web apps', 83, '2020-07-15 09:25:33', '2020-07-15 09:25:33'),
(59, 'Apply for high-paid jobs or work as a freelancer in one the most-demanded sectors you can find in web dev right now', 83, '2020-07-15 09:25:33', '2020-07-15 09:25:33'),
(60, 'Provide amazing user experiences by leveraging the power of JavaScript with ease', 83, '2020-07-15 09:25:33', '2020-07-15 09:25:33'),
(61, 'Learn React Hooks & Class-based Components', 83, '2020-07-15 09:25:33', '2020-07-15 09:25:33'),
(62, 'Understand why web services are so popular', 84, '2020-07-15 09:28:04', '2020-07-15 09:28:04'),
(63, 'Implement Contract First and Code First Web Services', 84, '2020-07-15 09:28:04', '2020-07-15 09:28:04'),
(64, 'Master the REST web service concepts and Implementation', 84, '2020-07-15 09:28:04', '2020-07-15 09:28:04'),
(65, 'Understand the different types of WS Design', 84, '2020-07-15 09:28:04', '2020-07-15 09:28:04'),
(66, 'Understand the MVC architectural pattern', 85, '2020-07-15 09:29:50', '2020-07-15 09:29:50'),
(67, 'Implement authentication and authorization using ASP.NET Web API', 85, '2020-07-15 09:29:50', '2020-07-15 09:29:50'),
(68, 'Use Entity Framework to query or update data', 85, '2020-07-15 09:29:50', '2020-07-15 09:29:50'),
(69, 'Completely refilmed for 3rd edition', 86, '2020-07-15 09:31:16', '2020-07-15 09:31:16'),
(70, 'Deploy your Node apps to production', 86, '2020-07-15 09:31:16', '2020-07-15 09:31:16'),
(71, 'Build, test, and launch Node apps', 86, '2020-07-15 09:31:16', '2020-07-15 09:31:16'),
(72, 'Store data with Mongoose and MongoDB', 86, '2020-07-15 09:31:16', '2020-07-15 09:31:16'),
(73, 'Master Microsoft Excel and many of its advanced features', 87, '2020-07-15 10:35:10', '2020-07-15 10:35:10'),
(74, 'Become one of the top Excel users in your team', 87, '2020-07-15 10:35:10', '2020-07-15 10:35:10'),
(75, 'Build P&L statements from a raw data extraction', 87, '2020-07-15 10:35:10', '2020-07-15 10:35:10'),
(76, 'Kiến thứ đặt được 1', 88, '2020-07-15 17:59:08', '2020-07-15 17:59:08'),
(77, 'Kiến thứ đặt được 2', 88, '2020-07-15 17:59:08', '2020-07-15 17:59:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_type`
--
ALTER TABLE `admin_type`
  ADD PRIMARY KEY (`admin_type_id`);

--
-- Indexes for table `annouce`
--
ALTER TABLE `annouce`
  ADD PRIMARY KEY (`annouce_id`);

--
-- Indexes for table `annouce_room`
--
ALTER TABLE `annouce_room`
  ADD PRIMARY KEY (`fromCourse`,`toUser`,`annouce_id`);

--
-- Indexes for table `answer_bot`
--
ALTER TABLE `answer_bot`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `bill_student_course`
--
ALTER TABLE `bill_student_course`
  ADD PRIMARY KEY (`bill_student_course_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`course_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `course_annoucement`
--
ALTER TABLE `course_annoucement`
  ADD PRIMARY KEY (`annouce_id`);

--
-- Indexes for table `course_comment`
--
ALTER TABLE `course_comment`
  ADD PRIMARY KEY (`course_comment_id`);

--
-- Indexes for table `course_like`
--
ALTER TABLE `course_like`
  ADD PRIMARY KEY (`user_id`,`course_id`);

--
-- Indexes for table `instructor_course`
--
ALTER TABLE `instructor_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `2` (`priceTier_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `lesson_comment`
--
ALTER TABLE `lesson_comment`
  ADD PRIMARY KEY (`lesson_comment_id`);

--
-- Indexes for table `message_bot`
--
ALTER TABLE `message_bot`
  ADD PRIMARY KEY (`question_id`,`action_question_id`);

--
-- Indexes for table `moneytype`
--
ALTER TABLE `moneytype`
  ADD PRIMARY KEY (`moneyType_id`);

--
-- Indexes for table `pricetier`
--
ALTER TABLE `pricetier`
  ADD PRIMARY KEY (`priceTier_id`);

--
-- Indexes for table `question_bot`
--
ALTER TABLE `question_bot`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `social_type`
--
ALTER TABLE `social_type`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `storage_package`
--
ALTER TABLE `storage_package`
  ADD PRIMARY KEY (`storagePackage_id`);

--
-- Indexes for table `storage_user`
--
ALTER TABLE `storage_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`user_id`,`course_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `category_topic_1` (`category_id`);

--
-- Indexes for table `topic_course`
--
ALTER TABLE `topic_course`
  ADD PRIMARY KEY (`topic_id`,`course_id`),
  ADD KEY `tc1` (`course_id`);

--
-- Indexes for table `type_question_bot`
--
ALTER TABLE `type_question_bot`
  ADD PRIMARY KEY (`type_question_bot_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `usercard`
--
ALTER TABLE `usercard`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `what_learn_instructor_course`
--
ALTER TABLE `what_learn_instructor_course`
  ADD PRIMARY KEY (`learn_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_type`
--
ALTER TABLE `admin_type`
  MODIFY `admin_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `annouce`
--
ALTER TABLE `annouce`
  MODIFY `annouce_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT for table `answer_bot`
--
ALTER TABLE `answer_bot`
  MODIFY `answer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `bill_student_course`
--
ALTER TABLE `bill_student_course`
  MODIFY `bill_student_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `course_annoucement`
--
ALTER TABLE `course_annoucement`
  MODIFY `annouce_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_comment`
--
ALTER TABLE `course_comment`
  MODIFY `course_comment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `instructor_course`
--
ALTER TABLE `instructor_course`
  MODIFY `course_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `lesson_comment`
--
ALTER TABLE `lesson_comment`
  MODIFY `lesson_comment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `moneytype`
--
ALTER TABLE `moneytype`
  MODIFY `moneyType_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pricetier`
--
ALTER TABLE `pricetier`
  MODIFY `priceTier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `question_bot`
--
ALTER TABLE `question_bot`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `social_type`
--
ALTER TABLE `social_type`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `storage_package`
--
ALTER TABLE `storage_package`
  MODIFY `storagePackage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `type_question_bot`
--
ALTER TABLE `type_question_bot`
  MODIFY `type_question_bot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `what_learn_instructor_course`
--
ALTER TABLE `what_learn_instructor_course`
  MODIFY `learn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instructor_course`
--
ALTER TABLE `instructor_course`
  ADD CONSTRAINT `2` FOREIGN KEY (`priceTier_id`) REFERENCES `pricetier` (`priceTier_id`);

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `topic_course`
--
ALTER TABLE `topic_course`
  ADD CONSTRAINT `tc1` FOREIGN KEY (`course_id`) REFERENCES `instructor_course` (`course_id`),
  ADD CONSTRAINT `tc2` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`);

--
-- Constraints for table `usercard`
--
ALTER TABLE `usercard`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
