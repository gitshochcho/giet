-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 29, 2026 at 10:23 AM
-- Server version: 8.4.3
-- PHP Version: 8.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `status`, `email_verified_at`, `mobile_verified_at`, `otp`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', '01740303508', 1, '2024-12-31 20:16:04', '2024-12-31 20:16:04', '522189', '$2y$12$iMnM1aMcTHHaKFdCjjXJGuPQeBBYEq1NKAAOm7a8F1D4OZCru6gZ2', NULL, NULL, '2025-01-09 16:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('content_block_about-story-1', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:69;s:4:\"slug\";s:13:\"about_story_1\";s:7:\"section\";s:4:\"2021\";s:7:\"heading\";s:22:\"Foundation Established\";s:11:\"sub_heading\";N;s:11:\"description\";s:165:\"<p>GIET was incorporated in Dhaka as a non-profit, non-governmental organization by founding members drawn from government, academia, and the development sector.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:10:\"Story Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:24:07\";s:10:\"updated_at\";s:19:\"2026-06-23 06:24:07\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:69;s:4:\"slug\";s:13:\"about_story_1\";s:7:\"section\";s:4:\"2021\";s:7:\"heading\";s:22:\"Foundation Established\";s:11:\"sub_heading\";N;s:11:\"description\";s:165:\"<p>GIET was incorporated in Dhaka as a non-profit, non-governmental organization by founding members drawn from government, academia, and the development sector.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:10:\"Story Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:24:07\";s:10:\"updated_at\";s:19:\"2026-06-23 06:24:07\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-story-2', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:70;s:4:\"slug\";s:13:\"about_story_2\";s:7:\"section\";s:4:\"2022\";s:7:\"heading\";s:33:\"First Research Programme Launched\";s:11:\"sub_heading\";N;s:11:\"description\";s:307:\"<p>GIET published its inaugural set of policy briefs on trade facilitation and regulatory modernization, establishing its credentials as an evidence-based research institution. The organization convened its first national policy dialogue in Dhaka with 80+ participants from government and civil society.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:10:\"Story Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:27:15\";s:10:\"updated_at\";s:19:\"2026-06-23 06:27:15\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:70;s:4:\"slug\";s:13:\"about_story_2\";s:7:\"section\";s:4:\"2022\";s:7:\"heading\";s:33:\"First Research Programme Launched\";s:11:\"sub_heading\";N;s:11:\"description\";s:307:\"<p>GIET published its inaugural set of policy briefs on trade facilitation and regulatory modernization, establishing its credentials as an evidence-based research institution. The organization convened its first national policy dialogue in Dhaka with 80+ participants from government and civil society.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:10:\"Story Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:27:15\";s:10:\"updated_at\";s:19:\"2026-06-23 06:27:15\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-story-3', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:72;s:4:\"slug\";s:13:\"about_story_3\";s:7:\"section\";s:4:\"2023\";s:7:\"heading\";s:26:\"Expanded to 15 Focus Areas\";s:11:\"sub_heading\";N;s:11:\"description\";s:257:\"<p>The organization\'s mandate was broadened to encompass 15 thematic areas spanning governance, economic transformation, digital development, social inclusion, and climate sustainability — reflecting the complexity of Bangladesh\'s reform agenda.&nbsp;</p>\";s:11:\"design_word\";N;s:4:\"type\";s:10:\"Story Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:33:00\";s:10:\"updated_at\";s:19:\"2026-06-23 06:33:00\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:72;s:4:\"slug\";s:13:\"about_story_3\";s:7:\"section\";s:4:\"2023\";s:7:\"heading\";s:26:\"Expanded to 15 Focus Areas\";s:11:\"sub_heading\";N;s:11:\"description\";s:257:\"<p>The organization\'s mandate was broadened to encompass 15 thematic areas spanning governance, economic transformation, digital development, social inclusion, and climate sustainability — reflecting the complexity of Bangladesh\'s reform agenda.&nbsp;</p>\";s:11:\"design_word\";N;s:4:\"type\";s:10:\"Story Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:33:00\";s:10:\"updated_at\";s:19:\"2026-06-23 06:33:00\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-story-4', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:73;s:4:\"slug\";s:13:\"about_story_4\";s:7:\"section\";s:4:\"2024\";s:7:\"heading\";s:33:\"International Partnership Network\";s:11:\"sub_heading\";N;s:11:\"description\";s:242:\"<p>GIET formalized partnerships with international development organizations, bilateral agencies, and academic institutions — enabling joint research, technical advisory, and capacity-building programmes across South Asia. &nbsp; &nbsp;</p>\";s:11:\"design_word\";N;s:4:\"type\";s:10:\"Story Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:34:24\";s:10:\"updated_at\";s:19:\"2026-06-23 06:34:24\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:73;s:4:\"slug\";s:13:\"about_story_4\";s:7:\"section\";s:4:\"2024\";s:7:\"heading\";s:33:\"International Partnership Network\";s:11:\"sub_heading\";N;s:11:\"description\";s:242:\"<p>GIET formalized partnerships with international development organizations, bilateral agencies, and academic institutions — enabling joint research, technical advisory, and capacity-building programmes across South Asia. &nbsp; &nbsp;</p>\";s:11:\"design_word\";N;s:4:\"type\";s:10:\"Story Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:34:24\";s:10:\"updated_at\";s:19:\"2026-06-23 06:34:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-trace', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:71;s:4:\"slug\";s:11:\"about_trace\";s:7:\"section\";s:9:\"OUR STORY\";s:7:\"heading\";s:52:\"Built on a Belief that Better Governance is Possible\";s:11:\"sub_heading\";N;s:11:\"description\";s:203:\"<p>GIET was established by a group of policy practitioners, academics, and development professionals who witnessed firsthand the gap between policy design and real-world implementation in Bangladesh.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"About Section\";s:10:\"created_at\";s:19:\"2026-06-23 06:31:01\";s:10:\"updated_at\";s:19:\"2026-06-23 06:31:01\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:71;s:4:\"slug\";s:11:\"about_trace\";s:7:\"section\";s:9:\"OUR STORY\";s:7:\"heading\";s:52:\"Built on a Belief that Better Governance is Possible\";s:11:\"sub_heading\";N;s:11:\"description\";s:203:\"<p>GIET was established by a group of policy practitioners, academics, and development professionals who witnessed firsthand the gap between policy design and real-world implementation in Bangladesh.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"About Section\";s:10:\"created_at\";s:19:\"2026-06-23 06:31:01\";s:10:\"updated_at\";s:19:\"2026-06-23 06:31:01\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-end-to-end-integrated-solutions', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:82;s:4:\"slug\";s:40:\"about_us_end_to_end_integrated_solutions\";s:7:\"section\";s:5:\"Value\";s:7:\"heading\";s:6:\"Impact\";s:11:\"sub_heading\";N;s:11:\"description\";s:177:\"<p>We define success not by publications produced or events held, but by measurable changes in policy, institutional practice, and the lives of citizens we ultimately serve.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Values Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:55:02\";s:10:\"updated_at\";s:19:\"2026-06-23 06:55:02\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:82;s:4:\"slug\";s:40:\"about_us_end_to_end_integrated_solutions\";s:7:\"section\";s:5:\"Value\";s:7:\"heading\";s:6:\"Impact\";s:11:\"sub_heading\";N;s:11:\"description\";s:177:\"<p>We define success not by publications produced or events held, but by measurable changes in policy, institutional practice, and the lives of citizens we ultimately serve.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Values Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:55:02\";s:10:\"updated_at\";s:19:\"2026-06-23 06:55:02\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:1:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:232;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:82;s:4:\"uuid\";s:36:\"885466a5-58ce-41a8-9aa3-61da8f42d763\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (31)\";s:9:\"file_name\";s:12:\"SVG-(31).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:447;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:55:02\";s:10:\"updated_at\";s:19:\"2026-06-23 06:55:02\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:232;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:82;s:4:\"uuid\";s:36:\"885466a5-58ce-41a8-9aa3-61da8f42d763\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (31)\";s:9:\"file_name\";s:12:\"SVG-(31).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:447;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:55:02\";s:10:\"updated_at\";s:19:\"2026-06-23 06:55:02\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-goals', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:68;s:4:\"slug\";s:14:\"about_us_goals\";s:7:\"section\";s:5:\"Goals\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";s:175:\"<p>To produce actionable research, influence policy, build institutional capacity, and foster partnerships that drive lasting governance and economic reform in Bangladesh.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:8:\"MVG Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:19:24\";s:10:\"updated_at\";s:19:\"2026-06-23 06:19:24\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:68;s:4:\"slug\";s:14:\"about_us_goals\";s:7:\"section\";s:5:\"Goals\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";s:175:\"<p>To produce actionable research, influence policy, build institutional capacity, and foster partnerships that drive lasting governance and economic reform in Bangladesh.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:8:\"MVG Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:19:24\";s:10:\"updated_at\";s:19:\"2026-06-23 06:19:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-header', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:40;s:4:\"slug\";s:15:\"about_us_header\";s:7:\"section\";s:8:\"ABOUT US\";s:7:\"heading\";s:10:\"About GIET\";s:11:\"sub_heading\";N;s:11:\"description\";s:160:\"<p>A non-partisan, non-profit think tank dedicated to advancing transparent governance, institutional reform, and economic transformation across Bangladesh.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:12:\"Hero Section\";s:10:\"created_at\";s:19:\"2026-04-23 07:26:05\";s:10:\"updated_at\";s:19:\"2026-06-23 06:06:45\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:40;s:4:\"slug\";s:15:\"about_us_header\";s:7:\"section\";s:8:\"ABOUT US\";s:7:\"heading\";s:10:\"About GIET\";s:11:\"sub_heading\";N;s:11:\"description\";s:160:\"<p>A non-partisan, non-profit think tank dedicated to advancing transparent governance, institutional reform, and economic transformation across Bangladesh.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:12:\"Hero Section\";s:10:\"created_at\";s:19:\"2026-04-23 07:26:05\";s:10:\"updated_at\";s:19:\"2026-06-23 06:06:45\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:2:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:122;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:40;s:4:\"uuid\";s:36:\"5e3f681f-cd8c-4d92-b3e0-11b641dafaac\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:17:\"Trade and Customs\";s:9:\"file_name\";s:21:\"Trade-and-Customs.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:148908;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-04-23 07:26:05\";s:10:\"updated_at\";s:19:\"2026-04-23 07:26:05\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:122;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:40;s:4:\"uuid\";s:36:\"5e3f681f-cd8c-4d92-b3e0-11b641dafaac\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:17:\"Trade and Customs\";s:9:\"file_name\";s:21:\"Trade-and-Customs.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:148908;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-04-23 07:26:05\";s:10:\"updated_at\";s:19:\"2026-04-23 07:26:05\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:1;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:123;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:40;s:4:\"uuid\";s:36:\"a0fd73e2-295a-4148-ad2e-5298a2932e86\";s:15:\"collection_name\";s:5:\"image\";s:4:\"name\";s:17:\"Trade and Customs\";s:9:\"file_name\";s:21:\"Trade-and-Customs.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:148908;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:2;s:10:\"created_at\";s:19:\"2026-04-23 07:26:05\";s:10:\"updated_at\";s:19:\"2026-04-23 07:26:05\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:123;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:40;s:4:\"uuid\";s:36:\"a0fd73e2-295a-4148-ad2e-5298a2932e86\";s:15:\"collection_name\";s:5:\"image\";s:4:\"name\";s:17:\"Trade and Customs\";s:9:\"file_name\";s:21:\"Trade-and-Customs.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:148908;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:2;s:10:\"created_at\";s:19:\"2026-04-23 07:26:05\";s:10:\"updated_at\";s:19:\"2026-04-23 07:26:05\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-how-we-work', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:78;s:4:\"slug\";s:20:\"about_us_how_we_work\";s:7:\"section\";s:10:\"Our Values\";s:7:\"heading\";s:34:\"The Principles That Guide Our Work\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 06:47:23\";s:10:\"updated_at\";s:19:\"2026-06-23 06:47:23\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:78;s:4:\"slug\";s:20:\"about_us_how_we_work\";s:7:\"section\";s:10:\"Our Values\";s:7:\"heading\";s:34:\"The Principles That Guide Our Work\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 06:47:23\";s:10:\"updated_at\";s:19:\"2026-06-23 06:47:23\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-impact', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:77;s:4:\"slug\";s:15:\"about_us_impact\";s:7:\"section\";s:13:\"Approach Card\";s:7:\"heading\";s:33:\"Integrated Implementation Support\";s:11:\"sub_heading\";N;s:11:\"description\";s:160:\"<p>We go beyond advisory — providing on-the-ground implementation support, monitoring, and adaptive management to ensure reforms deliver tangible results.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"Approach Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:44:38\";s:10:\"updated_at\";s:19:\"2026-06-23 06:44:38\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:77;s:4:\"slug\";s:15:\"about_us_impact\";s:7:\"section\";s:13:\"Approach Card\";s:7:\"heading\";s:33:\"Integrated Implementation Support\";s:11:\"sub_heading\";N;s:11:\"description\";s:160:\"<p>We go beyond advisory — providing on-the-ground implementation support, monitoring, and adaptive management to ensure reforms deliver tangible results.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"Approach Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:44:38\";s:10:\"updated_at\";s:19:\"2026-06-23 06:44:38\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-industry-wide-network', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:79;s:4:\"slug\";s:30:\"about_us_industry_wide_network\";s:7:\"section\";s:5:\"Value\";s:7:\"heading\";s:9:\"Integrity\";s:11:\"sub_heading\";N;s:11:\"description\";s:200:\"<p>We uphold the highest standards of professional and intellectual honesty. Our research processes, partnerships, and governance practices reflect a commitment to transparency and accountability.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Values Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:49:36\";s:10:\"updated_at\";s:19:\"2026-06-23 06:49:36\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:79;s:4:\"slug\";s:30:\"about_us_industry_wide_network\";s:7:\"section\";s:5:\"Value\";s:7:\"heading\";s:9:\"Integrity\";s:11:\"sub_heading\";N;s:11:\"description\";s:200:\"<p>We uphold the highest standards of professional and intellectual honesty. Our research processes, partnerships, and governance practices reflect a commitment to transparency and accountability.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Values Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:49:36\";s:10:\"updated_at\";s:19:\"2026-06-23 06:49:36\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:1:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:229;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:79;s:4:\"uuid\";s:36:\"8eba5248-8f25-4d3b-8749-36b72e79abc6\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (29)\";s:9:\"file_name\";s:12:\"SVG-(29).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:457;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:49:36\";s:10:\"updated_at\";s:19:\"2026-06-23 06:49:36\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:229;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:79;s:4:\"uuid\";s:36:\"8eba5248-8f25-4d3b-8749-36b72e79abc6\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (29)\";s:9:\"file_name\";s:12:\"SVG-(29).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:457;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:49:36\";s:10:\"updated_at\";s:19:\"2026-06-23 06:49:36\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-insight', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:75;s:4:\"slug\";s:16:\"about_us_insight\";s:7:\"section\";s:13:\"Approach Card\";s:7:\"heading\";s:23:\"Evidence-Based Research\";s:11:\"sub_heading\";N;s:11:\"description\";s:159:\"<p>We integrate rigorous field research with institutional knowledge to produce policy recommendations grounded in real-world evidence and measurable data.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"Approach Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:41:08\";s:10:\"updated_at\";s:19:\"2026-06-23 06:41:08\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:75;s:4:\"slug\";s:16:\"about_us_insight\";s:7:\"section\";s:13:\"Approach Card\";s:7:\"heading\";s:23:\"Evidence-Based Research\";s:11:\"sub_heading\";N;s:11:\"description\";s:159:\"<p>We integrate rigorous field research with institutional knowledge to produce policy recommendations grounded in real-world evidence and measurable data.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"Approach Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:41:08\";s:10:\"updated_at\";s:19:\"2026-06-23 06:41:08\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-mission', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:66;s:4:\"slug\";s:16:\"about_us_mission\";s:7:\"section\";s:7:\"Mission\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";s:165:\"<p>To advance transparent, accountable governance and sustainable economic transformation through rigorous research, policy advocacy, and implementation support.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:8:\"MVG Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:17:57\";s:10:\"updated_at\";s:19:\"2026-06-23 06:17:57\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:66;s:4:\"slug\";s:16:\"about_us_mission\";s:7:\"section\";s:7:\"Mission\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";s:165:\"<p>To advance transparent, accountable governance and sustainable economic transformation through rigorous research, policy advocacy, and implementation support.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:8:\"MVG Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:17:57\";s:10:\"updated_at\";s:19:\"2026-06-23 06:17:57\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:1:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:263;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:66;s:4:\"uuid\";s:36:\"fb599515-17d0-4d58-929a-62f9853c0b00\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (32)\";s:9:\"file_name\";s:12:\"SVG-(32).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:559;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-25 05:50:33\";s:10:\"updated_at\";s:19:\"2026-06-25 05:50:33\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:263;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:66;s:4:\"uuid\";s:36:\"fb599515-17d0-4d58-929a-62f9853c0b00\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (32)\";s:9:\"file_name\";s:12:\"SVG-(32).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:559;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-25 05:50:33\";s:10:\"updated_at\";s:19:\"2026-06-25 05:50:33\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-our-mission', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:65;s:4:\"slug\";s:20:\"about_us_our_mission\";s:7:\"section\";s:15:\"Our Institution\";s:7:\"heading\";s:23:\"Mission, Vision & Goals\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 06:15:40\";s:10:\"updated_at\";s:19:\"2026-06-23 06:15:40\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:65;s:4:\"slug\";s:20:\"about_us_our_mission\";s:7:\"section\";s:15:\"Our Institution\";s:7:\"heading\";s:23:\"Mission, Vision & Goals\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 06:15:40\";s:10:\"updated_at\";s:19:\"2026-06-23 06:15:40\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('content_block_about-us-partners', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:83;s:4:\"slug\";s:17:\"about_us_partners\";s:7:\"section\";s:8:\"PARTNERS\";s:7:\"heading\";s:12:\"Our Partners\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:16:\"Partners Section\";s:10:\"created_at\";s:19:\"2026-06-23 06:56:37\";s:10:\"updated_at\";s:19:\"2026-06-23 06:56:37\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:83;s:4:\"slug\";s:17:\"about_us_partners\";s:7:\"section\";s:8:\"PARTNERS\";s:7:\"heading\";s:12:\"Our Partners\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:16:\"Partners Section\";s:10:\"created_at\";s:19:\"2026-06-23 06:56:37\";s:10:\"updated_at\";s:19:\"2026-06-23 06:56:37\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-strategy', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:76;s:4:\"slug\";s:17:\"about_us_strategy\";s:7:\"section\";s:13:\"Approach Card\";s:7:\"heading\";s:26:\"Multi-Stakeholder Dialogue\";s:11:\"sub_heading\";N;s:11:\"description\";s:168:\"<p>We convene governments, civil society, development partners, and the private sector to build consensus and co-design solutions that reflect diverse perspectives.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"Approach Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:43:03\";s:10:\"updated_at\";s:19:\"2026-06-23 06:43:03\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:76;s:4:\"slug\";s:17:\"about_us_strategy\";s:7:\"section\";s:13:\"Approach Card\";s:7:\"heading\";s:26:\"Multi-Stakeholder Dialogue\";s:11:\"sub_heading\";N;s:11:\"description\";s:168:\"<p>We convene governments, civil society, development partners, and the private sector to build consensus and co-design solutions that reflect diverse perspectives.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"Approach Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:43:03\";s:10:\"updated_at\";s:19:\"2026-06-23 06:43:03\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-sustainable-approach', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:80;s:4:\"slug\";s:29:\"about_us_sustainable_approach\";s:7:\"section\";s:5:\"Value\";s:7:\"heading\";s:12:\"Independence\";s:11:\"sub_heading\";N;s:11:\"description\";s:180:\"<p>Our analysis is free from political influence, donor pressure, or institutional bias. We are structured to protect the independence of our research conclusions at all times.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Values Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:51:28\";s:10:\"updated_at\";s:19:\"2026-06-23 06:51:28\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:80;s:4:\"slug\";s:29:\"about_us_sustainable_approach\";s:7:\"section\";s:5:\"Value\";s:7:\"heading\";s:12:\"Independence\";s:11:\"sub_heading\";N;s:11:\"description\";s:180:\"<p>Our analysis is free from political influence, donor pressure, or institutional bias. We are structured to protect the independence of our research conclusions at all times.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Values Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:51:28\";s:10:\"updated_at\";s:19:\"2026-06-23 06:51:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:1:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:230;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:80;s:4:\"uuid\";s:36:\"e86e8508-7183-4a02-a21c-6d15e2ceca29\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (59)\";s:9:\"file_name\";s:12:\"SVG-(59).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:714;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:51:28\";s:10:\"updated_at\";s:19:\"2026-06-23 06:51:28\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:230;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:80;s:4:\"uuid\";s:36:\"e86e8508-7183-4a02-a21c-6d15e2ceca29\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (59)\";s:9:\"file_name\";s:12:\"SVG-(59).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:714;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:51:28\";s:10:\"updated_at\";s:19:\"2026-06-23 06:51:28\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-tailored-innovation', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:81;s:4:\"slug\";s:28:\"about_us_tailored_innovation\";s:7:\"section\";s:5:\"Value\";s:7:\"heading\";s:9:\"Inclusion\";s:11:\"sub_heading\";N;s:11:\"description\";s:139:\"<p>We believe that sustainable reform must include the voices of women, youth, persons with disabilities, and marginalized communities.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Values Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:53:21\";s:10:\"updated_at\";s:19:\"2026-06-23 06:53:21\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:81;s:4:\"slug\";s:28:\"about_us_tailored_innovation\";s:7:\"section\";s:5:\"Value\";s:7:\"heading\";s:9:\"Inclusion\";s:11:\"sub_heading\";N;s:11:\"description\";s:139:\"<p>We believe that sustainable reform must include the voices of women, youth, persons with disabilities, and marginalized communities.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Values Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:53:21\";s:10:\"updated_at\";s:19:\"2026-06-23 06:53:21\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:1:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:231;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:81;s:4:\"uuid\";s:36:\"a2dd35b9-feb4-46b4-a7a0-ca2e0b5b2b1c\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (30)\";s:9:\"file_name\";s:12:\"SVG-(30).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:657;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:53:21\";s:10:\"updated_at\";s:19:\"2026-06-23 06:53:21\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:231;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:81;s:4:\"uuid\";s:36:\"a2dd35b9-feb4-46b4-a7a0-ca2e0b5b2b1c\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (30)\";s:9:\"file_name\";s:12:\"SVG-(30).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:657;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:53:21\";s:10:\"updated_at\";s:19:\"2026-06-23 06:53:21\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-vision', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:67;s:4:\"slug\";s:15:\"about_us_vision\";s:7:\"section\";s:6:\"Vision\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";s:160:\"<p>A Bangladesh where institutions are transparent, economies are competitive, and citizens are empowered through evidence-based policy and good governance.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:8:\"MVG Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:18:56\";s:10:\"updated_at\";s:19:\"2026-06-23 06:18:56\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:67;s:4:\"slug\";s:15:\"about_us_vision\";s:7:\"section\";s:6:\"Vision\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";s:160:\"<p>A Bangladesh where institutions are transparent, economies are competitive, and citizens are empowered through evidence-based policy and good governance.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:8:\"MVG Card\";s:10:\"created_at\";s:19:\"2026-06-23 06:18:56\";s:10:\"updated_at\";s:19:\"2026-06-23 06:18:56\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:1:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:264;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:67;s:4:\"uuid\";s:36:\"317608a3-c4b4-4111-8994-1de965a8db05\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (30)\";s:9:\"file_name\";s:12:\"SVG-(30).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:657;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-25 05:59:51\";s:10:\"updated_at\";s:19:\"2026-06-25 05:59:51\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:264;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:67;s:4:\"uuid\";s:36:\"317608a3-c4b4-4111-8994-1de965a8db05\";s:15:\"collection_name\";s:4:\"icon\";s:4:\"name\";s:8:\"SVG (30)\";s:9:\"file_name\";s:12:\"SVG-(30).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:657;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-25 05:59:51\";s:10:\"updated_at\";s:19:\"2026-06-25 05:59:51\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-we-make-trace-different', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:74;s:4:\"slug\";s:32:\"about_us_we_make_trace_different\";s:7:\"section\";s:12:\"Our Approach\";s:7:\"heading\";s:20:\"What Sets GIET Apart\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 06:38:30\";s:10:\"updated_at\";s:19:\"2026-06-23 06:38:30\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:74;s:4:\"slug\";s:32:\"about_us_we_make_trace_different\";s:7:\"section\";s:12:\"Our Approach\";s:7:\"heading\";s:20:\"What Sets GIET Apart\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 06:38:30\";s:10:\"updated_at\";s:19:\"2026-06-23 06:38:30\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_about-us-who-we-are', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:64;s:4:\"slug\";s:19:\"about_us_who_we_are\";s:7:\"section\";s:10:\"WHO WE ARE\";s:7:\"heading\";s:52:\"Transforming Challenges into Strategic Opportunities\";s:11:\"sub_heading\";s:11:\"Our Experts\";s:11:\"description\";s:470:\"<p>Morbi vestibulum tempor mauris tempor consequat. Etiam vitae pulvinar &nbsp;leo. Vivamus varius tortor sed erat venenatis pretium. Sed sollicitudin &nbsp;posuere leo, at tristique elit tempor non. Mauris porttitor, lectus ut &nbsp;sollicitudin pulvinar, ex est rhoncus metus,</p><p>Ut auctor lectus est ac &nbsp;mauris. Aliquam vitae ligula quis metus faucibus convallis id eget enim. Nulla pharetra risus at turpis convallis mollis. Mauris semper molestie velit,</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Detail Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:12:37\";s:10:\"updated_at\";s:19:\"2026-06-25 05:47:59\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:64;s:4:\"slug\";s:19:\"about_us_who_we_are\";s:7:\"section\";s:10:\"WHO WE ARE\";s:7:\"heading\";s:52:\"Transforming Challenges into Strategic Opportunities\";s:11:\"sub_heading\";s:11:\"Our Experts\";s:11:\"description\";s:470:\"<p>Morbi vestibulum tempor mauris tempor consequat. Etiam vitae pulvinar &nbsp;leo. Vivamus varius tortor sed erat venenatis pretium. Sed sollicitudin &nbsp;posuere leo, at tristique elit tempor non. Mauris porttitor, lectus ut &nbsp;sollicitudin pulvinar, ex est rhoncus metus,</p><p>Ut auctor lectus est ac &nbsp;mauris. Aliquam vitae ligula quis metus faucibus convallis id eget enim. Nulla pharetra risus at turpis convallis mollis. Mauris semper molestie velit,</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"Detail Item\";s:10:\"created_at\";s:19:\"2026-06-23 06:12:37\";s:10:\"updated_at\";s:19:\"2026-06-25 05:47:59\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:1:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:228;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:64;s:4:\"uuid\";s:36:\"4aeac369-8029-4f7b-9859-79ebc7f05069\";s:15:\"collection_name\";s:5:\"image\";s:4:\"name\";s:8:\"Workshop\";s:9:\"file_name\";s:12:\"Workshop.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:168652;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:12:37\";s:10:\"updated_at\";s:19:\"2026-06-23 06:12:37\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:228;s:10:\"model_type\";s:18:\"App\\Models\\Content\";s:8:\"model_id\";i:64;s:4:\"uuid\";s:36:\"4aeac369-8029-4f7b-9859-79ebc7f05069\";s:15:\"collection_name\";s:5:\"image\";s:4:\"name\";s:8:\"Workshop\";s:9:\"file_name\";s:12:\"Workshop.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:168652;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:1;s:10:\"created_at\";s:19:\"2026-06-23 06:12:37\";s:10:\"updated_at\";s:19:\"2026-06-23 06:12:37\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782718886),
('content_block_contact-faq-section', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:97;s:4:\"slug\";s:19:\"contact-faq-section\";s:7:\"section\";s:4:\"FAQs\";s:7:\"heading\";s:26:\"Frequently Asked Questions\";s:11:\"sub_heading\";N;s:11:\"description\";s:101:\"<p>Can\'t find the answer you\'re looking for? Send us a message using the form above. &nbsp;&nbsp;</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"FAQ Section\";s:10:\"created_at\";s:19:\"2026-06-23 11:30:49\";s:10:\"updated_at\";s:19:\"2026-06-23 11:33:35\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:97;s:4:\"slug\";s:19:\"contact-faq-section\";s:7:\"section\";s:4:\"FAQs\";s:7:\"heading\";s:26:\"Frequently Asked Questions\";s:11:\"sub_heading\";N;s:11:\"description\";s:101:\"<p>Can\'t find the answer you\'re looking for? Send us a message using the form above. &nbsp;&nbsp;</p>\";s:11:\"design_word\";N;s:4:\"type\";s:11:\"FAQ Section\";s:10:\"created_at\";s:19:\"2026-06-23 11:30:49\";s:10:\"updated_at\";s:19:\"2026-06-23 11:33:35\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782727625),
('content_block_contact-follow-us', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:117;s:4:\"slug\";s:17:\"contact_follow_us\";s:7:\"section\";s:9:\"Follow Us\";s:7:\"heading\";N;s:11:\"sub_heading\";s:44:\"https://linkedin.com/company/giet-foundation\";s:11:\"description\";s:28:\"https://x.com/gietfoundation\";s:11:\"design_word\";N;s:4:\"type\";s:12:\"contact_page\";s:10:\"created_at\";s:19:\"2026-06-29 06:17:19\";s:10:\"updated_at\";s:19:\"2026-06-29 06:17:19\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:117;s:4:\"slug\";s:17:\"contact_follow_us\";s:7:\"section\";s:9:\"Follow Us\";s:7:\"heading\";N;s:11:\"sub_heading\";s:44:\"https://linkedin.com/company/giet-foundation\";s:11:\"description\";s:28:\"https://x.com/gietfoundation\";s:11:\"design_word\";N;s:4:\"type\";s:12:\"contact_page\";s:10:\"created_at\";s:19:\"2026-06-29 06:17:19\";s:10:\"updated_at\";s:19:\"2026-06-29 06:17:19\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782727625),
('content_block_contact-form-section', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:114;s:4:\"slug\";s:20:\"contact_form_section\";s:7:\"section\";s:17:\"Send us a message\";s:7:\"heading\";s:16:\"How Can We Help?\";s:11:\"sub_heading\";s:80:\"We respect your privacy. Your information will not be shared with third parties.\";s:11:\"description\";s:170:\"Fill out the form below and a member of our team will get back to you within 2 business days. For event enquiries or media requests, please indicate this in your message.\";s:11:\"design_word\";N;s:4:\"type\";s:12:\"contact_page\";s:10:\"created_at\";s:19:\"2026-06-29 06:16:57\";s:10:\"updated_at\";s:19:\"2026-06-29 06:16:57\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:114;s:4:\"slug\";s:20:\"contact_form_section\";s:7:\"section\";s:17:\"Send us a message\";s:7:\"heading\";s:16:\"How Can We Help?\";s:11:\"sub_heading\";s:80:\"We respect your privacy. Your information will not be shared with third parties.\";s:11:\"description\";s:170:\"Fill out the form below and a member of our team will get back to you within 2 business days. For event enquiries or media requests, please indicate this in your message.\";s:11:\"design_word\";N;s:4:\"type\";s:12:\"contact_page\";s:10:\"created_at\";s:19:\"2026-06-29 06:16:57\";s:10:\"updated_at\";s:19:\"2026-06-29 06:16:57\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782727625),
('content_block_contact-map', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:116;s:4:\"slug\";s:11:\"contact_map\";s:7:\"section\";s:10:\"Google Map\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";s:272:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.7765103442656!2d90.39958377519969!3d23.79155988775464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c70c6a51d8b3%3A0x6006e89798cc0d4f!2sBRAC%20Centre%20Inn!5e0!3m2!1sen!2sbd!4v1717696668744!5m2!1sen!2sbd\";s:11:\"design_word\";N;s:4:\"type\";s:12:\"contact_page\";s:10:\"created_at\";s:19:\"2026-06-29 06:17:19\";s:10:\"updated_at\";s:19:\"2026-06-29 06:17:19\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:116;s:4:\"slug\";s:11:\"contact_map\";s:7:\"section\";s:10:\"Google Map\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";s:272:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.7765103442656!2d90.39958377519969!3d23.79155988775464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c70c6a51d8b3%3A0x6006e89798cc0d4f!2sBRAC%20Centre%20Inn!5e0!3m2!1sen!2sbd!4v1717696668744!5m2!1sen!2sbd\";s:11:\"design_word\";N;s:4:\"type\";s:12:\"contact_page\";s:10:\"created_at\";s:19:\"2026-06-29 06:17:19\";s:10:\"updated_at\";s:19:\"2026-06-29 06:17:19\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782727625),
('content_block_contact-page', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:96;s:4:\"slug\";s:12:\"contact-page\";s:7:\"section\";s:10:\"Contact Us\";s:7:\"heading\";s:12:\"Get In Touch\";s:11:\"sub_heading\";N;s:11:\"description\";s:172:\"<p>Whether you\'re interested in collaborating on a project, commissioning research, attending an event, or just learning more about GIET — we\'d love to hear from you.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-06-23 11:29:39\";s:10:\"updated_at\";s:19:\"2026-06-23 11:29:39\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:96;s:4:\"slug\";s:12:\"contact-page\";s:7:\"section\";s:10:\"Contact Us\";s:7:\"heading\";s:12:\"Get In Touch\";s:11:\"sub_heading\";N;s:11:\"description\";s:172:\"<p>Whether you\'re interested in collaborating on a project, commissioning research, attending an event, or just learning more about GIET — we\'d love to hear from you.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-06-23 11:29:39\";s:10:\"updated_at\";s:19:\"2026-06-23 11:29:39\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782727625),
('content_block_contact-us-head', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:115;s:4:\"slug\";s:15:\"contact-us-head\";s:7:\"section\";s:19:\"Our Contact Details\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:12:\"contact_page\";s:10:\"created_at\";s:19:\"2026-06-29 06:16:57\";s:10:\"updated_at\";s:19:\"2026-06-29 06:16:57\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:115;s:4:\"slug\";s:15:\"contact-us-head\";s:7:\"section\";s:19:\"Our Contact Details\";s:7:\"heading\";N;s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:12:\"contact_page\";s:10:\"created_at\";s:19:\"2026-06-29 06:16:57\";s:10:\"updated_at\";s:19:\"2026-06-29 06:16:57\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782727625),
('content_block_events-cta', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:102;s:4:\"slug\";s:10:\"events_cta\";s:7:\"section\";s:15:\"Partner With Us\";s:7:\"heading\";s:34:\"Interested in Co-hosting an Event?\";s:11:\"sub_heading\";s:24:\"Submit an Event Proposal\";s:11:\"description\";s:186:\"<p>GIET welcomes co-hosting proposals from government agencies, development partners, universities, and civil society organizations. We manage logistics, speakers, and documentation.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-24 06:36:55\";s:10:\"updated_at\";s:19:\"2026-06-24 06:36:55\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:102;s:4:\"slug\";s:10:\"events_cta\";s:7:\"section\";s:15:\"Partner With Us\";s:7:\"heading\";s:34:\"Interested in Co-hosting an Event?\";s:11:\"sub_heading\";s:24:\"Submit an Event Proposal\";s:11:\"description\";s:186:\"<p>GIET welcomes co-hosting proposals from government agencies, development partners, universities, and civil society organizations. We manage logistics, speakers, and documentation.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-24 06:36:55\";s:10:\"updated_at\";s:19:\"2026-06-24 06:36:55\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782728770),
('content_block_events-page-header', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:99;s:4:\"slug\";s:18:\"events_page_header\";s:7:\"section\";s:6:\"EVENTS\";s:7:\"heading\";s:15:\"Events & Forums\";s:11:\"sub_heading\";N;s:11:\"description\";s:162:\"<p>GIET convenes policymakers, development professionals, and civil society through roundtables, policy dialogues, training workshops, and public conferences.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-06-24 06:25:21\";s:10:\"updated_at\";s:19:\"2026-06-24 06:25:21\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:99;s:4:\"slug\";s:18:\"events_page_header\";s:7:\"section\";s:6:\"EVENTS\";s:7:\"heading\";s:15:\"Events & Forums\";s:11:\"sub_heading\";N;s:11:\"description\";s:162:\"<p>GIET convenes policymakers, development professionals, and civil society through roundtables, policy dialogues, training workshops, and public conferences.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-06-24 06:25:21\";s:10:\"updated_at\";s:19:\"2026-06-24 06:25:21\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782728770);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('content_block_events-past', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:101;s:4:\"slug\";s:11:\"events_past\";s:7:\"section\";s:7:\"Archive\";s:7:\"heading\";s:11:\"Past Events\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-24 06:31:38\";s:10:\"updated_at\";s:19:\"2026-06-24 06:31:38\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:101;s:4:\"slug\";s:11:\"events_past\";s:7:\"section\";s:7:\"Archive\";s:7:\"heading\";s:11:\"Past Events\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-24 06:31:38\";s:10:\"updated_at\";s:19:\"2026-06-24 06:31:38\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782728770),
('content_block_events-upcoming', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:100;s:4:\"slug\";s:15:\"events_upcoming\";s:7:\"section\";s:15:\"Upcoming Events\";s:7:\"heading\";s:11:\"Open Events\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-24 06:26:02\";s:10:\"updated_at\";s:19:\"2026-06-24 06:26:02\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:100;s:4:\"slug\";s:15:\"events_upcoming\";s:7:\"section\";s:15:\"Upcoming Events\";s:7:\"heading\";s:11:\"Open Events\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-24 06:26:02\";s:10:\"updated_at\";s:19:\"2026-06-24 06:26:02\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782728770),
('content_block_expertdetails-related-experts', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:113;s:4:\"slug\";s:29:\"expertdetails_related_experts\";s:7:\"section\";s:12:\"More Experts\";s:7:\"heading\";s:17:\"GIET Team Members\";s:11:\"sub_heading\";s:7:\"See All\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-29 04:59:53\";s:10:\"updated_at\";s:19:\"2026-06-29 05:08:13\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:113;s:4:\"slug\";s:29:\"expertdetails_related_experts\";s:7:\"section\";s:12:\"More Experts\";s:7:\"heading\";s:17:\"GIET Team Members\";s:11:\"sub_heading\";s:7:\"See All\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-29 04:59:53\";s:10:\"updated_at\";s:19:\"2026-06-29 05:08:13\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782729860),
('content_block_home-about-trace', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:59;s:4:\"slug\";s:16:\"home_about_trace\";s:7:\"section\";s:10:\"ABOUT GIET\";s:7:\"heading\";s:52:\"Transforming Challenges Into Strategic Opportunities\";s:11:\"sub_heading\";s:14:\"Learn About Us\";s:11:\"description\";s:160:\"<p>GIET is a non-political, non-profit organization focused on governance reform, economic transformation, and evidence-based policy advocacy in Bangladesh.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"About Section\";s:10:\"created_at\";s:19:\"2026-06-23 05:15:15\";s:10:\"updated_at\";s:19:\"2026-06-23 05:17:36\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:59;s:4:\"slug\";s:16:\"home_about_trace\";s:7:\"section\";s:10:\"ABOUT GIET\";s:7:\"heading\";s:52:\"Transforming Challenges Into Strategic Opportunities\";s:11:\"sub_heading\";s:14:\"Learn About Us\";s:11:\"description\";s:160:\"<p>GIET is a non-political, non-profit organization focused on governance reform, economic transformation, and evidence-based policy advocacy in Bangladesh.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:13:\"About Section\";s:10:\"created_at\";s:19:\"2026-06-23 05:15:15\";s:10:\"updated_at\";s:19:\"2026-06-23 05:17:36\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782719367),
('content_block_home-about-trace-one', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:43;s:4:\"slug\";s:20:\"home_about_trace_one\";s:7:\"section\";s:15:\"HOME ABOUT ITEM\";s:7:\"heading\";s:37:\"Multi-Sector Expertise & Global Reach\";s:11:\"sub_heading\";N;s:11:\"description\";s:106:\"<p>Deep knowledge across industries, backed by an objective perspective and access to global networks.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:9:\"List Item\";s:10:\"created_at\";s:19:\"2026-04-23 08:01:48\";s:10:\"updated_at\";s:19:\"2026-04-29 15:40:42\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:43;s:4:\"slug\";s:20:\"home_about_trace_one\";s:7:\"section\";s:15:\"HOME ABOUT ITEM\";s:7:\"heading\";s:37:\"Multi-Sector Expertise & Global Reach\";s:11:\"sub_heading\";N;s:11:\"description\";s:106:\"<p>Deep knowledge across industries, backed by an objective perspective and access to global networks.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:9:\"List Item\";s:10:\"created_at\";s:19:\"2026-04-23 08:01:48\";s:10:\"updated_at\";s:19:\"2026-04-29 15:40:42\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782719367),
('content_block_home-about-trace-three', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:45;s:4:\"slug\";s:22:\"home_about_trace_three\";s:7:\"section\";s:15:\"HOME ABOUT ITEM\";s:7:\"heading\";s:39:\"Change Management & Creative Innovation\";s:11:\"sub_heading\";N;s:11:\"description\";s:88:\"<p>Combining structured change management with innovative, context-driven solutions.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:9:\"List Item\";s:10:\"created_at\";s:19:\"2026-04-23 08:02:02\";s:10:\"updated_at\";s:19:\"2026-04-23 08:02:02\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:45;s:4:\"slug\";s:22:\"home_about_trace_three\";s:7:\"section\";s:15:\"HOME ABOUT ITEM\";s:7:\"heading\";s:39:\"Change Management & Creative Innovation\";s:11:\"sub_heading\";N;s:11:\"description\";s:88:\"<p>Combining structured change management with innovative, context-driven solutions.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:9:\"List Item\";s:10:\"created_at\";s:19:\"2026-04-23 08:02:02\";s:10:\"updated_at\";s:19:\"2026-04-23 08:02:02\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782719367),
('content_block_home-about-trace-two', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:44;s:4:\"slug\";s:20:\"home_about_trace_two\";s:7:\"section\";s:15:\"HOME ABOUT ITEM\";s:7:\"heading\";s:40:\"Proven Methodologies, Policy to Practice\";s:11:\"sub_heading\";N;s:11:\"description\";s:88:\"<p>Rigorous, scalable approaches that translate evidence into implementable reforms.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:9:\"List Item\";s:10:\"created_at\";s:19:\"2026-04-23 08:01:56\";s:10:\"updated_at\";s:19:\"2026-04-23 08:01:56\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:44;s:4:\"slug\";s:20:\"home_about_trace_two\";s:7:\"section\";s:15:\"HOME ABOUT ITEM\";s:7:\"heading\";s:40:\"Proven Methodologies, Policy to Practice\";s:11:\"sub_heading\";N;s:11:\"description\";s:88:\"<p>Rigorous, scalable approaches that translate evidence into implementable reforms.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:9:\"List Item\";s:10:\"created_at\";s:19:\"2026-04-23 08:01:56\";s:10:\"updated_at\";s:19:\"2026-04-23 08:01:56\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782719367),
('content_block_home-focus-areas', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:60;s:4:\"slug\";s:16:\"home_focus_areas\";s:7:\"section\";s:15:\"Our Focus Areas\";s:7:\"heading\";s:24:\"Where We Direct Our Work\";s:11:\"sub_heading\";s:7:\"See All\";s:11:\"description\";N;s:11:\"design_word\";s:19:\"See All Focus Areas\";s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 05:21:50\";s:10:\"updated_at\";s:19:\"2026-06-23 05:21:50\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:60;s:4:\"slug\";s:16:\"home_focus_areas\";s:7:\"section\";s:15:\"Our Focus Areas\";s:7:\"heading\";s:24:\"Where We Direct Our Work\";s:11:\"sub_heading\";s:7:\"See All\";s:11:\"description\";N;s:11:\"design_word\";s:19:\"See All Focus Areas\";s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 05:21:50\";s:10:\"updated_at\";s:19:\"2026-06-23 05:21:50\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782719367),
('content_block_home-mission', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:61;s:4:\"slug\";s:12:\"home_mission\";s:7:\"section\";s:11:\"Our Mission\";s:7:\"heading\";s:103:\"Evidence-based reform is not optional — it is the only path to governance that truly serves citizens.\";s:11:\"sub_heading\";s:42:\"Dr. Rafiqul Islam, Founding Director, GIET\";s:11:\"description\";s:297:\"<p>GIET is a non-political, non-profit organization dedicated to promoting transparent, accountable governance and sustainable economic transformation in Bangladesh. We perform in-depth research, encourage multi-stakeholder dialogue, and convert evidence into practical policy recommendations.</p>\";s:11:\"design_word\";s:130:\"Transparent Governance|Economic Competitiveness|Institutional Reform|Digital Transformation|Social Inclusion|Evidence-Based Policy\";s:4:\"type\";s:15:\"Mission Section\";s:10:\"created_at\";s:19:\"2026-06-23 05:24:06\";s:10:\"updated_at\";s:19:\"2026-06-23 05:24:06\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:61;s:4:\"slug\";s:12:\"home_mission\";s:7:\"section\";s:11:\"Our Mission\";s:7:\"heading\";s:103:\"Evidence-based reform is not optional — it is the only path to governance that truly serves citizens.\";s:11:\"sub_heading\";s:42:\"Dr. Rafiqul Islam, Founding Director, GIET\";s:11:\"description\";s:297:\"<p>GIET is a non-political, non-profit organization dedicated to promoting transparent, accountable governance and sustainable economic transformation in Bangladesh. We perform in-depth research, encourage multi-stakeholder dialogue, and convert evidence into practical policy recommendations.</p>\";s:11:\"design_word\";s:130:\"Transparent Governance|Economic Competitiveness|Institutional Reform|Digital Transformation|Social Inclusion|Evidence-Based Policy\";s:4:\"type\";s:15:\"Mission Section\";s:10:\"created_at\";s:19:\"2026-06-23 05:24:06\";s:10:\"updated_at\";s:19:\"2026-06-23 05:24:06\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782719367),
('content_block_home-partners', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:63;s:4:\"slug\";s:13:\"home_partners\";s:7:\"section\";N;s:7:\"heading\";s:12:\"Our Partners\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:16:\"Partners Section\";s:10:\"created_at\";s:19:\"2026-06-23 05:29:46\";s:10:\"updated_at\";s:19:\"2026-06-23 05:29:46\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:63;s:4:\"slug\";s:13:\"home_partners\";s:7:\"section\";N;s:7:\"heading\";s:12:\"Our Partners\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:16:\"Partners Section\";s:10:\"created_at\";s:19:\"2026-06-23 05:29:46\";s:10:\"updated_at\";s:19:\"2026-06-23 05:29:46\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782719367),
('content_block_home-projects', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:62;s:4:\"slug\";s:13:\"home_projects\";s:7:\"section\";s:12:\"Our Projects\";s:7:\"heading\";s:24:\"Work That Creates Impact\";s:11:\"sub_heading\";s:17:\"View All Projects\";s:11:\"description\";s:186:\"<p>GIET delivers governance reform, policy advisory, digital transformation, and research projects across Bangladesh for governments, development institutions, and regulatory bodies.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 05:28:37\";s:10:\"updated_at\";s:19:\"2026-06-23 05:28:37\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:62;s:4:\"slug\";s:13:\"home_projects\";s:7:\"section\";s:12:\"Our Projects\";s:7:\"heading\";s:24:\"Work That Creates Impact\";s:11:\"sub_heading\";s:17:\"View All Projects\";s:11:\"description\";s:186:\"<p>GIET delivers governance reform, policy advisory, digital transformation, and research projects across Bangladesh for governments, development institutions, and regulatory bodies.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 05:28:37\";s:10:\"updated_at\";s:19:\"2026-06-23 05:28:37\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782719367),
('content_block_projectdetails-actions', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:95;s:4:\"slug\";s:22:\"projectdetails_actions\";s:7:\"section\";N;s:7:\"heading\";s:28:\"Commission a Similar Project\";s:11:\"sub_heading\";s:12:\"All Projects\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-23 11:11:44\";s:10:\"updated_at\";s:19:\"2026-06-23 11:11:44\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:95;s:4:\"slug\";s:22:\"projectdetails_actions\";s:7:\"section\";N;s:7:\"heading\";s:28:\"Commission a Similar Project\";s:11:\"sub_heading\";s:12:\"All Projects\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-23 11:11:44\";s:10:\"updated_at\";s:19:\"2026-06-23 11:11:44\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730020),
('content_block_projectdetails-sidebar', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:93;s:4:\"slug\";s:22:\"projectdetails_sidebar\";s:7:\"section\";s:12:\"Work With Us\";s:7:\"heading\";N;s:11:\"sub_heading\";s:28:\"Commission a Similar Project\";s:11:\"description\";s:69:\"<p>Get in touch and our team will walk you through our solutions.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:14:\"Sidebar Widget\";s:10:\"created_at\";s:19:\"2026-06-23 11:08:54\";s:10:\"updated_at\";s:19:\"2026-06-23 11:08:54\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:93;s:4:\"slug\";s:22:\"projectdetails_sidebar\";s:7:\"section\";s:12:\"Work With Us\";s:7:\"heading\";N;s:11:\"sub_heading\";s:28:\"Commission a Similar Project\";s:11:\"description\";s:69:\"<p>Get in touch and our team will walk you through our solutions.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:14:\"Sidebar Widget\";s:10:\"created_at\";s:19:\"2026-06-23 11:08:54\";s:10:\"updated_at\";s:19:\"2026-06-23 11:08:54\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730020),
('content_block_projectdetails-team', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:94;s:4:\"slug\";s:19:\"projectdetails_team\";s:7:\"section\";s:12:\"Project Team\";s:7:\"heading\";s:12:\"Team Members\";s:11:\"sub_heading\";s:11:\"All Experts\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 11:10:40\";s:10:\"updated_at\";s:19:\"2026-06-23 11:10:40\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:94;s:4:\"slug\";s:19:\"projectdetails_team\";s:7:\"section\";s:12:\"Project Team\";s:7:\"heading\";s:12:\"Team Members\";s:11:\"sub_heading\";s:11:\"All Experts\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 11:10:40\";s:10:\"updated_at\";s:19:\"2026-06-23 11:10:40\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730020),
('content_block_projects-impact', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:87;s:4:\"slug\";s:15:\"projects_impact\";s:7:\"section\";s:10:\"Our Impact\";s:7:\"heading\";s:40:\"Measurable Outcomes Across Our Portfolio\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 09:10:20\";s:10:\"updated_at\";s:19:\"2026-06-23 09:10:20\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:87;s:4:\"slug\";s:15:\"projects_impact\";s:7:\"section\";s:10:\"Our Impact\";s:7:\"heading\";s:40:\"Measurable Outcomes Across Our Portfolio\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 09:10:20\";s:10:\"updated_at\";s:19:\"2026-06-23 09:10:20\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730016),
('content_block_projects-page', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:85;s:4:\"slug\";s:13:\"projects-page\";s:7:\"section\";s:12:\"OUR PROJECTS\";s:7:\"heading\";s:12:\"Our Projects\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-06-23 09:08:38\";s:10:\"updated_at\";s:19:\"2026-06-23 09:08:38\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:85;s:4:\"slug\";s:13:\"projects-page\";s:7:\"section\";s:12:\"OUR PROJECTS\";s:7:\"heading\";s:12:\"Our Projects\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-06-23 09:08:38\";s:10:\"updated_at\";s:19:\"2026-06-23 09:08:38\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730016),
('content_block_projects-portfolio', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:86;s:4:\"slug\";s:18:\"projects_portfolio\";s:7:\"section\";s:17:\"Project Portfolio\";s:7:\"heading\";s:24:\"Work That Creates Impact\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 09:09:20\";s:10:\"updated_at\";s:19:\"2026-06-23 09:09:20\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:86;s:4:\"slug\";s:18:\"projects_portfolio\";s:7:\"section\";s:17:\"Project Portfolio\";s:7:\"heading\";s:24:\"Work That Creates Impact\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 09:09:20\";s:10:\"updated_at\";s:19:\"2026-06-23 09:09:20\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730016),
('content_block_projects-stat-1', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:88;s:4:\"slug\";s:15:\"projects_stat_1\";s:7:\"section\";s:18:\"Projects Delivered\";s:7:\"heading\";s:3:\"24+\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:9:\"Stat Card\";s:10:\"created_at\";s:19:\"2026-06-23 09:11:30\";s:10:\"updated_at\";s:19:\"2026-06-23 09:11:30\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:88;s:4:\"slug\";s:15:\"projects_stat_1\";s:7:\"section\";s:18:\"Projects Delivered\";s:7:\"heading\";s:3:\"24+\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:9:\"Stat Card\";s:10:\"created_at\";s:19:\"2026-06-23 09:11:30\";s:10:\"updated_at\";s:19:\"2026-06-23 09:11:30\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730016),
('content_block_projects-stat-2', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:89;s:4:\"slug\";s:15:\"projects_stat_2\";s:7:\"section\";s:17:\"Officials Trained\";s:7:\"heading\";s:3:\"6K+\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:9:\"Stat Card\";s:10:\"created_at\";s:19:\"2026-06-23 09:12:08\";s:10:\"updated_at\";s:19:\"2026-06-23 09:12:08\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:89;s:4:\"slug\";s:15:\"projects_stat_2\";s:7:\"section\";s:17:\"Officials Trained\";s:7:\"heading\";s:3:\"6K+\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:9:\"Stat Card\";s:10:\"created_at\";s:19:\"2026-06-23 09:12:08\";s:10:\"updated_at\";s:19:\"2026-06-23 09:12:08\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730016),
('content_block_projects-stat-3', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:90;s:4:\"slug\";s:15:\"projects_stat_3\";s:7:\"section\";s:30:\"Policy Recommendations Adopted\";s:7:\"heading\";s:2:\"38\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:9:\"Stat Card\";s:10:\"created_at\";s:19:\"2026-06-23 09:12:32\";s:10:\"updated_at\";s:19:\"2026-06-23 09:12:32\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:90;s:4:\"slug\";s:15:\"projects_stat_3\";s:7:\"section\";s:30:\"Policy Recommendations Adopted\";s:7:\"heading\";s:2:\"38\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:9:\"Stat Card\";s:10:\"created_at\";s:19:\"2026-06-23 09:12:32\";s:10:\"updated_at\";s:19:\"2026-06-23 09:12:32\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730016),
('content_block_projects-stat-4', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:91;s:4:\"slug\";s:15:\"projects_stat_4\";s:7:\"section\";s:21:\"Partner Organizations\";s:7:\"heading\";s:3:\"12+\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:9:\"Stat Card\";s:10:\"created_at\";s:19:\"2026-06-23 09:13:07\";s:10:\"updated_at\";s:19:\"2026-06-23 09:13:07\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:91;s:4:\"slug\";s:15:\"projects_stat_4\";s:7:\"section\";s:21:\"Partner Organizations\";s:7:\"heading\";s:3:\"12+\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:9:\"Stat Card\";s:10:\"created_at\";s:19:\"2026-06-23 09:13:07\";s:10:\"updated_at\";s:19:\"2026-06-23 09:13:07\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730016);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('content_block_projects-work-with-us', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:92;s:4:\"slug\";s:21:\"projects_work_with_us\";s:7:\"section\";s:11:\"Collaborate\";s:7:\"heading\";s:30:\"Ready to Commission a Project?\";s:11:\"sub_heading\";s:12:\"Get In Touch\";s:11:\"description\";s:168:\"<p>GIET works with governments, international development organisations, NGOs, and private sector partners. We welcome project proposals and co-design partnerships.</p>\";s:11:\"design_word\";s:10:\"About GIET\";s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-23 09:14:24\";s:10:\"updated_at\";s:19:\"2026-06-23 09:14:24\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:92;s:4:\"slug\";s:21:\"projects_work_with_us\";s:7:\"section\";s:11:\"Collaborate\";s:7:\"heading\";s:30:\"Ready to Commission a Project?\";s:11:\"sub_heading\";s:12:\"Get In Touch\";s:11:\"description\";s:168:\"<p>GIET works with governments, international development organisations, NGOs, and private sector partners. We welcome project proposals and co-design partnerships.</p>\";s:11:\"design_word\";s:10:\"About GIET\";s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-23 09:14:24\";s:10:\"updated_at\";s:19:\"2026-06-23 09:14:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730016),
('content_block_resources-hero', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:111;s:4:\"slug\";s:14:\"resources_hero\";s:7:\"section\";s:20:\"KNOWLEDGE & RESEARCH\";s:7:\"heading\";s:9:\"Resources\";s:11:\"sub_heading\";N;s:11:\"description\";s:155:\"<p>Policy briefs, issue analyses, expert commentaries, research reports, videos, and podcasts from GIET\'s research team and contributing practitioners.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-06-28 05:08:56\";s:10:\"updated_at\";s:19:\"2026-06-28 05:08:56\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:111;s:4:\"slug\";s:14:\"resources_hero\";s:7:\"section\";s:20:\"KNOWLEDGE & RESEARCH\";s:7:\"heading\";s:9:\"Resources\";s:11:\"sub_heading\";N;s:11:\"description\";s:155:\"<p>Policy briefs, issue analyses, expert commentaries, research reports, videos, and podcasts from GIET\'s research team and contributing practitioners.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-06-28 05:08:56\";s:10:\"updated_at\";s:19:\"2026-06-28 05:08:56\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782729934),
('content_block_resources-research-cta', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:112;s:4:\"slug\";s:22:\"resources_research_cta\";s:7:\"section\";s:16:\"Research With Us\";s:7:\"heading\";s:41:\"Interested in Submitting a Research Idea?\";s:11:\"sub_heading\";s:22:\"Submit a Research Idea\";s:11:\"description\";s:187:\"<p>GIET welcomes research ideas from government agencies, development partners, universities, and civil society organizations. We provide funding, mentorship, and publication support.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-28 05:19:23\";s:10:\"updated_at\";s:19:\"2026-06-28 05:19:23\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:112;s:4:\"slug\";s:22:\"resources_research_cta\";s:7:\"section\";s:16:\"Research With Us\";s:7:\"heading\";s:41:\"Interested in Submitting a Research Idea?\";s:11:\"sub_heading\";s:22:\"Submit a Research Idea\";s:11:\"description\";s:187:\"<p>GIET welcomes research ideas from government agencies, development partners, universities, and civil society organizations. We provide funding, mentorship, and publication support.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-28 05:19:23\";s:10:\"updated_at\";s:19:\"2026-06-28 05:19:23\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782729934),
('content_block_services-page', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:54;s:4:\"slug\";s:13:\"services-page\";s:7:\"section\";s:10:\"WHAT WE DO\";s:7:\"heading\";s:13:\"Areas of work\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-04-27 16:08:30\";s:10:\"updated_at\";s:19:\"2026-06-23 07:09:41\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:54;s:4:\"slug\";s:13:\"services-page\";s:7:\"section\";s:10:\"WHAT WE DO\";s:7:\"heading\";s:13:\"Areas of work\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-04-27 16:08:30\";s:10:\"updated_at\";s:19:\"2026-06-23 07:09:41\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730042),
('content_block_team-core', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:104;s:4:\"slug\";s:9:\"team-core\";s:7:\"section\";s:9:\"CORE TEAM\";s:7:\"heading\";s:22:\"Policy & Research Team\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:7:\"Section\";s:10:\"created_at\";s:19:\"2026-06-25 04:04:20\";s:10:\"updated_at\";s:19:\"2026-06-25 04:04:20\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:104;s:4:\"slug\";s:9:\"team-core\";s:7:\"section\";s:9:\"CORE TEAM\";s:7:\"heading\";s:22:\"Policy & Research Team\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:7:\"Section\";s:10:\"created_at\";s:19:\"2026-06-25 04:04:20\";s:10:\"updated_at\";s:19:\"2026-06-25 04:04:20\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782729847),
('content_block_team-experts', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:103;s:4:\"slug\";s:12:\"team-experts\";s:7:\"section\";s:11:\"OUR EXPERTS\";s:7:\"heading\";s:18:\"Advisors & Fellows\";s:11:\"sub_heading\";N;s:11:\"description\";s:159:\"<p>GIET\'s advisory panel brings together national and international experts, connecting us with leading think tanks, universities, and policy institutions.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:7:\"Section\";s:10:\"created_at\";s:19:\"2026-06-25 03:55:04\";s:10:\"updated_at\";s:19:\"2026-06-25 03:55:04\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:103;s:4:\"slug\";s:12:\"team-experts\";s:7:\"section\";s:11:\"OUR EXPERTS\";s:7:\"heading\";s:18:\"Advisors & Fellows\";s:11:\"sub_heading\";N;s:11:\"description\";s:159:\"<p>GIET\'s advisory panel brings together national and international experts, connecting us with leading think tanks, universities, and policy institutions.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:7:\"Section\";s:10:\"created_at\";s:19:\"2026-06-25 03:55:04\";s:10:\"updated_at\";s:19:\"2026-06-25 03:55:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782729847),
('content_block_team-leadership', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:105;s:4:\"slug\";s:15:\"team-leadership\";s:7:\"section\";s:10:\"LEADERSHIP\";s:7:\"heading\";s:15:\"Leadership Team\";s:11:\"sub_heading\";N;s:11:\"description\";s:199:\"<p>GIET is led by a board of distinguished policy practitioners, economists, and institutional reform specialists committed to evidence-based governance transformation in Bangladesh.</p><p>&nbsp;</p>\";s:11:\"design_word\";N;s:4:\"type\";s:7:\"Section\";s:10:\"created_at\";s:19:\"2026-06-25 04:19:58\";s:10:\"updated_at\";s:19:\"2026-06-25 04:19:58\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:105;s:4:\"slug\";s:15:\"team-leadership\";s:7:\"section\";s:10:\"LEADERSHIP\";s:7:\"heading\";s:15:\"Leadership Team\";s:11:\"sub_heading\";N;s:11:\"description\";s:199:\"<p>GIET is led by a board of distinguished policy practitioners, economists, and institutional reform specialists committed to evidence-based governance transformation in Bangladesh.</p><p>&nbsp;</p>\";s:11:\"design_word\";N;s:4:\"type\";s:7:\"Section\";s:10:\"created_at\";s:19:\"2026-06-25 04:19:58\";s:10:\"updated_at\";s:19:\"2026-06-25 04:19:58\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782729847),
('content_block_team-page', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:14;s:4:\"slug\";s:9:\"team page\";s:7:\"section\";s:26:\"The People Behind the Work\";s:7:\"heading\";s:11:\"Our Experts\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-04-21 14:49:18\";s:10:\"updated_at\";s:19:\"2026-06-25 04:37:36\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:14;s:4:\"slug\";s:9:\"team page\";s:7:\"section\";s:26:\"The People Behind the Work\";s:7:\"heading\";s:11:\"Our Experts\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:4:\"Hero\";s:10:\"created_at\";s:19:\"2026-04-21 14:49:18\";s:10:\"updated_at\";s:19:\"2026-06-25 04:37:36\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782729847),
('content_block_work-key-focus-areas', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:84;s:4:\"slug\";s:20:\"work_key_focus_areas\";s:7:\"section\";s:10:\"WHAT WE DO\";s:7:\"heading\";s:15:\"Key Focus Areas\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 07:25:49\";s:10:\"updated_at\";s:19:\"2026-06-23 07:25:49\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:84;s:4:\"slug\";s:20:\"work_key_focus_areas\";s:7:\"section\";s:10:\"WHAT WE DO\";s:7:\"heading\";s:15:\"Key Focus Areas\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-23 07:25:49\";s:10:\"updated_at\";s:19:\"2026-06-23 07:25:49\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730042),
('content_block_work-with-us', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:98;s:4:\"slug\";s:12:\"work-with-us\";s:7:\"section\";s:12:\"WORK WITH US\";s:7:\"heading\";s:37:\"Have a Project in One of These Areas?\";s:11:\"sub_heading\";s:12:\"Get in Touch\";s:11:\"description\";s:149:\"<p>We welcome collaboration with governments, donors, civil society, and research institutions. Get in touch to explore how we can work together.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-24 04:17:09\";s:10:\"updated_at\";s:19:\"2026-06-24 04:17:09\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:98;s:4:\"slug\";s:12:\"work-with-us\";s:7:\"section\";s:12:\"WORK WITH US\";s:7:\"heading\";s:37:\"Have a Project in One of These Areas?\";s:11:\"sub_heading\";s:12:\"Get in Touch\";s:11:\"description\";s:149:\"<p>We welcome collaboration with governments, donors, civil society, and research institutions. Get in touch to explore how we can work together.</p>\";s:11:\"design_word\";N;s:4:\"type\";s:3:\"CTA\";s:10:\"created_at\";s:19:\"2026-06-24 04:17:09\";s:10:\"updated_at\";s:19:\"2026-06-24 04:17:09\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730042),
('content_block_workdetails-experts', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:110;s:4:\"slug\";s:19:\"workdetails_experts\";s:7:\"section\";s:10:\"Our People\";s:7:\"heading\";s:20:\"Experts in This Area\";s:11:\"sub_heading\";s:11:\"All Experts\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-25 07:09:47\";s:10:\"updated_at\";s:19:\"2026-06-25 07:09:47\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:110;s:4:\"slug\";s:19:\"workdetails_experts\";s:7:\"section\";s:10:\"Our People\";s:7:\"heading\";s:20:\"Experts in This Area\";s:11:\"sub_heading\";s:11:\"All Experts\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-25 07:09:47\";s:10:\"updated_at\";s:19:\"2026-06-25 07:09:47\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730047),
('content_block_workdetails-overview', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:106;s:4:\"slug\";s:20:\"workdetails_overview\";s:7:\"section\";s:8:\"Overview\";s:7:\"heading\";s:8:\"Overview\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:5:\"Label\";s:10:\"created_at\";s:19:\"2026-06-25 07:02:08\";s:10:\"updated_at\";s:19:\"2026-06-25 07:02:08\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:106;s:4:\"slug\";s:20:\"workdetails_overview\";s:7:\"section\";s:8:\"Overview\";s:7:\"heading\";s:8:\"Overview\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:5:\"Label\";s:10:\"created_at\";s:19:\"2026-06-25 07:02:08\";s:10:\"updated_at\";s:19:\"2026-06-25 07:02:08\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730047),
('content_block_workdetails-related-projects', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:109;s:4:\"slug\";s:28:\"workdetails_related_projects\";s:7:\"section\";s:16:\"Related Projects\";s:7:\"heading\";s:22:\"Work We Have Delivered\";s:11:\"sub_heading\";s:12:\"All Projects\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-25 07:07:47\";s:10:\"updated_at\";s:19:\"2026-06-25 07:07:47\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:109;s:4:\"slug\";s:28:\"workdetails_related_projects\";s:7:\"section\";s:16:\"Related Projects\";s:7:\"heading\";s:22:\"Work We Have Delivered\";s:11:\"sub_heading\";s:12:\"All Projects\";s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:14:\"Section Header\";s:10:\"created_at\";s:19:\"2026-06-25 07:07:47\";s:10:\"updated_at\";s:19:\"2026-06-25 07:07:47\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730047),
('content_block_workdetails-services-include', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:107;s:4:\"slug\";s:28:\"workdetails_services_include\";s:7:\"section\";s:20:\"Our Services Include\";s:7:\"heading\";s:20:\"Our Services Include\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:5:\"Label\";s:10:\"created_at\";s:19:\"2026-06-25 07:03:27\";s:10:\"updated_at\";s:19:\"2026-06-25 07:03:27\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:107;s:4:\"slug\";s:28:\"workdetails_services_include\";s:7:\"section\";s:20:\"Our Services Include\";s:7:\"heading\";s:20:\"Our Services Include\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:5:\"Label\";s:10:\"created_at\";s:19:\"2026-06-25 07:03:27\";s:10:\"updated_at\";s:19:\"2026-06-25 07:03:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730047),
('content_block_workdetails-solutions', 'O:18:\"App\\Models\\Content\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contents\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:108;s:4:\"slug\";s:21:\"workdetails_solutions\";s:7:\"section\";s:20:\"Products & Solutions\";s:7:\"heading\";s:20:\"Products & Solutions\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:5:\"Label\";s:10:\"created_at\";s:19:\"2026-06-25 07:05:43\";s:10:\"updated_at\";s:19:\"2026-06-25 07:05:43\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:108;s:4:\"slug\";s:21:\"workdetails_solutions\";s:7:\"section\";s:20:\"Products & Solutions\";s:7:\"heading\";s:20:\"Products & Solutions\";s:11:\"sub_heading\";N;s:11:\"description\";N;s:11:\"design_word\";N;s:4:\"type\";s:5:\"Label\";s:10:\"created_at\";s:19:\"2026-06-25 07:05:43\";s:10:\"updated_at\";s:19:\"2026-06-25 07:05:43\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:4:\"slug\";i:1;s:7:\"section\";i:2;s:7:\"heading\";i:3;s:11:\"sub_heading\";i:4;s:11:\"description\";i:5;s:11:\"design_word\";i:6;s:4:\"type\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782730047),
('nav_insight_types', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:0;O:22:\"App\\Models\\InsightType\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"insight_types\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"type\";s:21:\"Issue Briefs/Articles\";s:13:\"type_category\";s:8:\"Download\";s:6:\"status\";i:1;s:13:\"show_featured\";i:1;s:10:\"created_at\";s:19:\"2026-04-23 03:41:14\";s:10:\"updated_at\";s:19:\"2026-06-29 03:32:51\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"type\";s:21:\"Issue Briefs/Articles\";s:13:\"type_category\";s:8:\"Download\";s:6:\"status\";i:1;s:13:\"show_featured\";i:1;s:10:\"created_at\";s:19:\"2026-04-23 03:41:14\";s:10:\"updated_at\";s:19:\"2026-06-29 03:32:51\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:13:\"show_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"type\";i:1;s:13:\"type_category\";i:2;s:6:\"status\";i:3;s:13:\"show_featured\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:22:\"App\\Models\\InsightType\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"insight_types\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:4:\"type\";s:15:\"Videos/Podcasts\";s:13:\"type_category\";s:5:\"Watch\";s:6:\"status\";i:1;s:13:\"show_featured\";i:0;s:10:\"created_at\";s:19:\"2026-04-27 15:42:42\";s:10:\"updated_at\";s:19:\"2026-06-24 03:33:14\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:4:\"type\";s:15:\"Videos/Podcasts\";s:13:\"type_category\";s:5:\"Watch\";s:6:\"status\";i:1;s:13:\"show_featured\";i:0;s:10:\"created_at\";s:19:\"2026-04-27 15:42:42\";s:10:\"updated_at\";s:19:\"2026-06-24 03:33:14\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:13:\"show_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"type\";i:1;s:13:\"type_category\";i:2;s:6:\"status\";i:3;s:13:\"show_featured\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:22:\"App\\Models\\InsightType\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"insight_types\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:4;s:4:\"type\";s:17:\"Expert Speak/Blog\";s:13:\"type_category\";s:4:\"Read\";s:6:\"status\";i:1;s:13:\"show_featured\";i:0;s:10:\"created_at\";s:19:\"2026-04-27 15:42:50\";s:10:\"updated_at\";s:19:\"2026-06-24 03:31:33\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:4;s:4:\"type\";s:17:\"Expert Speak/Blog\";s:13:\"type_category\";s:4:\"Read\";s:6:\"status\";i:1;s:13:\"show_featured\";i:0;s:10:\"created_at\";s:19:\"2026-04-27 15:42:50\";s:10:\"updated_at\";s:19:\"2026-06-24 03:31:33\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:13:\"show_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"type\";i:1;s:13:\"type_category\";i:2;s:6:\"status\";i:3;s:13:\"show_featured\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:22:\"App\\Models\\InsightType\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"insight_types\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:5;s:4:\"type\";s:22:\"Publications & Reports\";s:13:\"type_category\";s:8:\"Download\";s:6:\"status\";i:1;s:13:\"show_featured\";i:0;s:10:\"created_at\";s:19:\"2026-04-27 15:45:52\";s:10:\"updated_at\";s:19:\"2026-06-24 03:30:24\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:5;s:4:\"type\";s:22:\"Publications & Reports\";s:13:\"type_category\";s:8:\"Download\";s:6:\"status\";i:1;s:13:\"show_featured\";i:0;s:10:\"created_at\";s:19:\"2026-04-27 15:45:52\";s:10:\"updated_at\";s:19:\"2026-06-24 03:30:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:13:\"show_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"type\";i:1;s:13:\"type_category\";i:2;s:6:\"status\";i:3;s:13:\"show_featured\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:22:\"App\\Models\\InsightType\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"insight_types\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:6;s:4:\"type\";s:23:\"News & Commentary/Op-Ed\";s:13:\"type_category\";s:7:\"Read On\";s:6:\"status\";i:1;s:13:\"show_featured\";i:0;s:10:\"created_at\";s:19:\"2026-04-27 17:04:16\";s:10:\"updated_at\";s:19:\"2026-06-24 03:32:32\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:6;s:4:\"type\";s:23:\"News & Commentary/Op-Ed\";s:13:\"type_category\";s:7:\"Read On\";s:6:\"status\";i:1;s:13:\"show_featured\";i:0;s:10:\"created_at\";s:19:\"2026-04-27 17:04:16\";s:10:\"updated_at\";s:19:\"2026-06-24 03:32:32\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:13:\"show_featured\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"type\";i:1;s:13:\"type_category\";i:2;s:6:\"status\";i:3;s:13:\"show_featured\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1782732127);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('site_settings', 'O:18:\"App\\Models\\Setting\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:9:\"logo_text\";N;s:12:\"logo_tagline\";N;s:12:\"social_links\";s:165:\"[{\"title\":\"Facebook\",\"link\":\"\",\"media_key\":\"216edf82-1a70-4acf-aa7d-41d890d4b5e8\"},{\"title\":\"LinkedIn\",\"link\":\"\",\"media_key\":\"85ac2c92-0fdd-4bfc-843a-6104b894689b\"}]\";s:21:\"footer_contact_mobile\";N;s:20:\"footer_contact_email\";s:19:\"contact@giet.org.bd\";s:23:\"footer_contact_location\";s:17:\"Dhaka, Bangladesh\";s:18:\"footer_description\";s:197:\"Foundation for Governance Innovation & Economic Transformation.A non-partisan, non-profit think tank advancing evidence-based governance reform and economic transformation in Bangladesh and beyond.\";s:16:\"show_about_story\";i:1;s:10:\"created_at\";s:19:\"2026-04-21 09:22:47\";s:10:\"updated_at\";s:19:\"2026-06-29 02:50:04\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:9:\"logo_text\";N;s:12:\"logo_tagline\";N;s:12:\"social_links\";s:165:\"[{\"title\":\"Facebook\",\"link\":\"\",\"media_key\":\"216edf82-1a70-4acf-aa7d-41d890d4b5e8\"},{\"title\":\"LinkedIn\",\"link\":\"\",\"media_key\":\"85ac2c92-0fdd-4bfc-843a-6104b894689b\"}]\";s:21:\"footer_contact_mobile\";N;s:20:\"footer_contact_email\";s:19:\"contact@giet.org.bd\";s:23:\"footer_contact_location\";s:17:\"Dhaka, Bangladesh\";s:18:\"footer_description\";s:197:\"Foundation for Governance Innovation & Economic Transformation.A non-partisan, non-profit think tank advancing evidence-based governance reform and economic transformation in Bangladesh and beyond.\";s:16:\"show_about_story\";i:1;s:10:\"created_at\";s:19:\"2026-04-21 09:22:47\";s:10:\"updated_at\";s:19:\"2026-06-29 02:50:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:12:\"social_links\";s:5:\"array\";s:16:\"show_about_story\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:5:\"media\";O:71:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Collections\\MediaCollection\":4:{s:8:\"\0*\0items\";a:13:{i:0;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:219;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"108d5078-a084-466f-8bed-b72cc057e3fe\";s:15:\"collection_name\";s:10:\"logo_image\";s:4:\"name\";s:8:\"Frame 26\";s:9:\"file_name\";s:12:\"Frame-26.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:4012;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:3;s:10:\"created_at\";s:19:\"2026-06-22 09:53:47\";s:10:\"updated_at\";s:19:\"2026-06-22 09:53:47\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:219;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"108d5078-a084-466f-8bed-b72cc057e3fe\";s:15:\"collection_name\";s:10:\"logo_image\";s:4:\"name\";s:8:\"Frame 26\";s:9:\"file_name\";s:12:\"Frame-26.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:4012;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:3;s:10:\"created_at\";s:19:\"2026-06-22 09:53:47\";s:10:\"updated_at\";s:19:\"2026-06-22 09:53:47\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:1;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:252;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"f38ed344-e3b0-4328-8f70-6ee97adce32a\";s:15:\"collection_name\";s:11:\"footer_icon\";s:4:\"name\";s:14:\"Container (12)\";s:9:\"file_name\";s:18:\"Container-(12).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:1282;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:5;s:10:\"created_at\";s:19:\"2026-06-24 10:27:29\";s:10:\"updated_at\";s:19:\"2026-06-24 10:27:29\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:252;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"f38ed344-e3b0-4328-8f70-6ee97adce32a\";s:15:\"collection_name\";s:11:\"footer_icon\";s:4:\"name\";s:14:\"Container (12)\";s:9:\"file_name\";s:18:\"Container-(12).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:1282;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:5;s:10:\"created_at\";s:19:\"2026-06-24 10:27:29\";s:10:\"updated_at\";s:19:\"2026-06-24 10:27:29\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:2;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:254;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"069c5296-5d66-4dc9-acff-7a6d262bf4c9\";s:15:\"collection_name\";s:7:\"favicon\";s:4:\"name\";s:8:\"Frame 26\";s:9:\"file_name\";s:12:\"Frame-26.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:4012;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:6;s:10:\"created_at\";s:19:\"2026-06-24 10:29:43\";s:10:\"updated_at\";s:19:\"2026-06-24 10:29:43\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:254;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"069c5296-5d66-4dc9-acff-7a6d262bf4c9\";s:15:\"collection_name\";s:7:\"favicon\";s:4:\"name\";s:8:\"Frame 26\";s:9:\"file_name\";s:12:\"Frame-26.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:4012;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:6;s:10:\"created_at\";s:19:\"2026-06-24 10:29:43\";s:10:\"updated_at\";s:19:\"2026-06-24 10:29:43\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:3;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:266;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"9385eef5-293a-497b-9f4c-e78a5999dd8c\";s:15:\"collection_name\";s:19:\"project_client_icon\";s:4:\"name\";s:8:\"SVG (50)\";s:9:\"file_name\";s:12:\"SVG-(50).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:513;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:7;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:266;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"9385eef5-293a-497b-9f4c-e78a5999dd8c\";s:15:\"collection_name\";s:19:\"project_client_icon\";s:4:\"name\";s:8:\"SVG (50)\";s:9:\"file_name\";s:12:\"SVG-(50).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:513;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:7;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:4;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:267;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"08b09bcd-c207-45f6-b1d3-43015f195fa2\";s:15:\"collection_name\";s:21:\"project_duration_icon\";s:4:\"name\";s:8:\"SVG (51)\";s:9:\"file_name\";s:12:\"SVG-(51).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:381;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:8;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:267;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"08b09bcd-c207-45f6-b1d3-43015f195fa2\";s:15:\"collection_name\";s:21:\"project_duration_icon\";s:4:\"name\";s:8:\"SVG (51)\";s:9:\"file_name\";s:12:\"SVG-(51).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:381;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:8;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:5;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:268;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"26a1c75a-1756-43fa-abe9-d05863eb1926\";s:15:\"collection_name\";s:21:\"project_location_icon\";s:4:\"name\";s:8:\"SVG (52)\";s:9:\"file_name\";s:12:\"SVG-(52).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:647;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:9;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:268;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"26a1c75a-1756-43fa-abe9-d05863eb1926\";s:15:\"collection_name\";s:21:\"project_location_icon\";s:4:\"name\";s:8:\"SVG (52)\";s:9:\"file_name\";s:12:\"SVG-(52).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:647;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:9;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:6;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:269;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"ab4281d3-dab4-454b-b68f-e6e9f83849aa\";s:15:\"collection_name\";s:19:\"project_sector_icon\";s:4:\"name\";s:8:\"SVG (53)\";s:9:\"file_name\";s:12:\"SVG-(53).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:507;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:10;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:269;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"ab4281d3-dab4-454b-b68f-e6e9f83849aa\";s:15:\"collection_name\";s:19:\"project_sector_icon\";s:4:\"name\";s:8:\"SVG (53)\";s:9:\"file_name\";s:12:\"SVG-(53).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:507;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:10;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:7;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:270;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"3358eb1f-70ae-4d6c-82e2-39ab011f0664\";s:15:\"collection_name\";s:19:\"project_status_icon\";s:4:\"name\";s:8:\"SVG (54)\";s:9:\"file_name\";s:12:\"SVG-(54).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:414;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:11;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:270;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"3358eb1f-70ae-4d6c-82e2-39ab011f0664\";s:15:\"collection_name\";s:19:\"project_status_icon\";s:4:\"name\";s:8:\"SVG (54)\";s:9:\"file_name\";s:12:\"SVG-(54).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:414;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:11;s:10:\"created_at\";s:19:\"2026-06-25 08:38:10\";s:10:\"updated_at\";s:19:\"2026-06-25 08:38:10\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:8;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:287;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"caf523b8-af40-4065-8cf8-4c504d8784e7\";s:15:\"collection_name\";s:15:\"event_date_icon\";s:4:\"name\";s:8:\"SVG (29)\";s:9:\"file_name\";s:12:\"SVG-(29).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:457;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:12;s:10:\"created_at\";s:19:\"2026-06-28 11:04:56\";s:10:\"updated_at\";s:19:\"2026-06-28 11:04:56\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:287;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"caf523b8-af40-4065-8cf8-4c504d8784e7\";s:15:\"collection_name\";s:15:\"event_date_icon\";s:4:\"name\";s:8:\"SVG (29)\";s:9:\"file_name\";s:12:\"SVG-(29).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:457;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:12;s:10:\"created_at\";s:19:\"2026-06-28 11:04:56\";s:10:\"updated_at\";s:19:\"2026-06-28 11:04:56\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:9;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:288;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"9a766c47-2258-4631-8c01-f3d42771b064\";s:15:\"collection_name\";s:16:\"event_venue_icon\";s:4:\"name\";s:8:\"SVG (60)\";s:9:\"file_name\";s:12:\"SVG-(60).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:843;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:13;s:10:\"created_at\";s:19:\"2026-06-28 11:04:56\";s:10:\"updated_at\";s:19:\"2026-06-28 11:04:56\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:288;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"9a766c47-2258-4631-8c01-f3d42771b064\";s:15:\"collection_name\";s:16:\"event_venue_icon\";s:4:\"name\";s:8:\"SVG (60)\";s:9:\"file_name\";s:12:\"SVG-(60).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:843;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:13;s:10:\"created_at\";s:19:\"2026-06-28 11:04:56\";s:10:\"updated_at\";s:19:\"2026-06-28 11:04:56\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:10;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:289;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"c5d292e9-c93c-493e-8549-ca5d7c6a6de6\";s:15:\"collection_name\";s:23:\"event_registration_icon\";s:4:\"name\";s:8:\"SVG (54)\";s:9:\"file_name\";s:12:\"SVG-(54).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:414;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:14;s:10:\"created_at\";s:19:\"2026-06-28 11:04:56\";s:10:\"updated_at\";s:19:\"2026-06-28 11:04:56\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:289;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"c5d292e9-c93c-493e-8549-ca5d7c6a6de6\";s:15:\"collection_name\";s:23:\"event_registration_icon\";s:4:\"name\";s:8:\"SVG (54)\";s:9:\"file_name\";s:12:\"SVG-(54).png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:414;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:14;s:10:\"created_at\";s:19:\"2026-06-28 11:04:56\";s:10:\"updated_at\";s:19:\"2026-06-28 11:04:56\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:11;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:290;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"30162020-f6cb-40d9-a5be-36ef7803d325\";s:15:\"collection_name\";s:48:\"social_icon_216edf82-1a70-4acf-aa7d-41d890d4b5e8\";s:4:\"name\";s:19:\"facebook-app-symbol\";s:9:\"file_name\";s:23:\"facebook-app-symbol.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:346;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:15;s:10:\"created_at\";s:19:\"2026-06-29 02:50:04\";s:10:\"updated_at\";s:19:\"2026-06-29 02:50:04\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:290;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"30162020-f6cb-40d9-a5be-36ef7803d325\";s:15:\"collection_name\";s:48:\"social_icon_216edf82-1a70-4acf-aa7d-41d890d4b5e8\";s:4:\"name\";s:19:\"facebook-app-symbol\";s:9:\"file_name\";s:23:\"facebook-app-symbol.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:346;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:15;s:10:\"created_at\";s:19:\"2026-06-29 02:50:04\";s:10:\"updated_at\";s:19:\"2026-06-29 02:50:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}i:12;O:49:\"Spatie\\MediaLibrary\\MediaCollections\\Models\\Media\":34:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"media\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:291;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"efdbae10-1d3d-4450-aebb-42e1985946b2\";s:15:\"collection_name\";s:48:\"social_icon_85ac2c92-0fdd-4bfc-843a-6104b894689b\";s:4:\"name\";s:8:\"linkedin\";s:9:\"file_name\";s:12:\"linkedin.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:356;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:16;s:10:\"created_at\";s:19:\"2026-06-29 02:50:04\";s:10:\"updated_at\";s:19:\"2026-06-29 02:50:04\";}s:11:\"\0*\0original\";a:18:{s:2:\"id\";i:291;s:10:\"model_type\";s:18:\"App\\Models\\Setting\";s:8:\"model_id\";i:1;s:4:\"uuid\";s:36:\"efdbae10-1d3d-4450-aebb-42e1985946b2\";s:15:\"collection_name\";s:48:\"social_icon_85ac2c92-0fdd-4bfc-843a-6104b894689b\";s:4:\"name\";s:8:\"linkedin\";s:9:\"file_name\";s:12:\"linkedin.png\";s:9:\"mime_type\";s:9:\"image/png\";s:4:\"disk\";s:6:\"public\";s:16:\"conversions_disk\";s:6:\"public\";s:4:\"size\";i:356;s:13:\"manipulations\";s:2:\"[]\";s:17:\"custom_properties\";s:2:\"[]\";s:21:\"generated_conversions\";s:2:\"[]\";s:17:\"responsive_images\";s:2:\"[]\";s:12:\"order_column\";i:16;s:10:\"created_at\";s:19:\"2026-06-29 02:50:04\";s:10:\"updated_at\";s:19:\"2026-06-29 02:50:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:4:{s:13:\"manipulations\";s:5:\"array\";s:17:\"custom_properties\";s:5:\"array\";s:21:\"generated_conversions\";s:5:\"array\";s:17:\"responsive_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:2:{i:0;s:12:\"original_url\";i:1;s:11:\"preview_url\";}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:18:\"\0*\0streamChunkSize\";i:1048576;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:14:\"collectionName\";N;s:13:\"formFieldName\";N;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:9:\"logo_text\";i:1;s:12:\"logo_tagline\";i:2;s:12:\"social_links\";i:3;s:21:\"footer_contact_mobile\";i:4;s:20:\"footer_contact_email\";i:5;s:23:\"footer_contact_location\";i:6;s:18:\"footer_description\";i:7;s:16:\"show_about_story\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1782732127);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `type` enum('phone','email','address','career') COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_text` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `map_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `type`, `icon_class`, `title`, `primary_text`, `secondary_text`, `name`, `address`, `map_location`, `office_hours`, `link_value`, `order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'address', NULL, 'Office Address', 'GIET Foundation', 'Office details provided upon confirmed engagement', 'GIET Foundation', 'Dhaka, Bangladesh', NULL, NULL, NULL, 1, 1, '2026-04-21 22:56:45', '2026-06-23 23:02:22'),
(3, 'phone', NULL, 'Phone', '+880 (0) 123 1231 23', 'Office hours: Sunday–Thursday · 9:00 AM – 5:00 PM BST', NULL, NULL, NULL, NULL, 'tel:880 (0) 123 1231 23', 1, 1, '2026-04-22 00:18:17', '2026-06-23 23:06:55'),
(4, 'email', NULL, 'Email', 'contact@giet.org.bd', 'General enquiries · We reply within 2 business days', NULL, NULL, NULL, NULL, 'contact@giet.org.bd', 1, 1, '2026-04-22 00:19:41', '2026-06-23 23:05:08'),
(6, 'career', NULL, 'For Researchers & Fellows', 'careers@giet.org.bd', NULL, 'Career & Fellowship Enquiries', NULL, NULL, NULL, 'mailto:careers@giet.org.bd', 1, 1, '2026-06-24 22:54:44', '2026-06-24 22:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `first_name`, `last_name`, `email`, `mobile_number`, `organization`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(6, 'Md. Ragib', 'Shahriar', 'ragibshahriar58@gmail.com', '+8801774896515', 'Orbd', 'Governance Frameworks & Public Sector Management', 'Test', '2026-06-23 23:10:10', '2026-06-23 23:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `design_word` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `slug`, `section`, `heading`, `sub_heading`, `description`, `design_word`, `type`, `created_at`, `updated_at`) VALUES
(14, 'team page', 'The People Behind the Work', 'Our Experts', NULL, NULL, NULL, 'Hero', '2026-04-21 08:49:18', '2026-06-24 22:37:36'),
(31, 'about_us_section_3', 'OUR COMMITMENT', 'OUR COMMITMENTttttttt', 'We are committed to', '<ul><li>Integrity and transparency in every engagement</li><li>Delivering measurable outcomes, not just recommendations</li><li>Building local capacity and ownership</li><li>Promoting innovation and sustainability in every project</li></ul>', 'At Trace Consulting, we do not just advise, we collaborate to create lasting change.', 'Section', '2026-04-22 06:33:01', '2026-04-29 06:07:06'),
(40, 'about_us_header', 'ABOUT US', 'About GIET', NULL, '<p>A non-partisan, non-profit think tank dedicated to advancing transparent governance, institutional reform, and economic transformation across Bangladesh.</p>', NULL, 'Hero Section', '2026-04-23 01:26:05', '2026-06-23 00:06:45'),
(43, 'home_about_trace_one', 'HOME ABOUT ITEM', 'Multi-Sector Expertise & Global Reach', NULL, '<p>Deep knowledge across industries, backed by an objective perspective and access to global networks.</p>', NULL, 'List Item', '2026-04-23 02:01:48', '2026-04-29 09:40:42'),
(44, 'home_about_trace_two', 'HOME ABOUT ITEM', 'Proven Methodologies, Policy to Practice', NULL, '<p>Rigorous, scalable approaches that translate evidence into implementable reforms.</p>', NULL, 'List Item', '2026-04-23 02:01:56', '2026-04-23 02:01:56'),
(45, 'home_about_trace_three', 'HOME ABOUT ITEM', 'Change Management & Creative Innovation', NULL, '<p>Combining structured change management with innovative, context-driven solutions.</p>', NULL, 'List Item', '2026-04-23 02:02:02', '2026-04-23 02:02:02'),
(47, 'Service Hero', 'Hero', 'Areas of work', NULL, NULL, NULL, NULL, '2026-04-26 04:45:48', '2026-06-23 01:08:05'),
(53, 'insights-page', 'KNOWLEDGE & RESEARCH', 'Ideas thattttttt', NULL, '<p>Op-eds in national newspapers, in-house research, policy publications, and expert videos - TRACE\'s full body of published work.</p>', 'move trade forward.', 'Hero', '2026-04-27 09:36:08', '2026-04-29 06:04:02'),
(54, 'services-page', 'WHAT WE DO', 'Areas of work', NULL, NULL, NULL, 'Hero', '2026-04-27 10:08:30', '2026-06-23 01:09:41'),
(57, 'career-heading', 'CAREER AT', 'Career at Trace Consultancy', 'View Open Positions', '<p>TRACE is a growing team of trade specialists, researchers, technologists, and project managers working on some of the most consequential reform programmes in South Asia. We\'re looking for people who want their work to matter.</p>', 'Trace Consultancy', 'Hero', '2026-04-28 04:40:33', '2026-04-28 04:44:58'),
(59, 'home_about_trace', 'ABOUT GIET', 'Transforming Challenges Into Strategic Opportunities', 'Learn About Us', '<p>GIET is a non-political, non-profit organization focused on governance reform, economic transformation, and evidence-based policy advocacy in Bangladesh.</p>', NULL, 'About Section', '2026-06-22 23:15:15', '2026-06-22 23:17:36'),
(60, 'home_focus_areas', 'Our Focus Areas', 'Where We Direct Our Work', 'See All', NULL, 'See All Focus Areas', 'Section Header', '2026-06-22 23:21:50', '2026-06-22 23:21:50'),
(61, 'home_mission', 'Our Mission', 'Evidence-based reform is not optional — it is the only path to governance that truly serves citizens.', 'Dr. Rafiqul Islam, Founding Director, GIET', '<p>GIET is a non-political, non-profit organization dedicated to promoting transparent, accountable governance and sustainable economic transformation in Bangladesh. We perform in-depth research, encourage multi-stakeholder dialogue, and convert evidence into practical policy recommendations.</p>', 'Transparent Governance|Economic Competitiveness|Institutional Reform|Digital Transformation|Social Inclusion|Evidence-Based Policy', 'Mission Section', '2026-06-22 23:24:06', '2026-06-22 23:24:06'),
(62, 'home_projects', 'Our Projects', 'Work That Creates Impact', 'View All Projects', '<p>GIET delivers governance reform, policy advisory, digital transformation, and research projects across Bangladesh for governments, development institutions, and regulatory bodies.</p>', NULL, 'Section Header', '2026-06-22 23:28:37', '2026-06-22 23:28:37'),
(63, 'home_partners', NULL, 'Our Partners', NULL, NULL, NULL, 'Partners Section', '2026-06-22 23:29:46', '2026-06-22 23:29:46'),
(64, 'about_us_who_we_are', 'WHO WE ARE', 'Transforming Challenges into Strategic Opportunities', 'Our Experts', '<p>Morbi vestibulum tempor mauris tempor consequat. Etiam vitae pulvinar &nbsp;leo. Vivamus varius tortor sed erat venenatis pretium. Sed sollicitudin &nbsp;posuere leo, at tristique elit tempor non. Mauris porttitor, lectus ut &nbsp;sollicitudin pulvinar, ex est rhoncus metus,</p><p>Ut auctor lectus est ac &nbsp;mauris. Aliquam vitae ligula quis metus faucibus convallis id eget enim. Nulla pharetra risus at turpis convallis mollis. Mauris semper molestie velit,</p>', NULL, 'Detail Item', '2026-06-23 00:12:37', '2026-06-24 23:47:59'),
(65, 'about_us_our_mission', 'Our Institution', 'Mission, Vision & Goals', NULL, NULL, NULL, 'Section Header', '2026-06-23 00:15:40', '2026-06-23 00:15:40'),
(66, 'about_us_mission', 'Mission', NULL, NULL, '<p>To advance transparent, accountable governance and sustainable economic transformation through rigorous research, policy advocacy, and implementation support.</p>', NULL, 'MVG Card', '2026-06-23 00:17:57', '2026-06-23 00:17:57'),
(67, 'about_us_vision', 'Vision', NULL, NULL, '<p>A Bangladesh where institutions are transparent, economies are competitive, and citizens are empowered through evidence-based policy and good governance.</p>', NULL, 'MVG Card', '2026-06-23 00:18:56', '2026-06-23 00:18:56'),
(68, 'about_us_goals', 'Goals', NULL, NULL, '<p>To produce actionable research, influence policy, build institutional capacity, and foster partnerships that drive lasting governance and economic reform in Bangladesh.</p>', NULL, 'MVG Card', '2026-06-23 00:19:24', '2026-06-23 00:19:24'),
(69, 'about_story_1', '2021', 'Foundation Established', NULL, '<p>GIET was incorporated in Dhaka as a non-profit, non-governmental organization by founding members drawn from government, academia, and the development sector.</p>', NULL, 'Story Item', '2026-06-23 00:24:07', '2026-06-23 00:24:07'),
(70, 'about_story_2', '2022', 'First Research Programme Launched', NULL, '<p>GIET published its inaugural set of policy briefs on trade facilitation and regulatory modernization, establishing its credentials as an evidence-based research institution. The organization convened its first national policy dialogue in Dhaka with 80+ participants from government and civil society.</p>', NULL, 'Story Item', '2026-06-23 00:27:15', '2026-06-23 00:27:15'),
(71, 'about_trace', 'OUR STORY', 'Built on a Belief that Better Governance is Possible', NULL, '<p>GIET was established by a group of policy practitioners, academics, and development professionals who witnessed firsthand the gap between policy design and real-world implementation in Bangladesh.</p>', NULL, 'About Section', '2026-06-23 00:31:01', '2026-06-23 00:31:01'),
(72, 'about_story_3', '2023', 'Expanded to 15 Focus Areas', NULL, '<p>The organization\'s mandate was broadened to encompass 15 thematic areas spanning governance, economic transformation, digital development, social inclusion, and climate sustainability — reflecting the complexity of Bangladesh\'s reform agenda.&nbsp;</p>', NULL, 'Story Item', '2026-06-23 00:33:00', '2026-06-23 00:33:00'),
(73, 'about_story_4', '2024', 'International Partnership Network', NULL, '<p>GIET formalized partnerships with international development organizations, bilateral agencies, and academic institutions — enabling joint research, technical advisory, and capacity-building programmes across South Asia. &nbsp; &nbsp;</p>', NULL, 'Story Item', '2026-06-23 00:34:24', '2026-06-23 00:34:24'),
(74, 'about_us_we_make_trace_different', 'Our Approach', 'What Sets GIET Apart', NULL, NULL, NULL, 'Section Header', '2026-06-23 00:38:30', '2026-06-23 00:38:30'),
(75, 'about_us_insight', 'Approach Card', 'Evidence-Based Research', NULL, '<p>We integrate rigorous field research with institutional knowledge to produce policy recommendations grounded in real-world evidence and measurable data.</p>', NULL, 'Approach Card', '2026-06-23 00:41:08', '2026-06-23 00:41:08'),
(76, 'about_us_strategy', 'Approach Card', 'Multi-Stakeholder Dialogue', NULL, '<p>We convene governments, civil society, development partners, and the private sector to build consensus and co-design solutions that reflect diverse perspectives.</p>', NULL, 'Approach Card', '2026-06-23 00:43:03', '2026-06-23 00:43:03'),
(77, 'about_us_impact', 'Approach Card', 'Integrated Implementation Support', NULL, '<p>We go beyond advisory — providing on-the-ground implementation support, monitoring, and adaptive management to ensure reforms deliver tangible results.</p>', NULL, 'Approach Card', '2026-06-23 00:44:38', '2026-06-23 00:44:38'),
(78, 'about_us_how_we_work', 'Our Values', 'The Principles That Guide Our Work', NULL, NULL, NULL, 'Section Header', '2026-06-23 00:47:23', '2026-06-23 00:47:23'),
(79, 'about_us_industry_wide_network', 'Value', 'Integrity', NULL, '<p>We uphold the highest standards of professional and intellectual honesty. Our research processes, partnerships, and governance practices reflect a commitment to transparency and accountability.</p>', NULL, 'Values Card', '2026-06-23 00:49:36', '2026-06-23 00:49:36'),
(80, 'about_us_sustainable_approach', 'Value', 'Independence', NULL, '<p>Our analysis is free from political influence, donor pressure, or institutional bias. We are structured to protect the independence of our research conclusions at all times.</p>', NULL, 'Values Card', '2026-06-23 00:51:28', '2026-06-23 00:51:28'),
(81, 'about_us_tailored_innovation', 'Value', 'Inclusion', NULL, '<p>We believe that sustainable reform must include the voices of women, youth, persons with disabilities, and marginalized communities.</p>', NULL, 'Values Card', '2026-06-23 00:53:21', '2026-06-23 00:53:21'),
(82, 'about_us_end_to_end_integrated_solutions', 'Value', 'Impact', NULL, '<p>We define success not by publications produced or events held, but by measurable changes in policy, institutional practice, and the lives of citizens we ultimately serve.</p>', NULL, 'Values Card', '2026-06-23 00:55:02', '2026-06-23 00:55:02'),
(83, 'about_us_partners', 'PARTNERS', 'Our Partners', NULL, NULL, NULL, 'Partners Section', '2026-06-23 00:56:37', '2026-06-23 00:56:37'),
(84, 'work_key_focus_areas', 'WHAT WE DO', 'Key Focus Areas', NULL, NULL, NULL, 'Section Header', '2026-06-23 01:25:49', '2026-06-23 01:25:49'),
(85, 'projects-page', 'OUR PROJECTS', 'Our Projects', NULL, NULL, NULL, 'Hero', '2026-06-23 03:08:38', '2026-06-23 03:08:38'),
(86, 'projects_portfolio', 'Project Portfolio', 'Work That Creates Impact', NULL, NULL, NULL, 'Section Header', '2026-06-23 03:09:20', '2026-06-23 03:09:20'),
(87, 'projects_impact', 'Our Impact', 'Measurable Outcomes Across Our Portfolio', NULL, NULL, NULL, 'Section Header', '2026-06-23 03:10:20', '2026-06-23 03:10:20'),
(88, 'projects_stat_1', 'Projects Delivered', '24+', NULL, NULL, NULL, 'Stat Card', '2026-06-23 03:11:30', '2026-06-23 03:11:30'),
(89, 'projects_stat_2', 'Officials Trained', '6K+', NULL, NULL, NULL, 'Stat Card', '2026-06-23 03:12:08', '2026-06-23 03:12:08'),
(90, 'projects_stat_3', 'Policy Recommendations Adopted', '38', NULL, NULL, NULL, 'Stat Card', '2026-06-23 03:12:32', '2026-06-23 03:12:32'),
(91, 'projects_stat_4', 'Partner Organizations', '12+', NULL, NULL, NULL, 'Stat Card', '2026-06-23 03:13:07', '2026-06-23 03:13:07'),
(92, 'projects_work_with_us', 'Collaborate', 'Ready to Commission a Project?', 'Get In Touch', '<p>GIET works with governments, international development organisations, NGOs, and private sector partners. We welcome project proposals and co-design partnerships.</p>', 'About GIET', 'CTA', '2026-06-23 03:14:24', '2026-06-23 03:14:24'),
(93, 'projectdetails_sidebar', 'Work With Us', NULL, 'Commission a Similar Project', '<p>Get in touch and our team will walk you through our solutions.</p>', NULL, 'Sidebar Widget', '2026-06-23 05:08:54', '2026-06-23 05:08:54'),
(94, 'projectdetails_team', 'Project Team', 'Team Members', 'All Experts', NULL, NULL, 'Section Header', '2026-06-23 05:10:40', '2026-06-23 05:10:40'),
(95, 'projectdetails_actions', NULL, 'Commission a Similar Project', 'All Projects', NULL, NULL, 'CTA', '2026-06-23 05:11:44', '2026-06-23 05:11:44'),
(96, 'contact-page', 'Contact Us', 'Get In Touch', NULL, '<p>Whether you\'re interested in collaborating on a project, commissioning research, attending an event, or just learning more about GIET — we\'d love to hear from you.</p>', NULL, 'Hero', '2026-06-23 05:29:39', '2026-06-23 05:29:39'),
(97, 'contact-faq-section', 'FAQs', 'Frequently Asked Questions', NULL, '<p>Can\'t find the answer you\'re looking for? Send us a message using the form above. &nbsp;&nbsp;</p>', NULL, 'FAQ Section', '2026-06-23 05:30:49', '2026-06-23 05:33:35'),
(98, 'work-with-us', 'WORK WITH US', 'Have a Project in One of These Areas?', 'Get in Touch', '<p>We welcome collaboration with governments, donors, civil society, and research institutions. Get in touch to explore how we can work together.</p>', NULL, 'CTA', '2026-06-23 22:17:09', '2026-06-23 22:17:09'),
(99, 'events_page_header', 'EVENTS', 'Events & Forums', NULL, '<p>GIET convenes policymakers, development professionals, and civil society through roundtables, policy dialogues, training workshops, and public conferences.</p>', NULL, 'Hero', '2026-06-24 00:25:21', '2026-06-24 00:25:21'),
(100, 'events_upcoming', 'Upcoming Events', 'Open Events', NULL, NULL, NULL, 'Section Header', '2026-06-24 00:26:02', '2026-06-24 00:26:02'),
(101, 'events_past', 'Archive', 'Past Events', NULL, NULL, NULL, 'Section Header', '2026-06-24 00:31:38', '2026-06-24 00:31:38'),
(102, 'events_cta', 'Partner With Us', 'Interested in Co-hosting an Event?', 'Submit an Event Proposal', '<p>GIET welcomes co-hosting proposals from government agencies, development partners, universities, and civil society organizations. We manage logistics, speakers, and documentation.</p>', NULL, 'CTA', '2026-06-24 00:36:55', '2026-06-24 00:36:55'),
(103, 'team-experts', 'OUR EXPERTS', 'Advisors & Fellows', NULL, '<p>GIET\'s advisory panel brings together national and international experts, connecting us with leading think tanks, universities, and policy institutions.</p>', NULL, 'Section', '2026-06-24 21:55:04', '2026-06-24 21:55:04'),
(104, 'team-core', 'CORE TEAM', 'Policy & Research Team', NULL, NULL, NULL, 'Section', '2026-06-24 22:04:20', '2026-06-24 22:04:20'),
(105, 'team-leadership', 'LEADERSHIP', 'Leadership Team', NULL, '<p>GIET is led by a board of distinguished policy practitioners, economists, and institutional reform specialists committed to evidence-based governance transformation in Bangladesh.</p><p>&nbsp;</p>', NULL, 'Section', '2026-06-24 22:19:58', '2026-06-24 22:19:58'),
(106, 'workdetails_overview', 'Overview', 'Overview', NULL, NULL, NULL, 'Label', '2026-06-25 01:02:08', '2026-06-25 01:02:08'),
(107, 'workdetails_services_include', 'Our Services Include', 'Our Services Include', NULL, NULL, NULL, 'Label', '2026-06-25 01:03:27', '2026-06-25 01:03:27'),
(108, 'workdetails_solutions', 'Products & Solutions', 'Products & Solutions', NULL, NULL, NULL, 'Label', '2026-06-25 01:05:43', '2026-06-25 01:05:43'),
(109, 'workdetails_related_projects', 'Related Projects', 'Work We Have Delivered', 'All Projects', NULL, NULL, 'Section Header', '2026-06-25 01:07:47', '2026-06-25 01:07:47'),
(110, 'workdetails_experts', 'Our People', 'Experts in This Area', 'All Experts', NULL, NULL, 'Section Header', '2026-06-25 01:09:47', '2026-06-25 01:09:47'),
(111, 'resources_hero', 'KNOWLEDGE & RESEARCH', 'Resources', NULL, '<p>Policy briefs, issue analyses, expert commentaries, research reports, videos, and podcasts from GIET\'s research team and contributing practitioners.</p>', NULL, 'Hero', '2026-06-27 23:08:56', '2026-06-27 23:08:56'),
(112, 'resources_research_cta', 'Research With Us', 'Interested in Submitting a Research Idea?', 'Submit a Research Idea', '<p>GIET welcomes research ideas from government agencies, development partners, universities, and civil society organizations. We provide funding, mentorship, and publication support.</p>', NULL, 'CTA', '2026-06-27 23:19:23', '2026-06-27 23:19:23'),
(113, 'expertdetails_related_experts', 'More Experts', 'GIET Team Members', 'See All', NULL, NULL, 'Section Header', '2026-06-28 22:59:53', '2026-06-28 23:08:13'),
(114, 'contact_form_section', 'Send us a message', 'How Can We Help?', 'We respect your privacy. Your information will not be shared with third parties.', 'Fill out the form below and a member of our team will get back to you within 2 business days. For event enquiries or media requests, please indicate this in your message.', NULL, 'contact_page', '2026-06-29 00:16:57', '2026-06-29 00:16:57'),
(115, 'contact-us-head', 'Our Contact Details', NULL, NULL, NULL, NULL, 'contact_page', '2026-06-29 00:16:57', '2026-06-29 00:16:57'),
(116, 'contact_map', 'Google Map', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.7765103442656!2d90.39958377519969!3d23.79155988775464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c70c6a51d8b3%3A0x6006e89798cc0d4f!2sBRAC%20Centre%20Inn!5e0!3m2!1sen!2sbd!4v1717696668744!5m2!1sen!2sbd', NULL, 'contact_page', '2026-06-29 00:17:19', '2026-06-29 00:17:19'),
(117, 'contact_follow_us', 'Follow Us', NULL, 'https://linkedin.com/company/giet-foundation', 'https://x.com/gietfoundation', NULL, 'contact_page', '2026-06-29 00:17:19', '2026-06-29 00:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `iso` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nicename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', '4', '93'),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', '8', '355'),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', '12', '213'),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', '16', '1684'),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', '20', '376'),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', '24', '244'),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', '660', '1264'),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, '0'),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', '28', '1268'),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', '32', '54'),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', '51', '374'),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', '533', '297'),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', '36', '61'),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', '40', '43'),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', '31', '994'),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', '44', '1242'),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', '48', '973'),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', '50', '880'),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', '52', '1246'),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', '112', '375'),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', '56', '32'),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', '84', '501'),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', '204', '229'),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', '60', '1441'),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', '64', '975'),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', '68', '591'),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', '70', '387'),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', '72', '267'),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, '0'),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', '76', '55'),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, '246'),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', '96', '673'),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', '100', '359'),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', '854', '226'),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', '108', '257'),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', '116', '855'),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', '120', '237'),
(38, 'CA', 'CANADA', 'Canada', 'CAN', '124', '1'),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', '132', '238'),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', '136', '1345'),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', '140', '236'),
(42, 'TD', 'CHAD', 'Chad', 'TCD', '148', '235'),
(43, 'CL', 'CHILE', 'Chile', 'CHL', '152', '56'),
(44, 'CN', 'CHINA', 'China', 'CHN', '156', '86'),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, '61'),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, '672'),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', '170', '57'),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', '174', '269'),
(49, 'CG', 'CONGO', 'Congo', 'COG', '178', '242'),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', '180', '242'),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', '184', '682'),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', '188', '506'),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', '384', '225'),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', '191', '385'),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', '192', '53'),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', '196', '357'),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', '203', '420'),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', '208', '45'),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', '262', '253'),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', '212', '1767'),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', '214', '1809'),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', '218', '593'),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', '818', '20'),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', '222', '503'),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', '226', '240'),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', '232', '291'),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', '233', '372'),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', '231', '251'),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', '238', '500'),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', '234', '298'),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', '242', '679'),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', '246', '358'),
(73, 'FR', 'FRANCE', 'France', 'FRA', '250', '33'),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', '254', '594'),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', '258', '689'),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, '0'),
(77, 'GA', 'GABON', 'Gabon', 'GAB', '266', '241'),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', '270', '220'),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', '268', '995'),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', '276', '49'),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', '288', '233'),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', '292', '350'),
(83, 'GR', 'GREECE', 'Greece', 'GRC', '300', '30'),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', '304', '299'),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', '308', '1473'),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', '312', '590'),
(87, 'GU', 'GUAM', 'Guam', 'GUM', '316', '1671'),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', '320', '502'),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', '324', '224'),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', '624', '245'),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', '328', '592'),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', '332', '509'),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, '0'),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', '336', '39'),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', '340', '504'),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', '344', '852'),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', '348', '36'),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', '352', '354'),
(99, 'IN', 'INDIA', 'India', 'IND', '356', '91'),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', '360', '62'),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', '364', '98'),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', '368', '964'),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', '372', '353'),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', '376', '972'),
(105, 'IT', 'ITALY', 'Italy', 'ITA', '380', '39'),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', '388', '1876'),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', '392', '81'),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', '400', '962'),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', '398', '7'),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', '404', '254'),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', '296', '686'),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850'),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', '410', '82'),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', '414', '965'),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', '417', '996'),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', '418', '856'),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', '428', '371'),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', '422', '961'),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', '426', '266'),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', '430', '231'),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', '434', '218'),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', '438', '423'),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', '440', '370'),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', '442', '352'),
(125, 'MO', 'MACAO', 'Macao', 'MAC', '446', '853'),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389'),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', '450', '261'),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', '454', '265'),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', '458', '60'),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', '462', '960'),
(131, 'ML', 'MALI', 'Mali', 'MLI', '466', '223'),
(132, 'MT', 'MALTA', 'Malta', 'MLT', '470', '356'),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', '584', '692'),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', '474', '596'),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', '478', '222'),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', '480', '230'),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, '269'),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', '484', '52'),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', '583', '691'),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', '498', '373'),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', '492', '377'),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', '496', '976'),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', '500', '1664'),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', '504', '212'),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', '508', '258'),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', '104', '95'),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', '516', '264'),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', '520', '674'),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', '524', '977'),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', '528', '31'),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', '530', '599'),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', '540', '687'),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', '554', '64'),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', '558', '505'),
(155, 'NE', 'NIGER', 'Niger', 'NER', '562', '227'),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', '566', '234'),
(157, 'NU', 'NIUE', 'Niue', 'NIU', '570', '683'),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', '574', '672'),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', '580', '1670'),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', '578', '47'),
(161, 'OM', 'OMAN', 'Oman', 'OMN', '512', '968'),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', '586', '92'),
(163, 'PW', 'PALAU', 'Palau', 'PLW', '585', '680'),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, '970'),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', '591', '507'),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', '598', '675'),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', '600', '595'),
(168, 'PE', 'PERU', 'Peru', 'PER', '604', '51'),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', '608', '63'),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', '612', '0'),
(171, 'PL', 'POLAND', 'Poland', 'POL', '616', '48'),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', '620', '351'),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', '630', '1787'),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', '634', '974'),
(175, 'RE', 'REUNION', 'Reunion', 'REU', '638', '262'),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', '642', '40'),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', '643', '70'),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', '646', '250'),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', '654', '290'),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', '659', '1869'),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', '662', '1758'),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', '666', '508'),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784'),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', '882', '684'),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', '674', '378'),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', '678', '239'),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', '682', '966'),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', '686', '221'),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, '381'),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', '690', '248'),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', '694', '232'),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', '702', '65'),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', '703', '421'),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', '705', '386'),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', '90', '677'),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', '706', '252'),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', '710', '27'),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0'),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', '724', '34'),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', '144', '94'),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', '736', '249'),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', '740', '597'),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', '744', '47'),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', '748', '268'),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', '752', '46'),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', '756', '41'),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', '760', '963'),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', '158', '886'),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', '762', '992'),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', '834', '191'),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', '764', '66'),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, '670'),
(213, 'TG', 'TOGO', 'Togo', 'TGO', '768', '228'),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', '772', '690'),
(215, 'TO', 'TONGA', 'Tonga', 'TON', '776', '676'),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', '780', '1868'),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', '788', '216'),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', '792', '90'),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', '795', '7370'),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', '796', '1649'),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', '798', '688'),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', '800', '256'),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', '804', '380'),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', '784', '971'),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', '826', '44'),
(226, 'US', 'UNITED STATES', 'United States', 'USA', '840', '1'),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, '1'),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', '858', '598'),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', '860', '998'),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', '548', '678'),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', '862', '58'),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', '704', '84'),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', '92', '1284'),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', '850', '1340'),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', '876', '681'),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', '732', '212'),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', '887', '967'),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', '894', '260'),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', '716', '263');

-- --------------------------------------------------------

--
-- Table structure for table `cv_submissions`
--

CREATE TABLE `cv_submissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cv_submissions`
--

INSERT INTO `cv_submissions` (`id`, `name`, `email`, `phone`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'Md Rakib Hasan Purno', 'rakibpurno96@gmail.com', '01624327910', 0, '2026-04-29 11:07:32', '2026-04-29 11:07:32'),
(2, 'aasd', NULL, NULL, 0, '2026-04-29 11:08:13', '2026-04-29 11:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `education_types`
--

CREATE TABLE `education_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Seminar',
  `event_format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'In-Person',
  `event_date` date NOT NULL,
  `event_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `venue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Open',
  `registration_deadline` date DEFAULT NULL,
  `registration_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_capacity` int UNSIGNED DEFAULT NULL,
  `organizer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `who_should_attend` text COLLATE utf8mb4_unicode_ci,
  `enquiry_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant_count` int UNSIGNED DEFAULT NULL,
  `is_past` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `event_type`, `event_format`, `event_date`, `event_time`, `event_end_date`, `venue`, `venue_address`, `registration_status`, `registration_deadline`, `registration_fee`, `registration_capacity`, `organizer`, `co_host`, `about`, `who_should_attend`, `enquiry_email`, `participant_count`, `is_past`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'National Trade Conference', 'Seminar', 'In-Person', '2026-06-15', NULL, '2026-06-16', 'Brac', 'Mohakhali', 'Closed', '2026-06-24', 'Free', 50, 'GIET Foundation', 'Asian Bank', 'Aenean tincidunt porttitor eleifend. Ut in commodo nunc. Vivamus sed ex sapien. Etiam sed orci blandit, mollis sem sit amet, tristique elit. Quisque vehicula eget augue ut interdum. Aliquam at dictum metus. Phasellus dignissim, tortor nec volutpat sagittis, nibh lectus posuere ante, vitae vestibulum nisi risus id metus. In tincidunt quis sem nec rhoncus.\r\n\r\nAenean sed ipsum neque. Praesent tristique, leo sed commodo lobortis, massa sem sollicitudin sem, et auctor quam tortor vitae massa. Mauris vitae placerat arcu. Vivamus mattis tellus id orci laoreet, sed malesuada metus luctus. Integer mollis nibh molestie, dictum ipsum sit amet, pulvinar tellus. Integer interdum finibus pulvinar. Aliquam sollicitudin placerat tortor nec sagittis. Donec et nulla dui. Cras non tortor in sem egestas feugiat non posuere erat. Cras felis enim, lacinia vitae blandit id, ullamcorper sed sapien.', 'Senior officials from line ministries, the Cabinet Division, and regulatory agencies.\r\nPrivate sector representatives — particularly SME associations, trade bodies, and chambers of commerce.\r\nDevelopment partners, bilateral agencies, and international financial institutions operating in Bangladesh.\r\nCivil society organizations working on transparency, accountability, and business environment reform.\r\nResearchers and policy analysts working on governance and economic reform.', 'events@giet.org.bd', 40, 1, 1, '2026-06-22 00:00:00', '2026-06-24 00:51:07'),
(2, 'National Seminar', 'Seminar', 'In-Person', '2026-06-28', '9.00 AM', '2026-06-28', 'Brac Convention Center', 'Mohakhali, Dhaka', 'Open', '2026-06-27', 'BDT 500', 50, 'GIET Foundation', 'Asian Development Bank', 'Test Event', 'Senior Officials', 'events@giet.org.bd', NULL, 0, 1, '2026-06-23 23:51:13', '2026-06-23 23:51:13'),
(3, 'AI Workshop', 'Workshop', 'Hybrid', '2026-06-10', '9.00 AM', '2026-06-10', 'Brac Center', 'Dhaka', 'Closed', '2026-06-09', 'Free', 50, 'GIET Foundation', 'Asian Development Bank', 'Test', 'All Officials', 'events@giet.org.bd', 45, 1, 2, '2026-06-24 00:47:38', '2026-06-24 00:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `event_partners`
--

CREATE TABLE `event_partners` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_partners`
--

INSERT INTO `event_partners` (`id`, `event_id`, `name`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Asian Bank Ltd.', 'events/partners/aTzNg4p9Wfx2CtzTtiLaFQ6ZberhiBziiPk4LXCy.png', 0, '2026-06-22 00:00:01', '2026-06-22 00:00:01'),
(2, 2, 'Asian Bank Ltd.', 'events/partners/uvAHBM7IfSOhTAgyfoom2pqRCatpNFak3hzoPSn6.png', 0, '2026-06-23 23:51:13', '2026-06-23 23:51:13'),
(3, 3, 'Asian Bank Ltd.', 'events/partners/wPkR5B53uPCUWlEzHmN9d73oLE5bUU1EJ60yscq2.png', 0, '2026-06-24 00:47:38', '2026-06-24 00:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `event_proposals`
--

CREATE TABLE `event_proposals` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_proposals`
--

INSERT INTO `event_proposals` (`id`, `name`, `email`, `organisation`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'Md. Ragib Shahriar', 'ragibshahriar58@gmail.com', 'Orbd', 'Request for event proposal', 1, '2026-06-24 00:40:17', '2026-06-24 00:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `event_speakers`
--

CREATE TABLE `event_speakers` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speaker_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'External',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_speakers`
--

INSERT INTO `event_speakers` (`id`, `event_id`, `team_id`, `name`, `designation`, `session_role`, `speaker_type`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Mr. Ragib', 'Director', 'Opening Spiker', 'External', 'events/speakers/LfmlnjY1QxipfQp49BeWCy3bxFPne3TpzMAU7RNR.png', 0, '2026-06-22 00:00:01', '2026-06-22 00:07:17'),
(2, 2, 5, 'Tahsina Shiva', 'Director', 'Opening Spiker', 'External', 'events/speakers/YLoNxIWuAqo0HtOoP43e490SZEZ8jcDpGjMLpKUK.png', 0, '2026-06-23 23:51:13', '2026-06-28 23:59:44'),
(3, 3, NULL, 'Md. Ragib Shahriar', 'Director', 'Opening Speaker', 'External', 'events/speakers/GESQIOvDtIKitAI2Oh4083tfjCIsHJK46N4PZoJc.png', 0, '2026-06-24 00:47:38', '2026-06-24 00:47:38');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'How quickly will GIET respond to my enquiry?', 'We aim to respond to all enquiries within 2 business days. For urgent project or media requests, please indicate this in your message subject and we will prioritize accordingly.', 1, 1, '2026-06-23 22:53:57', '2026-06-23 22:53:57'),
(2, 'Can GIET work with international organisations?', 'Yes. GIET works with international development banks, bilateral agencies, UN agencies, NGOs, and academic institutions. We have established partnership frameworks with ADB, World Bank, UNDP, GIZ, and several bilateral donors.', 2, 1, '2026-06-23 22:55:05', '2026-06-23 22:55:05'),
(3, 'How do I submit a publication or article to GIET?', 'We welcome policy commentaries, issue briefs, expert analyses, and research articles from practitioners and academics. Please submit via the Resources section of our website using the \"Write for Us\" portal, or email publications@giet.org.bd directly with your draft and a short author bio.', 3, 1, '2026-06-23 22:56:38', '2026-06-23 22:56:38'),
(4, 'Are GIET\'s publications free to access?', 'Yes. All GIET publications — including policy briefs, working papers, commentaries, and reports — are freely available on our website under an open-access policy. We believe knowledge should be publicly accessible to those it is meant to serve.', 4, 1, '2026-06-23 22:57:27', '2026-06-23 22:57:27'),
(5, 'How can I propose a collaborative research project?', 'Use the contact form above, selecting \"Project or Research Collaboration\" as your reason for contact. Please include a brief description of your proposed scope, timeline, and funding status. Our research team will follow up within 5 business days.', 5, 1, '2026-06-23 22:58:51', '2026-06-23 22:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insights`
--

CREATE TABLE `insights` (
  `id` bigint UNSIGNED NOT NULL,
  `type` bigint NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_links` text COLLATE utf8mb4_unicode_ci,
  `topics` json DEFAULT NULL,
  `page_count` int UNSIGNED DEFAULT NULL,
  `read_minutes` int UNSIGNED DEFAULT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendee_count` int UNSIGNED DEFAULT NULL,
  `author_team_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `outside_authors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `insights`
--

INSERT INTO `insights` (`id`, `type`, `heading`, `sub_heading`, `description`, `video_link`, `source_name`, `publish_links`, `topics`, `page_count`, `read_minutes`, `language`, `is_featured`, `duration`, `attendee_count`, `author_team_ids`, `outside_authors`, `sort_order`, `active`, `published_at`, `created_at`, `updated_at`) VALUES
(4, 3, 'LIMS in Action: Digital Lab Management Transforming Testing in Bangladesh', 'Technology', 'TRACE\'s technology team on the rollout of Laboratory Information Management Systems across public sector testing facilities in…', 'https://www.pexels.com/video/nature-26604245/', NULL, '[]', '[]', NULL, NULL, 'English', 0, '12:50', 45, '[]', '[]', 0, 1, '2025-01-27 07:31:00', '2026-04-27 09:40:11', '2026-06-28 22:48:04'),
(12, 4, 'TRACE Laboratory Accreditation Services — Brochure 2024', 'Laboratory Services', 'End-to-end ISO/IEC 17025 accreditation\r\nsupport: gap analysis, QMS documentation,    \r\nassessment preparation, and post-…', NULL, NULL, '[]', '[]', NULL, NULL, 'English', 0, NULL, NULL, '[2]', '[]', 0, 1, '2025-10-27 10:45:00', '2026-04-27 10:45:36', '2026-06-28 01:38:45'),
(13, 5, 'Export Performance Management: A Framework for South Asian Governments', 'Research & Assessment', 'Presents a framework for governments to\r\nsystematically monitor, evaluate, and improve\r\nexport performance across sectors and…', NULL, NULL, '[]', '[]', NULL, NULL, 'English', 0, NULL, NULL, '[17]', '[]', 0, 1, '2025-06-27 10:56:00', '2026-04-27 10:58:15', '2026-06-28 21:50:32'),
(14, 1, 'AEO Programmes: Unlocking Competitive Advantage for South Asian Exporters', 'Technology', 'Authorized Economic Operator status offers\r\nfaster clearance, fewer inspections, and\r\npreferential market access. This article…', NULL, NULL, '[]', '[]', NULL, NULL, 'English', 0, NULL, NULL, '[18]', '[]', 0, 1, '2025-06-11 10:59:00', '2026-04-27 11:01:19', '2026-06-28 21:51:37'),
(15, 6, 'Time Release Study: Chattogram Port — Baseline Report 2024Research & Assessment', NULL, 'A comprehensive measurement of the time\r\ntaken for goods to pass from arrival to release\r\nat Chattogram Port, benchmarked against…', NULL, 'https://www.thedailystar.net/', '[]', '[]', NULL, NULL, 'English', 0, NULL, NULL, '[]', '[]', 0, 1, '2025-12-27 15:09:00', '2026-04-27 11:05:23', '2026-06-28 22:45:10'),
(16, 1, 'Results-Based Management for Trade Projects: Lessons from the Field', 'Project Management', 'Practical lessons from TRACE\'s experience\r\nmanaging complex multi-stakeholder trade\r\nreform interventions funded by bilateral and…', NULL, NULL, '[]', '[\"NBR\", \"Single Window\", \"Bangladesh\"]', 12, 12, 'English', 0, NULL, NULL, '[]', '[]', 0, 1, '2026-06-27 11:06:00', '2026-04-27 11:08:07', '2026-06-28 22:01:50'),
(17, 5, 'Digital Trade Infrastructure in Bangladesh: A Readiness Assessment', 'Technology Solutions Edit', 'Evaluates the readiness of Bangladesh\'s\r\ntrade-related digital infrastructure against\r\nregional peers — customs, licensing,…', NULL, NULL, '[]', '[]', NULL, NULL, 'English', 0, NULL, NULL, '[15]', '[]', 0, 1, '2025-06-27 13:20:00', '2026-04-27 11:21:15', '2026-06-28 02:44:30'),
(21, 3, 'How to open trade account', 'Technology Solutions', NULL, 'https://www.pexels.com/video/nature-26604245/', NULL, '[]', '[]', NULL, NULL, 'English', 0, '20:45', 50, '[]', '[]', 0, 1, '2026-05-13 05:56:00', '2026-04-29 05:50:43', '2026-06-27 23:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `insight_articles`
--

CREATE TABLE `insight_articles` (
  `id` bigint UNSIGNED NOT NULL,
  `insight_id` bigint UNSIGNED DEFAULT NULL,
  `author_team_id` bigint UNSIGNED DEFAULT NULL,
  `type` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `read_minutes` smallint UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `insight_articles`
--

INSERT INTO `insight_articles` (`id`, `insight_id`, `author_team_id`, `type`, `title`, `description`, `image_description`, `social_links`, `sort_order`, `read_minutes`, `active`, `published_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 'LIMS in Action: Digital Lab Management Transforming Testing in Bangladesh', 'TRACE\'s technology team on the rollout of Laboratory Information Management Systems across public sector testing facilities in…', NULL, NULL, 0, 18, 1, '2025-04-15 11:38:00', '2026-04-22 03:39:01', '2026-04-22 03:39:01'),
(2, NULL, NULL, 1, 'Export Performance Management: A Framework for South Asian Governments', 'Lorem ipsum dolor sit amet consectetur. Feugiat lorem enim lectus sit. Volutpat neque feugiat est pharetra elementum sit ipsum', NULL, NULL, 0, 13, 1, '2025-01-20 12:45:00', '2026-04-22 03:43:04', '2026-04-22 03:47:16'),
(3, NULL, NULL, 1, '', 'Lorem ipsum dolor sit amet consectetur. Feugiat lorem enim lectus sit. Volutpat neque feugiat est pharetra elementum sit ipsum', NULL, NULL, 1, NULL, 1, NULL, '2026-04-22 03:49:24', '2026-04-22 03:49:24'),
(4, NULL, NULL, 1, 'TRACE Trade Facilitation Services — 2025 Capability Overview', 'A comprehensive overview of TRACE\'s trade facilitation and customs modernisation service offering, with key projects and client…', NULL, NULL, 0, NULL, 1, '2026-04-22 09:58:00', '2026-04-22 03:59:03', '2026-04-22 03:59:03'),
(5, 13, 17, 5, 'Introduction', '<p>Lorem ipsum dolor sit amet consectetur. Feugiat lorem enim lectus sit. Volutpat neque feugiat est pharetra elementum sit ipsum. Mi id ut ut vehicula dis. Non habitant felis arcu amet tristique. Sagittis sed eros mi rhoncus id. Cursus pharetra sit in vulputate quis mauris nulla nibh pellentesque. Vitae eu sapien diam eget diam vel mattis congue metus.</p>', 'Why Bangladesh\'s Single Window Must Move Faster', '[{\"name\":\"facebook\",\"link\":\"https:\\/\\/www.pexels.com\\/video\\/nature-26604245\\/\"},{\"name\":\"email\",\"link\":\"https:\\/\\/www.pexels.com\\/video\\/nature-26604245\\/\"},{\"name\":\"linkdin\",\"link\":\"https:\\/\\/www.pexels.com\\/video\\/nature-26604245\\/\"}]', 0, NULL, 1, NULL, '2026-04-27 10:58:15', '2026-06-28 21:50:32'),
(6, 14, 18, 1, 'Introduction', '<p>Lorem ipsum dolor sit amet consectetur. Feugiat lorem enim lectus sit. Volutpat neque feugiat est pharetra elementum sit ipsum. Mi id ut ut vehicula dis. Non habitant felis arcu amet tristique. Sagittis sed eros mi rhoncus id. Cursus pharetra sit in vulputate quis mauris nulla nibh pellentesque. Vitae eu sapien diam eget diam vel mattis congue metus. Lorem ipsum dolor sit amet consectetur. Feugiat lorem enim lectus sit. Volutpat neque feugiat est pharetra elementum sit ipsum. Mi id ut ut vehicula dis. Non habitant felis arcu amet tristique. Sagittis sed eros mi rhoncus id. Cursus pharetra sit in vulputate quis mauris nulla nibh pellentesque. Vitae eu sapien diam eget diam vel mattis congue metus.</p>', NULL, '[{\"name\":\"Linkdin\",\"link\":null},{\"name\":\"Email\",\"link\":\"https:\\/\\/mail.google.com\\/\"},{\"name\":\"Facebook\",\"link\":null}]', 0, NULL, 1, NULL, '2026-04-27 11:01:19', '2026-06-28 21:51:37'),
(7, 16, NULL, 1, 'Introduction', '<p><strong>1. The Problem: Complexity as a Hidden Tax on Trade</strong></p><p>Bangladesh\'s import and export procedures involve an average of 14 distinct document requirements, interactions with up to 9 separate government agencies, and physical inspection rates that remain among the highest in South Asia. At Benapole, Bangladesh\'s busiest land port, average import clearance times stand at 72 hours — compared to a regional benchmark of 18–24 hours for ports of comparable volume in India, Thailand, and Vietnam.</p><p><strong>2. The Single Window Concept: What It Is and What It Is Not</strong></p><p>A National Single Window (NSW) is a coordinated border management system that allows traders to submit all trade-related documentation through a single electronic portal, with the information shared automatically across all relevant government agencies. The World Trade Organization\'s Trade Facilitation Agreement (TFA), which Bangladesh ratified in 2016, commits member states to endeavour to establish or maintain a Single Window system.</p>', NULL, '[{\"name\":\"Email\",\"link\":null}]', 0, NULL, 1, NULL, '2026-04-27 11:08:07', '2026-06-28 22:01:50'),
(8, 17, 15, 5, 'Introduction', '', NULL, '[]', 0, NULL, 1, NULL, '2026-04-27 11:21:15', '2026-06-28 02:44:31'),
(9, NULL, 19, 1, 'awsedrfghj', 'sdfgh', 'xsdvfg', '[]', 0, NULL, 1, NULL, '2026-04-28 05:18:13', '2026-04-28 05:18:13'),
(14, 12, 2, 4, '', '', NULL, '[]', 0, NULL, 1, NULL, '2026-06-28 01:33:14', '2026-06-28 01:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `insight_types`
--

CREATE TABLE `insight_types` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `show_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insight_types`
--

INSERT INTO `insight_types` (`id`, `type`, `type_category`, `status`, `show_featured`, `created_at`, `updated_at`) VALUES
(1, 'Issue Briefs/Articles', 'Download', 1, 1, '2026-04-22 21:41:14', '2026-06-28 21:32:51'),
(3, 'Videos/Podcasts', 'Watch', 1, 0, '2026-04-27 09:42:42', '2026-06-23 21:33:14'),
(4, 'Expert Speak/Blog', 'Read', 1, 0, '2026-04-27 09:42:50', '2026-06-23 21:31:33'),
(5, 'Publications & Reports', 'Download', 1, 0, '2026-04-27 09:45:52', '2026-06-23 21:30:24'),
(6, 'News & Commentary/Op-Ed', 'Read On', 1, 0, '2026-04-27 11:04:16', '2026-06-23 21:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(6, 'default', '{\"uuid\":\"b5db9182-419c-4d0a-a080-32665feabc92\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 893688\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736276839, 1736276839),
(7, 'default', '{\"uuid\":\"b53d656b-268a-46ad-9db6-8611f732e6e3\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 269351\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736284109, 1736284109),
(8, 'default', '{\"uuid\":\"768062db-e8d0-465e-9201-427f3cab9120\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 487907\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736284302, 1736284302),
(9, 'default', '{\"uuid\":\"1e5b3a8e-3441-485c-8823-bbf0f98154ab\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 963242\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736284315, 1736284315),
(10, 'default', '{\"uuid\":\"b8018137-df7b-42ee-9dd2-23df99f2255b\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 856387\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736284834, 1736284834),
(11, 'default', '{\"uuid\":\"fd453491-75e3-41a7-8fe3-ae9abed18f9e\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 970127\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736285977, 1736285977),
(12, 'default', '{\"uuid\":\"e14750b4-e956-4f48-8d80-d6cf94b9f50d\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 391991\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736286064, 1736286064),
(13, 'default', '{\"uuid\":\"eabc6fd1-aeaf-457b-99cf-2f801cb33c5f\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 829942\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736286211, 1736286211),
(14, 'default', '{\"uuid\":\"c5d5a7cf-70aa-48ff-8e75-c3d79fe59d6d\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 304780\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736286823, 1736286823),
(15, 'default', '{\"uuid\":\"83775ac0-fb34-40be-896b-09ef7e9df690\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 478080\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736368148, 1736368148),
(16, 'default', '{\"uuid\":\"7492ee14-324e-420c-88e8-2f67e942094d\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 316833\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736368254, 1736368254),
(17, 'default', '{\"uuid\":\"f8ab8574-5130-4c25-a7c5-9d7461311500\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 472919\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736368701, 1736368701),
(18, 'default', '{\"uuid\":\"c6b08896-574a-4f79-9f6e-3cfa77615314\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 306061\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736368723, 1736368723),
(19, 'default', '{\"uuid\":\"2ee9adcc-0904-4f40-991a-5793b9755f94\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 137706\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736368939, 1736368939),
(20, 'default', '{\"uuid\":\"442ce65d-0186-4bd3-a1df-205d19aee036\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 337475\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736369019, 1736369019),
(21, 'default', '{\"uuid\":\"6e024abd-3c12-4992-bc7a-c0295e17270f\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 772862\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736369391, 1736369391),
(22, 'default', '{\"uuid\":\"0e3ef519-178f-4cd9-b2fb-907ed52d4933\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 923376\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736370379, 1736370379),
(23, 'default', '{\"uuid\":\"a8075bbc-88ed-4a0d-8871-d09c81a06d0d\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 580271\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736370696, 1736370696),
(24, 'default', '{\"uuid\":\"b14464d0-dfee-4a17-b313-2a294d0fbc9a\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Super Admin\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 522189\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736461379, 1736461379),
(25, 'default', '{\"uuid\":\"c8c6b938-9910-421a-b68d-afa4a7719322\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 759106\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736462979, 1736462979),
(26, 'default', '{\"uuid\":\"3846975c-54cd-4676-ab3d-5af071481409\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 886475\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736462992, 1736462992),
(27, 'default', '{\"uuid\":\"5bf6c510-c020-44a4-9348-ea4c39a2186e\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 105458\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736463330, 1736463330),
(28, 'default', '{\"uuid\":\"b3b2dc30-77da-471c-a0e8-b43d5e31c667\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 357201\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736463422, 1736463422),
(29, 'default', '{\"uuid\":\"e213b461-4318-4f67-9656-464494d8d3b7\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 895221\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736463712, 1736463712),
(30, 'default', '{\"uuid\":\"08509fbf-629f-4f21-a706-510c376747b2\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 481611\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464067, 1736464067),
(31, 'default', '{\"uuid\":\"6bfa87ea-ce96-4fd6-98fb-1ad0d3a210b3\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 756618\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464067, 1736464067),
(32, 'default', '{\"uuid\":\"428ec7cd-9eb0-4208-b466-5b021232aa93\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 747516\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464067, 1736464067),
(33, 'default', '{\"uuid\":\"90600c51-8eba-4f93-b084-f79176ecf6a6\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 799272\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464067, 1736464067),
(34, 'default', '{\"uuid\":\"b9370717-ba64-4eef-96b7-c3997b6bebba\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 578174\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464067, 1736464067),
(35, 'default', '{\"uuid\":\"f4ccf202-6e87-4270-a1d7-fc54088df65e\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 485095\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464068, 1736464068),
(36, 'default', '{\"uuid\":\"5022c55b-7f11-4508-ac03-53f833df3d79\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 558763\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464068, 1736464068),
(37, 'default', '{\"uuid\":\"930e1773-2cce-4ffc-a0ae-ee24f6da6917\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 665837\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464068, 1736464068),
(38, 'default', '{\"uuid\":\"6e176779-7c54-4689-8a86-cacbf2092d6e\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 599529\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464068, 1736464068),
(39, 'default', '{\"uuid\":\"5171edc3-e334-4fd4-bbe7-28390e7d5eb9\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 756722\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464068, 1736464068),
(40, 'default', '{\"uuid\":\"0b25afda-910a-43f9-a187-985c30616d5d\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 323934\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464069, 1736464069),
(41, 'default', '{\"uuid\":\"acd67a98-020e-4c0e-ba03-c83b967e6553\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 447297\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464069, 1736464069),
(42, 'default', '{\"uuid\":\"7a35e6d5-4e7a-4c23-a320-bb8e7a669c61\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 544118\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464069, 1736464069),
(43, 'default', '{\"uuid\":\"a0f00910-2124-46d1-b2ad-41f85159c779\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 991269\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464069, 1736464069),
(44, 'default', '{\"uuid\":\"e1d9bf0b-a100-404f-b371-be4abb98c411\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 864580\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464070, 1736464070),
(45, 'default', '{\"uuid\":\"a748ca59-7497-4bc5-b904-fe439ffda424\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 980910\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464070, 1736464070),
(46, 'default', '{\"uuid\":\"903ca426-6044-4ca2-bb21-b35c67df4e79\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 535316\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464070, 1736464070),
(47, 'default', '{\"uuid\":\"a03d4838-9c4b-4bea-97a0-cb7a677de477\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 267625\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464070, 1736464070);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(48, 'default', '{\"uuid\":\"3211e472-a80e-42bc-8278-68ea7fcf3d08\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 509674\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464071, 1736464071),
(49, 'default', '{\"uuid\":\"de505656-e478-4604-9b8c-adf8de56deb6\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 967088\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464072, 1736464072),
(50, 'default', '{\"uuid\":\"306c13cd-021e-4dcd-be44-5cca4d77a6ce\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 155305\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464072, 1736464072),
(51, 'default', '{\"uuid\":\"fc683702-aa83-48e1-96e4-c12ee6608f28\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 772725\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464072, 1736464072),
(52, 'default', '{\"uuid\":\"ed55da84-9def-4448-bddc-6ef5249a3b1a\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 450783\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464073, 1736464073),
(53, 'default', '{\"uuid\":\"caa00019-10a5-4ee4-9a92-fe0a67363d1b\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 465521\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464073, 1736464073),
(54, 'default', '{\"uuid\":\"ac3414c8-f28f-4249-a1e9-98867bd7c92a\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 231211\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464073, 1736464073),
(55, 'default', '{\"uuid\":\"496da36e-a004-4536-bcc0-33be7e2cfb55\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 389313\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464074, 1736464074),
(56, 'default', '{\"uuid\":\"5d9d6cd5-6f36-45b8-ae8f-f52ee61387a1\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 996485\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464074, 1736464074),
(57, 'default', '{\"uuid\":\"0394e5af-5290-46cd-9112-4e81236c28ef\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 875091\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464074, 1736464074),
(58, 'default', '{\"uuid\":\"e90103e9-2123-4b6d-9b7b-b263a80fb9ac\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 636134\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464074, 1736464074),
(59, 'default', '{\"uuid\":\"2d46e57c-0133-49f6-970d-6e9daf28a65d\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 366267\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464075, 1736464075),
(60, 'default', '{\"uuid\":\"37dce213-7d38-4112-baf6-28dea7e6b8ca\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 269990\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464075, 1736464075),
(61, 'default', '{\"uuid\":\"6aba6d63-cc18-476a-8412-fe77b3989570\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 633960\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464075, 1736464075),
(62, 'default', '{\"uuid\":\"fa5c11bb-c428-4c65-ad11-6237be443ee7\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 127572\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464075, 1736464075),
(63, 'default', '{\"uuid\":\"e0bff2fd-c000-49ee-b45e-90ec491ee5fc\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 588799\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464076, 1736464076),
(64, 'default', '{\"uuid\":\"b8fcfeb8-807a-4c95-bfa3-53f23365e72b\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 141197\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464076, 1736464076),
(65, 'default', '{\"uuid\":\"9a9bfd3d-0dcd-42a9-a90b-3ea020ddc176\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 559248\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464076, 1736464076),
(66, 'default', '{\"uuid\":\"42302eb8-ae5a-41b8-bedc-0aa87fc2a5b3\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 440294\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464076, 1736464076),
(67, 'default', '{\"uuid\":\"09fa67dd-2d2e-477f-975a-d263f8e3c4d5\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 684309\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464076, 1736464076),
(68, 'default', '{\"uuid\":\"1a13e087-392b-44f8-a046-811b0c1c9c7d\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 806864\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464077, 1736464077),
(69, 'default', '{\"uuid\":\"d4d14080-1771-4af6-863c-beb47f1f3f28\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 911758\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464082, 1736464082),
(70, 'default', '{\"uuid\":\"a51caf24-8d3e-4225-ac37-c06e66eca3e3\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 550235\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464082, 1736464082),
(71, 'default', '{\"uuid\":\"04d76b5e-2566-4414-9a93-0eeebf03934c\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 435910\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464083, 1736464083),
(72, 'default', '{\"uuid\":\"a5f33ba5-6195-4c44-bf84-8c427754a96f\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 929233\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464162, 1736464162),
(73, 'default', '{\"uuid\":\"ea8567b7-d88d-4f32-84f0-f7c8cca82983\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 888196\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464179, 1736464179),
(74, 'default', '{\"uuid\":\"48668990-49d4-4673-81f2-977641bf28bc\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 120656\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464199, 1736464199),
(75, 'default', '{\"uuid\":\"d5a8325c-6ed2-47c4-bf3b-992bc70f389b\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 193805\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464771, 1736464771),
(76, 'default', '{\"uuid\":\"70534837-a541-4efd-9947-378af5e5a00f\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 108264\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464779, 1736464779),
(77, 'default', '{\"uuid\":\"46d5f6eb-d6e6-4432-83c6-21fd6326cbce\",\"displayName\":\"App\\\\Mail\\\\ForgetPassMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ForgetPassMail\\\":4:{s:4:\\\"name\\\";s:11:\\\"Laurel Noel\\\";s:14:\\\"messageContent\\\";s:27:\\\"Your Reset Code is : 647794\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:21:\\\"sidype@mailinator.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1736464819, 1736464819);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `job_posting_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_posting_id`, `name`, `email`, `phone`, `cv_path`, `is_reviewed`, `created_at`, `updated_at`) VALUES
(1, 2, 'Md Rakib Hasan Purno', 'rakibpurno96@gmail.com', '01624327910', 'cvs/Hc20k8AqMkC3CAPJ3HKYP3Ig7HUNFIOe9AFMfRje.pdf', 0, '2026-04-21 22:54:38', '2026-04-21 22:54:38'),
(2, 5, 'Md Rakib Hasan Purno', 'rakibpurno96@gmail.com', '01624327910', 'cvs/hSG8wigiJdWvSJy0b6aFmQvTb1hUfGTLcl45shCB.pdf', 0, '2026-04-22 01:19:13', '2026-04-22 01:19:13'),
(3, 2, 'SANZIDUL ISLAM', 'sanzidulislam16@gmail.com', '01765532849', 'cvs/6A9vXrJgDo8LFdX4tb4NHjB6uJWXTa0AdAs7namU.pdf', 0, '2026-04-23 03:46:25', '2026-04-23 03:46:25'),
(4, 1, 'Md Rakib Hasan Purno', 'rakibpurno96@gmail.com', '01624327910', 'cvs/IcqeOJXXiepb3B750pT2P4x7FIDF4t2ABByJHVdB.pdf', 1, '2026-04-23 13:48:15', '2026-04-23 14:03:19'),
(5, 1, 'rak', 'rakibpurno6@gmail.com', '0162432791', 'cvs/GNdQCg1qCYbmj4IuwIsHH0qUHziQPROVKNG76PE2.pdf', 0, '2026-04-23 13:54:39', '2026-04-23 13:54:39'),
(6, 1, 'asd', 'rakibpurno16@gmail.com', '016243279111', 'cvs/cReUcUQCbN7O0JHe9dCUczrNkstdZ5pbPSteuAJG.pdf', 0, '2026-04-23 14:02:47', '2026-04-23 14:02:47'),
(7, 1, 'adfr', 'abc@gmail.com', '016243279111223', 'cvs/27zyaOmXbaB2lcMdyfbrk08bq4iDmqF3Jp26PIIM.pdf', 0, '2026-04-24 08:25:15', '2026-04-24 08:25:15'),
(8, 5, 'Hasan Purno', 'hasanpurno96@gmail.com', '01624327913', 'cvs/h1JUa0UvHt6tesbn3jol26ODgske73ilQbMubvdi.pdf', 0, '2026-04-27 06:40:30', '2026-04-27 06:40:30'),
(9, 2, 'd Rakib Hasan Purno', 'akibpurno96@gmail.com', '01624327910', 'cvs/2y7ItvqcsJx4yKqhwF6IrMTsfuBCzfh06hNkyPTg.pdf', 0, '2026-04-29 05:25:53', '2026-04-29 05:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_postings`
--

CREATE TABLE `job_postings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Full-Time',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `posted_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `responsibilities` longtext COLLATE utf8mb4_unicode_ci,
  `requirements` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_postings`
--

INSERT INTO `job_postings` (`id`, `title`, `description`, `department`, `employment_type`, `location`, `experience_level`, `is_active`, `posted_date`, `end_date`, `created_at`, `updated_at`, `responsibilities`, `requirements`) VALUES
(1, 'Trade Facilitation Consultant', 'We are looking for an experienced trade facilitation consultant to support our growing portfolio of WTO TFA\r\nimplementation, customs modernisation, and border management reform projects across South Asia.', 'Trade & Policy Division', 'Full-Time', 'Dhaka', '3–5 years experience', 1, '2026-04-22', '2026-06-11', '2026-04-21 22:27:00', '2026-04-27 07:08:44', 'Task management\r\nTeam coordination\r\nReporting\r\nCustomer/client handling\r\nMeeting deadlines', 'Education\r\nExperience\r\nCommunication skills\r\nProblem-solving ability\r\nTechnical knowledge'),
(2, 'Full-Stack Developer — Trade Systems', 'Seeking a full-stack developer with experience in government systems, LIMS, or trade platform\r\ndevelopment. You\'ll design and build digital trade infrastructure for government clients.', 'Technology Solutions', 'Contract', 'Dhaka / Remote', '4+ years experience', 1, '2026-03-11', '2026-07-22', '2026-04-21 22:35:33', '2026-04-27 07:09:45', 'Task management\r\nTeam coordination\r\nReporting\r\nCustomer/client handling\r\nMeeting deadlines', 'Education\r\nExperience\r\nCommunication skills\r\nProblem-solving ability\r\nTechnical knowledge'),
(3, 'Research & Assessments Analyst', 'A rigorous analyst to support trade facilitation needs assessments, economic impact studies, and value\r\nchain analyses for government and donor clients. Strong quantitative and qualitative research skills required.', 'Research & Evaluation', 'Full-Time', 'Dhaka, Bangladesh', '2–4 years experience', 1, '2026-03-11', '2026-04-28', '2026-04-22 00:46:44', '2026-04-27 07:10:21', 'Task management\r\nTeam coordination\r\nReporting\r\nCustomer/client handling\r\nMeeting deadlines', 'Education\r\nExperience\r\nCommunication skills\r\nProblem-solving ability\r\nTechnical knowledge'),
(4, 'Laboratory Quality & Accreditation Specialist', 'Experienced ISO/IEC 17025 specialist to support our laboratory accreditation advisory projects. You\'ll guide\r\npublic and private lab clients through QMS development, gap analysis, and assessment preparation.', 'Laboratory Services', 'Contract', 'Dhaka, Bangladesh', '5+ years experience', 1, '2026-02-11', '2026-04-22', '2026-04-22 00:48:29', '2026-04-27 07:11:58', 'Task management\r\nTeam coordination\r\nReporting\r\nCustomer/client handling\r\nMeeting deadlines', 'Education\r\nExperience\r\nCommunication skills\r\nProblem-solving ability\r\nTechnical knowledge'),
(5, 'Junior Project Coordinator', 'An organised, proactive junior coordinator to support our project management team across multiple\r\nsimultaneous engagements. Ideal for someone early in their development consulting career.', 'Project Management Office', 'Full-Time', 'Dhaka, Bangladesh', '0-2 years experience', 1, '2026-03-09', '2026-06-20', '2026-04-22 00:49:49', '2026-04-27 07:08:11', 'Policy & Regulatory Analysis\r\nProcess Improvement\r\nStakeholder Coordination\r\nCapacity Building & Training\r\nProject Management\r\nDesign and implement trade facilitation projects', 'Business Administration or related fields\r\nExperience\r\nTypically 3+ years in trade, customs, logistics, or economic development\r\nExperience with organizations like:\r\n\r\nKnowledge of trade agreements and customs procedures');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(6, 'App\\Models\\Slider', 1, '23fc6974-a511-4790-af80-1b91b607c1d4', 'slider_images', 'image 11', 'image-11.png', 'image/png', 'public', 'public', 1881197, '[]', '[]', '[]', '[]', 1, '2026-04-21 03:31:17', '2026-04-21 03:31:17'),
(7, 'App\\Models\\Slider', 1, '3bcf201c-d2a3-40ff-85ae-c66390d94861', 'slider_images', 'ship', 'ship.jpeg', 'image/jpeg', 'public', 'public', 545069, '[]', '[]', '[]', '[]', 2, '2026-04-21 03:31:17', '2026-04-21 03:31:17'),
(8, 'App\\Models\\Slider', 1, 'c503d195-9eb6-44b1-8689-4002058677f3', 'slider_images', 'hero4', 'hero4.jpeg', 'image/jpeg', 'public', 'public', 838230, '[]', '[]', '[]', '[]', 3, '2026-04-21 03:31:17', '2026-04-21 03:31:17'),
(34, 'App\\Models\\Project', 2, 'c8212bbb-120c-4830-af1a-6a1c4c6af135', 'images', 'Op-Ed', 'Op-Ed.png', 'image/png', 'public', 'public', 302568, '[]', '[]', '[]', '[]', 1, '2026-04-21 05:06:21', '2026-04-21 05:06:21'),
(35, 'App\\Models\\Project', 3, '2b824078-2fca-4dd6-9dac-59f25f6a1bc2', 'images', 'Export Performance Management_ A Framework for South Asian Governments', 'Export-Performance-Management_-A-Framework-for-South-Asian-Governments.png', 'image/png', 'public', 'public', 113282, '[]', '[]', '[]', '[]', 1, '2026-04-21 05:27:43', '2026-04-21 05:27:43'),
(36, 'App\\Models\\Project', 4, '0b87c5fe-c82d-45dd-94d7-dad72238b5ca', 'images', 'AEO Programmes_ Unlocking Competitive Advantage for South Asian Exporters', 'AEO-Programmes_-Unlocking-Competitive-Advantage-for-South-Asian-Exporters.png', 'image/png', 'public', 'public', 97881, '[]', '[]', '[]', '[]', 1, '2026-04-21 05:39:10', '2026-04-21 05:39:10'),
(37, 'App\\Models\\Project', 5, '83bf978e-e07a-453f-b162-a409883d3f73', 'images', 'Digital Trade Infrastructure in Bangladesh_ A Readiness Assessment', 'Digital-Trade-Infrastructure-in-Bangladesh_-A-Readiness-Assessment.png', 'image/png', 'public', 'public', 104940, '[]', '[]', '[]', '[]', 1, '2026-04-21 05:40:27', '2026-04-21 05:40:27'),
(38, 'App\\Models\\Project', 6, '78f9737d-024b-48bd-a590-4e9780523a09', 'images', 'Trade and Customs', 'Trade-and-Customs.png', 'image/png', 'public', 'public', 148908, '[]', '[]', '[]', '[]', 1, '2026-04-21 05:42:10', '2026-04-21 05:42:10'),
(44, 'App\\Models\\Project', 4, 'e840b8c8-c46a-490e-a9c5-11758b8cac12', 'images', 'hero3', 'hero3.jpeg', 'image/jpeg', 'public', 'public', 150431, '[]', '[]', '[]', '[]', 2, '2026-04-21 23:44:36', '2026-04-21 23:44:36'),
(45, 'App\\Models\\Project', 4, '9c1536ee-f5eb-4bf6-a551-6f0da12a33cc', 'images', 'Export Performance Management_ A Framework for South Asian Governments', 'Export-Performance-Management_-A-Framework-for-South-Asian-Governments.png', 'image/png', 'public', 'public', 113282, '[]', '[]', '[]', '[]', 3, '2026-04-21 23:44:36', '2026-04-21 23:44:36'),
(48, 'App\\Models\\Project', 3, '6bf921ed-b0e5-4c84-8277-bb2d65e8b6bd', 'images', 'Digital Trade Infrastructure in Bangladesh_ A Readiness Assessment', 'Digital-Trade-Infrastructure-in-Bangladesh_-A-Readiness-Assessment.png', 'image/png', 'public', 'public', 104940, '[]', '[]', '[]', '[]', 2, '2026-04-21 23:56:57', '2026-04-21 23:56:57'),
(49, 'App\\Models\\Project', 3, '79b70a51-91ee-4a41-b46d-abf378a5504f', 'images', 'Cold Chain', 'Cold-Chain.png', 'image/png', 'public', 'public', 192104, '[]', '[]', '[]', '[]', 3, '2026-04-21 23:56:57', '2026-04-21 23:56:57'),
(50, 'App\\Models\\Project', 5, '9b89e823-302b-482f-8cec-3a21015dac06', 'images', 'Lab training', 'Lab-training.png', 'image/png', 'public', 'public', 73094, '[]', '[]', '[]', '[]', 2, '2026-04-22 00:07:24', '2026-04-22 00:07:24'),
(51, 'App\\Models\\Project', 5, '5e1383c2-48f1-4635-82b3-f90e7d408e12', 'images', 'image 55', 'image-55.png', 'image/png', 'public', 'public', 401320, '[]', '[]', '[]', '[]', 3, '2026-04-22 00:07:24', '2026-04-22 00:07:24'),
(52, 'App\\Models\\Project', 6, '08c657cb-e00a-4227-9cee-256a98600144', 'images', 'AEO Programmes_ Unlocking Competitive Advantage for South Asian Exporters', 'AEO-Programmes_-Unlocking-Competitive-Advantage-for-South-Asian-Exporters.png', 'image/png', 'public', 'public', 97881, '[]', '[]', '[]', '[]', 2, '2026-04-22 00:09:12', '2026-04-22 00:09:12'),
(53, 'App\\Models\\Project', 6, '4a5dc738-2165-424d-b95f-c062c486cc25', 'images', 'Infrastructure Design', 'Infrastructure-Design.png', 'image/png', 'public', 'public', 116236, '[]', '[]', '[]', '[]', 3, '2026-04-22 00:09:12', '2026-04-22 00:09:12'),
(61, 'App\\Models\\Project', 2, '5b271067-baa3-4f70-be65-da03d538a8f9', 'images', 'Export Performance Management_ A Framework for South Asian Governments', 'Export-Performance-Management_-A-Framework-for-South-Asian-Governments.png', 'image/png', 'public', 'public', 113282, '[]', '[]', '[]', '[]', 2, '2026-04-22 05:22:53', '2026-04-22 05:22:53'),
(62, 'App\\Models\\Project', 2, 'f52e1584-e808-4bbb-9826-bd125ad848bc', 'images', 'image 55', 'image-55.png', 'image/png', 'public', 'public', 401320, '[]', '[]', '[]', '[]', 3, '2026-04-22 05:22:53', '2026-04-22 05:22:53'),
(65, 'App\\Models\\Content', 31, '3d2d6abb-e170-451b-af53-e72964af0bcd', 'image', 'Background (3)', 'Background-(3).png', 'image/png', 'public', 'public', 485887, '[]', '[]', '[]', '[]', 1, '2026-04-22 06:33:01', '2026-04-22 06:33:01'),
(122, 'App\\Models\\Content', 40, '5e3f681f-cd8c-4d92-b3e0-11b641dafaac', 'icon', 'Trade and Customs', 'Trade-and-Customs.png', 'image/png', 'public', 'public', 148908, '[]', '[]', '[]', '[]', 1, '2026-04-23 01:26:05', '2026-04-23 01:26:05'),
(123, 'App\\Models\\Content', 40, 'a0fd73e2-295a-4148-ad2e-5298a2932e86', 'image', 'Trade and Customs', 'Trade-and-Customs.png', 'image/png', 'public', 'public', 148908, '[]', '[]', '[]', '[]', 2, '2026-04-23 01:26:05', '2026-04-23 01:26:05'),
(149, 'App\\Models\\TeamSocialMedia', 8, '0e86ac12-e2d0-405a-ba80-17fc563ce035', 'social_icon', 'linkedin (3)', 'linkedin-(3).png', 'image/png', 'public', 'public', 8794, '[]', '[]', '[]', '[]', 1, '2026-04-24 19:31:54', '2026-04-24 19:31:54'),
(150, 'App\\Models\\TeamSocialMedia', 41, 'a797e629-b064-4c10-b474-430df48543d3', 'social_icon', 'email (2)', 'email-(2).png', 'image/png', 'public', 'public', 10763, '[]', '[]', '[]', '[]', 1, '2026-04-24 19:31:54', '2026-04-24 19:31:54'),
(151, 'App\\Models\\Slider', 1, '06e7ad98-b42d-4dcd-a87b-7298762d3057', 'slider_images', 'Image 04 → Project Image', 'Image-04-→-Project-Image.png', 'image/png', 'public', 'public', 97967, '[]', '[]', '[]', '[]', 4, '2026-04-26 04:12:44', '2026-04-26 04:12:44'),
(157, 'App\\Models\\Project', 1, 'b0641e40-927e-4745-9535-285697b30d6e', 'images', 'Infrastructure Design (1)', 'Infrastructure-Design-(1).png', 'image/png', 'public', 'public', 111664, '[]', '[]', '[]', '[]', 1, '2026-04-26 05:13:46', '2026-04-26 05:13:46'),
(158, 'App\\Models\\Project', 1, '5929d7e5-a9e6-44c2-9364-63202f6682d8', 'images', 'Capacity Building', 'Capacity-Building.png', 'image/png', 'public', 'public', 96725, '[]', '[]', '[]', '[]', 2, '2026-04-26 05:13:46', '2026-04-26 05:13:46'),
(159, 'App\\Models\\Project', 1, 'ba64e2cd-be61-4e0c-b6c0-60ab67dd1cfb', 'images', 'Image 04 → Project Image', 'Image-04-→-Project-Image.png', 'image/png', 'public', 'public', 97967, '[]', '[]', '[]', '[]', 3, '2026-04-26 05:13:46', '2026-04-26 05:13:46'),
(168, 'App\\Models\\TeamSocialMedia', 10, '513a6cec-1435-43ff-be7c-404c85dfd791', 'social_icon', 'linkedin (3)', 'linkedin-(3).png', 'image/png', 'public', 'public', 8794, '[]', '[]', '[]', '[]', 1, '2026-04-27 04:55:14', '2026-04-27 04:55:14'),
(169, 'App\\Models\\TeamSocialMedia', 11, 'a611221d-8252-4844-8add-d23f8ef9bfc0', 'social_icon', 'email (2)', 'email-(2).png', 'image/png', 'public', 'public', 10763, '[]', '[]', '[]', '[]', 1, '2026-04-27 04:55:14', '2026-04-27 04:55:14'),
(176, 'App\\Models\\TeamSocialMedia', 18, 'fdfb9989-2cac-4d08-9461-4ddacb4bbd14', 'social_icon', 'linkedin (3)', 'linkedin-(3).png', 'image/png', 'public', 'public', 8794, '[]', '[]', '[]', '[]', 1, '2026-04-27 07:16:33', '2026-04-27 07:16:33'),
(177, 'App\\Models\\TeamSocialMedia', 19, 'd4a36ea9-a39c-42b6-9195-7207ed5a66d4', 'social_icon', 'email (2)', 'email-(2).png', 'image/png', 'public', 'public', 10763, '[]', '[]', '[]', '[]', 1, '2026-04-27 07:16:33', '2026-04-27 07:16:33'),
(215, 'App\\Models\\CvSubmission', 1, '8adf8c1f-5611-4616-8ecc-506f736c188a', 'cv_pdf', 'rocketpreepay', 'rocketpreepay.pdf', 'application/pdf', 'public', 'public', 501101, '[]', '[]', '[]', '[]', 1, '2026-04-29 11:07:32', '2026-04-29 11:07:32'),
(216, 'App\\Models\\CvSubmission', 2, 'cb2e5114-27f0-4d4c-b5b0-0f4c7c76ac41', 'cv_pdf', 'rocketpreepay', 'rocketpreepay.pdf', 'application/pdf', 'public', 'public', 501101, '[]', '[]', '[]', '[]', 1, '2026-04-29 11:08:13', '2026-04-29 11:08:13'),
(218, 'App\\Models\\Event', 1, 'dada2bd9-9f0d-430c-842f-04b93c10ee92', 'hero', 'Background (2)', 'Background-(2).png', 'image/png', 'public', 'public', 97285, '[]', '[]', '[]', '[]', 1, '2026-06-22 00:07:17', '2026-06-22 00:07:17'),
(219, 'App\\Models\\Setting', 1, '108d5078-a084-466f-8bed-b72cc057e3fe', 'logo_image', 'Frame 26', 'Frame-26.png', 'image/png', 'public', 'public', 4012, '[]', '[]', '[]', '[]', 3, '2026-06-22 03:53:47', '2026-06-22 03:53:47'),
(220, 'App\\Models\\Partner', 10, '5618efb0-c410-441c-9be5-6a5f5b412ed8', 'partner_image', 'Container (12)', 'Container-(12).png', 'image/png', 'public', 'public', 1282, '[]', '[]', '[]', '[]', 1, '2026-06-22 03:56:51', '2026-06-22 03:56:51'),
(221, 'App\\Models\\Partner', 7, '73de8c4f-b6c6-417b-8a35-cb5789c617e3', 'partner_image', 'Container (13)', 'Container-(13).png', 'image/png', 'public', 'public', 840, '[]', '[]', '[]', '[]', 1, '2026-06-22 03:57:29', '2026-06-22 03:57:29'),
(222, 'App\\Models\\Partner', 3, '52aafab1-0b67-4f9e-9447-594937ee30ad', 'partner_image', 'Container (14)', 'Container-(14).png', 'image/png', 'public', 'public', 2126, '[]', '[]', '[]', '[]', 1, '2026-06-22 03:59:34', '2026-06-22 03:59:34'),
(223, 'App\\Models\\Partner', 2, '4e186d56-d4b8-4116-860c-72190e8038a1', 'partner_image', 'Container (15)', 'Container-(15).png', 'image/png', 'public', 'public', 1250, '[]', '[]', '[]', '[]', 1, '2026-06-22 21:28:01', '2026-06-22 21:28:01'),
(224, 'App\\Models\\Partner', 1, 'b480d2f7-6a5f-4b77-8328-6036e22f3184', 'partner_image', 'Link', 'Link.png', 'image/png', 'public', 'public', 1662, '[]', '[]', '[]', '[]', 1, '2026-06-22 21:28:50', '2026-06-22 21:28:50'),
(225, 'App\\Models\\SliderItem', 3, '92111d00-6993-4094-9a7d-4ce6630fa8a7', 'image', 'Workshop', 'Workshop.png', 'image/png', 'public', 'public', 168652, '[]', '[]', '{\"webp\":true}', '[]', 1, '2026-06-22 22:19:28', '2026-06-28 23:16:31'),
(226, 'App\\Models\\SliderItem', 4, '0593da3e-2a7e-4440-9f58-0589461cb808', 'image', 'Governance Innovation', 'Governance-Innovation.png', 'image/png', 'public', 'public', 101716, '[]', '[]', '{\"webp\":true}', '[]', 1, '2026-06-22 22:19:28', '2026-06-28 23:16:31'),
(227, 'App\\Models\\SliderItem', 5, '699eeb26-6d58-4bc1-9f9e-fa16efe689a2', 'image', 'Economic Transformation', 'Economic-Transformation.png', 'image/png', 'public', 'public', 169315, '[]', '[]', '{\"webp\":true}', '[]', 1, '2026-06-22 22:19:28', '2026-06-28 23:16:31'),
(228, 'App\\Models\\Content', 64, '4aeac369-8029-4f7b-9859-79ebc7f05069', 'image', 'Workshop', 'Workshop.png', 'image/png', 'public', 'public', 168652, '[]', '[]', '[]', '[]', 1, '2026-06-23 00:12:37', '2026-06-23 00:12:37'),
(229, 'App\\Models\\Content', 79, '8eba5248-8f25-4d3b-8749-36b72e79abc6', 'icon', 'SVG (29)', 'SVG-(29).png', 'image/png', 'public', 'public', 457, '[]', '[]', '[]', '[]', 1, '2026-06-23 00:49:36', '2026-06-23 00:49:36'),
(230, 'App\\Models\\Content', 80, 'e86e8508-7183-4a02-a21c-6d15e2ceca29', 'icon', 'SVG (59)', 'SVG-(59).png', 'image/png', 'public', 'public', 714, '[]', '[]', '[]', '[]', 1, '2026-06-23 00:51:28', '2026-06-23 00:51:28'),
(231, 'App\\Models\\Content', 81, 'a2dd35b9-feb4-46b4-a7a0-ca2e0b5b2b1c', 'icon', 'SVG (30)', 'SVG-(30).png', 'image/png', 'public', 'public', 657, '[]', '[]', '[]', '[]', 1, '2026-06-23 00:53:21', '2026-06-23 00:53:21'),
(232, 'App\\Models\\Content', 82, '885466a5-58ce-41a8-9aa3-61da8f42d763', 'icon', 'SVG (31)', 'SVG-(31).png', 'image/png', 'public', 'public', 447, '[]', '[]', '[]', '[]', 1, '2026-06-23 00:55:02', '2026-06-23 00:55:02'),
(233, 'App\\Models\\Service', 4, '642712cb-707f-493d-9191-0feec5b6fb5b', 'image', 'Governance Innovation', 'Governance-Innovation.png', 'image/png', 'public', 'public', 101716, '[]', '[]', '[]', '[]', 1, '2026-06-23 01:28:59', '2026-06-23 01:28:59'),
(234, 'App\\Models\\Project', 1, 'df6037aa-396d-4a22-8657-dd56a1964750', 'hero', 'Governance Innovation', 'Governance-Innovation.png', 'image/png', 'public', 'public', 101716, '[]', '[]', '[]', '[]', 4, '2026-06-23 04:29:48', '2026-06-23 04:29:48'),
(235, 'App\\Models\\Service', 5, 'aed1d769-be22-42c5-bbf6-224af1948ec2', 'image', 'Digital Governance (1)', 'Digital-Governance-(1).png', 'image/png', 'public', 'public', 138188, '[]', '[]', '[]', '[]', 1, '2026-06-23 21:41:53', '2026-06-23 21:41:53'),
(236, 'App\\Models\\Service', 6, '41377199-2dbe-45c6-be8d-10ce75d556ec', 'image', 'Capacity Building', 'Capacity-Building.png', 'image/png', 'public', 'public', 150833, '[]', '[]', '[]', '[]', 1, '2026-06-23 21:42:15', '2026-06-23 21:42:15'),
(237, 'App\\Models\\Service', 7, 'f4903007-bc0f-40ad-b286-a910ecc191dd', 'image', 'Citizen Charter', 'Citizen-Charter.png', 'image/png', 'public', 'public', 147465, '[]', '[]', '[]', '[]', 1, '2026-06-23 21:42:39', '2026-06-23 21:42:39'),
(238, 'App\\Models\\Service', 8, 'f7ab7817-b356-47e7-b93f-5592338caa3f', 'image', 'Institutional Reform', 'Institutional-Reform.png', 'image/png', 'public', 'public', 116605, '[]', '[]', '[]', '[]', 1, '2026-06-23 21:43:11', '2026-06-23 21:43:11'),
(241, 'App\\Models\\Service', 9, '37bc14bf-3442-4d46-a5c0-c209f149f99e', 'image', 'Capacity Building', 'Capacity-Building.png', 'image/png', 'public', 'public', 150833, '[]', '[]', '[]', '[]', 1, '2026-06-23 21:45:10', '2026-06-23 21:45:10'),
(243, 'App\\Models\\Service', 10, 'f8a1992c-00c6-4bf2-98c8-04f3d7d65e75', 'image', 'Roundtable', 'Roundtable.png', 'image/png', 'public', 'public', 141935, '[]', '[]', '[]', '[]', 1, '2026-06-23 21:46:00', '2026-06-23 21:46:00'),
(244, 'App\\Models\\Project', 2, 'a0afe99a-ba58-4ce1-906c-6c63bc9248f3', 'hero', 'Capacity Building', 'Capacity-Building.png', 'image/png', 'public', 'public', 150833, '[]', '[]', '[]', '[]', 4, '2026-06-23 22:20:47', '2026-06-23 22:20:47'),
(245, 'App\\Models\\Project', 3, '598daba3-b7af-4cc7-b96c-d40ffdc7cb7d', 'hero', 'Citizen Charter', 'Citizen-Charter.png', 'image/png', 'public', 'public', 147465, '[]', '[]', '[]', '[]', 4, '2026-06-23 22:21:13', '2026-06-23 22:21:13'),
(246, 'App\\Models\\Project', 5, 'c978c50c-f729-4bd7-a8bf-22ea247052d1', 'hero', 'Digital Governance (1)', 'Digital-Governance-(1).png', 'image/png', 'public', 'public', 138188, '[]', '[]', '[]', '[]', 4, '2026-06-23 22:21:47', '2026-06-23 22:21:47'),
(247, 'App\\Models\\Project', 6, '20e98c09-39b0-4db8-a309-6f06dc0374a4', 'hero', 'Roundtable', 'Roundtable.png', 'image/png', 'public', 'public', 141935, '[]', '[]', '[]', '[]', 4, '2026-06-23 22:22:20', '2026-06-23 22:22:20'),
(248, 'App\\Models\\Project', 4, '6e908ddb-70c8-4542-bf5e-2d565fd76588', 'hero', 'Dialogue', 'Dialogue.png', 'image/png', 'public', 'public', 158878, '[]', '[]', '[]', '[]', 4, '2026-06-23 22:23:10', '2026-06-23 22:23:10'),
(249, 'App\\Models\\Event', 2, '83aa491c-036c-494d-a175-e01820668da6', 'hero', 'Capacity Building', 'Capacity-Building.png', 'image/png', 'public', 'public', 150833, '[]', '[]', '[]', '[]', 1, '2026-06-23 23:51:13', '2026-06-23 23:51:13'),
(250, 'App\\Models\\Event', 3, '9dfa438e-f15a-487c-8eab-8419938a7d89', 'hero', 'Citizen Charter', 'Citizen-Charter.png', 'image/png', 'public', 'public', 147465, '[]', '[]', '[]', '[]', 1, '2026-06-24 00:47:38', '2026-06-24 00:47:38'),
(252, 'App\\Models\\Setting', 1, 'f38ed344-e3b0-4328-8f70-6ee97adce32a', 'footer_icon', 'Container (12)', 'Container-(12).png', 'image/png', 'public', 'public', 1282, '[]', '[]', '[]', '[]', 5, '2026-06-24 04:27:29', '2026-06-24 04:27:29'),
(254, 'App\\Models\\Setting', 1, '069c5296-5d66-4dc9-acff-7a6d262bf4c9', 'favicon', 'Frame 26', 'Frame-26.png', 'image/png', 'public', 'public', 4012, '[]', '[]', '[]', '[]', 6, '2026-06-24 04:29:43', '2026-06-24 04:29:43'),
(255, 'App\\Models\\ServiceDetail', 3, 'daaa41e2-2d44-4792-816a-178a3b8f1a0b', 'icon', 'SVG (30)', 'SVG-(30).png', 'image/png', 'public', 'public', 657, '[]', '[]', '[]', '[]', 1, '2026-06-24 21:46:30', '2026-06-24 21:46:30'),
(257, 'App\\Models\\Team', 2, '8346c51f-1a33-4b83-b44e-6a9ba137b04b', 'image', 'Dr. Aminur Rahman', 'Dr.-Aminur-Rahman.png', 'image/png', 'public', 'public', 149768, '[]', '[]', '[]', '[]', 1, '2026-06-24 22:26:59', '2026-06-24 22:26:59'),
(258, 'App\\Models\\TeamSocialMedia', 1, '3b7d545a-e0fa-4fb5-bafc-5909b5b56f2c', 'social_icon', 'SVG (56)', 'SVG-(56).png', 'image/png', 'public', 'public', 352, '[]', '[]', '[]', '[]', 1, '2026-06-24 22:26:59', '2026-06-24 22:26:59'),
(259, 'App\\Models\\TeamSocialMedia', 2, '0639070e-90c7-4a28-9934-1f4abea132ce', 'social_icon', 'SVG (58)', 'SVG-(58).png', 'image/png', 'public', 'public', 410, '[]', '[]', '[]', '[]', 1, '2026-06-24 22:26:59', '2026-06-24 22:26:59'),
(260, 'App\\Models\\TeamSocialMedia', 3, '0d09b238-1863-43f6-a105-450aab6b784a', 'social_icon', 'SVG (57)', 'SVG-(57).png', 'image/png', 'public', 'public', 546, '[]', '[]', '[]', '[]', 1, '2026-06-24 22:26:59', '2026-06-24 22:26:59'),
(261, 'App\\Models\\Team', 15, '4dc55605-308d-4a77-bcbe-39ae07c1126c', 'image', 'Dr. Aminur Rahman', 'Dr.-Aminur-Rahman.png', 'image/png', 'public', 'public', 149768, '[]', '[]', '[]', '[]', 1, '2026-06-24 22:43:35', '2026-06-24 22:43:35'),
(262, 'App\\Models\\Team', 14, '09950227-5af8-46e9-93f8-a156cadc166d', 'image', 'Background (12)', 'Background-(12).png', 'image/png', 'public', 'public', 72191, '[]', '[]', '[]', '[]', 1, '2026-06-24 22:45:54', '2026-06-24 22:45:54'),
(263, 'App\\Models\\Content', 66, 'fb599515-17d0-4d58-929a-62f9853c0b00', 'icon', 'SVG (32)', 'SVG-(32).png', 'image/png', 'public', 'public', 559, '[]', '[]', '[]', '[]', 1, '2026-06-24 23:50:33', '2026-06-24 23:50:33'),
(264, 'App\\Models\\Content', 67, '317608a3-c4b4-4111-8994-1de965a8db05', 'icon', 'SVG (30)', 'SVG-(30).png', 'image/png', 'public', 'public', 657, '[]', '[]', '[]', '[]', 1, '2026-06-24 23:59:51', '2026-06-24 23:59:51'),
(265, 'App\\Models\\ServiceProductSolution', 3, '3c5b6e18-9410-4d96-9a9b-2f1015889939', 'icon', 'SVG (30)', 'SVG-(30).png', 'image/png', 'public', 'public', 657, '[]', '[]', '[]', '[]', 1, '2026-06-25 00:41:27', '2026-06-25 00:41:27'),
(266, 'App\\Models\\Setting', 1, '9385eef5-293a-497b-9f4c-e78a5999dd8c', 'project_client_icon', 'SVG (50)', 'SVG-(50).png', 'image/png', 'public', 'public', 513, '[]', '[]', '[]', '[]', 7, '2026-06-25 02:38:10', '2026-06-25 02:38:10'),
(267, 'App\\Models\\Setting', 1, '08b09bcd-c207-45f6-b1d3-43015f195fa2', 'project_duration_icon', 'SVG (51)', 'SVG-(51).png', 'image/png', 'public', 'public', 381, '[]', '[]', '[]', '[]', 8, '2026-06-25 02:38:10', '2026-06-25 02:38:10'),
(268, 'App\\Models\\Setting', 1, '26a1c75a-1756-43fa-abe9-d05863eb1926', 'project_location_icon', 'SVG (52)', 'SVG-(52).png', 'image/png', 'public', 'public', 647, '[]', '[]', '[]', '[]', 9, '2026-06-25 02:38:10', '2026-06-25 02:38:10'),
(269, 'App\\Models\\Setting', 1, 'ab4281d3-dab4-454b-b68f-e6e9f83849aa', 'project_sector_icon', 'SVG (53)', 'SVG-(53).png', 'image/png', 'public', 'public', 507, '[]', '[]', '[]', '[]', 10, '2026-06-25 02:38:10', '2026-06-25 02:38:10'),
(270, 'App\\Models\\Setting', 1, '3358eb1f-70ae-4d6c-82e2-39ab011f0664', 'project_status_icon', 'SVG (54)', 'SVG-(54).png', 'image/png', 'public', 'public', 414, '[]', '[]', '[]', '[]', 11, '2026-06-25 02:38:10', '2026-06-25 02:38:10'),
(271, 'App\\Models\\ResearchIdea', 1, '8543f7fb-7e07-48e1-95b7-82572c50c6bb', 'attachment', 'area of works', 'area-of-works.PNG', 'image/png', 'public', 'public', 192763, '[]', '[]', '[]', '[]', 1, '2026-06-27 23:42:25', '2026-06-27 23:42:25'),
(272, 'App\\Models\\Insight', 12, 'ce6fa3ca-6a1f-43bf-8145-d42899663491', 'article_image', 'Trade Facilitation', 'Trade-Facilitation.png', 'image/png', 'public', 'public', 162724, '[]', '[]', '[]', '[]', 2, '2026-06-28 01:33:14', '2026-06-28 01:33:14'),
(274, 'App\\Models\\Insight', 17, 'fc4a26ba-0761-44d4-a517-6e0187e2ba04', 'attachment', 'Sales_Report_2026-05-17', 'Sales_Report_2026-05-17.pdf', 'application/pdf', 'public', 'public', 1416601, '[]', '[]', '[]', '[]', 1, '2026-06-28 02:44:30', '2026-06-28 02:44:30'),
(275, 'App\\Models\\Insight', 17, '18d037d2-706d-4760-9f60-d34be8f8b67f', 'article_image', 'Citizen Charter', 'Citizen-Charter.png', 'image/png', 'public', 'public', 147465, '[]', '[]', '[]', '[]', 2, '2026-06-28 02:44:31', '2026-06-28 02:44:31'),
(276, 'App\\Models\\Team', 16, 'e03bd30b-b040-43e6-b79a-b2e732aa7cfb', 'image', 'Mr. Shafiqul Islam', 'Mr.-Shafiqul-Islam.png', 'image/png', 'public', 'public', 125471, '[]', '[]', '[]', '[]', 1, '2026-06-28 03:33:08', '2026-06-28 03:33:08'),
(277, 'App\\Models\\Team', 5, '5fe00d08-ead6-417f-8d28-797491154d2e', 'image', 'Dr. Nusrat Jahan', 'Dr.-Nusrat-Jahan.png', 'image/png', 'public', 'public', 157517, '[]', '[]', '[]', '[]', 1, '2026-06-28 03:33:36', '2026-06-28 03:33:36'),
(278, 'App\\Models\\Team', 17, 'edc6aa3a-bfe8-4850-b57c-15048540c184', 'image', 'Dr. Sabrina Hossain', 'Dr.-Sabrina-Hossain.png', 'image/png', 'public', 'public', 97326, '[]', '[]', '[]', '[]', 1, '2026-06-28 03:34:07', '2026-06-28 03:34:07'),
(279, 'App\\Models\\Team', 6, '93447725-e3d5-4e8f-ba60-ffb9429831c7', 'image', 'Mr. Tariqul Islam', 'Mr.-Tariqul-Islam.png', 'image/png', 'public', 'public', 191557, '[]', '[]', '[]', '[]', 1, '2026-06-28 03:35:00', '2026-06-28 03:35:00'),
(280, 'App\\Models\\Team', 18, 'd23d5788-32f0-46c1-9f18-05659ab6a815', 'image', 'Prof. Nazrul Islam', 'Prof.-Nazrul-Islam.png', 'image/png', 'public', 'public', 103881, '[]', '[]', '[]', '[]', 1, '2026-06-28 03:35:29', '2026-06-28 03:35:29'),
(281, 'App\\Models\\Team', 19, 'c8f15b4e-0fb5-4293-889b-167c50682c07', 'image', 'Background (12)', 'Background-(12).png', 'image/png', 'public', 'public', 72191, '[]', '[]', '[]', '[]', 1, '2026-06-28 03:36:09', '2026-06-28 03:36:09'),
(282, 'App\\Models\\Team', 11, 'a8b8d4f3-1075-46c2-a495-b663c7aa1226', 'image', 'Mr. Farhan Ahmed', 'Mr.-Farhan-Ahmed.png', 'image/png', 'public', 'public', 82619, '[]', '[]', '[]', '[]', 1, '2026-06-28 03:36:43', '2026-06-28 03:36:43'),
(283, 'App\\Models\\InsightArticle', 14, 'b8134c32-beb8-459d-a4f6-df4848bf778c', 'attachment', 'Sales_Report_2026-05-17', 'Sales_Report_2026-05-17.pdf', 'application/pdf', 'public', 'public', 1416601, '[]', '[]', '[]', '[]', 1, '2026-06-28 04:11:27', '2026-06-28 04:11:27'),
(284, 'App\\Models\\Insight', 16, '65f8d5fe-e81d-42ea-bedb-251a5a6ffc9a', 'article_image', 'Capacity Building', 'Capacity-Building.png', 'image/png', 'public', 'public', 150833, '[]', '[]', '[]', '[]', 1, '2026-06-28 04:40:34', '2026-06-28 04:40:34'),
(286, 'App\\Models\\Insight', 14, '64147bf8-0712-47dd-ac6b-99a09b62ffa5', 'article_image', 'Digital Governance (1)', 'Digital-Governance-(1).png', 'image/png', 'public', 'public', 138188, '[]', '[]', '[]', '[]', 1, '2026-06-28 04:42:08', '2026-06-28 04:42:08'),
(287, 'App\\Models\\Setting', 1, 'caf523b8-af40-4065-8cf8-4c504d8784e7', 'event_date_icon', 'SVG (29)', 'SVG-(29).png', 'image/png', 'public', 'public', 457, '[]', '[]', '[]', '[]', 12, '2026-06-28 05:04:56', '2026-06-28 05:04:56'),
(288, 'App\\Models\\Setting', 1, '9a766c47-2258-4631-8c01-f3d42771b064', 'event_venue_icon', 'SVG (60)', 'SVG-(60).png', 'image/png', 'public', 'public', 843, '[]', '[]', '[]', '[]', 13, '2026-06-28 05:04:56', '2026-06-28 05:04:56'),
(289, 'App\\Models\\Setting', 1, 'c5d292e9-c93c-493e-8549-ca5d7c6a6de6', 'event_registration_icon', 'SVG (54)', 'SVG-(54).png', 'image/png', 'public', 'public', 414, '[]', '[]', '[]', '[]', 14, '2026-06-28 05:04:56', '2026-06-28 05:04:56'),
(290, 'App\\Models\\Setting', 1, '30162020-f6cb-40d9-a5be-36ef7803d325', 'social_icon_216edf82-1a70-4acf-aa7d-41d890d4b5e8', 'facebook-app-symbol', 'facebook-app-symbol.png', 'image/png', 'public', 'public', 346, '[]', '[]', '[]', '[]', 15, '2026-06-28 20:50:04', '2026-06-28 20:50:04'),
(291, 'App\\Models\\Setting', 1, 'efdbae10-1d3d-4450-aebb-42e1985946b2', 'social_icon_85ac2c92-0fdd-4bfc-843a-6104b894689b', 'linkedin', 'linkedin.png', 'image/png', 'public', 'public', 356, '[]', '[]', '[]', '[]', 16, '2026-06-28 20:50:04', '2026-06-28 20:50:04'),
(292, 'App\\Models\\Insight', 13, 'c4ba6b74-e130-4d1e-a2f0-cb23091d9ee3', 'attachment', 'Vehicle_Status_Report_2026-04-02', 'Vehicle_Status_Report_2026-04-02.pdf', 'application/pdf', 'public', 'public', 1437202, '[]', '[]', '[]', '[]', 1, '2026-06-28 21:50:32', '2026-06-28 21:50:32'),
(293, 'App\\Models\\Insight', 13, '4bb7e3eb-5022-4bbf-ab0c-59e1ed2f5c4a', 'article_image', 'Research and Publications', 'Research-and-Publications.png', 'image/png', 'public', 'public', 125639, '[]', '[]', '[]', '[]', 2, '2026-06-28 21:50:32', '2026-06-28 21:50:32'),
(294, 'App\\Models\\Insight', 14, 'bdfb0dd0-a91f-45e2-86fa-3ecb0c8013d6', 'attachment', 'Sales_Report_2026-05-17', 'Sales_Report_2026-05-17.pdf', 'application/pdf', 'public', 'public', 1416601, '[]', '[]', '[]', '[]', 2, '2026-06-28 21:51:37', '2026-06-28 21:51:37'),
(295, 'App\\Models\\Insight', 16, '78143caf-ff86-4b07-b9d4-bfb13efb95f2', 'attachment', 'Sales_Report_2026-05-17', 'Sales_Report_2026-05-17.pdf', 'application/pdf', 'public', 'public', 1416601, '[]', '[]', '[]', '[]', 2, '2026-06-28 22:01:50', '2026-06-28 22:01:50'),
(296, 'App\\Models\\InsightArticle', 7, '5067d30d-f3e4-41aa-b7a1-447bc7eec4de', 'attachment', 'Landfill_Report_2026-05-17', 'Landfill_Report_2026-05-17.pdf', 'application/pdf', 'public', 'public', 1407702, '[]', '[]', '[]', '[]', 1, '2026-06-28 22:01:50', '2026-06-28 22:01:50'),
(297, 'App\\Models\\Insight', 15, '7b28db7c-abdc-4edb-8678-12665f05f03b', 'article_image', 'Dialogue', 'Dialogue.png', 'image/png', 'public', 'public', 158878, '[]', '[]', '[]', '[]', 1, '2026-06-28 22:45:10', '2026-06-28 22:45:10'),
(298, 'App\\Models\\Insight', 21, '1f3c42c1-e4ba-4c3a-8827-fbbc015d011f', 'article_image', 'Dr. Nusrat Jahan', 'Dr.-Nusrat-Jahan.png', 'image/png', 'public', 'public', 157517, '[]', '[]', '[]', '[]', 1, '2026-06-28 22:46:38', '2026-06-28 22:46:38'),
(299, 'App\\Models\\Insight', 4, '1466078b-9f6c-4294-a8b7-8abb0ae65faa', 'article_image', 'Dr. Taslima Khatun', 'Dr.-Taslima-Khatun.png', 'image/png', 'public', 'public', 86802, '[]', '[]', '[]', '[]', 1, '2026-06-28 22:47:19', '2026-06-28 22:47:19'),
(300, 'App\\Models\\ContactInfo', 1, '1bcd4938-fc94-4e52-86b8-0bcba810abbd', 'icon', 'SVG (60)', 'SVG-(60).png', 'image/png', 'public', 'public', 843, '[]', '[]', '[]', '[]', 1, '2026-06-29 00:28:58', '2026-06-29 00:28:58');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_25_062138_create_countries_table', 1),
(5, '2024_08_25_065003_create_personal_access_tokens_table', 1),
(6, '2024_08_25_082908_create_professions_table', 1),
(7, '2024_08_25_083055_create_education_types_table', 1),
(8, '2024_08_25_083117_create_genders_table', 1),
(9, '2024_08_25_083340_create_user_details_table', 1),
(10, '2024_08_25_093802_create_religions_table', 1),
(11, '2024_08_27_054752_create_admins_table', 1),
(12, '2024_08_31_163847_create_permission_tables', 2),
(13, '2024_08_31_164000_create_media_table', 2),
(14, '2025_01_15_155437_create_oauth_auth_codes_table', 3),
(15, '2025_01_15_155438_create_oauth_access_tokens_table', 3),
(16, '2025_01_15_155439_create_oauth_refresh_tokens_table', 3),
(17, '2025_01_15_155440_create_oauth_clients_table', 3),
(18, '2025_01_15_155441_create_oauth_personal_access_clients_table', 3),
(19, '2026_04_20_000000_create_settings_table', 4),
(20, '2026_04_20_010000_create_sliders_table', 4),
(21, '2026_04_20_020000_create_contents_table', 4),
(22, '2026_04_20_021000_create_services_table', 4),
(23, '2026_04_20_022000_create_service_details_table', 4),
(24, '2026_04_20_023000_create_service_product_solutions_table', 4),
(25, '2026_04_20_024000_add_overview_to_services_table', 4),
(26, '2026_04_21_000001_create_projects_table', 4),
(27, '2026_04_21_000002_create_project_services_table', 4),
(28, '2026_04_21_000003_create_project_locations_table', 4),
(29, '2026_04_21_000004_create_project_phase_details_table', 4),
(30, '2026_04_21_000005_create_project_outcomes_table', 4),
(31, '2026_04_21_091951_create_contact_messages_table', 5),
(32, '2026_04_21_100924_create_contact_infos_table', 5),
(33, '2026_04_22_030458_create_job_postings_table', 5),
(34, '2026_04_22_030512_create_job_applications_table', 5),
(35, '2026_04_22_044923_add_responsibilities_and_requirements_to_job_postings_table', 6),
(36, '2026_04_21_000006_create_teams_table', 7),
(37, '2026_04_21_000007_create_team_expertises_table', 7),
(38, '2026_04_21_000008_create_team_social_media_table', 7),
(39, '2026_04_21_000009_create_team_project_table', 7),
(40, '2026_04_21_000010_create_insights_table', 7),
(41, '2026_04_21_000011_create_insight_articles_table', 7),
(42, '2026_04_22_080530_create_partners_table', 8),
(43, '2026_04_22_100330_add_new_column_to_teams', 9),
(44, '2026_04_22_112840_create_insight_types_table', 9),
(45, '2026_04_22_122208_change_a_column_to_insights', 10),
(46, '2026_04_22_144708_change_type_field_insight_articles_table', 10),
(47, '2026_04_22_151032_add_new_columns_insight_articles_table', 10),
(48, '2026_04_23_063615_change_a_column_to_teams', 11),
(49, '2026_04_26_120000_add_short_description_to_teams', 12),
(50, '2026_04_26_130000_add_end_date_to_job_postings', 12),
(51, '2026_04_23_052843_add_new_column_to_insight_types_table', 13),
(52, '2026_04_23_073114_add_new_column_to_insights_table', 13),
(53, '2026_04_23_100424_add_content_json_to_insight_articles_table', 13),
(54, '2026_04_26_074921_add_new_fields_to_insight_articles_table', 13),
(55, '2026_04_27_062659_add_source_name_to_insights_table', 13),
(56, '2026_04_27_101912_add_a_new_column_to_settings_table', 14),
(57, '2026_04_28_170705_add_content_fields_to_services_table', 15),
(58, '2026_04_28_194449_add_description_to_services_table', 16),
(59, '2026_04_29_000001_add_author_fields_to_insights_table', 17),
(60, '2026_04_29_091906_create_slider_items_table', 18),
(61, '2026_04_29_102317_create_cv_submissions_table', 19),
(62, '2026_05_03_144550_add_new_column_to_teams', 20),
(63, '2026_05_03_162657_add_publish_link_to_insights_table', 20),
(64, '2026_05_03_163331_rename_publish_link_to_publish_links_on_insights_table', 20),
(65, '2026_06_18_144516_create_faqs_table', 21),
(66, '2026_06_18_164117_alter_contact_infos_type_add_career', 21),
(67, '2026_06_22_024450_add_partner_to_projects_table', 22),
(68, '2026_06_21_083247_add_advisor_category_to_teams_table', 23),
(69, '2026_06_21_094812_add_profile_fields_to_teams_table', 23),
(70, '2026_06_22_100001_create_events_table', 24),
(71, '2026_06_22_100002_create_event_speakers_table', 24),
(72, '2026_06_22_100003_create_event_partners_table', 24),
(73, '2026_06_22_065331_add_resource_fields_to_insights_table', 25),
(74, '2026_06_23_000001_create_project_categories_table', 26),
(75, '2026_06_23_000002_add_project_category_id_to_projects_table', 26),
(76, '2026_06_24_061701_create_event_proposals_table', 27),
(77, '2026_06_24_103740_add_url_to_slider_items_table', 28),
(78, '2026_06_25_053951_add_show_about_story_to_settings_table', 29),
(79, '2026_06_28_050104_create_research_ideas_table', 30),
(80, '2026_06_29_000001_add_show_featured_to_insight_types_table', 31),
(81, '2026_06_29_055022_add_team_id_to_event_speakers_table', 32),
(82, '2026_06_29_064701_add_icon_to_project_phase_details_table', 33);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `description`, `link`, `sort_order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'amazon', NULL, NULL, 0, 1, '2026-04-23 01:37:24', '2026-06-22 21:28:50'),
(2, 'coinbase', NULL, NULL, 0, 1, '2026-04-23 01:38:07', '2026-06-22 21:28:01'),
(3, 'ford', NULL, NULL, 0, 1, '2026-04-23 01:38:29', '2026-06-22 03:59:34'),
(7, 'openAI', NULL, NULL, 0, 1, '2026-04-26 07:16:13', '2026-06-22 03:57:29'),
(10, 'nvidia', NULL, NULL, 0, 1, '2026-06-22 03:56:51', '2026-06-22 03:56:51');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
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
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `project_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_standard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Completed',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `project_category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_title`, `client`, `partner`, `project_standard`, `overview`, `start_date`, `end_date`, `project_status`, `sort_order`, `project_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Accreditation Support to PRTC, CVASU', 'PRTC, CVASU', 'Cabinet Division, Government of Bangladesh', 'ISO/IEC 17025:2017', '<p>Mauris vel vulputate lectus, quis aliquam velit. Mauris dictum nulla sed tortor pharetra lacinia. Morbi augue est, finibus ut consequat ac, suscipit at nunc. Etiam finibus tincidunt fringilla. Maecenas consectetur turpis ac sollicitudin fringilla. Morbi viverra lectus quis ipsum facilisis pellentesque.</p>', '2023-01-21', '2024-08-21', 'Completed', 1, 1, '2026-04-21 05:00:57', '2026-06-23 04:56:42'),
(2, 'Seven-Story Advanced Customs Laboratory — Schematic Design', 'Chattogram Customs Authority', 'Cabinet Division, Government of Bangladesh', NULL, '<p>Mauris vel vulputate lectus, quis aliquam lacinia. Morbi augue est, finibus ut consequat ac, suscipit at nunc. Etiam finibus augue est, finibus ut consequat ac, suscipit at nu</p>', '2023-01-21', '2024-05-21', 'Completed', 2, 2, '2026-04-21 05:06:21', '2026-06-23 22:20:47'),
(3, 'HS Code Import Database & BAFISA Website Upgrade', 'Freight Forwarding & Shipping Association, Bangladesh', 'Cabinet Division, Government of Bangladesh', NULL, '<p>Mauris vel vulputate lectus, quis aliquam velit. Mauris dictum nulla sed tortor pharetra lacinia. Morbi augue est, finibus ut consequat ac, suscipit at nunc. Etiam finibus tincidunt fringilla. Maecenas consectetur turpis ac sollicitudin fringilla. Morbi viverra lectus quis ipsum facilisis pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis nisi sit amet elit dictum tempor. Nunc vulputate ultrices efficitur. Quisque eu est non turpis suscipit ullamcorper. Mauris vel vulputate lectus, quis aliquam velit. Mauris dictum nulla sed tortor pharetra lacinia. Morbi augue est, finibus ut consequat ac, suscipit at nunc. Etiam finibus tincidunt fringilla. Maecenas consectetur turpis ac sollicitudin fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis nisi sit amet elit dictum tempor. Nunc vulputate ultrices efficitur. Quisque eu est non turpis suscipit ullamcorper. Mauris vel vulputate lectus, quis aliquam velit. Mauris dictum nulla sed tortor pharetra lacinia. Morbi augue est, finibus ut consequat ac, suscipit at nunc. Etiam finibus tincidunt fringilla. Maecenas consectetur turpis ac sollicitudin fringilla.</p>', '2022-09-21', '2023-01-01', 'Completed', 3, 2, '2026-04-21 05:27:43', '2026-06-23 22:26:18'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'National Board of Revenue', 'Cabinet Division, Government of Bangladesh', NULL, '<p>Mauris vel vulputate lectus, quis aliquam velit. Mauris dictum nulla sed tortor pharetra lacinia. Morbi augue est, finibus ut consequat ac, suscipit at nunc.</p>', '2022-09-21', '2023-01-02', 'Completed', 6, 2, '2026-04-21 05:39:10', '2026-06-23 22:24:58'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'World Bank / IFC', 'Cabinet Division, Government of Bangladesh', NULL, '<p>Mauris vel vulputate lectus, quis aliquam velit. Mauris dictum nulla sed tortor pharetra lacinia. Morbi augue est, finibus ut consequat ac, suscipit at nunc.</p>', '2022-09-21', '2022-10-14', 'Completed', 4, 3, '2026-04-21 05:40:27', '2026-06-23 22:26:41'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'DCCI / Private Sector', 'Cabinet Division, Government of Bangladesh', NULL, '<p>Mauris vel vulputate lectus, quis aliquam velit. Mauris dictum nulla sed tortor pharetra lacinia. Morbi augue est, finibus ut consequat ac, suscipit at nunc.</p>', '2022-09-21', '2023-02-03', 'Completed', 5, 4, '2026-04-21 05:41:34', '2026-06-23 22:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `name`, `sort_order`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Governance & Reform', 1, 1, '2026-06-23 04:14:04', '2026-06-23 04:14:04'),
(2, 'Economic & Trade', 2, 1, '2026-06-23 04:26:22', '2026-06-23 04:26:22'),
(3, 'Digital & Research', 3, 1, '2026-06-23 04:26:59', '2026-06-23 04:26:59'),
(4, 'Social & Climate', 4, 1, '2026-06-23 04:27:25', '2026-06-23 04:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `project_locations`
--

CREATE TABLE `project_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `location` longtext COLLATE utf8mb4_unicode_ci,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_locations`
--

INSERT INTO `project_locations` (`id`, `project_id`, `location`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 2, '<p>Chattogram, Bangladesh</p>', 0, '2026-04-21 05:23:21', '2026-06-23 22:20:47'),
(4, 4, '<p>Chattogram, Bangladesh</p>', 0, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(5, 1, '<p>Dhaka Bangladesh</p>', 0, '2026-04-21 23:49:14', '2026-06-23 04:29:48'),
(6, 3, '<p>Dhaka</p>', 0, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(7, 5, '<p>Sylhet</p>', 0, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(8, 6, '<p>Dhaka</p>', 0, '2026-04-22 00:09:12', '2026-06-23 22:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `project_outcomes`
--

CREATE TABLE `project_outcomes` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_outcomes`
--

INSERT INTO `project_outcomes` (`id`, `project_id`, `icon`, `text`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc non diam pellentesque pharetra. Nullam ornare volutpat diam vitae feugiat.</p>', 0, '2026-04-21 05:22:02', '2026-06-23 04:29:48'),
(2, 2, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc non diam pellentesque pharetra. Nullam ornare volutpat diam vitae feugiat.</p>', 0, '2026-04-21 05:23:21', '2026-06-23 22:20:47'),
(15, 4, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc non diam pellentesque pharetra. Nullam ornare volutpat diam vitae feugiat.</p>', 0, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(16, 4, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 1, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(17, 4, 'fa fa-check-circle', '<p>Nulla eros nisl, blandit sollicitudin eleifend nec, facilisis quis metus. Suspendisse volutpat nunc justo, sit amet consectetur nunc tincidunt ac.</p>', 2, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(18, 4, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc .</p>', 3, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(19, 4, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risu.</p>', 4, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(20, 4, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 5, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(21, 1, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 1, '2026-04-21 23:49:14', '2026-06-23 04:29:48'),
(22, 1, 'fa fa-check-circle', '<p>Nulla eros nisl, blandit sollicitudin eleifend nec, facilisis quis metus. Suspendisse volutpat nunc justo, sit amet consectetur nunc tincidunt ac.</p>', 2, '2026-04-21 23:49:14', '2026-06-23 04:29:48'),
(23, 1, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc .</p>', 3, '2026-04-21 23:49:14', '2026-06-23 04:29:48'),
(24, 1, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risu.</p>', 4, '2026-04-21 23:49:14', '2026-06-23 04:29:48'),
(25, 1, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 5, '2026-04-21 23:49:14', '2026-06-23 04:29:48'),
(26, 2, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 1, '2026-04-21 23:53:38', '2026-06-23 22:20:47'),
(27, 2, 'fa fa-check-circle', '<p>Nulla eros nisl, blandit sollicitudin eleifend nec, facilisis quis metus. Suspendisse volutpat nunc justo, sit amet consectetur nunc tincidunt ac.</p>', 2, '2026-04-21 23:53:38', '2026-06-23 22:20:47'),
(28, 2, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc .</p>', 3, '2026-04-21 23:53:38', '2026-06-23 22:20:47'),
(29, 2, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risu.</p>', 4, '2026-04-21 23:53:38', '2026-06-23 22:20:47'),
(30, 2, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 5, '2026-04-21 23:53:38', '2026-06-23 22:20:47'),
(31, 3, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc non diam pellentesque pharetra. Nullam ornare volutpat diam vitae feugiat.</p>', 0, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(32, 3, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 1, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(33, 3, 'fa fa-check-circle', '<p>Nulla eros nisl, blandit sollicitudin eleifend nec, facilisis quis metus. Suspendisse volutpat nunc justo, sit amet consectetur nunc tincidunt ac.</p>', 2, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(34, 3, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc .</p>', 3, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(35, 3, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risu.</p>', 4, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(36, 3, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 5, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(37, 5, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc .</p>', 0, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(38, 5, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 1, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(39, 5, 'fa fa-check-circle', '<p>Nulla eros nisl, blandit sollicitudin eleifend nec, facilisis quis metus. Suspendisse volutpat nunc justo, sit amet consectetur nunc tincidunt ac.</p>', 2, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(40, 5, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc .</p>', 3, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(41, 5, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 4, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(42, 5, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 5, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(43, 6, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc .</p>', 0, '2026-04-22 00:09:12', '2026-06-23 22:22:20'),
(44, 6, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 1, '2026-04-22 00:09:12', '2026-06-23 22:22:20'),
(45, 6, 'fa fa-check-circle', '<p>Nulla eros nisl, blandit sollicitudin eleifend nec, facilisis quis metus. Suspendisse volutpat nunc justo, sit amet consectetur nunc tincidunt ac.</p>', 2, '2026-04-22 00:09:12', '2026-06-23 22:22:20'),
(46, 6, 'fa fa-check-circle', '<p>Nam a ultricies neque. Integer id mi et arcu consectetur sagittis. Vivamus placerat nunc .</p>', 3, '2026-04-22 00:09:12', '2026-06-23 22:22:20'),
(47, 6, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 4, '2026-04-22 00:09:12', '2026-06-23 22:22:20'),
(48, 6, 'fa fa-check-circle', '<p>Phasellus tempus id mauris ac consequat. Ut placerat, massa eget convallis varius, dolor quam lacinia risus, in euismod nunc dolor eget ligula.</p>', 5, '2026-04-22 00:09:12', '2026-06-23 22:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `project_phase_details`
--

CREATE TABLE `project_phase_details` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `phase_description` longtext COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_phase_details`
--

INSERT INTO `project_phase_details` (`id`, `project_id`, `phase_description`, `icon`, `attachment`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, '<p>Deliverable Phases</p>', 'projects/phases/icons/Et5cbE9v1R6dbyMQL1f86bYWsX9RL7vprMkiG1tE.png', NULL, 0, '2026-04-21 05:22:02', '2026-06-29 00:56:31'),
(2, 2, '<p>Deliverable Phases</p>', NULL, NULL, 0, '2026-04-21 05:23:21', '2026-06-23 22:20:47'),
(7, 4, '<p>phase 1</p>', NULL, NULL, 0, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(8, 4, '<p>phase 2</p>', NULL, NULL, 1, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(9, 4, '<p>phase 3</p>', NULL, NULL, 2, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(10, 4, '<p>phase 4</p>', NULL, NULL, 3, '2026-04-21 23:44:36', '2026-06-23 22:23:10'),
(11, 1, '<p>Phases</p>', 'projects/phases/icons/5y4kwLkkxNlYtrSoqUDL46MiPeG9h2tdCwnxzI7f.png', NULL, 1, '2026-04-21 23:49:14', '2026-06-29 00:56:31'),
(12, 1, '<p>Phases</p>', 'projects/phases/icons/ddzGxcsgtZqMLSG6VjETUxbrDKg5eSYLDPiAzvin.png', NULL, 2, '2026-04-21 23:49:14', '2026-06-29 00:56:31'),
(13, 2, '<p>Phases</p>', NULL, NULL, 1, '2026-04-21 23:53:38', '2026-06-23 22:20:47'),
(14, 2, '<p>Phases</p>', NULL, NULL, 2, '2026-04-21 23:53:38', '2026-06-23 22:20:47'),
(15, 3, '<p>1</p>', NULL, NULL, 0, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(16, 3, '<p>3</p>', NULL, NULL, 1, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(17, 3, '<p>5</p>', NULL, NULL, 2, '2026-04-21 23:56:18', '2026-06-23 22:21:14'),
(18, 5, '<p>Phase</p>', NULL, NULL, 0, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(19, 5, '<p>Phase</p>', NULL, NULL, 1, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(20, 5, '<p>Phase</p>', NULL, NULL, 2, '2026-04-22 00:07:24', '2026-06-23 22:21:47'),
(21, 6, '<p>Phase</p>', NULL, NULL, 0, '2026-04-22 00:09:12', '2026-06-23 22:22:20'),
(22, 6, '<p>Phase</p>', NULL, NULL, 1, '2026-04-22 00:09:12', '2026-06-23 22:22:20'),
(23, 6, '<p>Phase</p>', NULL, NULL, 2, '2026-04-22 00:09:12', '2026-06-23 22:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `project_services`
--

CREATE TABLE `project_services` (
  `project_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_services`
--

INSERT INTO `project_services` (`project_id`, `service_id`) VALUES
(2, 5),
(4, 5),
(1, 6),
(3, 6),
(5, 9),
(6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research_ideas`
--

CREATE TABLE `research_ideas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `research_ideas`
--

INSERT INTO `research_ideas` (`id`, `name`, `email`, `organisation`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'Md. Ragib Shahriar', 'ragibshahriar58@gmail.com', 'Orbd', 'Test', 1, '2026-06-27 23:42:24', '2026-06-27 23:42:41'),
(2, 'Md. Ragib Shahriar', 'ragibshahriar58@gmail.com', 'Orbd', 'adsadada', 0, '2026-06-28 23:23:04', '2026-06-28 23:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `content_id` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `design_word` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `overview` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `content_id`, `slug`, `service_name`, `section`, `heading`, `sub_heading`, `design_word`, `description`, `sort_order`, `overview`, `active`, `created_at`, `updated_at`) VALUES
(4, NULL, 'service 1', 'Strengthening Cross-Border Trade & Customs Systems', 'Trade Facilitation & Customs', 'Trade Facilitation & Customs', NULL, 'Facilitation & Customs', '<p>Supporting governments and trade bodies to modernise, simplify, and automate cross-border trade procedures in line with WTO Trade Facilitation Agreement commitments.</p>', 1, 'TRACE supports governments, trade bodies, and private stakeholders to modernize, simplify, and automate cross-border trade procedures in line with global best practices and WTO Trade Facilitation Agreement (TFA) commitments. Our approach integrates policy reform, digital transformation, and institutional strengthening. By combining strategic policy insight with cutting-edge technical innovation, TRACE bridges the gap between reform design and implementation, turning commitments into real-world improvements at ports, borders, and trade agencies.&nbsp;', 1, '2026-04-21 04:42:31', '2026-06-25 00:20:30'),
(5, NULL, 'service 2', 'Evidence-Based Policy Reform & Advocacy', 'Policy Advocacy', 'Policy Advocacy', NULL, 'Advocacy', '<p>Delivering evidence-based policy advocacy and recommendations to help governments design actionable, impactful reforms that translate complex realities into clear policy direction.</p>', 2, 'TRACE supports governments, trade bodies, and private stakeholders to modernize, simplify, and automate cross-border trade procedures in line with global best practices and WTO Trade Facilitation Agreement (TFA) commitments. Our approach integrates policy reform, digital transformation, and institutional strengthening. By combining strategic policy insight with cutting-edge technical innovation, TRACE bridges the gap between reform design and implementation, turning commitments into real-world improvements at ports, borders, and trade agencies.', 1, '2026-04-21 04:45:36', '2026-04-28 13:52:27'),
(6, NULL, 'service 3', 'In-Depth Trade, Economic & Development Research', 'Research & Assessments', 'Research & Assessments', NULL, 'Assessments', '<p>Conducting rigorous research, assessments, and evaluations on trade, economics, and development issues to drive informed decision-making for governments and development agencies.</p>', 3, 'TRACE supports governments, trade bodies, and private stakeholders to modernize, simplify, and automate cross-border trade procedures in line with global best practices and WTO Trade Facilitation Agreement (TFA) commitments. Our approach integrates policy reform, digital transformation, and institutional strengthening. By combining strategic policy insight with cutting-edge technical innovation, TRACE bridges the gap between reform design and implementation, turning commitments into real-world improvements at ports, borders, and trade agencies.', 1, '2026-04-21 04:49:22', '2026-06-23 21:42:15'),
(7, NULL, 'service 4', 'Need-Based Training for Public & Private Sector', 'Capacity Building', 'Capacity Building', NULL, 'Building', '<p>Building the capacity of public and private sector stakeholders through targeted, need based training on trade, markets, IT systems, and laboratory practices.</p>', 4, 'TRACE supports governments, trade bodies, and private stakeholders to modernize, simplify, and automate cross-border trade procedures in line with global best practices and WTO Trade Facilitation Agreement (TFA) commitments. Our approach integrates policy reform, digital transformation, and institutional strengthening. By combining strategic policy insight with cutting-edge technical innovation, TRACE bridges the gap between reform design and implementation, turning commitments into real-world improvements at ports, borders, and trade agencies.', 1, '2026-04-21 04:51:32', '2026-06-23 21:42:39'),
(8, NULL, 'service 5', 'End-to-End Project Design, Management & Implementation', 'Project Management', 'Project Management', NULL, 'Management', '<p>Designing, managing, and implementing tailor-made projects that address trade, economic, and market access challenges —delivering measurable results across the full lifecycle.</p>', 5, 'TRACE supports governments, trade bodies, and private stakeholders to modernize, simplify, and automate cross-border trade procedures in line with global best practices and WTO Trade Facilitation Agreement (TFA) commitments. Our approach integrates policy reform, digital transformation, and institutional strengthening. By combining strategic policy insight with cutting-edge technical innovation, TRACE bridges the gap between reform design and implementation, turning commitments into real-world improvements at ports, borders, and trade agencies.', 1, '2026-04-21 04:52:42', '2026-04-28 13:59:53'),
(9, NULL, 'service 6', 'Technology-Driven Trade Systems & Digital Platforms', 'Technology Solutions', 'Technology Solutions', NULL, 'Solutions', '<p>Designing and deploying technology-driven trade systems — LIMS, certification platforms, single windows, and custom digital tools — that make trade procedures faster and cost-effective.</p>', 6, 'TRACE supports governments, trade bodies, and private stakeholders to modernize, simplify, and automate cross-border trade procedures in line with global best practices and WTO Trade Facilitation Agreement (TFA) commitments. Our approach integrates policy reform, digital transformation, and institutional strengthening. By combining strategic policy insight with cutting-edge technical innovation, TRACE bridges the gap between reform design and implementation, turning commitments into real-world improvements at ports, borders, and trade agencies.', 1, '2026-04-21 04:53:18', '2026-06-23 21:43:42'),
(10, NULL, 'service 7', 'Lab Accreditation, QMS & Testing Capacity Development', 'Laboratory Services', 'Laboratory Services', NULL, 'Services', '<p>Supporting public and private laboratories to establish quality management systems, obtain ISO/IEC 17025 accreditation, and enhance testing capacity to meet international standards.</p>', 7, 'TRACE supports governments, trade bodies, and private stakeholders to modernize, simplify, and automate cross-border trade procedures in line with global best practices and WTO Trade Facilitation Agreement (TFA) commitments. Our approach integrates policy reform, digital transformation, and institutional strengthening. By combining strategic policy insight with cutting-edge technical innovation, TRACE bridges the gap between reform design and implementation, turning commitments into real-world improvements at ports, borders, and trade agencies.', 1, '2026-04-21 04:54:24', '2026-06-23 21:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `service_details`
--

CREATE TABLE `service_details` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_details`
--

INSERT INTO `service_details` (`id`, `service_id`, `text`, `sort_order`, `created_at`, `updated_at`) VALUES
(3, 4, '<p>Mapping and streamlining border processes</p>', 0, '2026-04-21 04:43:39', '2026-06-23 01:28:59'),
(4, 5, '<p>Introducing digital solutions for licensing and clearance</p>', 0, '2026-04-21 04:46:57', '2026-06-23 21:41:53'),
(5, 6, '<p>Devising solutions for promoting exports following international requirements</p>', 0, '2026-04-21 04:50:13', '2026-06-23 21:42:15'),
(10, 4, '<p>Introducing digital solutions for licensing and clearance</p>', 1, '2026-04-21 21:44:13', '2026-06-23 01:28:59'),
(11, 4, '<p>Devising solutions for promoting exports following international requirements</p>', 2, '2026-04-21 21:44:13', '2026-06-23 01:28:59'),
(12, 4, '<p>Review legislative framework to identify trade bottlenecks and suggest alignment measures</p>', 3, '2026-04-21 21:44:13', '2026-06-23 01:28:59'),
(13, 4, '<p>Supporting the private sector to avail trade facilitation services offered by the Government</p>', 4, '2026-04-21 21:44:13', '2026-06-23 01:28:59'),
(14, 4, '<p>Facilitating stakeholder consultations and coordination platforms</p>', 5, '2026-04-21 21:44:13', '2026-06-23 01:28:59'),
(15, 4, '<p>Advising business chambers and associations on trade procedures and advocacy</p>', 6, '2026-04-21 21:44:13', '2026-06-23 01:28:59'),
(20, 5, '<p>Introducing digital solutions for licensing and clearance</p>', 1, '2026-04-21 22:18:28', '2026-06-23 21:41:53'),
(21, 5, '<p>Devising solutions for promoting exports following international requirements</p>', 2, '2026-04-21 22:18:28', '2026-06-23 21:41:53'),
(22, 5, '<p>Review legislative framework to identify trade bottlenecks and suggest alignment measures</p>', 3, '2026-04-21 22:18:28', '2026-06-23 21:41:53'),
(23, 5, '<p>Supporting the private sector to avail trade facilitation services offered by the Government</p>', 4, '2026-04-21 22:18:28', '2026-06-23 21:41:53'),
(24, 7, '<p>Mapping and streamlining border processes</p>', 0, '2026-04-21 22:20:10', '2026-06-23 21:42:39'),
(25, 7, '<p>Introducing digital solutions for licensing and clearance</p>', 1, '2026-04-21 22:20:11', '2026-06-23 21:42:39'),
(26, 7, '<p>Devising solutions for promoting exports following international requirements</p>', 2, '2026-04-21 22:20:11', '2026-06-23 21:42:39'),
(27, 7, '<p>Review legislative framework to identify trade bottlenecks and suggest alignment measures</p>', 3, '2026-04-21 22:20:11', '2026-06-23 21:42:39'),
(28, 7, '<p>Supporting the private sector to avail trade facilitation services offered by the Government</p>', 4, '2026-04-21 22:20:11', '2026-06-23 21:42:39'),
(29, 7, '<p>Facilitating stakeholder consultations and coordination platforms</p>', 5, '2026-04-21 22:20:11', '2026-06-23 21:42:39'),
(30, 8, '<p>Mapping and streamlining border processes</p>', 0, '2026-04-21 22:21:12', '2026-06-23 21:43:11'),
(31, 8, '<p>Introducing digital solutions for licensing and clearance</p>', 1, '2026-04-21 22:21:12', '2026-06-23 21:43:11'),
(32, 8, '<p>Devising solutions for promoting exports following international requirements</p>', 2, '2026-04-21 22:21:12', '2026-06-23 21:43:11'),
(33, 8, '<p>Review legislative framework to identify trade bottlenecks and suggest alignment measures</p>', 3, '2026-04-21 22:21:12', '2026-06-23 21:43:11'),
(34, 8, '<p>Supporting the private sector to avail trade facilitation services offered by the Government</p>', 4, '2026-04-21 22:21:12', '2026-06-23 21:43:11'),
(44, 9, '<p>Text</p>', 0, '2026-06-23 21:45:10', '2026-06-23 21:45:10'),
(45, 10, '<p>Test</p>', 0, '2026-06-23 21:46:01', '2026-06-23 21:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `service_product_solutions`
--

CREATE TABLE `service_product_solutions` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_product_solutions`
--

INSERT INTO `service_product_solutions` (`id`, `service_id`, `heading`, `sub_heading`, `sort_order`, `created_at`, `updated_at`) VALUES
(3, 4, 'Online Pre-Arrival Processing System', 'Digital Platform', 0, '2026-04-21 04:43:39', '2026-04-21 04:43:39'),
(4, 5, 'Automated Risk Management System', 'Technology', 0, '2026-04-21 04:46:57', '2026-04-21 04:46:57'),
(5, 6, 'Authorized Economic Operator Facilities', 'Certification', 0, '2026-04-21 04:50:13', '2026-04-21 04:50:13'),
(10, 4, 'Automated Risk Management System', 'Technology', 1, '2026-04-21 21:44:13', '2026-04-21 21:44:13'),
(11, 4, 'Authorized Economic Operator Facilities', 'Certification', 2, '2026-04-21 21:44:13', '2026-04-21 21:44:13'),
(12, 4, 'Conducting Time Release Study (TRS)', 'Assessment', 3, '2026-04-21 21:44:13', '2026-04-21 21:44:13'),
(13, 4, 'Developing Trade Transparency Portal', 'Digital Platform', 4, '2026-04-21 21:44:13', '2026-04-21 21:44:13'),
(14, 4, 'Online Export Performance Management System', 'Technology', 5, '2026-04-21 21:44:13', '2026-04-21 21:44:13'),
(18, 5, 'Automated Risk Management System', 'Technology', 1, '2026-04-21 22:18:29', '2026-04-21 22:18:29'),
(19, 5, 'Authorized Economic Operator Facilities', 'Certification', 2, '2026-04-21 22:18:29', '2026-04-21 22:18:29'),
(20, 5, 'Conducting Time Release Study (TRS)', 'Assessment', 3, '2026-04-21 22:18:29', '2026-04-21 22:18:29'),
(21, 7, 'Online Pre-Arrival Processing System', 'Digital Platform', 0, '2026-04-21 22:20:11', '2026-04-21 22:20:11'),
(22, 7, 'Automated Risk Management System', 'Technology', 1, '2026-04-21 22:20:11', '2026-04-21 22:20:11'),
(23, 7, 'Authorized Economic Operator Facilities', 'Certification', 2, '2026-04-21 22:20:11', '2026-04-21 22:20:11'),
(24, 7, 'Conducting Time Release Study (TRS)', 'Assessment', 3, '2026-04-21 22:20:11', '2026-04-21 22:20:11'),
(25, 7, 'Developing Trade Transparency Portal', 'Digital Platform', 4, '2026-04-21 22:20:11', '2026-04-21 22:20:11'),
(26, 7, 'Online Export Performance Management System', 'Technology', 5, '2026-04-21 22:20:11', '2026-04-21 22:20:11'),
(27, 8, 'Online Pre-Arrival Processing System', 'Digital Platform', 0, '2026-04-21 22:21:12', '2026-04-21 22:21:12'),
(28, 8, 'Automated Risk Management System', 'Technology', 1, '2026-04-21 22:21:12', '2026-04-21 22:21:12'),
(29, 8, 'Authorized Economic Operator Facilities', 'Certification', 2, '2026-04-21 22:21:12', '2026-04-21 22:21:12'),
(30, 8, 'Conducting Time Release Study (TRS)', 'Assessment', 3, '2026-04-21 22:21:12', '2026-04-21 22:21:12'),
(31, 8, 'Developing Trade Transparency Portal', 'Digital Platform', 4, '2026-04-21 22:21:12', '2026-04-21 22:21:12'),
(32, 8, 'Online Export Performance Management System', 'Technology', 5, '2026-04-21 22:21:12', '2026-04-21 22:21:12'),
(33, 9, 'Online Pre-Arrival Processing System', 'Digital Platform', 0, '2026-04-21 22:21:48', '2026-04-21 22:21:48'),
(34, 9, 'Automated Risk Management System', 'Technology', 1, '2026-04-21 22:21:48', '2026-04-21 22:21:48'),
(35, 9, 'Authorized Economic Operator Facilities', 'Certification', 2, '2026-04-21 22:21:48', '2026-04-21 22:21:48'),
(36, 9, 'Conducting Time Release Study (TRS)', 'Assessment', 3, '2026-04-21 22:21:48', '2026-04-21 22:21:48'),
(37, 9, 'Developing Trade Transparency Portal', 'Digital Platform', 4, '2026-04-21 22:21:48', '2026-04-21 22:21:48'),
(38, 10, 'Automated Risk Management System', 'Technology', 0, '2026-04-21 22:22:20', '2026-04-21 22:22:20'),
(39, 10, 'Automated Risk Management System', 'Technology', 1, '2026-04-21 22:22:20', '2026-04-21 22:22:20'),
(40, 10, 'Authorized Economic Operator Facilities', 'Certification', 2, '2026-04-21 22:22:20', '2026-04-21 22:22:20'),
(41, 10, 'Conducting Time Release Study (TRS)', 'Assessment', 3, '2026-04-21 22:22:20', '2026-04-21 22:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WUJjczA8G2KyR96v9tG9O7gwXWonQHfb7FsUnsM3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ2RQZGNwZGVNMUFYbUVpaTJ0VWNsVEY0MVdEampLa01SNW41QzZodyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93b3JrLWRldGFpbHMvNCI7czo1OiJyb3V0ZSI7czoxNDoic2VydmljZURldGFpbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vc2V0dGluZ3MiO31zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1782728527);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_tagline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `footer_contact_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_contact_location` text COLLATE utf8mb4_unicode_ci,
  `footer_description` text COLLATE utf8mb4_unicode_ci,
  `show_about_story` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo_text`, `logo_tagline`, `social_links`, `footer_contact_mobile`, `footer_contact_email`, `footer_contact_location`, `footer_description`, `show_about_story`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '[{\"title\":\"Facebook\",\"link\":\"\",\"media_key\":\"216edf82-1a70-4acf-aa7d-41d890d4b5e8\"},{\"title\":\"LinkedIn\",\"link\":\"\",\"media_key\":\"85ac2c92-0fdd-4bfc-843a-6104b894689b\"}]', NULL, 'contact@giet.org.bd', 'Dhaka, Bangladesh', 'Foundation for Governance Innovation & Economic Transformation.A non-partisan, non-profit think tank advancing evidence-based governance reform and economic transformation in Bangladesh and beyond.', 1, '2026-04-21 03:22:47', '2026-06-28 20:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `tagline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `design_word` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `tagline`, `title`, `description`, `design_word`, `created_at`, `updated_at`) VALUES
(1, 'International Development Consulting', 'Empowering Change through', '<p>Trace Consulting partners with governments, regulatory agencies, and development organizations to reform systems, build capacity, and deliver technology that lasts.</p>', 'Empowering', '2026-04-21 03:31:17', '2026-04-29 05:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `slider_items`
--

CREATE TABLE `slider_items` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `design_word` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_items`
--

INSERT INTO `slider_items` (`id`, `title`, `tagline`, `description`, `design_word`, `url`, `sort_order`, `active`, `created_at`, `updated_at`) VALUES
(3, 'Shaping Policy for a Transformed Bangladesh', 'GOVERNANCE INNOVATION', '<p>A non-partisan think tank advancing transparent, accountable governance and economic competitiveness through rigorous research, policy advocacy, and institutional reform.</p>', 'Transformed', 'https://www.youtube.com', 0, 1, '2026-04-29 10:49:47', '2026-06-24 04:42:50'),
(4, 'Building Stronger Institutions for Tomorrow', 'INSTITUTIONAL REFORM', '<p>Strengthening public institutions through evidence-based policy design, regulatory reform, and multi-stakeholder dialogue across Bangladesh. &nbsp;</p>', 'Institutions', NULL, 1, 1, '2026-04-29 10:52:01', '2026-06-22 22:19:28'),
(5, 'Driving Inclusive Economic Growth', 'ECONOMIC TRANSFORMATION', '<p>Delivering data-driven economic diagnostics that enable governments and development partners to design structural reforms for sustainable, inclusive growth.</p>', 'Inclusive', NULL, 2, 1, '2026-04-29 10:52:01', '2026-06-22 22:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expertise_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advisor_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `first_name`, `last_name`, `expertise_label`, `designation`, `short_description`, `description`, `education`, `experience`, `languages`, `location`, `type`, `advisor_category`, `headtitle`, `sort_order`, `created_at`, `updated_at`) VALUES
(2, 'Dr. Aminur', 'Rahman', NULL, 'Chairman', 'Fuad brings over 15 years of hands-on experience in trade facilitation, customs\r\nmodernisation, and development consulting across South and Southeast Asia. He\r\nholds an official MoU with B-ADVANCY Certification Ltd, UK, and has personally led\r\nWTO TFA implementation advisory, ISO/IEC 17025 laboratory accreditation\r\nprogrammes, and digital trade infrastructure projects across the region.', '<p>Fuad M Khalid Hossen, currently serving as Managing Director and CEO of TRACE Consulting, is widely recognized as Bangladesh’s leading expert in digital trade facilitation and trade policy reform, with over 12 years of experience in system modernization, export-led growth, and regulatory reform. He has demonstrated strong technical leadership in advancing WTO Trade Facilitation Agreement (TFA) measures, trade service automation, and institutional capacity building across public and private sectors. Most recently, Fuad led the $32.4 million USDA-funded Bangladesh Trade Facilitation Project as Deputy Chief of Party and Technical Lead, driving national reforms to modernize cross-border trade with a focus on food and agriculture. He collaborated directly with over 50 public and private entities, including the Ministry of Commerce, National Board of Revenue, BSTI, DLS, DoF, DAE, trade-related laboratories, and other SPS and standards agencies, as well as FBCCI and several sectoral chambers. Under his leadership, the project delivered more than 30 policy and regulatory reforms spanning Export and Import Policies, SPS and quarantine regulations, Customs rules, the TCL framework, and the Veterinary Drug Act. It also deployed 14 automated trade-service IT systems, enabling the digital issuance of over one million certificates, licenses, and permits (CLPs) annually. Fuad also supported the government in establishing seven specialized trade units and risk management systems, which are expected to replace blanket inspections with risk-based clearance across key border agencies. He helped upgrade 12 laboratories, including the establishment of the National Halal Laboratory at BSTI, and introduced over 10 export compliance protocols, covering contract farming automation, traceability, good production practices, national residue control plans, and e-health certification, to strengthen SPS compliance and export readiness. His leadership enabled government agencies to submit formal notifications to the WTO, enhancing transparency and reinforcing Bangladesh’s credibility within the multilateral trading system. Earlier, as a Trade Facilitation Consultant with the IFC–World Bank Group, Fuad contributed to large-scale trade reform initiatives, including the Online Licensing Module (OLM) for CCI&amp;E, the Bangladesh National Single Window, tariff reforms, and Customs modernization, initiatives that strengthened WTO TFA compliance and improved Bangladesh’s ease-of-doing-business ranking. He also played technical and leadership roles in multiple FCDO-funded programs, focusing on automation, export diversification, and regulatory simplification. Fuad holds a Bachelor’s degree in Public Administration and a Master’s degree in Public Administration, specializing in Public Policy, from Jahangirnagar University. He is passionate about leveraging technology and policy innovation to enhance Bangladesh’s export competitiveness and strengthen the country’s integration into the global trading system.</p>', 'PhD in Public Administration - University of Dhaka', NULL, NULL, NULL, '1', 'national', 'CHAIRMAN', 1, '2026-04-22 22:58:59', '2026-06-24 22:26:59'),
(5, 'Tahsina', 'Shiva', NULL, 'Technology Solutions Lead', 'Full-stack developer and systems\r\narchitect specialising in LIMS,\r\ntrade single window platforms,…\r\nand customs automation for\r\ngovernment agencies.', '<p>A full-stack developer and systems architect specializing in Laboratory Information Management Systems (LIMS), trade single window platforms, and customs automation plays a critical role in modernizing government operations and enabling efficient cross-border trade. With expertise spanning both frontend and backend development, this professional designs, develops, and deploys scalable digital solutions tailored to complex regulatory environments. Their work often involves building integrated platforms that connect multiple government agencies, allowing seamless data exchange and real-time processing of trade-related documents such as certificates, licenses, and permits. In LIMS, they develop systems that streamline laboratory workflows, ensure data accuracy, and support compliance with international standards. These systems are essential for maintaining quality assurance, traceability, and transparency in sectors like food safety, agriculture, and public health. In the domain of trade single window platforms, they architect centralized systems that enable traders to submit documentation through a single interface, significantly reducing processing time and administrative burden. By integrating customs, port authorities, standards bodies, and other regulatory agencies, they help create a unified digital ecosystem that improves efficiency and transparency. Their expertise in customs automation includes designing risk management systems, electronic clearance processes, and automated inspection protocols. These innovations replace manual, time-consuming procedures with intelligent, data-driven workflows that enhance compliance while facilitating faster trade. Technically, they are proficient in modern programming languages, cloud infrastructure, API integration, database management, and cybersecurity practices. Beyond technical skills, they possess a deep understanding of policy frameworks, regulatory requirements, and international trade agreements, enabling them to align technology solutions with national development goals. Overall, their work contributes significantly to digital transformation, institutional capacity building, and the creation of a more competitive and globally integrated trade environment.</p>', NULL, NULL, NULL, NULL, '1', 'national', NULL, 3, '2026-04-22 23:44:29', '2026-06-28 03:33:36'),
(6, 'Nabeel', 'Khan', NULL, 'Laboratory Quality Specialist', 'ISO/IEC 17025 accreditation expert guiding public and private laboratories through QMS… development and assessment preparation.', '<p>ISO/IEC 17025 accreditation expert guiding public and private laboratories through QMS… development and assessment preparation.</p>', NULL, NULL, NULL, NULL, '1', 'national', NULL, 4, '2026-04-22 23:49:47', '2026-06-28 03:35:00'),
(11, 'Mobarak Uddin', 'Ahmed', NULL, 'Cold Chain & Logistics Specialist', NULL, '<p>Temperature-controlled logistics expert advising exporters and pharmaceutical companies on… cold chain infrastructure and</p>', NULL, '10+ years', NULL, NULL, '3', 'national', NULL, 7, '2026-04-23 00:18:50', '2026-06-24 21:52:01'),
(14, 'Michael J Parr', NULL, NULL, 'Trade Economics & WTO Law Specialist', NULL, '<p>Former WTO dispute settlement consultant with 20+ years of expertise in trade law, multilateral negotiations,...</p>', NULL, NULL, NULL, NULL, '3', 'international', NULL, 1, '2026-04-23 00:28:55', '2026-06-24 21:49:36'),
(15, 'Dr. Aminur', 'Rahman', NULL, 'Chairman & Senior Fellow, Governance', NULL, '<p>ISO/IEC 17025 lead assessor with 18 years of QMS implementation and food safety testing expertise. Supports TR... Fuad M Khalid Hossen, currently serving as Managing Director and CEO of TRACE Consulting, is widely recognized as Bangladesh’s leading expert in digital trade facilitation and trade policy reform, with over 12 years of experience in system modernization, export-led growth, and regulatory reform. He has demonstrated strong technical leadership in advancing WTO Trade Facilitation Agreement (TFA) measures, trade service automation, and institutional capacity building across public and private sectors. Most recently, Fuad led the $32.4 million USDA-funded Bangladesh Trade Facilitation Project as Deputy Chief of Party and Technical Lead, driving national reforms to modernize cross-border trade with a focus on food and agriculture. He collaborated directly with over 50 public and private entities, including the Ministry of Commerce, National Board of Revenue, BSTI, DLS, DoF, DAE, trade-related laboratories, and other SPS and standards agencies, as well as FBCCI and several sectoral chambers. Under his leadership, the project delivered more than 30 policy and regulatory reforms spanning Export and Import Policies, SPS and quarantine regulations, Customs rules, the TCL framework, and the Veterinary Drug Act. It also deployed 14 automated trade-service IT systems, enabling the digital issuance of over one million certificates, licenses, and permits (CLPs) annually. Fuad also supported the government in establishing seven specialized trade units and risk management systems, which are expected to replace blanket inspections with risk-based clearance across key border agencies. He helped upgrade 12 laboratories, including the establishment of the National Halal Laboratory at BSTI, and introduced over 10 export compliance protocols, covering contract farming automation, traceability, good production practices, national residue control plans, and e-health certification, to strengthen SPS compliance and export readiness. His leadership enabled government agencies to submit formal notifications to the WTO, enhancing transparency and reinforcing Bangladesh’s credibility within the multilateral trading system. Earlier, as a Trade Facilitation Consultant with the IFC–World Bank Group, Fuad contributed to large-scale trade reform initiatives, including the Online Licensing Module (OLM) for CCI&amp;E, the Bangladesh National Single Window, tariff reforms, and Customs modernization, initiatives that strengthened WTO TFA compliance and improved Bangladesh’s ease-of-doing-business ranking. He also played technical and leadership roles in multiple FCDO-funded programs, focusing on automation, export diversification, and regulatory simplification. Fuad holds a Bachelor’s degree in Public Administration and a Master’s degree in Public Administration, specializing in Public Policy, from Jahangirnagar University. He is passionate about leveraging technology and policy innovation to enhance Bangladesh’s export competitiveness and strengthen the country’s integration into the global trading system.</p>', 'PhD in Public Administration - University of Dhaka', '10+ years', NULL, NULL, '2', 'national', NULL, 1, '2026-04-23 00:31:54', '2026-06-24 22:43:35'),
(16, 'Syed Rezaul Karim', NULL, NULL, 'Customs Reform & Modernisation Specialist', NULL, '<p>Retired senior customs official with 25 years of operational experience at the National Board of Revenue. Advi...</p>', NULL, NULL, NULL, NULL, '2', 'national', NULL, 3, '2026-04-23 00:33:24', '2026-06-28 03:33:08'),
(17, 'Dr. Tahmina Akter', NULL, NULL, 'Development Economics & M&E Specialist', NULL, '<p>Specialises in results-based evaluation of trade and development programmes. Leads TRACE\'s monitoring, evaluat...</p>', NULL, NULL, NULL, NULL, '2', 'national', NULL, 4, '2026-04-23 00:36:44', '2026-06-28 03:34:07'),
(18, 'Kazi Mahbubur Rahman', NULL, NULL, 'Cold Chain Infrastructure & Logistics Specialist', NULL, '<p>30 years of private sector experience in agricultural supply chains and refrigerated logistics. Advises TRACE...</p>', NULL, NULL, NULL, NULL, '2', 'national', NULL, 5, '2026-04-23 00:39:30', '2026-06-28 03:35:29'),
(19, 'Dr. Imran Chowdhury', NULL, NULL, 'Digital Trade & e-Government Systems Expert', NULL, '<p>Expert in e-government system architecture and digital trade platform design. Advises TRACE on technical speci...</p>', NULL, NULL, NULL, NULL, '2', 'national', NULL, 6, '2026-04-23 00:41:39', '2026-06-28 03:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `team_expertises`
--

CREATE TABLE `team_expertises` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_expertises`
--

INSERT INTO `team_expertises` (`id`, `team_id`, `heading`, `description`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 2, 'Trade Facilitation & Customs', 'WTO TFA implementation, customs automation, risk management, AEO programmes, time release studies.', 0, '2026-04-22 22:58:59', '2026-04-22 23:03:01'),
(2, 2, 'Policy Reform & Advocacy', 'Legislative review, policy gap analysis, stakeholder consultation, trade bottleneck identification.', 1, '2026-04-22 22:58:59', '2026-04-22 22:58:59'),
(3, 2, 'Digital Trade Systems', 'Single window development, LIMS, trade transparency portals, customs automation, HS code databases.', 2, '2026-04-22 22:58:59', '2026-04-22 22:58:59'),
(10, 5, 'LIMS', NULL, 0, '2026-04-22 23:44:29', '2026-06-28 03:33:36'),
(11, 5, 'Single Window', NULL, 1, '2026-04-22 23:44:29', '2026-06-28 03:33:36'),
(12, 5, 'Systems', NULL, 2, '2026-04-22 23:44:29', '2026-06-28 03:33:36'),
(13, 6, 'ISO 17025', NULL, 0, '2026-04-22 23:49:47', '2026-06-28 03:35:00'),
(14, 6, 'QMS', NULL, 1, '2026-04-22 23:49:47', '2026-06-28 03:35:00'),
(15, 6, 'Accreditation', NULL, 2, '2026-04-22 23:49:47', '2026-06-28 03:35:00'),
(24, 11, 'Cold Chain', NULL, 0, '2026-04-23 00:18:50', '2026-06-24 21:52:01'),
(25, 11, 'Logistics', NULL, 1, '2026-04-23 00:18:50', '2026-06-24 21:52:01'),
(26, 11, 'Compliance', NULL, 2, '2026-04-23 00:18:50', '2026-06-24 21:52:01'),
(33, 14, 'WTO Law', NULL, 0, '2026-04-23 00:28:56', '2026-06-24 21:49:36'),
(34, 14, 'Trade Economics', NULL, 1, '2026-04-23 00:28:56', '2026-06-24 21:49:36'),
(35, 14, 'LDC Policy', NULL, 2, '2026-04-23 00:28:56', '2026-06-24 21:49:36'),
(36, 15, 'ISO 17025', NULL, 0, '2026-04-23 00:31:54', '2026-06-24 22:43:35'),
(37, 15, 'Food Safety', NULL, 1, '2026-04-23 00:31:54', '2026-06-24 22:43:35'),
(38, 15, 'QMS', NULL, 2, '2026-04-23 00:31:54', '2026-06-24 22:43:35'),
(39, 16, 'Customs', NULL, 0, '2026-04-23 00:33:24', '2026-06-28 03:33:08'),
(40, 16, 'NBR Systems', NULL, 1, '2026-04-23 00:33:24', '2026-06-28 03:33:08'),
(41, 16, 'Risk Mgmt', NULL, 2, '2026-04-23 00:33:24', '2026-06-28 03:33:08'),
(42, 17, 'Development Economics', NULL, 0, '2026-04-23 00:36:44', '2026-06-28 03:34:07'),
(43, 17, 'M&E', NULL, 1, '2026-04-23 00:36:44', '2026-06-28 03:34:07'),
(44, 17, 'Impact Evaluation', NULL, 2, '2026-04-23 00:36:44', '2026-06-28 03:34:07'),
(45, 18, 'Cold Chain', NULL, 0, '2026-04-23 00:39:30', '2026-06-28 03:35:29'),
(46, 18, 'Agro-ExportSupply Chain', NULL, 1, '2026-04-23 00:39:30', '2026-06-28 03:35:29'),
(47, 19, 'e-Government', NULL, 0, '2026-04-23 00:41:39', '2026-06-28 03:36:09'),
(48, 19, 'Single Window', NULL, 1, '2026-04-23 00:41:39', '2026-06-28 03:36:09'),
(49, 19, 'System Design', NULL, 2, '2026-04-23 00:41:39', '2026-06-28 03:36:09'),
(50, 5, 'Scrum', 'Scrum Master', 3, '2026-04-23 03:56:19', '2026-04-23 03:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `team_project_table`
--

CREATE TABLE `team_project_table` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_project_table`
--

INSERT INTO `team_project_table` (`id`, `project_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 3, 5, NULL, NULL),
(3, 1, 6, NULL, NULL),
(6, 4, 11, NULL, NULL),
(7, 5, 11, NULL, NULL),
(13, 3, 16, NULL, NULL),
(14, 2, 17, NULL, NULL),
(15, 2, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team_social_media`
--

CREATE TABLE `team_social_media` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_social_media`
--

INSERT INTO `team_social_media` (`id`, `team_id`, `title`, `social_link`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 2, 'Linkdin', '', 0, '2026-04-22 22:58:59', '2026-04-22 22:58:59'),
(2, 2, 'Email', '', 1, '2026-04-22 23:01:44', '2026-04-22 23:01:44'),
(3, 2, 'Twiter', '', 2, '2026-04-22 23:01:44', '2026-04-22 23:01:44'),
(8, 5, 'Linkdin', '', 0, '2026-04-22 23:44:29', '2026-04-22 23:44:29'),
(10, 6, 'Linkdin', '', 0, '2026-04-22 23:49:47', '2026-04-22 23:49:47'),
(11, 6, 'Email', '', 1, '2026-04-22 23:49:47', '2026-04-22 23:49:47'),
(18, 11, 'Linkdin', '', 0, '2026-04-23 00:18:50', '2026-04-23 00:18:50'),
(19, 11, 'Email', '', 1, '2026-04-23 00:18:50', '2026-04-23 00:18:50'),
(41, 5, 'Email', '', 1, '2026-04-24 09:58:45', '2026-04-24 09:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `status`, `email_verified_at`, `mobile_verified_at`, `otp`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Laurel Noel', 'sidype@mailinator.com', '01568359528', 1, NULL, NULL, '647794', '$2y$12$cuQGZRraEoxS6WLa7XuReeyKoU1mNI/DmrjPxtmXbR9P1Kag87Mxq', NULL, '2025-01-09 16:16:06', '2025-01-09 17:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `upazila_id` bigint UNSIGNED DEFAULT NULL,
  `union_id` bigint UNSIGNED DEFAULT NULL,
  `education_type_id` bigint UNSIGNED DEFAULT NULL,
  `profession_id` bigint UNSIGNED DEFAULT NULL,
  `gender_id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `religion_id` bigint UNSIGNED DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_address` text COLLATE utf8mb4_unicode_ci,
  `dob` date DEFAULT NULL,
  `is_autism` tinyint(1) DEFAULT '1' COMMENT '1:normal,0:disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `division_id`, `district_id`, `upazila_id`, `union_id`, `education_type_id`, `profession_id`, `gender_id`, `country_id`, `religion_id`, `nid`, `passport`, `birth_certificate`, `full_address`, `dob`, `is_autism`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-01-09 16:16:06', '2025-01-09 16:16:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

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
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contents_slug_unique` (`slug`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_submissions`
--
ALTER TABLE `cv_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_types`
--
ALTER TABLE `education_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_partners`
--
ALTER TABLE `event_partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_partners_event_id_foreign` (`event_id`);

--
-- Indexes for table `event_proposals`
--
ALTER TABLE `event_proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_speakers`
--
ALTER TABLE `event_speakers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_speakers_event_id_foreign` (`event_id`),
  ADD KEY `event_speakers_team_id_foreign` (`team_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insights`
--
ALTER TABLE `insights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insights_active_sort_order_index` (`active`,`sort_order`),
  ADD KEY `insights_type_index` (`type`);

--
-- Indexes for table `insight_articles`
--
ALTER TABLE `insight_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insight_articles_insight_id_sort_order_index` (`insight_id`,`sort_order`),
  ADD KEY `insight_articles_author_team_id_sort_order_index` (`author_team_id`,`sort_order`),
  ADD KEY `insight_articles_type_index` (`type`);

--
-- Indexes for table `insight_types`
--
ALTER TABLE `insight_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_job_posting_id_foreign` (`job_posting_id`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_postings`
--
ALTER TABLE `job_postings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_sort_order_index` (`sort_order`),
  ADD KEY `projects_project_status_index` (`project_status`),
  ADD KEY `projects_project_category_id_foreign` (`project_category_id`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_categories_sort_order_index` (`sort_order`);

--
-- Indexes for table `project_locations`
--
ALTER TABLE `project_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_locations_project_id_sort_order_index` (`project_id`,`sort_order`);

--
-- Indexes for table `project_outcomes`
--
ALTER TABLE `project_outcomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_outcomes_project_id_sort_order_index` (`project_id`,`sort_order`);

--
-- Indexes for table `project_phase_details`
--
ALTER TABLE `project_phase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_phase_details_project_id_sort_order_index` (`project_id`,`sort_order`);

--
-- Indexes for table `project_services`
--
ALTER TABLE `project_services`
  ADD PRIMARY KEY (`project_id`,`service_id`),
  ADD KEY `project_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_ideas`
--
ALTER TABLE `research_ideas`
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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_content_id_foreign` (`content_id`);

--
-- Indexes for table `service_details`
--
ALTER TABLE `service_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_details_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_product_solutions`
--
ALTER TABLE `service_product_solutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_product_solutions_service_id_foreign` (`service_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_items`
--
ALTER TABLE `slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_sort_order_index` (`sort_order`);

--
-- Indexes for table `team_expertises`
--
ALTER TABLE `team_expertises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_experties_team_id_sort_order_index` (`team_id`,`sort_order`);

--
-- Indexes for table `team_project_table`
--
ALTER TABLE `team_project_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_project_table_project_id_team_id_unique` (`project_id`,`team_id`),
  ADD KEY `team_project_table_team_id_foreign` (`team_id`);

--
-- Indexes for table `team_social_media`
--
ALTER TABLE `team_social_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_social_media_team_id_sort_order_index` (`team_id`,`sort_order`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_nid_unique` (`nid`),
  ADD UNIQUE KEY `user_details_passport_unique` (`passport`),
  ADD UNIQUE KEY `user_details_birth_certificate_unique` (`birth_certificate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `cv_submissions`
--
ALTER TABLE `cv_submissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `education_types`
--
ALTER TABLE `education_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_partners`
--
ALTER TABLE `event_partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_proposals`
--
ALTER TABLE `event_proposals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_speakers`
--
ALTER TABLE `event_speakers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insights`
--
ALTER TABLE `insights`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insight_articles`
--
ALTER TABLE `insight_articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insight_types`
--
ALTER TABLE `insight_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_postings`
--
ALTER TABLE `job_postings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_locations`
--
ALTER TABLE `project_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_outcomes`
--
ALTER TABLE `project_outcomes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `project_phase_details`
--
ALTER TABLE `project_phase_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research_ideas`
--
ALTER TABLE `research_ideas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `service_details`
--
ALTER TABLE `service_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `service_product_solutions`
--
ALTER TABLE `service_product_solutions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_items`
--
ALTER TABLE `slider_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `team_expertises`
--
ALTER TABLE `team_expertises`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `team_project_table`
--
ALTER TABLE `team_project_table`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `team_social_media`
--
ALTER TABLE `team_social_media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_partners`
--
ALTER TABLE `event_partners`
  ADD CONSTRAINT `event_partners_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_speakers`
--
ALTER TABLE `event_speakers`
  ADD CONSTRAINT `event_speakers_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_speakers_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insight_articles`
--
ALTER TABLE `insight_articles`
  ADD CONSTRAINT `insight_articles_author_team_id_foreign` FOREIGN KEY (`author_team_id`) REFERENCES `teams` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `insight_articles_insight_id_foreign` FOREIGN KEY (`insight_id`) REFERENCES `insights` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_job_posting_id_foreign` FOREIGN KEY (`job_posting_id`) REFERENCES `job_postings` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_project_category_id_foreign` FOREIGN KEY (`project_category_id`) REFERENCES `project_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_locations`
--
ALTER TABLE `project_locations`
  ADD CONSTRAINT `project_locations_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_outcomes`
--
ALTER TABLE `project_outcomes`
  ADD CONSTRAINT `project_outcomes_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_phase_details`
--
ALTER TABLE `project_phase_details`
  ADD CONSTRAINT `project_phase_details_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_services`
--
ALTER TABLE `project_services`
  ADD CONSTRAINT `project_services_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `service_details`
--
ALTER TABLE `service_details`
  ADD CONSTRAINT `service_details_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_product_solutions`
--
ALTER TABLE `service_product_solutions`
  ADD CONSTRAINT `service_product_solutions_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_expertises`
--
ALTER TABLE `team_expertises`
  ADD CONSTRAINT `team_experties_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_project_table`
--
ALTER TABLE `team_project_table`
  ADD CONSTRAINT `team_project_table_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_project_table_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_social_media`
--
ALTER TABLE `team_social_media`
  ADD CONSTRAINT `team_social_media_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
