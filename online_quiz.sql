-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 05:59 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Marge Conroy', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(2, 'Fabiola Thiel', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(3, 'Mrs. Lilliana Stoltenberg', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(4, 'Rosie Becker', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(5, 'Hayden Leuschke', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(6, 'Ms. Faye Larkin', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(7, 'Karson Beatty', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(8, 'Jacklyn Vandervort', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(10, 'Frankie Hettinger', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(11, 'Rathod Gunvantsinh', NULL, NULL),
(12, 'vinod kinariwala', NULL, NULL),
(13, 'Check Entry', NULL, NULL),
(14, 'Que Total', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_question_answer`
--

CREATE TABLE `candidate_question_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `is_right` tinyint(1) NOT NULL,
  `answer_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidate_question_answer`
--

INSERT INTO `candidate_question_answer` (`id`, `candidate_id`, `question_id`, `option_id`, `is_right`, `answer_time`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, '2009-01-30 04:39:22', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(2, 1, 2, 3, 0, '1988-07-06 06:22:56', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(3, 1, 3, 1, 1, '2002-11-05 09:35:10', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(4, 1, 4, 1, 1, '1991-11-02 23:45:43', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(5, 1, 5, 2, 0, '1971-06-23 06:11:48', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(6, 1, 6, 2, 0, '1995-10-31 18:45:06', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(7, 1, 7, 4, 0, '2018-10-08 17:04:59', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(8, 1, 8, 4, 0, '1996-10-31 17:33:26', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(9, 1, 9, 4, 1, '1983-11-09 19:23:58', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(10, 1, 10, 3, 0, '2003-09-21 22:37:36', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(11, 2, 1, 1, 1, '1979-07-13 03:34:04', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(12, 2, 2, 2, 0, '1990-10-16 01:10:23', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(13, 2, 3, 4, 0, '2000-04-15 23:24:41', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(14, 2, 4, 3, 0, '1981-11-19 03:07:39', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(15, 2, 5, 1, 1, '1994-02-01 07:40:01', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(16, 2, 6, 2, 0, '1972-01-27 02:27:08', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(17, 2, 7, 1, 1, '2003-09-27 20:14:40', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(18, 2, 8, 4, 0, '1988-11-01 10:27:11', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(19, 2, 9, 4, 1, '1976-04-27 18:33:40', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(20, 2, 10, 3, 1, '2012-03-05 22:13:39', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(21, 3, 1, 1, 0, '2017-10-28 20:59:15', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(22, 3, 2, 1, 1, '2004-06-02 18:44:26', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(23, 3, 3, 4, 1, '2004-04-09 09:26:47', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(24, 3, 4, 3, 0, '1999-01-21 08:19:43', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(25, 3, 5, 2, 0, '1976-06-05 17:52:56', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(26, 3, 6, 1, 1, '1990-11-17 02:38:32', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(27, 3, 7, 1, 1, '1976-10-06 05:01:38', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(28, 3, 8, 3, 0, '1970-05-09 06:09:55', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(29, 3, 9, 1, 0, '2000-05-13 20:41:42', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(30, 3, 10, 1, 0, '1993-02-20 03:06:06', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(31, 4, 1, 3, 0, '1983-02-26 13:01:04', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(32, 4, 2, 1, 1, '1983-11-21 02:42:25', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(33, 4, 3, 3, 1, '1978-02-16 08:25:28', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(34, 4, 4, 4, 1, '1974-01-18 01:30:01', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(35, 4, 5, 2, 1, '2006-06-13 19:40:13', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(36, 4, 6, 2, 1, '1980-02-13 06:10:56', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(37, 4, 7, 1, 1, '2002-04-24 18:12:58', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(38, 4, 8, 4, 0, '1987-11-04 23:35:54', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(39, 4, 9, 3, 1, '2001-08-08 02:50:19', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(40, 4, 10, 2, 1, '1971-09-21 13:22:48', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(41, 5, 1, 3, 1, '1985-02-06 08:03:47', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(42, 5, 2, 3, 0, '1988-07-18 18:36:53', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(43, 5, 3, 3, 0, '2011-02-18 00:55:13', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(44, 5, 4, 4, 1, '1977-06-17 05:02:01', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(45, 5, 5, 3, 0, '1998-01-03 07:45:26', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(46, 5, 6, 1, 0, '2002-09-09 04:16:58', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(47, 5, 7, 1, 1, '1985-11-13 18:58:12', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(48, 5, 8, 3, 0, '1985-12-25 23:05:24', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(49, 5, 9, 4, 1, '1980-01-09 14:02:50', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(50, 5, 10, 4, 1, '1977-05-29 18:16:57', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(51, 6, 1, 2, 1, '1973-07-11 03:16:49', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(52, 6, 2, 2, 1, '1991-11-17 04:28:22', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(53, 6, 3, 2, 0, '1986-09-04 20:18:28', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(54, 6, 4, 2, 1, '1995-02-22 10:23:47', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(55, 6, 5, 2, 0, '1987-07-19 04:00:15', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(56, 6, 6, 3, 1, '1974-11-08 12:11:56', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(57, 6, 7, 4, 0, '2000-10-10 03:40:41', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(58, 6, 8, 1, 0, '2007-05-08 04:24:08', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(59, 6, 9, 4, 0, '1992-10-31 05:13:44', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(60, 6, 10, 1, 0, '1996-12-11 22:29:25', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(61, 7, 1, 1, 1, '2016-04-29 17:29:24', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(62, 7, 2, 1, 0, '1994-10-10 04:36:35', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(63, 7, 3, 1, 1, '1985-10-16 20:49:29', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(64, 7, 4, 3, 0, '2007-05-18 06:35:38', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(65, 7, 5, 4, 0, '2016-06-12 03:16:48', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(66, 7, 6, 3, 0, '2014-09-17 19:25:15', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(67, 7, 7, 2, 0, '2008-12-09 21:04:25', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(68, 7, 8, 1, 1, '2004-05-26 01:35:56', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(69, 7, 9, 4, 1, '1970-01-28 21:18:55', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(70, 7, 10, 3, 1, '1995-11-03 19:15:00', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(71, 8, 1, 4, 0, '1980-07-22 18:12:21', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(72, 8, 2, 3, 0, '2016-08-06 13:10:51', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(73, 8, 3, 4, 0, '1977-05-09 03:41:05', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(74, 8, 4, 4, 1, '2015-09-14 19:02:53', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(75, 8, 5, 1, 0, '1989-04-30 13:40:00', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(76, 8, 6, 4, 0, '2003-04-06 10:45:58', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(77, 8, 7, 4, 1, '2008-10-11 11:16:54', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(78, 8, 8, 1, 0, '2003-11-08 09:18:40', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(79, 8, 9, 1, 1, '1993-09-07 02:33:09', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(80, 8, 10, 3, 0, '2009-10-21 00:53:26', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(81, 9, 1, 1, 0, '2006-03-31 19:02:17', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(82, 9, 2, 2, 0, '1976-12-03 10:27:56', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(83, 9, 3, 2, 0, '2000-06-06 01:19:32', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(84, 9, 4, 4, 0, '2008-01-06 05:44:45', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(85, 9, 5, 3, 0, '1995-12-07 10:18:20', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(86, 9, 6, 2, 1, '1993-08-31 19:27:02', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(87, 9, 7, 1, 0, '2017-05-27 13:48:02', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(88, 9, 8, 2, 1, '1980-04-29 10:52:45', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(89, 9, 9, 3, 1, '2009-04-09 07:21:33', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(90, 9, 10, 2, 1, '2013-01-17 21:15:38', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(91, 10, 1, 3, 0, '1996-09-14 15:21:43', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(92, 10, 2, 3, 0, '1981-05-07 16:14:44', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(93, 10, 3, 3, 0, '1989-05-29 16:38:27', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(94, 10, 4, 4, 0, '1977-08-28 21:30:59', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(95, 10, 5, 1, 0, '2008-05-10 10:57:24', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(96, 10, 6, 2, 0, '1985-10-28 11:32:28', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(97, 10, 7, 2, 0, '2000-08-04 23:15:08', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(98, 10, 8, 4, 1, '1992-01-30 00:56:23', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(99, 10, 9, 4, 1, '2008-08-23 17:28:04', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(100, 10, 10, 1, 0, '1984-01-22 04:03:33', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(101, 11, 1, 1, 1, '2018-12-07 06:05:47', NULL, NULL),
(102, 11, 2, 1, 1, '2018-12-07 06:27:25', NULL, NULL),
(103, 11, 3, 1, 0, '2018-12-07 06:27:34', NULL, NULL),
(104, 11, 4, 1, 0, '2018-12-07 06:27:36', NULL, NULL),
(105, 11, 5, 1, 0, '2018-12-07 06:27:38', NULL, NULL),
(106, 11, 6, 2, 0, '2018-12-07 06:27:40', NULL, NULL),
(107, 11, 7, 3, 1, '2018-12-07 06:27:42', NULL, NULL),
(108, 11, 8, 3, 0, '2018-12-07 06:27:45', NULL, NULL),
(109, 11, 9, 3, 0, '2018-12-07 06:27:47', NULL, NULL),
(110, 11, 10, 3, 1, '2018-12-07 06:27:50', NULL, NULL),
(111, 12, 1, 1, 1, '2018-12-07 08:58:19', NULL, NULL),
(112, 12, 1, 1, 1, '2018-12-07 08:58:19', NULL, NULL),
(113, 13, 1, 2, 0, '2018-12-07 08:59:39', NULL, NULL),
(114, 13, 2, 2, 0, '2018-12-07 08:59:55', NULL, NULL),
(115, 13, 3, 3, 1, '2018-12-07 08:59:59', NULL, NULL),
(116, 13, 4, 1, 0, '2018-12-07 09:00:02', NULL, NULL),
(117, 13, 5, 1, 0, '2018-12-07 09:00:05', NULL, NULL),
(118, 13, 6, 1, 1, '2018-12-07 09:00:07', NULL, NULL),
(119, 13, 7, 1, 0, '2018-12-07 09:00:09', NULL, NULL),
(120, 13, 8, 2, 0, '2018-12-07 09:00:12', NULL, NULL),
(121, 13, 9, 3, 0, '2018-12-07 09:00:15', NULL, NULL),
(122, 13, 10, 3, 1, '2018-12-07 09:06:04', NULL, NULL),
(123, 14, 1, 2, 0, '2018-12-07 09:06:40', NULL, NULL),
(124, 14, 2, 3, 0, '2018-12-07 09:06:47', NULL, NULL),
(125, 14, 3, 1, 0, '2018-12-07 09:06:50', NULL, NULL),
(126, 14, 4, 1, 0, '2018-12-07 09:06:52', NULL, NULL),
(127, 14, 5, 1, 0, '2018-12-07 09:06:54', NULL, NULL),
(128, 14, 6, 1, 1, '2018-12-07 09:06:56', NULL, NULL),
(129, 14, 7, 1, 0, '2018-12-07 09:06:58', NULL, NULL),
(130, 14, 8, 1, 1, '2018-12-07 09:07:00', NULL, NULL),
(131, 14, 9, 1, 1, '2018-12-07 09:07:03', NULL, NULL),
(132, 14, 10, 1, 0, '2018-12-07 09:07:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_12_04_051814_create_candidate_table', 1),
(8, '2018_12_04_064831_create_question_table', 1),
(9, '2018_12_05_063748_create_candidate_question_answer_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ans_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `ans_id`, `created_at`, `updated_at`) VALUES
(1, 'Sequi vel nulla adipisci veritatis quibusdam officiis consequatur.', 'Agnes Gibson', 'Aida Bergstrom', 'Aurelie Weber', 'Miss Serena Nader', '1', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(2, 'Ad officia nemo rerum nihil.', 'Prof. Gwen Vandervort', 'Ken Ritchie', 'Zechariah Watsica', 'Jessy Davis', '1', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(3, 'Nihil sequi natus officia repellendus vitae veritatis et quia.', 'Emile Kemmer Sr.', 'Emmett Labadie', 'Mr. Reed Robel PhD', 'Aubrey Douglas DVM', '3', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(4, 'Doloribus accusantium voluptatibus voluptatum qui qui dolorem iure voluptas.', 'Brenden Nicolas', 'Arlene Cormier', 'Ms. Jakayla Kuhn MD', 'Marlin Fisher', '2', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(5, 'Id nesciunt aperiam consequatur esse quam ipsum.', 'Mr. Edmond Rolfson', 'Joelle Mohr I', 'Nettie Walker', 'Bailee Cruickshank', '3', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(6, 'Dolores laboriosam minus hic iure amet inventore consequatur nihil.', 'Devan Wintheiser', 'Prof. Rylan Lehner', 'Omer Fadel', 'Junius Predovic', '1', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(7, 'Sed porro expedita deserunt porro asperiores.', 'Mr. Zander Ebert II', 'Dr. Therese Monahan', 'Frankie Doyle', 'Karine Lindgren PhD', '3', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(8, 'Totam beatae ab officiis cupiditate itaque non possimus.', 'Kirstin Howell', 'Theresa Ankunding', 'Mr. Braden Rowe', 'Elda Emmerich', '1', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(9, 'Veritatis perferendis deleniti dolor.', 'Karl Wolf', 'Dr. Oliver Schamberger', 'Mohammed O\'Keefe', 'Isaias Torp', '1', '2018-12-06 05:14:04', '2018-12-06 05:14:04'),
(11, 'PHP Stand For ?', 'php', 'hhp', 'hph', 'No of the above', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rathod Gunvantsinh', 'rathod@gmail.com', '$2y$10$rhg4tIltGjwBHTeTN8hfteisbx1YERG8vIsvp44.sVW0BE2ZTKKxW', 'pjp7vYU73SfZFFnElQnV03FRHda8T8udDcskA7SKJzWOddL5zP0fCdhu95bp', '2018-12-06 03:22:36', '2018-12-06 03:22:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_question_answer`
--
ALTER TABLE `candidate_question_answer`
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
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `candidate_question_answer`
--
ALTER TABLE `candidate_question_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
