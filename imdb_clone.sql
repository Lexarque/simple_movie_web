-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 05:35 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imdb_clone`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_movie` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `id_user`, `id_movie`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-06-01 17:09:12', '2022-06-01 17:09:12'),
(4, 23, 13, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(5, 23, 20, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(6, 25, 18, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(7, 19, 5, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(8, 8, 22, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(9, 6, 8, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(10, 8, 23, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(11, 8, 18, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(12, 13, 20, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(13, 6, 8, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(14, 5, 9, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(15, 20, 18, '2022-06-01 18:46:04', '2022-06-01 18:46:04'),
(16, 9, 5, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(17, 19, 10, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(18, 10, 7, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(19, 9, 10, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(20, 23, 18, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(21, 14, 14, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(22, 19, 6, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(23, 22, 23, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(24, 20, 21, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(25, 10, 20, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(26, 24, 19, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(27, 13, 24, '2022-06-01 18:46:05', '2022-06-01 18:46:05'),
(28, 19, 6, '2022-06-01 18:46:05', '2022-06-01 18:46:05');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_01_110242_create_movies_table', 1),
(6, '2022_06_01_113135_create_favorites_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `trailer_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `director`, `rating`, `trailer_link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Morbius', 'The first movie that sold 20 Morbillion Dollars', 'Daniel Espinosa', 10.00, 'https://www.youtube.com/watch?v=oZ6iiRrz1SY', '1654098177.jpg', '2022-06-01 08:16:28', '2022-06-01 08:42:57'),
(4, 'Vel non enim consectetur id.', 'Dolore quis voluptas at quod ducimus.', 'Layne', 8.00, 'http://goyette.info/', NULL, '2022-06-01 18:05:33', '2022-06-01 18:05:33'),
(5, 'Accusantium ea aut.', 'Quia quis ratione harum nihil.', 'Kevin', 6.00, 'http://waelchi.info/ea-ut-rerum-itaque-est-magnam-possimus-fugit.html', NULL, '2022-06-01 18:05:33', '2022-06-01 18:05:33'),
(6, 'Molestiae reiciendis non nostrum.', 'Odit totam eligendi recusandae.', 'Agnes', 4.10, 'http://www.sporer.info/accusamus-deserunt-nisi-voluptatibus-praesentium-fuga-excepturi-quis', NULL, '2022-06-01 18:05:33', '2022-06-01 18:05:33'),
(7, 'Tenetur possimus atque eum.', 'Ut laudantium distinctio possimus at aut.', 'Kathryn', 7.80, 'http://www.stoltenberg.com/', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(8, 'Consequatur soluta soluta qui.', 'Odit dignissimos nesciunt pariatur et sequi et.', 'Magdalen', 3.10, 'https://www.hintz.info/aspernatur-nihil-et-ipsa-dolor', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(9, 'Nisi et quibusdam tempora nihil.', 'Earum molestias qui earum at aperiam est debitis.', 'Kim', 7.50, 'http://www.waters.com/', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(10, 'Voluptas minima ut.', 'Totam est officiis hic perspiciatis.', 'Arely', 1.70, 'http://douglas.com/ipsa-placeat-qui-veniam-quos-voluptatum-saepe-ut-rerum', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(11, 'Veritatis eligendi autem.', 'Et quia velit deleniti amet et ipsam natus.', 'Daisha', 1.70, 'http://yost.com/possimus-voluptatem-vero-et-voluptatem-sequi-tenetur.html', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(12, 'Quos atque sint.', 'Ad nemo nihil id non esse.', 'Quentin', 9.10, 'http://www.wintheiser.biz/sit-amet-aut-repellat-id-perspiciatis-temporibus-aut-id', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(13, 'Ipsam officia sed.', 'Soluta est quo in ad ab.', 'Armand', 8.80, 'http://jones.com/dolorem-officiis-aliquam-numquam.html', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(14, 'Dolores maiores consequatur quis.', 'Aliquam autem eum quam iste quae aspernatur.', 'Reynold', 6.00, 'http://pfeffer.com/', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(15, 'Voluptas ipsam qui eum.', 'Non dicta necessitatibus voluptatem odio.', 'Rory', 4.30, 'http://www.lowe.org/enim-ea-eos-esse-non.html', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(16, 'Aut autem delectus tempora.', 'Maxime quam hic beatae maxime vero quis.', 'Brice', 8.40, 'http://www.paucek.com/accusamus-animi-voluptas-qui-exercitationem-ullam-at.html', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(17, 'Rerum dolor nemo.', 'At aut eos modi qui.', 'Saige', 3.20, 'http://spencer.info/dignissimos-consequatur-nihil-vel-officiis-repellendus-nihil-sed-et', NULL, '2022-06-01 18:05:34', '2022-06-01 18:05:34'),
(18, 'Perspiciatis sint.', 'Voluptatem officiis omnis corporis.', 'April', 7.20, 'https://www.tromp.com/ad-velit-et-commodi-maxime-consectetur-maiores-accusantium', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(19, 'Et iusto autem est.', 'Fuga quo sed et eum repudiandae.', 'Jamison', 2.80, 'http://thiel.net/', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(20, 'Sed laborum sequi omnis.', 'Id eos a sequi repellendus maxime ipsam fuga.', 'Verona', 9.80, 'https://www.reichel.org/quo-provident-ut-quos-ducimus', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(21, 'Similique quod reprehenderit.', 'Et officiis esse error est ad.', 'Julius', 4.40, 'http://robel.com/harum-quod-provident-assumenda-itaque-officia-qui-quia-qui', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(22, 'Et exercitationem voluptatibus eligendi modi.', 'Est eaque ut ut iste.', 'Ila', 8.40, 'http://www.leuschke.biz/id-voluptatem-ipsum-rerum-quia-rerum', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(23, 'Nam quia.', 'Provident est et animi dolores.', 'Ada', 8.20, 'https://walter.com/est-eveniet-explicabo-vel-voluptatibus-repellat-dicta.html', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(24, 'Autem quia ut.', 'Eos non nihil voluptatem et.', 'Jaydon', 3.50, 'http://www.yost.com/omnis-debitis-asperiores-nobis-soluta-rerum-laborum', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(25, 'Vel minus qui excepturi.', 'Odit minus omnis id nulla sequi.', 'Kaelyn', 6.70, 'http://www.collins.com/et-fuga-dolor-iste-unde-blanditiis-cupiditate-et-quibusdam', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(26, 'Tenetur excepturi est quis.', 'Culpa maiores sed at.', 'Adrianna', 7.90, 'http://marvin.info/nihil-eos-aut-ut-in-omnis-eos-ad.html', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(27, 'Esse illo ad.', 'Nulla dolores ipsa earum officia sit temporibus.', 'Mariah', 5.80, 'http://sipes.org/quaerat-dolore-odio-ullam-sint-eum-illum-nam-iure', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35'),
(28, 'Facere quo.', 'Similique dolor dolor quis et quia.', 'Jonatan', 5.90, 'http://wuckert.biz/et-velit-aut-iste-repudiandae-doloribus-velit', NULL, '2022-06-01 18:05:35', '2022-06-01 18:05:35');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Adi', 'adi@test.com', NULL, '$2y$10$I/WWXCXKCqkib5b19fU67OuIrAwAwgsJr/HCBRov5V8B8hJd15zBK', 'user', NULL, '2022-06-01 05:56:14', '2022-06-01 05:56:14'),
(3, 'Jadyn', 'misty.corkery@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'vF2eXQoMVG', '2022-06-01 18:44:55', '2022-06-01 18:44:55'),
(4, 'Lynn', 'michael.connelly@example.org', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'DxR2fUabZU', '2022-06-01 18:44:55', '2022-06-01 18:44:55'),
(5, 'Eliza', 'rebecca74@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'leHIgkTQln', '2022-06-01 18:44:56', '2022-06-01 18:44:56'),
(6, 'Meda', 'brandi.witting@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'zRG8SvUDHT', '2022-06-01 18:44:56', '2022-06-01 18:44:56'),
(7, 'Thalia', 'antonette89@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'G28jKpIzFw', '2022-06-01 18:44:56', '2022-06-01 18:44:56'),
(8, 'Cheyenne', 'hollie11@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '1Norgn47O0', '2022-06-01 18:44:56', '2022-06-01 18:44:56'),
(9, 'Paris', 'jeffry93@example.org', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '4YFQDT73TB', '2022-06-01 18:44:56', '2022-06-01 18:44:56'),
(10, 'Guillermo', 'susan62@example.org', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'nicfvOwslc', '2022-06-01 18:44:56', '2022-06-01 18:44:56'),
(11, 'Concepcion', 'herta19@example.net', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', '4xx5HDGnLf', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(12, 'Mariam', 'plehner@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'z8pVK2RhFN', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(13, 'Valentina', 'leland93@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'W4ed2n9Y19', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(14, 'Lisette', 'bethel.deckow@example.net', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'jr8LVAQTOd', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(15, 'Rosetta', 'trudie63@example.net', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'FMah3FvMuu', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(16, 'Jedidiah', 'toy.christopher@example.org', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'mcAZtMZPS2', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(17, 'Johathan', 'yraynor@example.net', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'i2ESg8nRHc', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(18, 'Katelin', 'npaucek@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'KAcStWviQW', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(19, 'General', 'mekhi84@example.org', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'mQSfma3NLl', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(20, 'Lisette', 'prohaska.ward@example.org', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'TnZLlJvA5F', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(21, 'Ferne', 'uprohaska@example.net', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'c1DY675wm1', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(22, 'Hilbert', 'ryley41@example.net', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'Jo40rsEFa0', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(23, 'Kody', 'legros.alberta@example.net', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'uivCchSaR1', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(24, 'Maryjane', 'helmer.corwin@example.com', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'TpsYL95ttr', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(25, 'Ova', 'serenity.reynolds@example.org', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'wSabe9a0JV', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(26, 'Carmen', 'clovis53@example.net', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '6Qm58AeBiT', '2022-06-01 18:44:57', '2022-06-01 18:44:57'),
(27, 'Jennyfer', 'rmorissette@example.org', '2022-06-01 18:44:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'j3MGed9QTZ', '2022-06-01 18:44:57', '2022-06-01 18:44:57');

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
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_id_user_foreign` (`id_user`),
  ADD KEY `favorites_id_movie_foreign` (`id_movie`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movies_title_unique` (`title`);

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
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_id_movie_foreign` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
