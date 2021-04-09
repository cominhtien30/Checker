-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 26, 2021 lúc 08:55 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jewelry`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresspayments`
--

CREATE TABLE `addresspayments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresspayments`
--

INSERT INTO `addresspayments` (`id`, `user`, `phone`, `city`, `district`, `address`, `created_at`, `updated_at`) VALUES
(1, 14, '+84825512635', 'Hồ Chí Minh', 'Bình Thạnh', '392/2 Ung Văn Khiêm', '2021-03-22 07:39:16', '2021-03-22 07:39:16'),
(2, 15, '+84825512635', 'Hồ Chí Minh', 'Bình Thạnh', '392/2 Ung Văn Khiêm', '2021-03-22 21:00:12', '2021-03-22 21:00:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalquantity` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `user`, `address`, `totalquantity`, `totalprice`, `date`, `time`, `status`, `created_at`, `updated_at`) VALUES
(6, 14, '1', 2, 140, '2021-03-22', '21:49:05', 0, '2021-03-22 07:49:05', '2021-03-22 07:49:05'),
(7, 15, '2', 3, 330, '2021-03-23', '11:01:03', 0, '2021-03-22 21:01:03', '2021-03-22 21:01:03'),
(8, 15, '2', 1, 50, '2021-03-25', '15:26:09', 0, '2021-03-25 01:26:09', '2021-03-25 01:26:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user`, `product`, `content`, `date`, `time`, `created_at`, `updated_at`) VALUES
(46, 14, 7, 'Mình Cần Mua Cho MC Young', '2021-03-21', '14:06:13', '2021-03-21 00:06:13', '2021-03-21 00:06:13'),
(47, 15, 8, 'kien ngu', '2021-03-21', '21:55:13', '2021-03-21 07:55:13', '2021-03-21 07:55:13'),
(48, 15, 7, 'kien dep trai', '2021-03-22', '07:37:32', '2021-03-21 17:37:32', '2021-03-21 17:37:32'),
(50, 15, 5, 'sang hunter', '2021-03-22', '13:08:25', '2021-03-21 23:08:25', '2021-03-21 23:08:25'),
(51, 15, 7, 'thu 28k', '2021-03-23', '10:59:47', '2021-03-22 20:59:47', '2021-03-22 20:59:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailbills`
--

CREATE TABLE `detailbills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` int(11) NOT NULL,
  `bill` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detailbills`
--

INSERT INTO `detailbills` (`id`, `product`, `bill`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(4, 7, 6, 1, 110, '2021-03-22 07:49:05', '2021-03-22 07:49:05'),
(5, 8, 6, 1, 30, '2021-03-22 07:49:06', '2021-03-22 07:49:06'),
(6, 7, 7, 3, 330, '2021-03-22 21:01:03', '2021-03-22 21:01:03'),
(7, 5, 8, 1, 50, '2021-03-25 01:26:09', '2021-03-25 01:26:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2021_03_06_060156_add_image_to_users', 2),
(14, '2021_03_09_060909_create_products_table', 3),
(15, '2021_03_10_151411_create_votes_table', 4),
(17, '2021_03_14_131409_create_comments_table', 5),
(24, '2021_03_21_120531_create_bills_table', 6),
(25, '2021_03_21_121058_create_detailbills_table', 6),
(26, '2021_03_21_140213_create_addresspayments_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `description`, `image1`, `image2`, `image3`, `image4`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(4, 'TOPGRILLZ 18K Plated Gold Grills Teeth Grillz ', 'Gold', '• ONE SIZE FIT MOST PEOPLE: Our molding bars could fit the grillz according to the shape of your teeth after adjusting the grillz. The bars may not easily fit for every one but it can be reused for several times to get a excellent fit.Grillz are often worn by rappers Post Malone, Flavor Flav, Lil Pump, Migos, and many others. • FINEST MATERIAL: 18K lab cubic zirconia face grills for teeth is electroplated 4 times gold based on the environmental brass so it will never tarnish or change color easily and is safe to health. We use the 5A+ round cubic zirconia to sparkle the grillz. • DON’T WORRY ABOUT MISSING PART: We have our own quality control team who will examin our grillz before shipping which ensures the finest products to our customers.', 'product-Q6W92.jpg', 'product-coX603.jpg', 'product-wvI539.jpg', 'product-JUY57.jpg', 10, 30.00, '2021-03-09 04:47:50', '2021-03-09 04:47:50'),
(5, 'TOPGRILLZ Diamond Grills ', 'Gold', '• ONE SIZE FIT MOST PEOPLE: Our molding bars could fit the grillz according to the shape of your teeth after adjusting the grillz. The bars may not easily fit for every one. Thus we send you 4 molding bars (2 sets) for reusable to get an excellent fit. • FINEST MATERIAL: 18K lab round diamond vampire dental grillz set is electroplated 3 times gold/white gold plating over environmental brass so it will never tarnish or change color easily and is safe to health. We use the 3A+ round cubic zirconia to sparkle the grillz. • DON’T WORRY ABOUT MISSING PART: We have our own quality control team who will examine our grillz before shipping which ensures the finest products to our customers. However, missing stones may happen during transit for many turns and stops.', 'product-ufx720.jpg', 'product-bYr718.jpg', 'product-kwc524.jpg', 'product-wVc796.jpg', 20, 50.00, '2021-03-09 05:05:32', '2021-03-09 05:05:32'),
(7, '14K Gold Anime Inspired Pendant, Iced Out 5A Cubic Zirconia', 'Gold', 'This 14K Gold Vegeta Pendant Micro Paving technique to put 5A CZ stones.  Package Content: 1pc. Iced Out 14K Gold Vegeta Pendant 1pc. Stainless Steel Rope Chain in 18k Gold 20/22/24 Inch  🔥 Handcrafted Anime Series Pendants By Zirona Crown 🔥  💯💯 PREMIUM QUALITY AND AFFORDABLE JEWELRIES  ', 'product-zvJ526.jpg', 'product-qJj336.jpg', 'product-ldS905.jpg', 'product-w2K573.jpg', 93, 110.00, '2021-03-09 05:19:18', '2021-03-22 21:01:03'),
(8, 'KMASAL Jewelry Iced Out Uzumaki Naruto Pendant 18K Gold Plated Chain Bling CZ Simulated Diamond Hip Hop Necklace for Men Women', 'Sliver', 'This completely iced out Necklace is made from jeweler\'s brass plated with premium 18k gold plating. Each stone is carefully set by hand by a professional jeweler, creating a totally iced out look! Order today and treat yourself (or someone special) to this brilliant new gift, This Necklace will be sure to catch people\'s eyes. Be impressed by the superior quality of designs, experiencing luxury for less. A similar Necklace made from real Diamond stones can cost you thousands. ', 'product-34A748.jpg', 'product-3hc87.jpg', 'product-1uJ937.jpg', 'product-e98822.jpg', 96, 30.00, '2021-03-10 06:19:52', '2021-03-22 07:49:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `updated_at`, `created_at`, `role`, `image`) VALUES
(14, 'Minh Tiến', 'cominhtien30@gmail.com', NULL, '$2y$10$o2ByL0Q.4NKvQhPnIjnnC.u2MhHjPGf5lPQ3WItBJqd84Bbdb2rki', NULL, '2021-03-21 06:55:57', '2021-03-04 07:36:10', 2, '14.jpg'),
(15, 'Minh Tiến', 'lop11a6.nhom6@gmail.com', NULL, NULL, NULL, '2021-03-17 01:13:46', '2021-03-04 11:32:50', 2, '15.jpg'),
(19, 'Admin Gắt', 'admin@gmail.com', NULL, '$2y$10$xuIFn8LUA9ZIbawUJUL1Z.SOec00KpWbdLIZcgg.rILFHrqsJZv2i', NULL, '2021-03-07 05:25:04', '2021-03-07 05:25:04', 1, NULL),
(20, 'kien', 'kien@gmail.com', NULL, '$2y$10$Anr9D39QmMu5mGH3vI.2Nu2er6AfPK.NCooKEOVh8ZYYb4Z.YiAy6', NULL, '2021-03-17 12:56:42', '2021-03-12 01:48:08', 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `votes`
--

INSERT INTO `votes` (`id`, `user`, `product`, `star`, `created_at`, `updated_at`) VALUES
(19, 15, 7, 5, '2021-03-25 05:46:07', '2021-03-25 05:46:11'),
(20, 15, 8, 4, '2021-03-25 05:46:16', '2021-03-25 05:46:20'),
(21, 14, 7, 1, '2021-03-25 05:46:36', '2021-03-25 05:46:40'),
(22, 14, 8, 3, '2021-03-25 05:46:44', '2021-03-25 05:46:48'),
(23, 15, 5, 0, '2021-03-25 18:48:02', '2021-03-25 18:48:02'),
(24, 19, 7, 3, '2021-03-26 00:33:32', '2021-03-26 00:33:45'),
(25, 19, 8, 0, '2021-03-26 00:34:01', '2021-03-26 00:34:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresspayments`
--
ALTER TABLE `addresspayments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detailbills`
--
ALTER TABLE `detailbills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresspayments`
--
ALTER TABLE `addresspayments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `detailbills`
--
ALTER TABLE `detailbills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
