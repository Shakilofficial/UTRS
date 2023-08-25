-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 24, 2023 at 05:56 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `requisition_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `photo`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Polash', 'save.png-5689.png', '01921832512', 'dofokudiqo@mailinator.com', '2022-11-12 13:29:24', '2022-11-12 13:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_06_01_032222_create_sessions_table', 1),
(10, '2021_06_01_041521_create_permission_tables', 1),
(11, '2021_06_01_042457_insert_attributes_to_users_table', 1),
(12, '2022_03_22_074349_insert_fields_to_users_table', 1),
(13, '2022_03_22_104909_add_approved_at_to_users_table', 1),
(14, '2022_03_25_111736_create_requisitions_table', 1),
(15, '2022_03_26_201530_add_duration_at_to_requisitions_table', 1),
(16, '2022_03_27_122709_add_dept_to_requisitions_table', 1),
(17, '2022_04_02_150435_create_drivers_table', 1),
(18, '2022_06_03_190328_add_reject_reason_requisitions_table', 1),
(19, '2022_06_07_040350_add_columns_to_requisitions_table', 1),
(20, '2022_06_17_201708_insert_is_official_to_users_table', 1),
(21, '2022_06_26_202311_insert_signature_to_users_table', 1),
(22, '2022_06_27_202212_insert_phone_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 11);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

CREATE TABLE `requisitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requisition_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finish_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` double NOT NULL,
  `cost` double NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_km` double DEFAULT NULL,
  `extra_duration` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requisitions`
--

INSERT INTO `requisitions` (`id`, `user_id`, `driver_id`, `reason`, `car_type`, `requisition_type`, `start_at`, `finish_at`, `from`, `to`, `distance`, `cost`, `status`, `created_at`, `updated_at`, `duration`, `dept`, `reject_reason`, `extra_km`, `extra_duration`, `grand_total`) VALUES
(1, 6, NULL, 'Personal Use', 'Car', 'Personal', '2022-11-15T13:30', NULL, 'MBSTU Administration Building, MBSTU Campus Road, Bangladesh', 'FCWJ+XW3, Parnanduali, Bangladesh', 301.26, 1312.58, 'Approved By Vice Chancellor', '2022-11-12 13:23:17', '2022-11-12 13:26:55', '10.754 Hours', 'ICT', NULL, NULL, NULL, NULL),
(2, 7, NULL, 'For vehicle', 'Micro Bus', 'Personal', '2022-11-16T14:00', NULL, 'MBSTU Administration Building, MBSTU Campus Road, Bangladesh', '89VV+6WG, Bangladesh', 332.948, 2105.84, 'Approved By Vice Chancellor', '2022-11-14 14:02:09', '2022-11-14 14:06:09', '9.013 Hours', 'ECO', NULL, NULL, NULL, NULL),
(3, 7, 1, 'Reason', 'Mini Bus', 'Personal', '2022-11-17T14:02', NULL, 'New Market, Dhaka 1205, Bangladesh', 'Mymensingh, Bangladesh', 242.38, 3737.17, 'Approved By Administration', '2022-11-14 14:03:07', '2022-11-14 14:03:54', '6.764 Hours', 'ECO', NULL, NULL, NULL, NULL),
(4, 6, 1, 'Personal Reason', 'Micro Bus', 'Personal', '2022-11-17T14:30', NULL, 'Santosh, 1902, Bangladesh', 'Naogaon, Bangladesh', 513.368, 3241.32, 'Approved By Administration', '2022-11-14 14:18:24', '2022-11-14 14:24:43', '13.426 Hours', 'ICT', NULL, NULL, NULL, NULL),
(5, 6, NULL, 'Personal Reason', 'Car', 'Personal', '2022-11-16T14:30', NULL, 'Mymensingh, Bangladesh', 'Tangail, Bangladesh', 194.764, 833.47, 'Approved By Vice Chancellor', '2022-11-14 14:29:52', '2022-11-14 14:31:08', '5.441 Hours', 'ICT', NULL, NULL, NULL, NULL),
(6, 8, 1, 'reason', 'Mini Bus', 'Personal', '2022-11-15T23:00', NULL, 'Santosh, 1902, Bangladesh', 'Chattogram, Bangladesh', 488.544, 7480.52, 'Approved By Administration', '2022-11-14 23:57:58', '2022-11-14 23:58:23', '10.157 Hours', 'TE', NULL, NULL, NULL, NULL),
(7, 9, 1, 'Personal Purpose', 'Micro Bus', 'Personal', '2022-11-17T16:10', NULL, 'Polashtoli, Tangail, Bangladesh', '527R+3QH, Dhaka - Tangail Hwy, Mirzapur, Bangladesh', 56.586, 352.32, 'Approved By Administration', '2022-11-15 03:29:53', '2022-11-15 03:31:22', '1.067 Hours', 'ICT', NULL, NULL, NULL, NULL),
(8, 10, 1, 'Reason', 'Mini Bus', 'Personal', '2022-11-22T12:00', NULL, 'Santosh, 1902, Bangladesh', 'Dhaka, Bangladesh', 41.758, 659.83, 'Approved By Administration', '2022-11-22 00:58:22', '2022-11-22 00:59:13', '2.231 Hours', 'Accounting', NULL, NULL, NULL, NULL),
(9, 11, 1, 'Personal Reason', 'Mini Bus', 'Personal', '2022-11-29T11:16', NULL, 'Mymensingh, Bangladesh', 'Dhaka, Bangladesh', 219.292, 3381.81, 'Approved By Administration', '2022-11-29 11:17:29', '2022-11-29 11:18:27', '6.162 Hours', 'ESRM', NULL, NULL, NULL, NULL),
(10, 6, 1, 'reason', 'Big Bus', 'Personal', '2022-12-10T13:44', NULL, 'Santosh, 1902, Bangladesh', 'Cox\'s Bazar, Bangladesh', 786.924, 16085.84, 'Approved By Administration', '2022-12-04 13:46:20', '2022-12-05 22:44:49', '17.368 Hours', 'ICT', NULL, NULL, NULL, NULL),
(11, 6, 1, 'Hi', 'Big Bus', 'Official', '2023-06-26T07:02', NULL, 'Narayanganj, Bangladesh', 'Dhaka, Bangladesh', 57.91, 0, 'Approved By Administration', '2023-06-26 07:02:21', '2023-06-26 07:03:42', '2.374 Hours', 'ICT', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Teacher', 'sanctum', '2022-11-12 13:01:58', '2022-11-12 13:01:58'),
(2, 'Chairman', 'sanctum', '2022-11-12 13:01:58', '2022-11-12 13:01:58'),
(3, 'Administration', 'sanctum', '2022-11-12 13:01:58', '2022-11-12 13:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('C3ADQpxDdEwLzvjqagwJqNgyKG8EWZBLtzUzNgvN', 4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiM1hIbVVPMWcwT2JMbXprQmdVcWhXeGMyRnU2eDlvWnQ4M0dhNG9WWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXF1aXNpdGlvbi8xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRuYk1lc3JhR1h4SU1hVDZ2U1RZQlhlSUJQWnBjUGxUalVyLzhCaFEzOUR5VDFHUEhDekoyZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbmJNZXNyYUdYeElNYVQ2dlNUWUJYZUlCUFpwY1BsVGpVci84QmhRMzlEeVQxR1BIQ3pKMmUiO30=', 1685883725),
('rFdckng6y3yFyGNzSSrdbr0X9227NX3GsqCefVXQ', 6, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiU2Y0bGdMU0IxcWJjZ2JjU2RheGRBSTVOQ3NJZ2F2cGd3b0ZSZE10NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9iYWNrZW5kL3JlcXVpc2l0aW9uL2dldC1zdGFydGVkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDl0UXJrWXdzL1pIT0VlOUxSYmNvVnU2N3NtbDRWRFBiLkJ5eklyQnpmWjEyN3ZBQ3NxcUJtIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ5dFFya1l3cy9aSE9FZTlMUmJjb1Z1NjdzbWw0VkRQYi5CeXpJckJ6ZloxMjd2QUNzcXFCbSI7fQ==', 1676229156),
('yXpGvDeq4SBf6WG1YzDTQQDrL10g0oZkIe8UhG5w', 4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMDNSbmF1N1BzbXRiaUJ4azlHdm1TSW9DajVUeXlCTWZMWnY5c2JmWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXF1aXNpdGlvbi8xMSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRuYk1lc3JhR1h4SU1hVDZ2U1RZQlhlSUJQWnBjUGxUalVyLzhCaFEzOUR5VDFHUEhDekoyZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbmJNZXNyYUdYeElNYVQ2dlNUWUJYZUlCUFpwY1BsVGpVci84QmhRMzlEeVQxR1BIQ3pKMmUiO30=', 1687784623);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recognition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `is_official` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role`, `theme`, `dept`, `recognition`, `approved_at`, `is_official`, `signature`, `phone`) VALUES
(4, 'Administration Department', 'admin@example.com', NULL, '$2y$10$nbMesraGXxIMaT6vSTYBXeIBPZpcPlTjUr/8BhQ39DyT1GPHCzJ2e', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:04:18', '2022-12-04 09:12:22', 'Administration', 'default', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Vice Chancellor', 'vc@example.com', NULL, '$2y$10$B4sZsHUPVks1DOHhE02BYO2qMXqac42HS.WldsqdzDPHv7m.LJVLC', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:15:13', '2022-11-12 13:15:13', 'Chairman', 'default', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Bikash Kumar Paul', 'bikash.sir@example.com', NULL, '$2y$10$9tQrkYws/ZHOEe9LRbcoVu67sml4VDPb.ByzIrBzfZ127vACsqqBm', NULL, NULL, NULL, NULL, NULL, '2022-11-12 13:17:59', '2022-11-12 13:18:28', 'Teacher', 'default', 'ICT', 'Assistant Professor', '2022-11-12 13:18:28', 'No', NULL, 1737571758),
(7, 'Test', 'test@example.com', NULL, '$2y$10$QwcmC0My.MenIRSSn5SwZukQyxFH6coImrDcv27UE/FMc9aB57W.u', NULL, NULL, NULL, NULL, NULL, '2022-11-14 13:57:08', '2022-11-14 13:58:04', 'Teacher', 'default', 'ECO', 'Professor', '2022-11-14 13:58:04', 'No', NULL, 1234567891),
(8, 'Test 2', 'test.sir@example.com', NULL, '$2y$10$69cjsLfRDA22hfEETwYhuu47d/x3D5uaPnXnTJATyWJmyD2kRZtOq', NULL, NULL, NULL, NULL, NULL, '2022-11-14 23:51:35', '2022-11-14 23:52:36', 'Teacher', 'default', 'TE', 'Associate Professor', '2022-11-14 23:52:36', 'No', NULL, 1662222111),
(9, 'Dr. Abir Hossain', 'abir.sir@example.com', NULL, '$2y$10$212ouFbWjicmw69teRUSh.iQbDUQAOHirD71CqEq38Au./l7RUjxK', NULL, NULL, NULL, NULL, NULL, '2022-11-15 03:23:14', '2022-11-15 03:24:07', 'Teacher', 'default', 'ICT', 'Associate Professor', '2022-11-15 03:24:07', 'No', NULL, 1123456789),
(10, 'Jana Stewart', 'test6@test.com', NULL, '$2y$10$qxwtk9shUk6PZxSkNynoBuMVxSRoGW/fG/u2/5xYmx6Uu.oWJCC3C', NULL, NULL, NULL, NULL, NULL, '2022-11-22 00:56:19', '2022-11-22 00:56:47', 'Teacher', 'default', 'Accounting', 'Professor', '2022-11-22 00:56:47', 'No', NULL, 2134567890),
(11, 'Connor Clements', 'test5@mailinator.com', NULL, '$2y$10$rADMNXa9JQ7/P4QHAFl.k./peKSVUSjmZUxSymwhC5Szx45Ch7l3S', NULL, NULL, NULL, NULL, NULL, '2022-11-29 11:14:06', '2022-11-29 11:14:49', 'Teacher', 'default', 'ESRM', 'Assistant Professor', '2022-11-29 11:14:49', 'No', NULL, 1733966711);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
