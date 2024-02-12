-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 12, 2024 at 05:43 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stripetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_12_131208_create_products_table', 2),
(6, '2024_02_12_142640_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `total_price`, `session_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'unpaid', 204269, 'cs_test_a1mZ0sMPMs7k7fvAUCze9IZ0AOqXpaEFQhulwb7uvbq78Hfzbt5iW54wGW', 1, '2024-02-12 09:39:00', '2024-02-12 09:39:00'),
(2, 'unpaid', 204269, 'cs_test_a1V2CfuIJcdkZhvW1YvfAj35ExUWVhYzdlbZEaO8r3ND1FvasG5wqpQ9vP', 1, '2024-02-12 09:40:35', '2024-02-12 09:40:35'),
(3, 'unpaid', 204269, 'cs_test_a1UaVP55ul062F4yQYVlHNheLtFpBrAuRvioZxIBPCvltWnmoUkbHg2BU8', 1, '2024-02-12 09:52:35', '2024-02-12 09:52:35'),
(4, 'unpaid', 204269, 'cs_test_a1u3RkDeejhMz7bXbuYV1ykSrA78X9WAEgXxWsZtulKmeyaa8qP0lV6FXJ', 1, '2024-02-12 09:53:26', '2024-02-12 09:53:26'),
(5, 'unpaid', 204269, 'cs_test_b1qQVvxvcwYiu58IY4bYTkRHomZDVxZVnmpMEq3wFh4MyuYkXdbVSwJSnc', 1, '2024-02-12 09:55:41', '2024-02-12 09:55:41'),
(6, 'unpaid', 204269, 'cs_test_b1iUz8CfYZDarCin6Wl0sksW2wT8vh9NFEnSUXbhiaBS9Oy4ZlhfMPmiAT', 1, '2024-02-12 10:19:46', '2024-02-12 10:19:46'),
(7, 'unpaid', 204269, 'cs_test_b1BWPriWMch8VccgvYsGpBMYKouPVQIwoIQ2YTMTdUteEi2ZVMHs5PR9Vl', 1, '2024-02-12 10:21:01', '2024-02-12 10:21:01'),
(8, 'unpaid', 204269, 'cs_test_b1oBOF2I6LtNwy2ytDEPMaD6mxrEFg1OZ6D8n9Nb1ql2Ni3mhmHCtd5SiV', 1, '2024-02-12 10:26:30', '2024-02-12 10:26:30'),
(9, 'unpaid', 204269, 'cs_test_b1fLnGeG9PQlyilMZ7EEf38XOnR1jHiqg5nL2C281Br3lg6DMvwxhxEj9b', 1, '2024-02-12 10:29:39', '2024-02-12 10:29:39'),
(10, 'unpaid', 204269, 'cs_test_b1w8GWKyP6T7Uw6S6jEoFzbEwd3ACQPk8lBHtmRWK005f7tqNSLeCq4Pev', 1, '2024-02-12 10:36:44', '2024-02-12 10:36:44'),
(11, 'unpaid', 204269, 'cs_test_b1pVwniw6NdkWt1SLLFlVmMhXGf1z3Fi94MUjJDdT6T0jgK6JZdpNCvCrV', 1, '2024-02-12 10:39:22', '2024-02-12 10:39:22'),
(12, 'unpaid', 204269, 'cs_test_b187dG6pkIxZe5SGtwGAUqVWjVidzpIJ2KU8sOHSufZ4AjWXpJqtfEtI2B', 1, '2024-02-12 10:41:19', '2024-02-12 10:41:19'),
(13, 'unpaid', 204269, 'cs_test_b1uDMKSJylLihpqJToRpfmbTgoC2Fiz4ohB1MhAbylhZRY6SzBi7HMRi6N', 1, '2024-02-12 10:42:13', '2024-02-12 10:42:13'),
(14, 'unpaid', 204269, 'cs_test_b1MQNuOJsGEIFlCE3oENoW5tSv5PMe2MIYMSxkM7D6NliYYva35f2vQklo', 1, '2024-02-12 10:43:04', '2024-02-12 10:43:04'),
(15, 'unpaid', 204269, 'cs_test_b1cshIiFi2XbjMFT2wOJJlk4vef5Yvu5FwpQbbaLvcTRGX48R7AH9GBQXq', 1, '2024-02-12 10:50:01', '2024-02-12 10:50:01'),
(16, 'unpaid', 204269, 'cs_test_b1Zkb0r2L0coOmHXV3pBisAgDekSCVlaMWS7QbNJtwyam7sJCKGl9q61hK', 1, '2024-02-12 10:57:59', '2024-02-12 10:57:59'),
(17, 'unpaid', 204269, 'cs_test_b13yEynqTWVUb9eMeclqNAWg2sEUf1VY7a18BdIQezAIYlj3wdFu3vKuq4', 1, '2024-02-12 10:59:42', '2024-02-12 10:59:42'),
(18, 'unpaid', 204269, 'cs_test_b1T02v4kA3zTCPY7gpWOlPBwgWGSQWEG1s67iY0xYOEzr6tKqkXjwUrv0F', 1, '2024-02-12 11:00:18', '2024-02-12 11:00:18'),
(19, 'unpaid', 204269, 'cs_test_b1hIcBo2BiqjYbPtUU6eEcggy7lKpY7JZEwDhE6BrICrLV82h1EPXiKDFC', 1, '2024-02-12 11:01:08', '2024-02-12 11:01:08'),
(20, 'unpaid', 6, 'cs_test_b1b2iRE1VdGZSg6L0EkF95c36kkHO8OAGgj51TgahZLrJ7NkxNMDmUPd3z', 1, '2024-02-12 11:01:59', '2024-02-12 11:01:59'),
(21, 'unpaid', 6, 'cs_test_b1NkELOQz5BJk84srD1FHymcmTwM2mYtnrnDJ79EcCvq6Iqk6AKItYS5WH', 1, '2024-02-12 11:10:29', '2024-02-12 11:10:29'),
(22, 'unpaid', 6, 'cs_test_b1GSm9ZlK9H9F2ASTpk7RIadRksgjsSLTIhoREEbGNj4b3HZXYjhM5iS7H', 1, '2024-02-12 11:25:06', '2024-02-12 11:25:06'),
(23, 'unpaid', 6, 'cs_test_b1I59FKcCF6U26u9w81D5U89T4y3LPgipAZIg2dU6I5hx0XMXVof6aGUFs', 1, '2024-02-12 11:26:31', '2024-02-12 11:26:31'),
(24, 'unpaid', 6, 'cs_test_b1ZYJ09P3CT1SP29wNssdO88ARosxtSAIiN7HBp0lnXKhxTz1Omc2dJQCj', 1, '2024-02-12 11:33:07', '2024-02-12 11:33:07'),
(25, 'unpaid', 6, 'cs_test_b15NAOr2KKBvN2G9gEDhPTKcfuZkMqiWxI3UT0GoXorDKdZgSTqdtPck8w', 1, '2024-02-12 11:35:58', '2024-02-12 11:35:58'),
(26, 'unpaid', 6, 'cs_test_b1W3m5zdp0HlCobPc8xhOYPfQXfVmY4OobcMdfkwIcEO2hT5Zof0NM26vq', 1, '2024-02-12 11:43:44', '2024-02-12 11:43:44'),
(27, 'unpaid', 6, 'cs_test_b1sEQoaPw6frNi97Hrq2d2UuaQ3ztiH0TRUWcnzw5N44TzUXJoXs1Sr9qu', 1, '2024-02-12 11:53:16', '2024-02-12 11:53:16'),
(28, 'paid', 6, 'cs_test_b1uJUAzfnYeJHUjmj4B63wfWiPZJ5xiD2K4QqEUDnWM9Vc7pHG3l5cEtsN', 1, '2024-02-12 11:55:07', '2024-02-12 12:10:58'),
(29, 'paid', 6, 'cs_test_b1Vxr21nmo5NZw1JzKqxzFiaAFMOdBTU9JGQWP3vR0jpCwcHdcySFgFPQU', 1, '2024-02-12 12:11:52', '2024-02-12 12:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Odit magni et ut omnis doloremque quis fuga numquam. Facere facilis et eos quisquam est ipsum.', 74442, 'https://via.placeholder.com/640x480.png/006688?text=voluptatem', '2024-02-12 08:27:21', '2024-02-12 08:27:21'),
(2, 'Odit qui praesentium quos dolorem. Eum voluptatem repellendus quasi qui rerum. Et consequuntur nostrum voluptatibus. Et non rerum totam id.', 33572, 'https://via.placeholder.com/640x480.png/00cc55?text=ex', '2024-02-12 08:27:21', '2024-02-12 08:27:21'),
(3, 'Aut culpa ut ea odit praesentium. Enim assumenda eum numquam perferendis consequatur. Consectetur sed nihil et quia sed voluptatibus. Quo qui numquam odit blanditiis accusantium.', 96255, 'https://via.placeholder.com/640x480.png/003344?text=dolore', '2024-02-12 08:27:21', '2024-02-12 08:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@example.com', NULL, '$2y$12$FNSwpMo4E5swXcSHalA6.uLqLbo6JLeV2VF0ufz2HaQEBpUas5lW.', NULL, '2024-02-12 08:10:03', '2024-02-12 08:10:03');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
