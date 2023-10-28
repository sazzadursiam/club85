-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 28, 2023 at 11:34 AM
-- Server version: 10.6.15-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club85_db`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bkash_payment_ref` varchar(255) NOT NULL,
  `payment_amount` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `bkash_payment_ref`, `payment_amount`, `created_at`, `updated_at`) VALUES
(1, 6, '1', '1990', '2023-10-19 13:53:41', '2023-10-19 13:53:41'),
(2, 7, 'abcd', '1990', '2023-10-19 15:39:13', '2023-10-19 15:39:13'),
(3, 7, 'abcd', '1990', '2023-10-19 15:39:23', '2023-10-19 15:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'club85hfgufwevcxy3523jjhvcx', 'fbcdfde7502f81a4885857a704bed89e8bb53c43dff8cab633a138fe58ce0c8d', '[\"*\"]', '2023-10-14 20:34:42', NULL, '2023-10-14 20:28:21', '2023-10-14 20:34:42'),
(2, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', '7be5b6705815cf147783700e6d8337e40152adfd9d0f767d406050b95ab1e6a5', '[\"*\"]', NULL, NULL, '2023-10-14 21:22:03', '2023-10-14 21:22:03'),
(3, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', 'bc93cf3ca99fb9cc63b718b3b638f568cd8daa4994edbfbb071ac06b37c2d5c7', '[\"*\"]', NULL, NULL, '2023-10-14 21:25:05', '2023-10-14 21:25:05'),
(4, 'App\\Models\\User', 3, 'club85hfgufwevcxy3523jjhvcx', '82773ad860324c73947786e54f12256d94a0bc86041be556900e145e4696fc34', '[\"*\"]', '2023-10-14 21:32:08', NULL, '2023-10-14 21:31:37', '2023-10-14 21:32:08'),
(5, 'App\\Models\\User', 4, 'club85hfgufwevcxy3523jjhvcx', 'd524699cd5ce664e19d7af80e1fee31eb836b74b16daf4fc23fe814e82d4d21a', '[\"*\"]', NULL, NULL, '2023-10-14 21:59:05', '2023-10-14 21:59:05'),
(6, 'App\\Models\\User', 5, 'club85hfgufwevcxy3523jjhvcx', '2bbfc18a1a3f850184764ce8aba266b26d250e1084892d355ee92f77e324e70c', '[\"*\"]', '2023-10-14 22:34:05', NULL, '2023-10-14 22:00:42', '2023-10-14 22:34:05'),
(7, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', 'efc3eafc35d9544cadc35dc979ed9e92314f175b97ed9a8eccb24fe1dd26c868', '[\"*\"]', NULL, NULL, '2023-10-14 22:05:00', '2023-10-14 22:05:00'),
(8, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', '5a3678c024223684e916514215ff75cf0af875fb03763a58b3bbe2a4b4802339', '[\"*\"]', NULL, NULL, '2023-10-14 22:11:34', '2023-10-14 22:11:34'),
(9, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', '97af812a1289e14b9f9f70017a0b53726043b7a78ab74b9fcb09b8be2a69c1cf', '[\"*\"]', NULL, NULL, '2023-10-14 22:12:14', '2023-10-14 22:12:14'),
(10, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', 'b60b0a53d821f1547eb063d1c4173fd984f4068575a607f1d85de8a383c5a023', '[\"*\"]', NULL, NULL, '2023-10-14 22:12:34', '2023-10-14 22:12:34'),
(11, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', 'dea248240f1b5b828be2b3425e3da4c6c435c82e788e047363b939f6df0e5314', '[\"*\"]', '2023-10-14 22:18:05', NULL, '2023-10-14 22:15:55', '2023-10-14 22:18:05'),
(12, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', '6642bb333107ec9469314b54b75158ac40c63885d6007e9d14bec3cc97d485df', '[\"*\"]', '2023-10-14 22:22:07', NULL, '2023-10-14 22:19:13', '2023-10-14 22:22:07'),
(14, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', 'dd13d8021bfecd90014fc1b686ec9b3a41e6bd7bd28d6208e5feb12e39684c6c', '[\"*\"]', '2023-10-14 22:28:57', NULL, '2023-10-14 22:28:11', '2023-10-14 22:28:57'),
(16, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'c450427a56a80eeec2ae5e742d2006dc83b59f47366630e9939a72d5fc0ef00e', '[\"*\"]', '2023-10-15 00:10:09', NULL, '2023-10-15 00:08:20', '2023-10-15 00:10:09'),
(17, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', '281abb3e343ecc0b7cdcf2c16b2f2c5ccd0f1aa3a71a51a1a98d8305b8bea3b3', '[\"*\"]', '2023-10-15 00:10:47', NULL, '2023-10-15 00:10:44', '2023-10-15 00:10:47'),
(19, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'c1bc2c01091300e2c375d219a94122de4e986b12f9dbae3cb52492cff33b7a43', '[\"*\"]', '2023-10-15 00:40:12', NULL, '2023-10-15 00:36:41', '2023-10-15 00:40:12'),
(20, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', '3a64e8e0d98ebb7e312e5efafcdfe2981be64871694c6b2e7fc7aac283b16945', '[\"*\"]', '2023-10-15 01:11:19', NULL, '2023-10-15 00:54:01', '2023-10-15 01:11:19'),
(21, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'd784bce704f9abba7a31ac156b0ac4faaf3508927c16bc2d713069ff94447151', '[\"*\"]', '2023-10-15 15:14:49', NULL, '2023-10-15 02:02:47', '2023-10-15 15:14:49'),
(22, 'App\\Models\\User', 7, 'club85hfgufwevcxy3523jjhvcx', 'c55a03fd3fc953877cc80a4cbbdd40fe78d0c57e83ab2a1ba4e2f895c144f5ac', '[\"*\"]', '2023-10-15 09:32:41', NULL, '2023-10-15 09:28:23', '2023-10-15 09:32:41'),
(23, 'App\\Models\\User', 8, 'club85hfgufwevcxy3523jjhvcx', 'da1ed2664abef542ac5bd9ffade963dd704d5187c8f8fae77f99aa457ed6dae7', '[\"*\"]', NULL, NULL, '2023-10-15 15:17:26', '2023-10-15 15:17:26'),
(24, 'App\\Models\\User', 9, 'club85hfgufwevcxy3523jjhvcx', '4f8409fcb441c268ef3d7f61ad445c79c7b9ee094a621a4bedeb372cdad8b98f', '[\"*\"]', NULL, NULL, '2023-10-15 15:24:51', '2023-10-15 15:24:51'),
(25, 'App\\Models\\User', 10, 'club85hfgufwevcxy3523jjhvcx', 'e2499660f0cfe7c422db1f96870706c5a8b74e0ae4ec507a14f085575061d0da', '[\"*\"]', NULL, NULL, '2023-10-15 15:26:37', '2023-10-15 15:26:37'),
(26, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', '8dd7bd8bd9810764af0613029b822c8b8416b42e3f248e0ad12edcbe3b202970', '[\"*\"]', '2023-10-15 15:27:25', NULL, '2023-10-15 15:27:18', '2023-10-15 15:27:25'),
(27, 'App\\Models\\User', 11, 'club85hfgufwevcxy3523jjhvcx', '2e81c7d51da1576b5a03bf4e4159b47efe3dc81bba35b19d73bc9c9effd4541f', '[\"*\"]', '2023-10-15 15:49:44', NULL, '2023-10-15 15:45:31', '2023-10-15 15:49:44'),
(28, 'App\\Models\\User', 12, 'club85hfgufwevcxy3523jjhvcx', 'de031e9c2d1335e6548d8216d3321b8ddaba4e412ee13f799681643cd39b356d', '[\"*\"]', NULL, NULL, '2023-10-15 16:04:14', '2023-10-15 16:04:14'),
(29, 'App\\Models\\User', 12, 'club85hfgufwevcxy3523jjhvcx', '06788e609bc4bab2ebeca60a203623c29cec265f33e6efe031866071914c2c15', '[\"*\"]', NULL, NULL, '2023-10-15 16:05:17', '2023-10-15 16:05:17'),
(30, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'e54030d86d96c6417df78e594052f181f0e1af68c3cab39df2b7c4fc01204758', '[\"*\"]', NULL, NULL, '2023-10-15 17:27:49', '2023-10-15 17:27:49'),
(31, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'b0912c811dd0c658760963730588c79ab8572456535285e21743e69ffce5ceee', '[\"*\"]', NULL, NULL, '2023-10-15 17:39:41', '2023-10-15 17:39:41'),
(32, 'App\\Models\\User', 13, 'club85hfgufwevcxy3523jjhvcx', 'df98c17dbfad2a43c9db8a3a4aec1481f811bed18b9740ea9a590220e3cd7afc', '[\"*\"]', '2023-10-15 20:56:39', NULL, '2023-10-15 20:56:38', '2023-10-15 20:56:39'),
(33, 'App\\Models\\User', 14, 'club85hfgufwevcxy3523jjhvcx', '1802421d8efa7efaecad7c0a7275c3537ffc84ef9be14c247337bc20eecb2920', '[\"*\"]', '2023-10-15 21:00:00', NULL, '2023-10-15 20:59:59', '2023-10-15 21:00:00'),
(34, 'App\\Models\\User', 15, 'club85hfgufwevcxy3523jjhvcx', '40510f079141d7aa61eb888695ab5ce4065c0d5d473c3eebbf29b064217ed549', '[\"*\"]', '2023-10-15 21:13:46', NULL, '2023-10-15 21:13:37', '2023-10-15 21:13:46'),
(37, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'ade01b0e8bc4ff269b18b32809a6b254dd0f8d7cb6ef1c08e5fe43ace18f7bc4', '[\"*\"]', '2023-10-16 01:09:36', NULL, '2023-10-15 22:02:07', '2023-10-16 01:09:36'),
(38, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'e9a692d0f7d990b8a05c8d1072a2ba285ec38b7ae5dea72b50ef4c144d6e4ef5', '[\"*\"]', '2023-10-15 22:09:03', NULL, '2023-10-15 22:08:30', '2023-10-15 22:09:03'),
(39, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'a6d22f950549f58f4ff1b25f25c9b52cdedcd2422f98c2ecbee9a1a7ead704e7', '[\"*\"]', '2023-10-15 22:21:04', NULL, '2023-10-15 22:16:53', '2023-10-15 22:21:04'),
(40, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', '5a5d4dd840b0ac293a2e534f224f06824b555d2263f475623dfa275e0c44d31d', '[\"*\"]', '2023-10-15 22:27:26', NULL, '2023-10-15 22:26:52', '2023-10-15 22:27:26'),
(41, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', 'b846cd8b64c3892604749d188aa3268d080388f09468e0b9e5a8085d9eeee54e', '[\"*\"]', '2023-10-16 01:19:58', NULL, '2023-10-16 01:19:22', '2023-10-16 01:19:58'),
(42, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', '0ccd1a681cc0896bd7d9ace68a5e79f6be465f64752eb2b35893e81d93f2b214', '[\"*\"]', '2023-10-16 01:21:26', NULL, '2023-10-16 01:21:13', '2023-10-16 01:21:26'),
(43, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', '45ff1334c697a4149719c31f0d0b45954eea6a92aca07e67a566df3f9673412f', '[\"*\"]', '2023-10-16 01:26:01', NULL, '2023-10-16 01:24:36', '2023-10-16 01:26:01'),
(44, 'App\\Models\\User', 17, 'club85hfgufwevcxy3523jjhvcx', 'd60b2425d88c5c75a678dba6959a271795e4cd47f18059a5667d11fda303374e', '[\"*\"]', '2023-10-16 01:31:32', NULL, '2023-10-16 01:27:03', '2023-10-16 01:31:32'),
(45, 'App\\Models\\User', 18, 'club85hfgufwevcxy3523jjhvcx', 'e405cf376adabf580c5ea4946cf988fd1d77ea8e80555f75056c656271fc251d', '[\"*\"]', '2023-10-16 01:36:11', NULL, '2023-10-16 01:35:43', '2023-10-16 01:36:11'),
(46, 'App\\Models\\User', 18, 'club85hfgufwevcxy3523jjhvcx', '8bd1c4faa4c20e70c7bafac0d4b05c8be3de78bb73e3c853d7116f6482b0cb98', '[\"*\"]', '2023-10-16 01:37:47', NULL, '2023-10-16 01:36:11', '2023-10-16 01:37:47'),
(47, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', '47e15689750e13313c14942a9260ad5f8f09148a23d7388fa6e1f60ea27356f3', '[\"*\"]', '2023-10-16 02:16:00', NULL, '2023-10-16 02:15:09', '2023-10-16 02:16:00'),
(48, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', 'ec5a17246f545d1c32f0ca835a659c1e816f1d1e6ff774a4e8da41fea748de1f', '[\"*\"]', '2023-10-16 11:11:58', NULL, '2023-10-16 02:16:32', '2023-10-16 11:11:58'),
(49, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', 'af668389acc299c07b8de50a91684a5f6a32eac49256296bb900292bbefcc71f', '[\"*\"]', NULL, NULL, '2023-10-16 02:26:45', '2023-10-16 02:26:45'),
(50, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', '0dd56e731a9da396d9a268ce3187bb2915a627a1048e3320d4aa2367674e5f93', '[\"*\"]', NULL, NULL, '2023-10-16 02:46:37', '2023-10-16 02:46:37'),
(51, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', 'e9acd21179e00258d80269896586ffe7ab1aa09a538e874e8e0fff9c39064a31', '[\"*\"]', NULL, NULL, '2023-10-16 03:02:01', '2023-10-16 03:02:01'),
(52, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', '4f234a5809cd6239d46176d01985f1975d3f4c252eab7b3153771057eaa83c30', '[\"*\"]', NULL, NULL, '2023-10-16 03:17:22', '2023-10-16 03:17:22'),
(53, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', 'fe72c0bdc4dd1d0a818bc928f8a7beb509bd75b93cb608ad548f1f175eabf16b', '[\"*\"]', NULL, NULL, '2023-10-16 03:25:36', '2023-10-16 03:25:36'),
(54, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', '4f0e79f830d840077a57d90324e879a7f5b603f7cb66a6dcb97df21f90ff05d5', '[\"*\"]', NULL, NULL, '2023-10-16 03:27:52', '2023-10-16 03:27:52'),
(55, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', '5758a0ea819a2fc90fbad909ab9cab1d17c147d5353a9ac13a1fed32222299a3', '[\"*\"]', NULL, NULL, '2023-10-16 03:31:15', '2023-10-16 03:31:15'),
(56, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', 'b920c92007f7ff6ee8261b22901f555f1d1b4c7eb84dfa9a690042cd87b9269f', '[\"*\"]', NULL, NULL, '2023-10-16 03:41:28', '2023-10-16 03:41:28'),
(57, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', '45bb3688d27a93ab03b364f95a25c3376eab288d85749d7da6a9fae9a9d600c9', '[\"*\"]', NULL, NULL, '2023-10-16 03:46:44', '2023-10-16 03:46:44'),
(58, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', 'd95bbed0aac88848c06d8011b11e663997dadb3d0266161a60015fddcaeaaa13', '[\"*\"]', NULL, NULL, '2023-10-16 04:01:51', '2023-10-16 04:01:51'),
(59, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', 'f94235841067bcbebb5f6f1c719ece4431bfdfc20f606bc10c80d2606e071798', '[\"*\"]', NULL, NULL, '2023-10-16 04:07:01', '2023-10-16 04:07:01'),
(60, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', 'cf9eb99b89846f8bb2c1e8b4d099d82fd8d51497bf788eeab221d6a0f1092fd6', '[\"*\"]', NULL, NULL, '2023-10-16 04:13:08', '2023-10-16 04:13:08'),
(62, 'App\\Models\\User', 20, 'club85hfgufwevcxy3523jjhvcx', 'ea0a2f3c54b0b206ea44d0db6f39f138265cff96debeab41839ff47a6e1f72bd', '[\"*\"]', NULL, NULL, '2023-10-16 05:59:37', '2023-10-16 05:59:37'),
(63, 'App\\Models\\User', 20, 'club85hfgufwevcxy3523jjhvcx', 'aef4dc6a618b1f3961febb5b171b38096d34334783d2d63a0e9a49d5449c69cf', '[\"*\"]', NULL, NULL, '2023-10-16 09:56:07', '2023-10-16 09:56:07'),
(64, 'App\\Models\\User', 21, 'club85hfgufwevcxy3523jjhvcx', 'a59b647d0aa91079b3429868b61a7b61d4e34919e0937ba393910adfb1c3069a', '[\"*\"]', '2023-10-16 11:09:21', NULL, '2023-10-16 11:05:21', '2023-10-16 11:09:21'),
(65, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', '903270b3894848989e45f23ce638bfcbb3f853c9634cfbc798034c649401e820', '[\"*\"]', NULL, NULL, '2023-10-16 11:10:36', '2023-10-16 11:10:36'),
(66, 'App\\Models\\User', 19, 'club85hfgufwevcxy3523jjhvcx', '1f2d8fff792e4068b3bcbee258d0e39f85bc4dd7476a857502f4c0558af059f8', '[\"*\"]', NULL, NULL, '2023-10-16 11:14:27', '2023-10-16 11:14:27'),
(67, 'App\\Models\\User', 22, 'club85hfgufwevcxy3523jjhvcx', '0a9705487f8c7690d0ff406ba7039896dc86df87c1682f6908ae0bbfb5fbbf39', '[\"*\"]', NULL, NULL, '2023-10-16 11:21:16', '2023-10-16 11:21:16'),
(68, 'App\\Models\\User', 22, 'club85hfgufwevcxy3523jjhvcx', '8a4df0f5137e0bbf39972043374750394d0ce238d2bf341d5687c3fe136b43b1', '[\"*\"]', '2023-10-16 11:23:30', NULL, '2023-10-16 11:23:24', '2023-10-16 11:23:30'),
(69, 'App\\Models\\User', 22, 'club85hfgufwevcxy3523jjhvcx', 'e2d54e70a6662f3d7ba8a88c6d5531db2dfadcddb4890ee66634d611fb9f2476', '[\"*\"]', '2023-10-16 11:24:53', NULL, '2023-10-16 11:24:48', '2023-10-16 11:24:53'),
(71, 'App\\Models\\User', 23, 'club85hfgufwevcxy3523jjhvcx', 'bd347b7c016e059b70ec4c5819a78416d5e2e95540edf54c1dd3fa0e829d51a3', '[\"*\"]', NULL, NULL, '2023-10-16 11:27:19', '2023-10-16 11:27:19'),
(72, 'App\\Models\\User', 23, 'club85hfgufwevcxy3523jjhvcx', '64a2d1213f9d668a3b3d1280a7b28e560ad984296d9885afe00170b0d5b42f51', '[\"*\"]', '2023-10-16 11:29:01', NULL, '2023-10-16 11:28:15', '2023-10-16 11:29:01'),
(73, 'App\\Models\\User', 24, 'club85hfgufwevcxy3523jjhvcx', '0697e7de01a2ef80b839da30823d3afe857ad7327bea52ea20bbbd74f7f877a7', '[\"*\"]', NULL, NULL, '2023-10-16 11:35:20', '2023-10-16 11:35:20'),
(74, 'App\\Models\\User', 24, 'club85hfgufwevcxy3523jjhvcx', '0d9c6b6f1c7a79fce68eefac4d3f7fd412ed9868b04e6e5e45747eb2ffc8ff20', '[\"*\"]', '2023-10-16 11:38:56', NULL, '2023-10-16 11:38:49', '2023-10-16 11:38:56'),
(76, 'App\\Models\\User', 25, 'club85hfgufwevcxy3523jjhvcx', 'f1daea6af9c3613138e311586028f6cbe66b0beadd8dafa20c8ea282e41e9aa7', '[\"*\"]', '2023-10-16 12:02:15', NULL, '2023-10-16 12:02:08', '2023-10-16 12:02:15'),
(77, 'App\\Models\\User', 26, 'club85hfgufwevcxy3523jjhvcx', '162647b5a2ee5a716c345a68b29f2357b54eea4c5e7be7209b58b3c550d420df', '[\"*\"]', '2023-10-16 17:47:36', NULL, '2023-10-16 16:25:07', '2023-10-16 17:47:36'),
(78, 'App\\Models\\User', 26, 'club85hfgufwevcxy3523jjhvcx', 'ab8fb985b0082afc0ee3c1b10bfbc4467afa673ce29b6822e1de80d757707c0f', '[\"*\"]', '2023-10-16 19:10:57', NULL, '2023-10-16 19:10:31', '2023-10-16 19:10:57'),
(79, 'App\\Models\\User', 26, 'club85hfgufwevcxy3523jjhvcx', 'd2402a5e3aff5408ceb83b7a90adee018c1ccf6fb233ee48d334ed68d27931c8', '[\"*\"]', '2023-10-16 19:37:03', NULL, '2023-10-16 19:36:10', '2023-10-16 19:37:03'),
(80, 'App\\Models\\User', 26, 'club85hfgufwevcxy3523jjhvcx', 'def946ade7263b47bed5d3cf2102bd10e9f79f37fbc92b48ae827c5419307d0b', '[\"*\"]', '2023-10-17 16:21:10', NULL, '2023-10-17 16:20:45', '2023-10-17 16:21:10'),
(81, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '2c99b241657ad66a560b718fd13db4d9a6645616fb4f61c94fffc2847252e524', '[\"*\"]', NULL, NULL, '2023-10-17 18:37:12', '2023-10-17 18:37:12'),
(82, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '85bca3972bf236ce8468a94533e1c82308881f7d2779ec0ab0d009640117986a', '[\"*\"]', NULL, NULL, '2023-10-17 18:56:39', '2023-10-17 18:56:39'),
(83, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'f5365d6c1cb542a92fdbb8da2666095e84251685f13a74247f176cc0c022c233', '[\"*\"]', NULL, NULL, '2023-10-17 21:31:31', '2023-10-17 21:31:31'),
(84, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'ccc5e84eba6e961185dfa9a076c094e6062873d2650b30623e7bd4d388af09fa', '[\"*\"]', '2023-10-17 21:33:00', NULL, '2023-10-17 21:32:51', '2023-10-17 21:33:00'),
(85, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '9a4cff1f19c86b228d7e469dd30ddb1ea954338e576a16728fa07e5f664e8c11', '[\"*\"]', '2023-10-17 21:42:40', NULL, '2023-10-17 21:40:30', '2023-10-17 21:42:40'),
(86, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'c7b935ba3234eea81d1550bd153eba8849f40dad546d0394dce2a84626f9d276', '[\"*\"]', '2023-10-17 22:28:18', NULL, '2023-10-17 22:28:14', '2023-10-17 22:28:18'),
(87, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'e5f9b1bdd328d68808b301211e06baa913a1291ecc1016a8698f590ee0fa4d6d', '[\"*\"]', '2023-10-17 22:37:28', NULL, '2023-10-17 22:36:01', '2023-10-17 22:37:28'),
(88, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'eb0b77429f71f4534098a1091c48a1e19550e3f1811f57e1b326377af5611f8c', '[\"*\"]', '2023-10-17 22:47:16', NULL, '2023-10-17 22:46:09', '2023-10-17 22:47:16'),
(89, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '53181b2a03266c4079406f719fca1d53f43382c81e5ebb6be47323e92261149e', '[\"*\"]', NULL, NULL, '2023-10-17 22:58:24', '2023-10-17 22:58:24'),
(90, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '028cd9bc78c23a9795d3964e3d0a966a7e104fb101337be99d7fab6257cc5bbc', '[\"*\"]', '2023-10-17 23:14:45', NULL, '2023-10-17 23:02:53', '2023-10-17 23:14:45'),
(91, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '6ff5f7fc3ddb4c058fc911442e922a80d93a0b87e6356a64300590ba13706846', '[\"*\"]', '2023-10-17 23:21:31', NULL, '2023-10-17 23:21:01', '2023-10-17 23:21:31'),
(92, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '509b922f844b013b73bf801914c09e8febd6b1d378d683b02bd0f98d9f64ab97', '[\"*\"]', '2023-10-17 23:42:58', NULL, '2023-10-17 23:41:24', '2023-10-17 23:42:58'),
(93, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'd53eb562126daf057e954255ee4937ddb72f359268bd0a1dd42c282fc64a5007', '[\"*\"]', '2023-10-18 00:06:58', NULL, '2023-10-18 00:06:45', '2023-10-18 00:06:58'),
(94, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '367cc9ee1faa3b7c9642278af0e732397f783710aa5d69e3d80bbca623b636d4', '[\"*\"]', '2023-10-18 00:15:25', NULL, '2023-10-18 00:15:04', '2023-10-18 00:15:25'),
(95, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '056b0496cacc336bc5370d6a04144ac7dbcab8a47133543453a59b321c12b87a', '[\"*\"]', '2023-10-18 00:17:13', NULL, '2023-10-18 00:16:58', '2023-10-18 00:17:13'),
(96, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '2d823aac46c6b9167030029ff70778d3bb125225b27f4db1b5749576402272d0', '[\"*\"]', '2023-10-18 00:19:08', NULL, '2023-10-18 00:18:56', '2023-10-18 00:19:08'),
(97, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'bfc78a6e5c0fee693e29067672c8755b53e6c82b70b5d0835e0666090d3e190e', '[\"*\"]', '2023-10-18 02:08:52', NULL, '2023-10-18 02:03:42', '2023-10-18 02:08:52'),
(98, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '0dc21dc1031b9d6dbcb1cc42a19e7ccdf4a1906e6d0a8bf4d95884f4c3cf669e', '[\"*\"]', NULL, NULL, '2023-10-18 02:21:09', '2023-10-18 02:21:09'),
(99, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'dd2d09d3c52ee672250a5b1c9cec6fe8f76afdb82ac13841fbfc8b29e10d9374', '[\"*\"]', NULL, NULL, '2023-10-18 02:22:43', '2023-10-18 02:22:43'),
(100, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'd826946a5f942ee0495bbede7b022f2442d7c181155df024f9af1eee3afcf26e', '[\"*\"]', NULL, NULL, '2023-10-18 02:23:51', '2023-10-18 02:23:51'),
(101, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '97699339a55324b1ad78d230ee035a2ce408525b70a86aab8cbbab0b116a2d7d', '[\"*\"]', NULL, NULL, '2023-10-18 02:31:39', '2023-10-18 02:31:39'),
(102, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '0e58cc46806ee4835850596b057b6b12646ed63342a8471dac521dec49e414f3', '[\"*\"]', NULL, NULL, '2023-10-18 02:36:18', '2023-10-18 02:36:18'),
(103, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '4a3dc1bdd922c1feac6f48348beb7612e16e115f5be51b60e847ccf9668a83ca', '[\"*\"]', NULL, NULL, '2023-10-18 02:39:31', '2023-10-18 02:39:31'),
(104, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '10f7dd1d5108f452605479ae6902ee9948da0aba61a0e450bb8bf42db3b278a4', '[\"*\"]', NULL, NULL, '2023-10-18 02:39:43', '2023-10-18 02:39:43'),
(105, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'a3cc84a63c0d707e590eee1bee07b625b0006d50b2224d2ab4f9032c3bf30bd9', '[\"*\"]', NULL, NULL, '2023-10-18 02:39:48', '2023-10-18 02:39:48'),
(106, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'c73088e6c9c4781135634ace11648e9c7a63ad346b83eb52f65e9fdf0e0b24f6', '[\"*\"]', '2023-10-18 02:45:59', NULL, '2023-10-18 02:45:57', '2023-10-18 02:45:59'),
(107, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'f49c81f44e7efa26739467fd8a54edd1545840a7f5ce199d549907d967243f81', '[\"*\"]', '2023-10-18 02:48:49', NULL, '2023-10-18 02:47:53', '2023-10-18 02:48:49'),
(108, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '88d00ae5eaa182cab711e6547c6c34031a327326e31d474ffbfcdc09677c23b2', '[\"*\"]', '2023-10-18 02:50:41', NULL, '2023-10-18 02:50:40', '2023-10-18 02:50:41'),
(109, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '7b6c0a8393e1b92e35db6da69197663534206820fd11907920e6a49f9eb57951', '[\"*\"]', '2023-10-18 02:59:54', NULL, '2023-10-18 02:59:28', '2023-10-18 02:59:54'),
(110, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '519513cf1a5af022889c6d859617204cee37581aa89b98cf0bc68efe0014f820', '[\"*\"]', '2023-10-18 13:44:49', NULL, '2023-10-18 13:44:44', '2023-10-18 13:44:49'),
(111, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '4166134c26ce25e70cbaa22a8c6b9508887c8dc94307b6bf1c1507ec84c25509', '[\"*\"]', '2023-10-18 15:40:23', NULL, '2023-10-18 14:35:24', '2023-10-18 15:40:23'),
(112, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'b540cbf41f6ad965cceff92b72b2f02f426d257c8e3fa1c22d122671754b2ff4', '[\"*\"]', NULL, NULL, '2023-10-18 15:40:34', '2023-10-18 15:40:34'),
(113, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'ad910745746d4be38c6f33d84fac15df8a0f02c0c04141558fa3b7a603a25f13', '[\"*\"]', NULL, NULL, '2023-10-18 15:42:31', '2023-10-18 15:42:31'),
(114, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', 'bf2094c435f6595974912277e140b85fcd01718380b8b376f54c2d95d77662bc', '[\"*\"]', '2023-10-18 15:46:36', NULL, '2023-10-18 15:46:21', '2023-10-18 15:46:36'),
(115, 'App\\Models\\User', 27, 'club85hfgufwevcxy3523jjhvcx', '5e8d68125c6bb5ebd93f83f5c60219047ea20bcd7521cd477f3457f3f30ecb7d', '[\"*\"]', '2023-10-18 15:50:04', NULL, '2023-10-18 15:49:30', '2023-10-18 15:50:04'),
(116, 'App\\Models\\User', 28, 'club85hfgufwevcxy3523jjhvcx', '9fb96a76e206377c20fd3ac9beeb17dd1a3f0dc51c126d65d08641552625cf13', '[\"*\"]', NULL, NULL, '2023-10-18 16:52:33', '2023-10-18 16:52:33'),
(117, 'App\\Models\\User', 29, 'club85hfgufwevcxy3523jjhvcx', '29d1aaa7362c9434327543c1831f5bbb51f50309967fd1aceea985a04b65eb08', '[\"*\"]', '2023-10-18 16:59:57', NULL, '2023-10-18 16:59:06', '2023-10-18 16:59:57'),
(118, 'App\\Models\\User', 30, 'club85hfgufwevcxy3523jjhvcx', '38092c49c533c7159f8de083b5ac01113316a5020ee70ae2bd9a09f4bfd29753', '[\"*\"]', NULL, NULL, '2023-10-18 19:14:31', '2023-10-18 19:14:31'),
(119, 'App\\Models\\User', 31, 'club85hfgufwevcxy3523jjhvcx', '7ded3d29be43270aab54ecfff9196ab358d2e9890448f02a65550456add04307', '[\"*\"]', NULL, NULL, '2023-10-18 19:25:13', '2023-10-18 19:25:13'),
(120, 'App\\Models\\User', 32, 'club85hfgufwevcxy3523jjhvcx', '58c3efded8e3229f27e1e257a0009c6f79dba403a6e6afebe506c5cc29bdf5dc', '[\"*\"]', '2023-10-18 19:40:06', NULL, '2023-10-18 19:35:31', '2023-10-18 19:40:06'),
(121, 'App\\Models\\User', 32, 'club85hfgufwevcxy3523jjhvcx', 'd880f9a8b4a24fafe25f3a7bc3f7acab3ba7fa7751d824f3ce96d5f9f0a47a94', '[\"*\"]', '2023-10-18 19:44:45', NULL, '2023-10-18 19:44:16', '2023-10-18 19:44:45'),
(122, 'App\\Models\\User', 32, 'club85hfgufwevcxy3523jjhvcx', '14ad6707beabec535523bdbbdc68290f2bb418b3da03b2b9122b4d2f45d65610', '[\"*\"]', NULL, NULL, '2023-10-18 20:59:32', '2023-10-18 20:59:32'),
(123, 'App\\Models\\User', 33, 'club85hfgufwevcxy3523jjhvcx', '4ed5bc62a6a452472d6f59fc57d64ece06cf92f19365d2410362bb84c2427647', '[\"*\"]', NULL, NULL, '2023-10-18 21:14:09', '2023-10-18 21:14:09'),
(124, 'App\\Models\\User', 34, 'club85hfgufwevcxy3523jjhvcx', '78c34cb4a0bb9e9b4be1404ae1ca2ac7aecda725311d816930c854894dcf5551', '[\"*\"]', NULL, NULL, '2023-10-18 21:17:11', '2023-10-18 21:17:11'),
(125, 'App\\Models\\User', 34, 'club85hfgufwevcxy3523jjhvcx', '47b6872dd661997b89353b80765416f871ac29fb0e78389de5d9e5a521a337c8', '[\"*\"]', '2023-10-18 21:25:09', NULL, '2023-10-18 21:24:44', '2023-10-18 21:25:09'),
(126, 'App\\Models\\User', 34, 'club85hfgufwevcxy3523jjhvcx', '1d105805436119b29eabeb2d742fe047c73947a927121ed7387f89b10342d848', '[\"*\"]', '2023-10-18 22:00:26', NULL, '2023-10-18 21:53:05', '2023-10-18 22:00:26'),
(127, 'App\\Models\\User', 35, 'club85hfgufwevcxy3523jjhvcx', '39bf47f257fce791a78270ad608cc142e3833c98521671e1ac8dffd2353b8ffa', '[\"*\"]', '2023-10-18 22:47:13', NULL, '2023-10-18 22:43:03', '2023-10-18 22:47:13'),
(128, 'App\\Models\\User', 35, 'club85hfgufwevcxy3523jjhvcx', '63686fbc535e3cf6b7310da3c0a284441bf33cf0ede0c8ddda411f7cda77d0a5', '[\"*\"]', NULL, NULL, '2023-10-18 22:59:55', '2023-10-18 22:59:55'),
(129, 'App\\Models\\User', 35, 'club85hfgufwevcxy3523jjhvcx', '648e657b86538710e27ea6f06ca9847cddd8a653e1e104d9ce7229aa59c4f31f', '[\"*\"]', '2023-10-19 00:39:55', NULL, '2023-10-19 00:18:49', '2023-10-19 00:39:55'),
(130, 'App\\Models\\User', 1, 'club85hfgufwevcxy3523jjhvcx', '4a47c431afe60de42dfdf73ae3fd56c25d322a93a25cc070c7d546f2bde57077', '[\"*\"]', NULL, NULL, '2023-10-19 11:19:27', '2023-10-19 11:19:27'),
(132, 'App\\Models\\User', 2, 'club85hfgufwevcxy3523jjhvcx', '86fef7ae75c7d29723fcad0a4faadd2d79dcf90952e997c3d79fbaa46d6957ea', '[\"*\"]', '2023-10-19 12:28:22', NULL, '2023-10-19 11:45:11', '2023-10-19 12:28:22'),
(133, 'App\\Models\\User', 1, 'club85hfgufwevcxy3523jjhvcx', '4ee8fa33d7c776f632a6673f391376e2cac8eb0db8b6ce991e00f3f40b13b824', '[\"*\"]', NULL, NULL, '2023-10-19 11:53:39', '2023-10-19 11:53:39'),
(134, 'App\\Models\\User', 1, 'club85hfgufwevcxy3523jjhvcx', 'c5afc240d8dd5671c165567a2c67e8cb201bb3caef3dca74db60d37f6039d59d', '[\"*\"]', NULL, NULL, '2023-10-19 11:54:54', '2023-10-19 11:54:54'),
(135, 'App\\Models\\User', 1, 'club85hfgufwevcxy3523jjhvcx', '09e609843033dd8b8785c62bceb83b3193d28af5be227ab0143ad6b540113c82', '[\"*\"]', NULL, NULL, '2023-10-19 11:56:01', '2023-10-19 11:56:01'),
(136, 'App\\Models\\User', 1, 'club85hfgufwevcxy3523jjhvcx', '7c16c21efcb8685d42d498e6f9ee581269b4f43324b00e05562284810000c94f', '[\"*\"]', NULL, NULL, '2023-10-19 12:01:22', '2023-10-19 12:01:22'),
(137, 'App\\Models\\User', 1, 'club85hfgufwevcxy3523jjhvcx', 'b3ba246aeed818a5134e1bbf234268416b6437ba01a51c7e39f694bf5f8f381c', '[\"*\"]', NULL, NULL, '2023-10-19 12:29:58', '2023-10-19 12:29:58'),
(138, 'App\\Models\\User', 3, 'club85hfgufwevcxy3523jjhvcx', '9a9f6f5f29a21edb01dac3df33099bca1fa6e351e40db9321d2d677ddbae6d97', '[\"*\"]', '2023-10-19 12:34:07', NULL, '2023-10-19 12:33:27', '2023-10-19 12:34:07'),
(139, 'App\\Models\\User', 4, 'club85hfgufwevcxy3523jjhvcx', '8532cd8b55fed3271030d053efc3d873bb951d9940b9d62a750efd34b0429efe', '[\"*\"]', '2023-10-19 13:09:42', NULL, '2023-10-19 12:56:21', '2023-10-19 13:09:42'),
(140, 'App\\Models\\User', 1, 'club85hfgufwevcxy3523jjhvcx', '184367e31379894441f0dcfc1049017d5288ade1265b679f0e425810fffa4127', '[\"*\"]', NULL, NULL, '2023-10-19 13:27:18', '2023-10-19 13:27:18'),
(141, 'App\\Models\\User', 3, 'club85hfgufwevcxy3523jjhvcx', '459d6023d118de899d6d9189271c49639f15838b4c7040f4d4132947685f3970', '[\"*\"]', '2023-10-19 13:30:27', NULL, '2023-10-19 13:30:03', '2023-10-19 13:30:27'),
(142, 'App\\Models\\User', 5, 'club85hfgufwevcxy3523jjhvcx', '018f63e64b326a52325c2ceb996c0b518df9f9f6cd3287348fcd2486cb2f0700', '[\"*\"]', '2023-10-19 13:46:55', NULL, '2023-10-19 13:46:23', '2023-10-19 13:46:55'),
(145, 'App\\Models\\User', 6, 'club85hfgufwevcxy3523jjhvcx', '7a164a18413ffb8ba04cc85a393b11ca27567ead1d15a5bee79f92177260c17b', '[\"*\"]', '2023-10-19 13:53:41', NULL, '2023-10-19 13:53:06', '2023-10-19 13:53:41'),
(146, 'App\\Models\\User', 7, 'club85hfgufwevcxy3523jjhvcx', 'fe21722e5911c3e9ce83460b9c1bc65296d0784b8d381c738ca75f2329616bfb', '[\"*\"]', '2023-10-19 15:39:52', NULL, '2023-10-19 15:36:20', '2023-10-19 15:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `member_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_bangla` varchar(255) DEFAULT NULL,
  `id_card_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `secondary_phone` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `present_district_city` varchar(255) DEFAULT NULL,
  `present_country` varchar(255) DEFAULT NULL,
  `parmanent_address` text DEFAULT NULL,
  `parmanent_district_city` text DEFAULT NULL,
  `parmanent_country` text DEFAULT NULL,
  `province_present_address` text DEFAULT NULL,
  `province_permanent_address` text DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `spouse_phone` varchar(255) DEFAULT NULL,
  `spouse_email` varchar(255) DEFAULT NULL,
  `children_1_name` varchar(255) DEFAULT NULL,
  `children_2_name` varchar(255) DEFAULT NULL,
  `children_3_name` varchar(255) DEFAULT NULL,
  `children_4_name` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `school_district` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `college_district` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `additional_info_profession` text DEFAULT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `office_location` text DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `instagram_id` varchar(255) DEFAULT NULL,
  `bkash_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `qr_text` varchar(255) DEFAULT NULL,
  `id_card_file` varchar(255) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: App User, 1: Admin',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `member_id`, `name`, `name_bangla`, `id_card_name`, `email`, `phone`, `secondary_phone`, `nid`, `passport`, `present_address`, `present_district_city`, `present_country`, `parmanent_address`, `parmanent_district_city`, `parmanent_country`, `province_present_address`, `province_permanent_address`, `dob`, `blood_group`, `spouse_name`, `spouse_phone`, `spouse_email`, `children_1_name`, `children_2_name`, `children_3_name`, `children_4_name`, `school`, `school_district`, `college`, `college_district`, `occupation`, `additional_info_profession`, `office_name`, `office_location`, `facebook_id`, `instagram_id`, `bkash_number`, `photo`, `qr_code`, `qr_text`, `id_card_file`, `user_type`, `email_verified_at`, `otp`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, '3ecb1da7-749c-477f-9625-f539fbe7b35d', '85-00005', 'Tanver Mehede', NULL, 'Jibon', 'tanvermehede51@gmail.com', '01756531188', NULL, NULL, NULL, 'Mohakhali', 'Dhaka-North', 'Bangladesh', NULL, NULL, NULL, 'Dhaka', NULL, '24/5/1994', 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RSK', 'Rajbari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://club85.org/images/profile/1697723183.jpg', 'https://club85.org/images/qr/85-00005.svg', 'https://club85.org/club-members/3ecb1da7-749c-477f-9625-f539fbe7b35d', NULL, 0, NULL, '213767', '$2y$10$khMSubeiS3ZWyG7PnOpHrOiiCvB/hQ97cfYEo5Va/t67uCv4c0FSq', NULL, '2023-10-19 13:46:23', '2023-10-19 13:46:23'),
(6, '4f576721-9d2e-43f0-8bf1-fabe8c42ff63', '85-00006', 'Abdul Rahman', NULL, 'Abdul Rahman', 'wakiller123@gmail.com', '01534822073', NULL, NULL, NULL, '210 malibag', 'dhaka', 'Bangladesh', NULL, 'dhaka', NULL, 'Dhaka', 'null', NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abc school', 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://club85.org/images/profile/1697723245.jpg', 'https://club85.org/images/qr/85-00006.svg', 'https://club85.org/club-members/4f576721-9d2e-43f0-8bf1-fabe8c42ff63', 'https://club85.org/pdf/85-00006-1697723450.pdf', 0, NULL, '400267', '$2y$10$PzUmWBqavXgCNmSHz1pP5uvD/e7Mm79Grf/dDa5Wnst1MvtvHQZVu', NULL, '2023-10-19 13:47:25', '2023-10-19 13:53:06'),
(7, 'e36214f7-0f76-450e-a94e-995679c5f0d7', '85-00007', 'Mahboobul Alam', NULL, 'Mahboob', 'mahboobulalam@gmail.com', '01711526088', NULL, NULL, NULL, 'Lalmatia', 'Dhaka', 'Bangladesh', NULL, NULL, NULL, 'Dhaka', NULL, '18/8/1970', 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BAF Shaheen School', 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://club85.org/images/profile/1697729779.jpg', 'https://club85.org/images/qr/85-00007.svg', 'https://club85.org/club-members/e36214f7-0f76-450e-a94e-995679c5f0d7', 'https://club85.org/pdf/85-00007-1697729992.pdf', 0, NULL, '485801', '$2y$10$YizG1xiJBn9Sz78pYhmimO4geUbL9htyOH3fuPgtokcYTi6kPe6Ce', NULL, '2023-10-19 15:36:19', '2023-10-19 15:39:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
