-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 06:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lelang_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `deskripsi_barang` text DEFAULT NULL,
  `harga_awal` decimal(15,2) NOT NULL,
  `jumlah` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id_barang`, `nama_barang`, `deskripsi_barang`, `harga_awal`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'sss', 'aszx1', '1111.00', 1, '2024-11-13 18:07:00', '2024-11-13 18:07:00'),
(2, 'qq', 'sss', '1222.00', 1, '2024-11-13 20:48:28', '2024-11-13 20:48:28'),
(3, 'wdp', 'uiia', '12000.00', 2, '2024-11-13 22:06:37', '2024-11-13 22:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `lelangs`
--

CREATE TABLE `lelangs` (
  `id_lelang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tanggal_mulai` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('dibuka','ditutup') DEFAULT 'dibuka',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lelangs`
--

INSERT INTO `lelangs` (`id_lelang`, `id_barang`, `tanggal_mulai`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-11-13 18:18:45', 'dibuka', '2024-11-13 18:18:45', '2024-11-13 18:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `nama_web` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `logo`, `icon`, `nama_web`) VALUES
(1, 'logo.png', 'icon.png', '123');

-- --------------------------------------------------------

--
-- Table structure for table `penawarans`
--

CREATE TABLE `penawarans` (
  `id_penawaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `harga_penawaran` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penawarans`
--

INSERT INTO `penawarans` (`id_penawaran`, `id_user`, `id_barang`, `harga_penawaran`, `created_at`, `updated_at`) VALUES
(1, 26, 1, '12.00', '2024-11-13 18:19:23', ''),
(2, 26, 1, '20000.00', '2024-11-13 18:37:52', '2024-11-14 01:37:52'),
(3, 26, 1, '123.00', '2024-11-13 20:36:19', '2024-11-14 03:36:19'),
(4, 26, 1, '444.00', '2024-11-13 20:39:09', '2024-11-14 03:39:09'),
(5, 26, 1, '12.00', '2024-11-13 21:14:00', '2024-11-14 04:14:00'),
(6, 26, 1, '12.00', '2024-11-13 21:14:07', '2024-11-14 04:14:07'),
(7, 26, 1, '2000.00', '2024-11-13 22:05:22', '2024-11-14 05:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('laki','perempuan') DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `level` int(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `create_by` int(255) DEFAULT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  `update_by` int(255) DEFAULT NULL,
  `delete_at` varchar(255) DEFAULT NULL,
  `delete_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `level`, `create_at`, `create_by`, `update_at`, `update_by`, `delete_at`, `delete_by`) VALUES
(12, 'admin', '202cb962ac59075b964b07152d234b70', 'clara', 'perempuan', 'lorem ipsum', 1, '2024-08-14 08:34:45', 1, NULL, NULL, NULL, NULL),
(13, 'asep', '202cb962ac59075b964b07152d234b70', 'dd', 'laki', 'tm', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'morgen', '202cb962ac59075b964b07152d234b70', 'morgen taw', 'perempuan', 'orci', 3, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'epan', '202cb962ac59075b964b07152d234b70', 'uu', 'laki', 'aman', 4, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'manda', '202cb962ac59075b964b07152d234b70', 'ee', '', 'balaoi', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'buk alda', '$2y$10$ASqkDY.RiPHIs6wBewj7EeEh5e7aKnDrAczWDk26XE.ZSMEtSrb9e', 'as', 'perempuan', NULL, NULL, '2024-10-11 18:09:20', NULL, '2024-10-11 18:09:20', NULL, NULL, NULL),
(19, 'deren', '6a53c0a2839d37d49a1c3d7546060504', 'oo', 'perempuan', NULL, NULL, '2024-10-11 18:09:37', NULL, '2024-10-11 18:09:37', NULL, NULL, NULL),
(20, 'logi', '$2y$10$Ot08TBFIpVlYMlAHReLli.qyTOAyHQfQjO6x0OFy53pLBFzdQFv9e', 'kobi', 'laki', NULL, NULL, '2024-10-11 18:13:55', NULL, '2024-10-11 18:13:55', NULL, NULL, NULL),
(21, 'user', 'e10adc3949ba59abbe56e057f20f883e', 'rr', 'perempuan', NULL, NULL, '2024-10-11 18:17:40', NULL, '2024-10-11 18:17:40', NULL, NULL, NULL),
(22, 'van', '$2y$10$HVVsAgurtGpGxTCcRm3uDulOSnQnpEeH6YwjN2EtVQ87dUA8.n59m', 'ff', 'laki', NULL, NULL, '2024-10-11 18:35:23', NULL, '2024-10-11 18:35:23', NULL, NULL, NULL),
(23, 'asep', '$2y$10$5anbTGNo6H9C68mT4WHTgORfAgVul35cjOtYuCBfiV9MJBkkMp9Ry', 'pan', 'laki', NULL, NULL, '2024-10-11 18:53:45', NULL, '2024-10-11 18:53:45', NULL, NULL, NULL),
(24, 'asus', '$2y$10$.rqdRVpXHtp0xvcy0LHPKO260nRXM1elwaFh7NW4Y8UvugAD9P5fi', 'as', 'laki', NULL, NULL, '2024-10-11 18:58:27', NULL, '2024-10-11 18:58:27', NULL, NULL, NULL),
(25, 'tin', '202cb962ac59075b964b07152d234b70', 'hsh', 'laki', NULL, NULL, '2024-10-11 19:23:57', NULL, '2024-10-11 19:23:57', NULL, NULL, NULL),
(26, 'pak if', '202cb962ac59075b964b07152d234b70', 'pak if', 'laki', NULL, NULL, '2024-10-12 04:05:32', NULL, '2024-10-12 04:05:32', NULL, NULL, NULL),
(27, 'yoga', '$2y$10$6/8bqWak4BPXSxV0gGLVQOgpJxrUo9q/phyUxqa0HM2BBTZF6kOgW', 'yoga', 'laki', NULL, NULL, '2024-10-12 04:39:25', NULL, '2024-10-12 04:39:25', NULL, NULL, NULL),
(28, 'iphone', '$2y$10$iMb1wAx/TMW9XVZu0b2Wduod9FLB4OcX6zMs.3dekYee4zhkKAp0K', 'asep', 'laki', NULL, NULL, '2024-10-12 04:42:25', NULL, '2024-10-12 04:42:25', NULL, NULL, NULL),
(29, 'uauau', '$2y$10$iJD4HCTb8Qy3SYf388zQTue3SzAgmlYaGQvguP7u998s44pKaoJHW', 'hsh', 'perempuan', NULL, NULL, '2024-10-12 04:45:46', NULL, '2024-10-12 04:45:46', NULL, NULL, NULL),
(30, 'lampu', '202cb962ac59075b964b07152d234b70', 'haha', 'perempuan', NULL, NULL, '2024-10-12 04:48:55', NULL, '2024-10-12 04:48:55', NULL, NULL, NULL),
(31, 'asusvivobook', '$2y$10$7tgFuM1Yp0mUCdLP/fmbsu0M6MYN2EF8e9sLfOW.azHdvaZQnB2uW', 'iphone', 'perempuan', NULL, NULL, '2024-10-12 04:56:28', NULL, '2024-10-12 04:56:28', NULL, NULL, NULL),
(32, 't', 'd9b1d7db4cd6e70935368a1efb10e377', 'aha', 'laki', NULL, NULL, '2024-10-12 05:01:00', NULL, '2024-10-12 05:01:00', NULL, NULL, NULL),
(33, 'kk', 'd9b1d7db4cd6e70935368a1efb10e377', 'as', 'laki', NULL, NULL, '2024-10-12 05:04:18', NULL, '2024-10-12 05:04:18', NULL, NULL, NULL),
(34, 'kbk', 'd9b1d7db4cd6e70935368a1efb10e377', 'uui', 'perempuan', NULL, NULL, '2024-11-13 14:51:15', NULL, '2024-11-13 14:51:15', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `lelangs`
--
ALTER TABLE `lelangs`
  ADD PRIMARY KEY (`id_lelang`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`) USING BTREE;

--
-- Indexes for table `penawarans`
--
ALTER TABLE `penawarans`
  ADD PRIMARY KEY (`id_penawaran`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lelangs`
--
ALTER TABLE `lelangs`
  MODIFY `id_lelang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penawarans`
--
ALTER TABLE `penawarans`
  MODIFY `id_penawaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lelangs`
--
ALTER TABLE `lelangs`
  ADD CONSTRAINT `lelangs_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id_barang`) ON DELETE CASCADE;

--
-- Constraints for table `penawarans`
--
ALTER TABLE `penawarans`
  ADD CONSTRAINT `penawarans_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `penawarans_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id_barang`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
