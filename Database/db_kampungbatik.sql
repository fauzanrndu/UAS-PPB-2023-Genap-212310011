-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 03:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampungbatik`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_11_074159_create_tb_product_table', 1),
(6, '2023_07_11_074835_create_tb_category_table', 1),
(7, '2023_07_11_124813_create_tb_user_table', 1),
(8, '2023_07_13_093237_create_tb_pesanan_table', 1),
(9, '2023_07_14_054929_create_tb_tour_package_table', 2);

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
(1, 'App\\Models\\User', 1, 'auth_token', 'ab717cc18e10faae38ab612e96e819f4d69bcd8502a5d8327098fb5bb232ec61', '[\"*\"]', NULL, NULL, '2023-07-13 06:33:54', '2023-07-13 06:33:54'),
(2, 'App\\Models\\User', 1, 'auth_token', '095a343c47a75b978f897e9f000ebd34942f3320a5c199657ef17144007bda08', '[\"*\"]', NULL, NULL, '2023-07-13 06:34:27', '2023-07-13 06:34:27'),
(3, 'App\\Models\\User', 1, 'auth_token', '799513ef9e85cc231b45a5209722020fe9ea1a32d92ae508eea2166118548eed', '[\"*\"]', NULL, NULL, '2023-07-13 06:35:40', '2023-07-13 06:35:40'),
(4, 'App\\Models\\User', 1, 'auth_token', 'c42ad830efd7c6a6eb4619865a05ba18c4d8468f42ec889ff81201f2facaae91', '[\"*\"]', NULL, NULL, '2023-07-13 06:36:07', '2023-07-13 06:36:07'),
(5, 'App\\Models\\User', 1, 'auth_token', '07089c563fe373b54ca187406e1f04130394559df730bbc16ee5e99a9045db3c', '[\"*\"]', NULL, NULL, '2023-07-13 06:36:10', '2023-07-13 06:36:10'),
(6, 'App\\Models\\User', 1, 'auth_token', 'e05f16344cdf3e53de2d1cc95801202ef96672e89de28ebb1608d47bb7bba57c', '[\"*\"]', NULL, NULL, '2023-07-13 06:36:14', '2023-07-13 06:36:14'),
(7, 'App\\Models\\User', 1, 'auth_token', '8ee1a31ee58c5e2658e46ff6d6b5ce027da0e6c4a548273d7bab3b513dd5a986', '[\"*\"]', NULL, NULL, '2023-07-13 22:39:50', '2023-07-13 22:39:50'),
(8, 'App\\Models\\User', 2, 'auth_token', 'a948598e6c644259eb5b1d11d369bf43b46a9bdbf1d1c2ba7d141c0a50f8b306', '[\"*\"]', NULL, NULL, '2023-07-13 22:41:26', '2023-07-13 22:41:26'),
(9, 'App\\Models\\User', 3, 'auth_token', '6dc557270e84cf2e59866573f74bff428b9ab3a45e31a921e9765ba41f7d2305', '[\"*\"]', NULL, NULL, '2023-07-14 02:07:03', '2023-07-14 02:07:03'),
(10, 'App\\Models\\User', 4, 'auth_token', 'fa7c48e4727d24958bb0bea8611b7d2088fbb160e03521dcb8dffddea633aff1', '[\"*\"]', NULL, NULL, '2023-07-14 02:07:55', '2023-07-14 02:07:55'),
(11, 'App\\Models\\User', 5, 'auth_token', '93155b344f02e5fc0b0cf3491f50fbeda853f155013b5a816524e6d0c99a2191', '[\"*\"]', NULL, NULL, '2023-07-14 02:12:58', '2023-07-14 02:12:58'),
(12, 'App\\Models\\User', 6, 'auth_token', '15cc110bfdb1f9ecccf32e056293b46fc9f2dfe511a051e4ede689f7eb17d89a', '[\"*\"]', NULL, NULL, '2023-07-14 02:14:05', '2023-07-14 02:14:05'),
(13, 'App\\Models\\User', 7, 'auth_token', '235c005a0384c76b1ee527dce8f476a705ea85bedbc1941648b1c77e0dbea3c8', '[\"*\"]', NULL, NULL, '2023-07-14 02:18:04', '2023-07-14 02:18:04'),
(14, 'App\\Models\\User', 8, 'auth_token', 'fc2dbf14097058f4bf218b5a08e60cb977bd25feac7ce306f5babe346e98a26f', '[\"*\"]', NULL, NULL, '2023-07-14 02:22:01', '2023-07-14 02:22:01'),
(15, 'App\\Models\\User', 9, 'auth_token', '99f0d7bd7f34738d2af8739738052385a856927ea7f1f96dbee1a363d493e948', '[\"*\"]', NULL, NULL, '2023-07-14 02:23:00', '2023-07-14 02:23:00'),
(16, 'App\\Models\\User', 10, 'auth_token', 'f652d7a6613ac307bdbbd0b47fbf9ff19d8a082f6c2b4a638ff3d95d56c46a1a', '[\"*\"]', NULL, NULL, '2023-07-14 15:55:26', '2023-07-14 15:55:26'),
(17, 'App\\Models\\User', 11, 'auth_token', '0c7e8aae0e03404e9de549889844a3571736bba8bdcac8eb1b50578f9b084065', '[\"*\"]', NULL, NULL, '2023-07-14 21:00:14', '2023-07-14 21:00:14'),
(18, 'App\\Models\\User', 12, 'auth_token', 'a7541bb98f983b5138538c87e19ce117c3e3a4e30f46318e3ccd3f4b3e322f6b', '[\"*\"]', NULL, NULL, '2023-07-14 21:42:33', '2023-07-14 21:42:33'),
(19, 'App\\Models\\User', 13, 'auth_token', 'a8ad6654542b6f4e9adff7785c6df4451506c78c47e1c2f67fcd053f18ba0582', '[\"*\"]', NULL, NULL, '2023-07-15 07:19:55', '2023-07-15 07:19:55'),
(20, 'App\\Models\\User', 14, 'auth_token', 'b56ad9ad0b705ad473404e3f5771643c6e270214e695a17823dc8551887a917d', '[\"*\"]', NULL, NULL, '2023-07-15 20:55:56', '2023-07-15 20:55:56'),
(21, 'App\\Models\\User', 15, 'auth_token', '1969691e659370240d7072a7c6e65b6f3de1d97c530bcb8820e821a7e46c3e1d', '[\"*\"]', NULL, NULL, '2023-07-15 21:00:26', '2023-07-15 21:00:26'),
(22, 'App\\Models\\User', 16, 'auth_token', 'ae5e533065ee4655a90ec42cb410c34ccc29e2ff0c19302e64067be49fa9c686', '[\"*\"]', NULL, NULL, '2023-07-15 21:01:26', '2023-07-15 21:01:26'),
(23, 'App\\Models\\User', 17, 'auth_token', '84b924f5fd1e9be0047dec0a35a7d33290033c4410b6559c3ee900c03751c6de', '[\"*\"]', NULL, NULL, '2023-07-20 05:57:38', '2023-07-20 05:57:38'),
(24, 'App\\Models\\User', 18, 'auth_token', 'de8c4fe2ca9fd9112818d0ea731554ad368bd6d3c5c93ef53098f8dd589b0467', '[\"*\"]', NULL, NULL, '2023-07-20 06:44:36', '2023-07-20 06:44:36'),
(25, 'App\\Models\\User', 19, 'auth_token', 'e0afbfb6c8ab5cd6a58001abf9faa199d6b1a3ca48a9324a1a0c6642bc8a0d2d', '[\"*\"]', NULL, NULL, '2023-07-20 06:45:52', '2023-07-20 06:45:52'),
(26, 'App\\Models\\User', 20, 'auth_token', '8812b24995a58c2dc8514327a6cf6b92eb7bd142333b4cc021cfbf01eb6e4ce0', '[\"*\"]', NULL, NULL, '2023-07-20 06:46:05', '2023-07-20 06:46:05'),
(27, 'App\\Models\\User', 21, 'auth_token', 'f57fe965af4956c21e43830486a7be088437e3a6def2dd2fa9bf33f6d45585ee', '[\"*\"]', NULL, NULL, '2023-07-20 06:49:38', '2023-07-20 06:49:38'),
(28, 'App\\Models\\User', 22, 'auth_token', 'f64ba7b03d75f500c61e3fcfb6702d84d21980490b2cdf379a1d9655f42003d4', '[\"*\"]', NULL, NULL, '2023-07-20 06:49:43', '2023-07-20 06:49:43'),
(29, 'App\\Models\\User', 23, 'auth_token', '5be981e8ab2db268b5cd9ef0aceb19c3b2c033282c6db8ece2e1dffd1285c789', '[\"*\"]', NULL, NULL, '2023-07-20 06:51:24', '2023-07-20 06:51:24'),
(30, 'App\\Models\\User', 24, 'auth_token', 'dfe264bc3abdd35fd926fefc379e04e9e4166c1d60413122cbb590db4b785898', '[\"*\"]', NULL, NULL, '2023-07-20 06:51:52', '2023-07-20 06:51:52'),
(31, 'App\\Models\\User', 25, 'auth_token', 'c83d6233a78db823665928736bbb9a5aece2932df14cc71c70ec0adccebb68d8', '[\"*\"]', NULL, NULL, '2023-07-20 06:52:01', '2023-07-20 06:52:01'),
(32, 'App\\Models\\User', 26, 'auth_token', 'd3b2a13010d87d956b7bfc7459a0e56863132c5305fd6fadc58165bc7131e27c', '[\"*\"]', NULL, NULL, '2023-07-20 06:53:32', '2023-07-20 06:53:32'),
(33, 'App\\Models\\User', 27, 'auth_token', 'd08634a83d8f890a498d798b4fd72404be1c76f035614f08a3d95f045a71eaae', '[\"*\"]', NULL, NULL, '2023-07-20 06:54:19', '2023-07-20 06:54:19'),
(34, 'App\\Models\\User', 28, 'auth_token', '9f6a87301225cef90cbe8dc3571f12d460ff60d9531fde839e2b9ea6b0ccc4cd', '[\"*\"]', NULL, NULL, '2023-07-20 06:58:40', '2023-07-20 06:58:40'),
(35, 'App\\Models\\User', 29, 'auth_token', '452531ceefa0eb99bbe9298840c3edb9f66314695884c7c11b8496603be2aded', '[\"*\"]', NULL, NULL, '2023-07-20 06:59:02', '2023-07-20 06:59:02'),
(36, 'App\\Models\\User', 30, 'auth_token', '8ccb4047f68155471f5a971f599048e4aa091ca92de2c683b34a64a8807fbdeb', '[\"*\"]', NULL, NULL, '2023-07-20 06:59:55', '2023-07-20 06:59:55'),
(37, 'App\\Models\\User', 31, 'auth_token', '402904711aade2ea7ce136a3f17ce8a4c4146fdf068f691da41b790b59cebf70', '[\"*\"]', NULL, NULL, '2023-07-20 07:11:52', '2023-07-20 07:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pakaian', NULL, NULL),
(2, 'Kain', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_harga` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id`, `image`, `category_id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(13, 'https://images.unsplash.com/photo-1616125162686-770bf85622b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA==&auto=format&fit=crop&w=1935&q=80', 1, 'Batik Pancawati', 'Dibuat dengan sepenuh hati', 250000.00, '2023-07-20 20:42:32', '2023-07-20 20:42:32'),
(14, 'https://images.unsplash.com/photo-1616125162686-770bf85622b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA==&auto=format&fit=crop&w=1935&q=80', 1, 'Batik Bumiku', 'Dibuat dengan sepenuh hati', 200000.00, '2023-07-20 20:44:30', '2023-07-20 20:44:30'),
(15, 'https://images.unsplash.com/photo-1616125162686-770bf85622b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA==&auto=format&fit=crop&w=1935&q=80', 1, 'Batik Gaziseri', 'Dibuat dengan sepenuh hati', 150000.00, '2023-07-20 20:44:47', '2023-07-20 20:44:47'),
(16, 'https://images.unsplash.com/photo-1616125162686-770bf85622b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA==&auto=format&fit=crop&w=1935&q=80', 1, 'Batik Melangit', 'Dibuat dengan sepenuh hati', 170000.00, '2023-07-20 20:45:03', '2023-07-20 20:45:03'),
(17, 'https://images.unsplash.com/photo-1616125162686-770bf85622b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA==&auto=format&fit=crop&w=1935&q=80', 1, 'Batik Cherry', 'Dibuat dengan sepenuh hati', 230000.00, '2023-07-20 20:45:20', '2023-07-20 20:45:20'),
(18, 'https://images.unsplash.com/photo-1616125162686-770bf85622b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA==&auto=format&fit=crop&w=1935&q=80', 1, 'Batik Melinda', 'Dibuat dengan sepenuh hati', 180000.00, '2023-07-20 20:45:45', '2023-07-20 20:45:45'),
(19, 'https://images.unsplash.com/photo-1616125162686-770bf85622b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA==&auto=format&fit=crop&w=1935&q=80', 1, 'Batik Irwanda', 'Dibuat dengan sepenuh hati', 200000.00, '2023-07-20 20:46:01', '2023-07-20 20:46:01'),
(20, 'https://images.unsplash.com/photo-1616125162686-770bf85622b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA==&auto=format&fit=crop&w=1935&q=80', 1, 'Batik Sadulur', 'Dibuat dengan sepenuh hati', 235000.00, '2023-07-20 20:46:20', '2023-07-20 20:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tour_package`
--

CREATE TABLE `tb_tour_package` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_tour_package`
--

INSERT INTO `tb_tour_package` (`id`, `image`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'https://i.ibb.co/MnW8Vyr/paket2.jpg', 'Paket Handkerchief', 'Detail\r\n: Rp 50.000 / orang\r\n-Pelatihan membatik selama 2 jam\r\n\r\n-Peminjaman alat membatik\r\n\r\n-Media saputangan 30 x 30 cm\r\n\r\n-Teknik pewarnaan colet\r\n\r\n-Instruktur profesional\r\n\r\n-Karya bisa dibawa pulang\r\n\r\n*minimal peserta 10 orang', 50000.00, NULL, NULL),
(2, 'https://i.ibb.co/3cnpNvY/paket1.jpg', 'Paket Totebag\r\n\r\n', 'Detail\r\nInclude : Rp 90.000 / orang\r\n-Pelatihan membatik selama 2 jam\r\n\r\n-Peminjaman alat membatik\r\n\r\n-Media saputangan 30 x 30 cm\r\n\r\n-Teknik pewarnaan colet\r\n\r\n-Instruktur profesional\r\n\r\n-Karya bisa dibawa pulang\r\n\r\n*minimal peserta 10 orang', 90000.00, NULL, NULL),
(4, 'https://i.ibb.co/3cnpNvY/paket1.jpg', 'Paket Cloth', 'Include : Rp 90.000 / orang\r\n-modul\r\n-Pelatihan membatik selama 6 hari\r\n-Peminjaman alat membatik\r\n-media kain 200 cm x 115 cm\r\n-Teknik pewarnaan colet\r\nDetail\r\n-Penginapan Homestay\r\n-Konsumsi 3x per hari\r\n-Karya bisa dibawa pulang\r\n*minimal', 90000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(31, 'user', 'user@gmail.com', '$2y$10$87QN0ZPF02WxdDuge2dtlOPoY/yNm/y6tB0gu.k.905B/do.SbXlq', '2023-07-20 07:11:52', '2023-07-20 07:11:52');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tour_package`
--
ALTER TABLE `tb_tour_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_tour_package`
--
ALTER TABLE `tb_tour_package`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
