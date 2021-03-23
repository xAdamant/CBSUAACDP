-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 01:27 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbsua_acdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phase_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `supp_docs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `area`, `file_name`, `phase_id`, `created_at`, `updated_at`, `supp_docs`) VALUES
(1, 'AREA I', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '2021-03-16 00:40:17', '2021-03-16 00:40:17', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(2, 'AREA II', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(3, 'AREA III', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(4, 'AREA IV', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(5, 'AREA V', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(6, 'AREA VI', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(7, 'AREA VII', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(8, 'AREA VIII', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(9, 'AREA IX', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(10, 'AREA X', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1rbR-QGQX7nM1BJt7D1xUbzTOmQ1UmISd#list'),
(11, 'AREA I', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(12, 'AREA II', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(13, 'AREA III', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(14, 'AREA IV', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(15, 'AREA V', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(16, 'AREA VI', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(17, 'AREA VII', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(18, 'AREA VIII', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(19, 'AREA IX', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(20, 'AREA X', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=14g0zFaEG0f6vhCuiv5EnbtWu6cbJLmyA#list'),
(21, 'AREA I', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(22, 'AREA II', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(23, 'AREA III', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(24, 'AREA IV', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(25, 'AREA V', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(26, 'AREA VI', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(27, 'AREA VII', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(28, 'AREA VIII', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(29, 'AREA IX', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(30, 'AREA X', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(31, 'AREA I', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1OeOT_70RnrWCFNFn_rpF1qYwWNP954-G#list'),
(32, 'AREA II', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(33, 'AREA III', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(34, 'AREA IV', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(35, 'AREA V', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(36, 'AREA VI', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(37, 'AREA VII', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(38, 'AREA VIII', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(39, 'AREA IX', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(40, 'AREA X', 'https://drive.google.com/file/d/1s9lzd0pPZi6qWObIAWMVPw8sWi5Vio6s/preview', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1uTyrT1VS4rOJd93h9EEVHVEReX2lwgFJ#list'),
(41, 'AREA I', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1w91v34daBfpn4LU3DjjIePyGBCCHNmwm#list'),
(42, 'AREA II', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1w91v34daBfpn4LU3DjjIePyGBCCHNmwm#list'),
(43, 'AREA III', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1w91v34daBfpn4LU3DjjIePyGBCCHNmwm#list'),
(44, 'AREA IV', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1w91v34daBfpn4LU3DjjIePyGBCCHNmwm#list'),
(45, 'AREA V', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1w91v34daBfpn4LU3DjjIePyGBCCHNmwm#list'),
(46, 'AREA I', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=12SqFh0izbgyMmO0uxmxotLzw4DgGObBu#list'),
(47, 'AREA II', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=12SqFh0izbgyMmO0uxmxotLzw4DgGObBu#list'),
(48, 'AREA III', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=12SqFh0izbgyMmO0uxmxotLzw4DgGObBu#list'),
(49, 'AREA IV', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=12SqFh0izbgyMmO0uxmxotLzw4DgGObBu#list'),
(50, 'AREA I', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1NEb7gapHxOaeLKt_kJgKhjb2O593at8X#list'),
(51, 'AREA II', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1NEb7gapHxOaeLKt_kJgKhjb2O593at8X#list'),
(52, 'AREA III', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1NEb7gapHxOaeLKt_kJgKhjb2O593at8X#list'),
(53, 'AREA I', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1RxyFC0c4K6BRy8gS5CEF3lPf_FcE-w6Z#list'),
(54, 'AREA II', 'https://drive.google.com/file/d/1z4QKFB46z3-HoBjgm7T1amgxQbgyw2YN/preview', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'https://drive.google.com/embeddedfolderview?id=1RxyFC0c4K6BRy8gS5CEF3lPf_FcE-w6Z#list');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'BACHELOR OF ELEMENTARY EDUCATION', '/img/logo/Educ_logo.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'BACHELOR OF SECONDARY EDUCATION', '/img/logo/Educ_logo.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', '/img/logo/IT_logo.png', '2021-03-16 00:34:42', '2021-03-16 00:34:42'),
(4, 'BACHELOR OF SCIENCE IN INDUSTRIAL TECHNOLOGY', '/img/logo/Industrial_Logo.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_14_170108_create_courses_table', 1),
(5, '2021_03_14_170206_create_areas_table', 1),
(6, '2021_03_14_170258_create_supports_table', 1),
(7, '2021_03_16_002031_create_phases_table', 1);

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
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`id`, `phase`, `course_id`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '2021-03-16 00:32:02', '2021-03-16 00:32:02'),
(2, '1', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '1', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '1', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `google_id`, `created_at`, `updated_at`) VALUES
(8, 'vince clemence carcido', 'vinceclemence.carcido@cbsua.edu.ph', NULL, '$2y$10$Cw4z9/k7suq9iPI7R4D8ieMtXLb.63t4eVxU7IuuNIonbdr4eJpiS', NULL, '107277484119489743455', '2021-03-15 23:56:58', '2021-03-15 23:56:58'),
(11, 'Fidel Paladan', 'fidel.paladan@cbsua.edu.ph', NULL, 'eyJpdiI6InNpcTZWVGxnNk1rV0Z3ajBDcWNCR0E9PSIsInZhbHVlIjoiWEtaOTQwKzBpSndOQWpZZTVzTW51U2N4SHlFaWpMMXZYc0pISTFLM015TT0iLCJtYWMiOiI3MTRkOTAxMDY4Mzc4ZWJmMzEwOWZiYmI5MDhkODFkMmU3MDViMjZjZWZkNjRlYWFlYTk5ZmFlNzUxMGE0YmQ0In0=', NULL, '104871192300744634364', '2021-03-18 10:33:38', '2021-03-18 10:33:38'),
(13, 'Cbsua Sipocot', 'cbsua_sipocot@gmail.com', NULL, '$2y$10$gkRKZulBUIxIT/RnPsYrN.TRQL3JlYYLxeL1HFQy5g.F4eOVatvCy', NULL, NULL, '2021-03-18 10:57:18', '2021-03-18 10:57:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
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
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
