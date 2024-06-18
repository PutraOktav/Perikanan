-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2024 at 09:55 PM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pzgbtwqf_ikanselalu`
--
CREATE DATABASE IF NOT EXISTS `ikanselalu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ikanselalu`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('18c934af9a49c563e82e23627a722a98f97652e4', 'i:1;', 1718341343),
('18c934af9a49c563e82e23627a722a98f97652e4:timer', 'i:1718341343;', 1718341343),
('258e0ff0de9078c51a623d5bf9d92ad079731a5a', 'i:1;', 1718709471),
('258e0ff0de9078c51a623d5bf9d92ad079731a5a:timer', 'i:1718709471;', 1718709471),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1718326021),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1718326021;', 1718326021);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fish_food`
--

CREATE TABLE `fish_food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fish_food`
--

INSERT INTO `fish_food` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Hi - Provite 781-1', 12000.00, NULL, '2023-07-03 23:09:09'),
(3, 'Hi - Provite 781-2', 9200.00, NULL, '2023-06-01 13:08:02'),
(14, 'Hi - Provite 781-3', 15000.00, '2023-06-26 00:32:44', '2023-06-26 00:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `fish_types`
--

CREATE TABLE `fish_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ukuran_awal` int(11) NOT NULL,
  `waktu_panen` int(11) NOT NULL,
  `ukuran_panen` int(11) NOT NULL,
  `stocking_density` int(11) NOT NULL,
  `fcr` decimal(4,2) NOT NULL,
  `fish_food_id` bigint(20) UNSIGNED NOT NULL,
  `waktu_sampling` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fish_types`
--

INSERT INTO `fish_types` (`id`, `name`, `price`, `ukuran_awal`, `waktu_panen`, `ukuran_panen`, `stocking_density`, `fcr`, `fish_food_id`, `waktu_sampling`, `created_at`, `updated_at`) VALUES
(2, 'LELE', 250.00, 7, 3, 125, 200, 1.10, 1, 2, NULL, '2023-06-25 06:06:04'),
(3, 'GURAME', 13000.00, 250, 4, 500, 8, 1.50, 3, 4, NULL, '2023-06-04 13:08:43'),
(4, 'NILA', 1750.00, 50, 3, 250, 40, 1.20, 3, 4, NULL, '2023-06-01 13:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2023_02_23_071832_create_fish_types_table', 1),
(5, '2023_02_23_074800_create_fish_food_table', 1),
(6, '2023_02_27_073536_add_fish_food_id_to_fish_type_table', 1),
(7, '2023_02_28_115956_create_logs_table', 2),
(8, '2023_03_06_223634_add_waktu_sampling_to_fish_types_table', 3),
(9, '0001_01_01_000001_create_cache_table', 4),
(10, '0001_01_01_000002_create_jobs_table', 4),
(11, '2024_06_13_141940_create_sessions_table', 5),
(12, '2024_06_13_142125_create_sessions_table', 6),
(14, '2024_06_13_230003_create_riwayats_table', 7),
(15, '2024_06_14_012513_create_riwayat_samplings_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `riwayats`
--

CREATE TABLE `riwayats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `area` int(11) NOT NULL,
  `totalFish` int(11) NOT NULL,
  `biomassakg` int(11) NOT NULL,
  `biomassaPanenkg` int(11) NOT NULL,
  `ukuranAwal` int(11) NOT NULL,
  `waktuPanen` int(11) NOT NULL,
  `namaPakan` varchar(100) NOT NULL,
  `ukuranPanen` int(11) NOT NULL,
  `totalFeed` int(11) NOT NULL,
  `fishCost` int(11) NOT NULL,
  `feedCost` bigint(20) NOT NULL,
  `allCost` bigint(20) NOT NULL,
  `sampling` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `riwayats`
--

INSERT INTO `riwayats` (`id`, `name`, `area`, `totalFish`, `biomassakg`, `biomassaPanenkg`, `ukuranAwal`, `waktuPanen`, `namaPakan`, `ukuranPanen`, `totalFeed`, `fishCost`, `feedCost`, `allCost`, `sampling`, `updated_at`, `created_at`) VALUES
(1, 'LELE', 22, 4400, 31, 605, 7, 3, 'Hi - Provite 781-1', 125, 666, 1100000, 7986000, 9086000, 2, '2024-06-18', '2024-06-18 12:52:50'),
(2, 'GURAME', 33, 264, 66, 198, 250, 4, 'Hi - Provite 781-2', 500, 297, 3432000, 2732400, 6164400, 4, '2024-06-18', '2024-06-18 12:59:46'),
(3, 'LELE', 25, 5000, 35, 688, 7, 3, 'Hi - Provite 781-1', 125, 756, 1250000, 9075000, 10325000, 2, '2024-06-18', '2024-06-18 13:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_samplings`
--

CREATE TABLE `riwayat_samplings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `area` int(11) NOT NULL,
  `ukuranIkanSampling` int(11) NOT NULL,
  `feedDayKG` int(11) NOT NULL,
  `totalFeedSampling` int(11) NOT NULL,
  `sampling` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `riwayat_samplings`
--

INSERT INTO `riwayat_samplings` (`id`, `name`, `area`, `ukuranIkanSampling`, `feedDayKG`, `totalFeedSampling`, `sampling`, `updated_at`, `created_at`) VALUES
(1, 'NILA', 22, 22, 1, 37, 4, '2024-06-18', '2024-06-18 12:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1j9x5eOxbEwV9FCqq6ToeYwJyvatCRpqOBmUPu6U', NULL, '109.202.99.41', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVFKSVhVWFNnVGZiWWdMOVdhNlFiRUJhaGpRaklQQTdiMWxvVUJtdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718738681),
('1QaEpTa223kTI8dryFBHvHmTavm6rENGJymJyo7n', NULL, '192.87.174.28', 'Python/3.10 aiohttp/3.9.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGVYU042V3BaWkdJS0lYTUhGT2pmZmc2V0REc1Vpa2tKOHhNY3RHayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718730595),
('2gomy7NXsjf0et0XaJvwyme3HqiCvt2jPVx3bH7f', NULL, '193.233.233.29', 'Mozilla/5.0 (Linux; Android 9; SM-G950F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.101 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFdVanV6cjRpQTZYVXA2bnBEQTg1eFpBWjUyb2M0YmhwbzZYRDBZVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718730309),
('2QeEpnDN4VrbYwTjRXtBv5so5O2Z4AzUEXIvAfUk', NULL, '192.87.174.28', 'Python/3.10 aiohttp/3.9.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnc1SFV6cjE3M3Q2VHVaV3p0MmUxdldVemVRRUxtcWMza21xUWtUdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718730594),
('4zbmJtHsuY0dBGeEm314fiI3IXZVUOW2cwLjKyLL', NULL, '35.171.144.152', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXdvUkxjN3RUUUR1ZnBVSDBPOUJXR0FqMlpnaWp4Q0ZIVlZNMUV3RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sYWJhcnVnaS5jbG91ZC4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718724392),
('AmIm3BtGIQoFOpUyQUexueYMCZ2qbm6B5gCpNKRJ', NULL, '43.163.8.36', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFVIMFdCSnhqRktaaUNSTDBuNzVpMlJoRVZQbnNkY2tVV1dDd3lkVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cubGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718724845),
('BtwagWhUzm64Ei4tJ0CZJENq47Z7iGKcCSJ2dfYd', NULL, '104.166.80.224', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2R3YXI3bTFNN0pOWWMwZjdwc09sTkhiUjVQUWtwWFdIRjd3UlJNdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718718071),
('gASD92ya0shrm6uruvkKEmyf9L5Hfhh2E1IV3itd', NULL, '192.87.174.28', 'Python/3.10 aiohttp/3.9.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianNlNFZhc1Y2S0ZmN01Yd3VBOGFxRjBOak9QQ1FzQ1NPSVI5NXBBSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718719795),
('hbusb3sQmswlTcnRSB0VRK3Fq46iD6hAYfS50E55', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT050QVBGQnkwN3UzY1dzaTZxRUw3QUpjSVFCYU9PV1VISnhJVlRHTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718724391),
('Hi3K6nNY201GNsgrHoKjzYvmC7nX3fq3hOthrlni', NULL, '150.109.16.20', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWhZdE43T2Y2QTk3Uko1TUdHU2I2Sk5rRktnaFJCTk4za0pIMlhiSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmxhYmFydWdpLmNsb3VkL2Zpc2gtZmFybS1zYW1wbGluZy1jYWxjdWxhdG9yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718739238),
('hNmhnWkJMmgXMBSSlJH1iJrBOfOUXCIJfBOCTAUb', NULL, '192.87.174.28', 'Python/3.10 aiohttp/3.9.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnAwNXV6SHJJSlE5T3Nzc2c4aDU2WnZudnVFVHdXUVhXVFc5dTRJMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718719795),
('IdBfrINFUab7YpRst3WEzZthtFbTJGcMTnvTynuY', NULL, '184.154.139.19', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmU0eGhnZEttM2w2V2sza0JDT3VRZ1RlQ0tLZndBckFvZERTc1NxbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cubGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718728888),
('mEPgsMPGGeiKvt8NIIfG4ds9YtBZOVwFkKidj5dt', NULL, '184.154.139.19', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/6.0)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTFwaU9EVXc1c21JMzJqZUlaUUtsZnNxYklmd3lDVGV3OE11SjlIQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmxhYmFydWdpLmNsb3VkL2Zpc2gtZmFybS1zYW1wbGluZy1jYWxjdWxhdG9yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718728891),
('MNHB2gJfhnWJUeOaT8kRWtNtbjS9qyRbzbGhhx3R', NULL, '171.67.70.233', 'Mozilla/5.0 zgrab/0.x', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXJhakFEUXBsV1JDNE9mV2s0UFd6cXlyOXl6cE50MXJqS2VxVGxCYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718723766),
('Moqj8AE6rvsHfa9nzS7Fhy3DIiPOzn9OHIKmFS9n', NULL, '43.159.63.75', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTNvd3d1MkhBdFozMTJLTVVPYUY0OTNtVUlJT1puZDZkUXZobGxGQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sYWJhcnVnaS5jbG91ZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718737133),
('QdEdcAJSEV8bqQrlOYE6BJtygMYWPUTfqUtzmZpK', NULL, '34.248.137.227', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3hzRHBLVmtLT3M5N0kyZ0N0d0sxOHM5Uk92azM5RWhpckdLMjNFWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718719841),
('sPE9gktDl5wT8Iyer9sMY2p39JxgDXrrm1sPOLdh', NULL, '60.188.57.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDFqZW8xc2liTWpEVW9rUzNJZFVxY01saGFGb3BqNWw1MVAxMDJVdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sYWJhcnVnaS5jbG91ZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718723532),
('T31B8ucB6NHxFpkDi3mEvz1sPkEsqPtreuzqgsGH', NULL, '34.248.137.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjVIc3hFVkFOTkhteUgwTndYZ2oxT2pDODI3NDVGcXBpc29ObTkwUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718719842),
('tkf3ZHikg67S6Dt7DdMv9p2FSxOYKKiKuVvqDyJV', NULL, '150.109.16.20', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTNPSU5mQWhzcjdzVmxST0pHOUFVUjhFYVFRR2ZuYTB0bTVwYzRIRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmxhYmFydWdpLmNsb3VkL2Zpc2gtY2FsY3VsYXRvciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718739218),
('UQRK0FHsQPMb0zec0raq0Y5QDq0y7S7IGLBanRtu', NULL, '179.43.167.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3844.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2pzU0ZPYkRkS1hzd2FNanpMMlpyU3BwRHY3Q1VKM2d1YVFlZlU1ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718717600),
('v2jsb25WVke4fz0mrKkRnqSznXHA9WUsiBJDagEQ', NULL, '133.242.174.119', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGJqUlA1UDNQUUJFQWMySFN3dUFidVF6VkFwSzNaQ2p2YlZYQ2RnQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718720299),
('VhHYeu9sBeOv1Bk4wVoawNF53ThzRMwyMdqc6iTX', NULL, '34.248.137.227', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFVZM0RPNm1EV21NNm5BdjdjenM3UEZFZ1VyZDdWaHlmT01FZzlSMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718719841),
('VYczqzIwhoUKAIBnq5SRWFo3xIVDZxghFFvO1SLe', NULL, '184.154.139.19', 'SiteLockSpider [en] (WinNT; I ;Nav)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXZ3ekloN3ZxN2E0TVdnNkp4ZUJwSEJEUmhHUlVnSnh2Z2FaeG1jciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmxhYmFydWdpLmNsb3VkL2Zpc2gtY2FsY3VsYXRvciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718728896),
('xcitFnFBKUx8zRc9IpLekq2s561OB7oFVd1LdLvG', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkJVY3BRVlluR0xwMHlMUzcwSFlETHRmVmVGOVBhVzZXb1h3aFBUMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd3d3LmxhYmFydWdpLmNsb3VkLiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718724392),
('ZX4XnbbDFj0TOrFsN9TAtL5Qw445ZaAKTrDlPfpn', NULL, '36.72.217.69', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajU2cTFyOGJVZFgzeVNXSll4SjEycjB4M1EwdHRTZURBdnNoMjBSRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vbGFiYXJ1Z2kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718722303);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$frTWvdC0zeBOlPyVMYL31.dZa.5WRjREDImV00CSEzCrVfKjaSsnm', NULL, '2024-05-26 01:56:47', '2024-05-26 01:56:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fish_food`
--
ALTER TABLE `fish_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fish_types`
--
ALTER TABLE `fish_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fish_types_fish_food_id_foreign` (`fish_food_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayats`
--
ALTER TABLE `riwayats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_samplings`
--
ALTER TABLE `riwayat_samplings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fish_food`
--
ALTER TABLE `fish_food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fish_types`
--
ALTER TABLE `fish_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `riwayats`
--
ALTER TABLE `riwayats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `riwayat_samplings`
--
ALTER TABLE `riwayat_samplings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fish_types`
--
ALTER TABLE `fish_types`
  ADD CONSTRAINT `fish_types_fish_food_id_foreign` FOREIGN KEY (`fish_food_id`) REFERENCES `fish_food` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
