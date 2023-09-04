-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2023 at 01:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-rbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `history_perbaikan`
--

CREATE TABLE `history_perbaikan` (
  `id` int(11) NOT NULL,
  `reservasi_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_pelayanan` text NOT NULL,
  `deskripsi_motor` varchar(128) NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `catatan` text DEFAULT NULL,
  `biaya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_perbaikan`
--

INSERT INTO `history_perbaikan` (`id`, `reservasi_id`, `tanggal`, `jenis_pelayanan`, `deskripsi_motor`, `waktu_mulai`, `waktu_selesai`, `catatan`, `biaya`) VALUES
(8, 23, '2023-09-04', 'Servis Ringan - Injeksi', 'Honda Vario 160cc', '08:00:00', '08:00:00', 'Harap rutin ganti oli, minimal 3 bulan sekali.', '120000');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id`, `slot_id`, `user_id`) VALUES
(22, 12, 10),
(23, 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `service_slot`
--

CREATE TABLE `service_slot` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `jenis_pelayanan` varchar(128) NOT NULL,
  `is_ready` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_slot`
--

INSERT INTO `service_slot` (`id`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `jenis_pelayanan`, `is_ready`) VALUES
(9, '2023-09-04', '08:00:00', '08:00:00', 'Servis Ringan - Injeksi', 3),
(10, '2023-09-04', '08:00:00', '08:00:00', 'Servis Ringan - Injeksi', 1),
(11, '2023-09-04', '08:00:00', '10:00:00', 'Servis Ringan - Karbu', 0),
(12, '2023-09-05', '10:00:00', '00:00:00', 'Full Servis - Injeksi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `no_telp`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(6, 'Nada', 'nada@gmail.com', '082331457219', 'fp-1.jpg', '$2y$10$QPIf7cvX0QpGqxdhlR8eduPjaFchyDKbEFZYFabIUYrLU20pv9Q2i', 2, 1, 1691554057),
(7, 'Administrator', 'admin@admin.com', '085413248550', 'default.jpg', '$2y$10$2s.iopkg/mumB7f7x39R5ezM5DXmXAcazXVFEnje6NeGezzyvzB5.', 1, 1, 1691648313),
(10, 'Yoga', 'yoga@gmail.com', '082331457219', 'default.jpg', '$2y$10$m5nrheeaMqjeKQpEjn6Q7OEa.9Le/WZjLeYCWajSAAFBQI4dbMjnu', 2, 1, 1692695859),
(15, 'Muhammad Fauzan', 'fauzan187@gmail.com', '08133247890', 'default.jpg', '$2y$10$C7b9BTkEzeeyy81neDt7hewaYDTzEwwYqvd/fAnVqMCglgJPkjada', 3, 1, 1693727760),
(16, 'Zen', 'yuukiisaki02@gmail.com', '084667812479', 'default.jpg', '$2y$10$cx/CoahSE1uS7O42oBT62.7rCkcoVMl.oaAIVCVZPeswHo8Js7nTa', 2, 1, 1693738827);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(6, 1, 3),
(9, 1, 9),
(12, 3, 9),
(15, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(9, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(3, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', '1'),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', '1'),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', '1'),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', '1'),
(12, 9, 'Slot Bengkel', 'user/slot_bengkel', 'fa-fw fa-solid fa-check-to-slot', '1'),
(14, 2, 'History', 'user/history', 'fas fa-fw fa-history', '1'),
(22, 9, 'Monitoring Bengkel', 'staff', 'fas fa-fw fa-desktop', '1'),
(23, 2, 'Reservasi', 'user/reservasi', 'fa-fw fa-solid fa-check-to-slot', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(5, 'rezanonym.02@gmail.com', 'ZW7eY9Y66+Ozcs0LDtSmaT7PZIm8o+awv4hfaYU1DHc=', 1693516254),
(6, 'rezanonym.02@gmail.com', 'gYb/YkoKVwKEtakTkHj+W8l6PWr3dNsk6RMfPIZeqNM=', 1693516574),
(8, 'phewsquad.121@gmail.com', '35dwNxXw3S3IAeogUmk5uJbNm6emj1/682RuTIyTmi8=', 1693529871),
(9, 'phewsquad.121@gmail.com', 'GgX1BFp455d43bi7Bjw8b6xEOYtMSVDF2v2Yc5U1hWw=', 1693714922),
(10, 'phewsquad.121@gmail.com', 'TjguKCPxOt2VrtDRejMlkU/XfigMW3hBJ+/sYwtGik4=', 1693715633),
(11, 'phewsquad.121@gmail.com', 'J3t93I0uq0sSnbPnUKtYoqlzqhtqxZr1sHHPoYc+/ps=', 1693715727),
(12, 'phewsquad.121@gmail.com', 'Wo9iSmCEXzawOd+piAIVIyO0xLvgPG9P6XXXVWP6PNk=', 1693715832),
(13, 'phewsquad.121@gmail.com', 'xX6h0FXr+2UzF9OBG6qkHJMSz+0GFsSZIFnx7ud9oYQ=', 1693715875),
(14, 'phewsquad.121@gmail.com', 'i8438CV0jNKAbKzdrP9hg+Rb0qUnahLZTe1yNpt6NL8=', 1693715915),
(17, 'fauzan187@gmail.com', 'aAsCw1I9Yljgxk0V75/3wL0V4FGBz3rFnxPyPOurIhQ=', 1693727760),
(19, 'yuukiisaki02@gmail.com', 'KIJ+PIaHMZXCcRrtcX08+ZJrpSFJxUqG6Ctxt24+ppw=', 1693739484);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history_perbaikan`
--
ALTER TABLE `history_perbaikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_slot`
--
ALTER TABLE `service_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history_perbaikan`
--
ALTER TABLE `history_perbaikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `service_slot`
--
ALTER TABLE `service_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
