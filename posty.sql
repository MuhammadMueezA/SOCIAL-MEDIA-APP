-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 11:02 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posty`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 17, 16, 'nice one man', '2021-12-14 23:00:00', '2021-12-14 23:00:00'),
(2, 20, 16, 'cools suffs', '2021-12-14 23:00:00', '2021-12-14 23:00:00'),
(3, 20, 16, 'ths is love', '2021-12-15 20:06:17', '2021-12-15 20:06:17'),
(4, 20, 16, 'i love eveyone in this place', '2021-12-15 20:06:42', '2021-12-15 20:06:42'),
(5, 20, 20, 'this is very nice stuffs', '2021-12-15 20:11:26', '2021-12-15 20:11:26'),
(6, 20, 20, 'i love love', '2021-12-15 20:11:43', '2021-12-15 20:11:43'),
(7, 20, 20, 'baby wassup', '2021-12-15 20:11:51', '2021-12-15 20:11:51'),
(8, 20, 18, 'booksy', '2021-12-15 20:28:01', '2021-12-15 20:28:01'),
(9, 21, 20, 'hello', '2021-12-15 20:29:05', '2021-12-15 20:29:05'),
(10, 21, 20, 'abeg o', '2021-12-15 21:01:19', '2021-12-15 21:01:19'),
(11, 21, 20, 'hello this is a comment', '2021-12-16 05:55:39', '2021-12-16 05:55:39'),
(12, 24, 30, 'hello this is a very nice post', '2021-12-18 23:15:03', '2021-12-18 23:15:03'),
(13, 24, 30, 'let make this work', '2021-12-18 23:15:16', '2021-12-18 23:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 17, 5, NULL, NULL),
(3, 20, 14, '2021-12-13 18:43:07', '2021-12-13 18:43:07'),
(4, 20, 13, '2021-12-15 02:21:25', '2021-12-15 02:21:25'),
(5, 20, 20, '2021-12-15 20:12:14', '2021-12-15 20:12:14'),
(6, 21, 19, '2021-12-15 21:31:06', '2021-12-15 21:31:06'),
(7, 21, 20, '2021-12-16 05:54:56', '2021-12-16 05:54:56'),
(8, 24, 30, '2021-12-18 23:14:09', '2021-12-18 23:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_19_215300_add_usernameto_users_table', 2),
(6, '2021_09_21_150850_create_posts_table', 3),
(7, '2021_09_24_093104_create_likes_table', 4),
(8, '2021_12_15_041659_create_comments_table', 5),
(9, '2021_12_16_095558_add_image_to_posts_table', 6),
(10, '2021_12_16_150626_add_image_to_users_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`, `image_path`) VALUES
(3, 17, 'this is love', '2021-09-21 20:54:18', '2021-09-21 20:54:18', ''),
(4, 17, 'wizzy', '2021-09-21 21:23:40', '2021-09-21 21:23:40', ''),
(5, 17, 'why nah', '2021-09-21 21:23:49', '2021-09-21 21:23:49', ''),
(6, 17, 'this is cool when you like this stuffs', '2021-09-23 17:45:33', '2021-09-23 17:45:33', ''),
(7, 17, 'nice work', '2021-09-28 23:37:24', '2021-09-28 23:37:24', ''),
(8, 19, 'this is a lover store', '2021-09-28 23:38:25', '2021-09-28 23:38:25', ''),
(11, 19, 'fuck you too', '2021-09-28 23:38:54', '2021-09-28 23:38:54', ''),
(12, 19, 'i hat lots of owkr', '2021-09-28 23:39:03', '2021-09-28 23:39:03', ''),
(13, 19, 'made o', '2021-09-28 23:41:14', '2021-09-28 23:41:14', ''),
(14, 19, 'nice', '2021-09-28 23:45:59', '2021-09-28 23:45:59', ''),
(16, 20, 'problem no dey finish o', '2021-12-15 02:21:44', '2021-12-15 02:21:44', ''),
(17, 20, 'hello this os cool', '2021-12-15 18:16:22', '2021-12-15 18:16:22', ''),
(18, 20, 'what is wrong nah', '2021-12-15 18:16:40', '2021-12-15 18:16:40', ''),
(19, 20, 'hello how are you', '2021-12-15 18:23:42', '2021-12-15 18:23:42', ''),
(20, 20, 'hey wassup', '2021-12-15 18:23:54', '2021-12-15 18:23:54', ''),
(22, 22, 'hi am new here whats poping', '2021-12-16 05:57:02', '2021-12-16 05:57:02', ''),
(23, 20, 'wisdom is profitable to direct', '2021-12-16 10:20:10', '2021-12-16 10:20:10', '1639653610-jpg'),
(24, 20, 'nice work', '2021-12-16 10:26:14', '2021-12-16 10:26:14', '1639653974-.jpg'),
(25, 20, 'nice to have', '2021-12-16 10:29:51', '2021-12-16 10:29:51', '1639654191-post.jpg'),
(26, 20, 'this is a nice tips #wisdom', '2021-12-16 11:47:55', '2021-12-16 11:47:55', '1639658875-post.jpg'),
(27, 20, 'hell this is a test post #webdev #developer', '2021-12-16 13:04:30', '2021-12-16 13:04:30', '1639663470-post.jpg'),
(28, 20, 'this is lovely #webdev nice', '2021-12-18 22:41:18', '2021-12-18 22:41:18', '1639870878-post.jpg'),
(29, 20, '#developer #back #lover', '2021-12-18 22:42:03', '2021-12-18 22:42:03', '1639870923-post.png'),
(30, 24, 'hello this is bobby a #webdev #developer', '2021-12-18 23:13:58', '2021-12-18 23:13:58', '1639872838-post.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `image_path`) VALUES
(17, 'wisdom', 'wisdomoladepo@gmail.com', NULL, '$2y$10$LoAAFYwy8nNqDnvIsTx4wei5T22vUmTD0L.qq.l2G2GqgxwRasKEO', 'PzKul2PfRk2sRaWafMIseJIU6kBD3SLVfgLMfQCZCvXQ8abXKxhLSclIqwW3', '2021-09-20 11:47:10', '2021-09-20 11:47:10', 'wisoladepo', ''),
(19, 'wizzy', 'okoro@gmail.com', NULL, '$2y$10$qKOteI8MyBDZfgUYNLmbSOV3DdeVhxqtWZkE33oFx2P/PTc8FVHLu', NULL, '2021-09-28 23:38:09', '2021-09-28 23:38:09', 'okoro', ''),
(20, 'golden', 'mark@gmail.com', NULL, '$2y$10$zM2uI6YyOC93hPNECowW.urFqSnphxEu01PmhYiahuDIIC0rHr5um', NULL, '2021-12-13 18:42:19', '2021-12-16 15:54:00', 'joyboy', '1639673640-user.jpg'),
(21, 'john', 'john@gmail.com', NULL, '$2y$10$DbpmxcVu8VfFVOPuUDVrxuzSEkDabJYXbQBlTp04FCw9MBS/EYl96', 'pkkhsXz390T4QcXRikjrItYGS8VFqyy9ObMpnvGygm79Od68sI0KlPSn0Kxt', '2021-12-15 20:28:46', '2021-12-15 20:28:46', 'west john', ''),
(22, 'john doe', 'doe@gmail.com', NULL, '$2y$10$WnqhMxJWpJ3JXleJzF89uO2PSAJPwc.XZeiB/A.BAt/a7hjf9rkCy', NULL, '2021-12-16 05:56:40', '2021-12-16 05:56:40', 'doe', ''),
(24, 'bobby john', 'bobby@gmail.com', NULL, '$2y$10$kvMqu5CYZ4yzr9uiGfE0A.gVDjNmXjL4bVg/drG.OmMZ3UTxV9t6K', 'qutmPEfdk2ZcH8k9Uc3iRYKJRZ7u3Q8mOhigSiBnRtvNd1S8M7MEVYJfw0XB', '2021-12-18 23:12:34', '2021-12-18 23:13:17', 'bobby', '1639872781-user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
