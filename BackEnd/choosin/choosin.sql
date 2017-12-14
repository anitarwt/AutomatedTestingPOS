-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 06:05 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `choosin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(65) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `status`) VALUES
(1, 'Kambali Wijaya', 'ajiono51', '$2y$10$6EczCoWY80FopPrhYWKb9OKWQn3yTojPQ0JIgWI62INnNYRgwOpPu', 1),
(2, 'Ellis Bella Palastri S.I.Kom', 'waskita.eva', '$2y$10$lfJ72WSsLqrck7RFKh4/b.gUoRS1zvcBOJKBIY8C.cAzXlF/sh1p.', 1),
(3, 'Edward Gunarto', 'marpaung.among', '$2y$10$Y5Q2lathtGfAHYqipSDCTeGJzLr/Wqy7EA7OkknSOQyWJVRVX6EDe', 1),
(4, 'Agus Santoso', 'mangunsong.irwan', '$2y$10$R2OOS7ZbOhwEu7RFUEPnXON6AJb0ME2403lA7xJ0ZRUi2rkD1Vtga', 1),
(5, 'Jaiman Prayoga', 'nadia.rahayu', '$2y$10$bO67.wbGQI0VsnK3dqTpmu7R0Gm8XFbsE/vzWAMpLZAq7aUTZ0Bf.', 1),
(6, 'Maras Simbolon', 'ghaliyati63', '$2y$10$abLRftX1bkI9Wh3Sul6B5eb4guOJoFlDCW0nHjZkg.UEKOd9Znb.O', 1),
(7, 'Sabar Wibowo S.Ked', 'iriana44', '$2y$10$0Chkb1X44.Rb4lIgrz0l8.K7ELUMkUOLht4Qwvn95USO4FBYh6Se2', 1),
(8, 'Gasti Eva Mandasari', 'prayoga.agnes', '$2y$10$bo/KGr59v9piaJjnz91xO.q/8WCwxWIx15BiRwSqxUH7JjRKgFFsC', 1),
(9, 'Bancar Wibisono', 'drajat85', '$2y$10$XNTUcLsYpbPhMHCOAPuLv.b9k7RZfbC7bKZ.iXNy5nPQUGbT3.Th2', 1),
(10, 'Hasan Haryanto', 'caraka14', '$2y$10$EH0XbMWt.zPItbKpiBeLge6U47g3bKCexSHLBROtugWNRErPQY01u', 1),
(11, 'Zamira Maryati', 'cnovitasari', '$2y$10$/TgZ.w6YA6FJwu5EUR5j3OH4ygOowCSXFKqBNx87UNin/YfwRtQNe', 1),
(12, 'Lalita Lailasari', 'sihotang.karta', '$2y$10$IHGPiuQ25ghU3V6lMFZWwO3c3vZUwa..9nwm1L3ekocJfZNfXyfGu', 1),
(13, 'Jail Irawan', 'setya.tampubolon', '$2y$10$6h5RcqpSwGxhV4x93e8kGOJTgfOEuz7alapYTK80cLqiqUkrd.SP.', 1),
(14, 'Galur Salman Wasita', 'mahmud.halim', '$2y$10$aKapXW/FHI8l8v385Vdcqel46AC8fgfZRSsGwkFmZ7/Sv8isjGm.e', 1),
(15, 'Arta Tirta Hutapea', 'raden94', '$2y$10$vnmcfWuVVi/U/clAUWjjLuJ9i3Yc/UHAMV1zEq1unNZr5obAR0/Wq', 1),
(16, 'Uli Usada S.H.', 'putra.ajiono', '$2y$10$zk2ni/wnY4Lxz3KRNh.oPOcw7N89maDNbdRiRVXfZcYjISd6G7WxO', 1),
(17, 'Ibrahim Tomi Situmorang S.H.', 'humaira46', '$2y$10$zxywtASTYSY/bWAy3eBy8uuikiX64PZdm1PxY82H4uP8jToTQsUMe', 1),
(18, 'Puspa Kartika Suryatmi', 'wusada', '$2y$10$XPClY1mN6z8vL6j6tIL60O2Wr0Aht0MrxxM1Oa9UR.67o2wEidyB.', 1),
(19, 'Intan Alika Sudiati', 'hsihombing', '$2y$10$pVBFCTapYjtvXopx0Y5JkOJTcazaUlDfhF7NCcveLDK9/.kOJwQdi', 1),
(20, 'Uli Gabriella Oktaviani M.M.', 'bahuwarna.setiawan', '$2y$10$GN1YGV.ppSW4GOPenrETBeE2v2Ke58BQXCOVgxUAm4ofOLSsxj82G', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(15) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode` varchar(25) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `atas_nama` varchar(65) DEFAULT NULL,
  `id_tempat_makan` int(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `keterangan` text,
  `status_bayar` tinyint(1) DEFAULT NULL,
  `metode_bayar` enum('transfer','payment_gateway') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_user`, `kode`, `tanggal`, `atas_nama`, `id_tempat_makan`, `status`, `keterangan`, `status_bayar`, `metode_bayar`) VALUES
(1, 11, '3760313873485', '1980-08-22 22:09:58', 'Febi Anggraini', 16, 1, 'voluptatem', 1, 'payment_gateway'),
(2, 15, '8825190', '2015-12-17 04:22:50', 'Lala Oktaviani S.Kom', 24, 1, 'veniam', 0, 'payment_gateway'),
(3, 24, '1188190047', '2016-01-06 20:59:41', 'Talia Hamima Agustina', 12, 1, 'quia', 0, 'transfer'),
(4, 21, '778519610', '1975-10-26 14:50:24', 'Clara Widiastuti', 25, 1, 'est', 0, 'transfer'),
(5, 23, '2119185624', '1971-09-04 14:28:05', 'Natalia Hasanah', 10, 1, 'quasi', 0, 'payment_gateway'),
(6, 16, '20173881986438', '2000-03-29 01:21:09', 'Jindra Suryono', 20, 1, 'consequatur', 0, 'payment_gateway'),
(7, 25, '62587173853908', '1981-07-03 04:56:16', 'Balangga Warsita Sinaga S.Sos', 6, 1, 'molestiae', 0, 'payment_gateway'),
(8, 6, '03201711007', '2012-07-07 09:34:13', 'Gatra Hutapea', 10, 1, 'nihil', 1, 'transfer'),
(9, 11, '40286322286', '1981-10-20 18:21:03', 'Utama Tirtayasa Manullang', 3, 1, 'est', 1, 'transfer'),
(10, 14, '58450915', '1998-01-03 13:35:55', 'Nugraha Heryanto Natsir S.IP', 8, 1, 'voluptatum', 1, 'payment_gateway'),
(11, 7, '699431199', '1994-08-11 13:18:15', 'Jayadi Kusumo M.Kom.', 16, 1, 'unde', 0, 'payment_gateway'),
(12, 12, '35692396521', '1974-11-22 13:55:28', 'Harimurti Saiful Firgantoro', 8, 1, 'sint', 1, 'payment_gateway'),
(13, 17, '20548582254728', '2004-06-18 16:45:11', 'Dina Cinthia Lestari M.M.', 15, 1, 'mollitia', 1, 'transfer'),
(14, 7, '90158192105156', '2009-09-06 14:40:21', 'Sakura Zaenab Yolanda', 3, 1, 'sit', 1, 'payment_gateway'),
(15, 13, '77371018568253', '2001-12-06 17:00:18', 'Zahra Permata', 10, 1, 'magni', 1, 'payment_gateway'),
(16, 17, '6544882890', '1998-12-05 15:02:11', 'Intan Aryani', 22, 1, 'neque', 0, 'transfer'),
(17, 5, '432598490', '2012-05-29 01:20:04', 'Mulyanto Napitupulu', 10, 1, 'dolor', 0, 'payment_gateway'),
(18, 25, '272329', '1976-04-27 19:53:29', 'Legawa Kurniawan', 5, 1, 'voluptatem', 0, 'transfer'),
(19, 22, '749292667551', '2011-10-10 12:17:28', 'Luwes Carub Siregar', 7, 1, 'ut', 1, 'payment_gateway'),
(20, 21, '31293654993', '1981-04-12 10:38:46', 'Zaenab Nuraini', 7, 1, 'quia', 1, 'payment_gateway'),
(21, 22, '38951440288', '1971-07-19 23:38:48', 'Prayogo Harjo Anggriawan S.E.', 16, 1, 'laudantium', 1, 'transfer'),
(22, 22, '733281879436257', '2017-04-09 14:00:10', 'Sarah Sudiati S.Pd', 8, 1, 'distinctio', 1, 'transfer'),
(23, 13, '0376646866', '2010-03-13 07:32:30', 'Tina Mandasari', 12, 1, 'quos', 0, 'transfer'),
(24, 24, '793849046599', '2007-04-14 02:09:57', 'Cindy Zulaika S.Pt', 21, 1, 'cupiditate', 1, 'transfer'),
(25, 15, '990235893', '1994-09-27 07:03:01', 'Putri Yulia Riyanti S.Pt', 5, 1, 'magnam', 0, 'payment_gateway'),
(26, 13, '35001473804', '1996-02-15 15:21:55', 'Mustika Maulana', 7, 1, 'ipsam', 0, 'transfer'),
(27, 25, '98723917376387', '1993-06-27 11:18:26', 'Danuja Cahyadi Uwais', 24, 1, 'voluptatibus', 1, 'payment_gateway'),
(28, 22, '764286030', '1985-07-20 20:16:40', 'Kezia Pratiwi', 21, 1, 'repudiandae', 0, 'payment_gateway'),
(29, 16, '47036039284194', '1997-12-17 13:25:11', 'Yusuf Jagaraga Hidayanto', 25, 1, 'ducimus', 0, 'payment_gateway'),
(30, 12, '427068787140', '1997-10-16 16:24:47', 'Indah Pratiwi', 4, 1, 'officia', 0, 'payment_gateway');

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id_bookingdetail` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_detail`
--

INSERT INTO `booking_detail` (`id_bookingdetail`, `id_booking`, `id_menu`, `jumlah`, `total_harga`, `status`) VALUES
(1, 15, 8, 7, 2807903, 1),
(2, 18, 60, 6, 2821884, 1),
(3, 16, 33, 10, 667440, 1),
(4, 14, 46, 8, 2797984, 1),
(5, 3, 27, 3, 442908, 1),
(6, 4, 18, 6, 215604, 1),
(7, 7, 7, 8, 3924600, 1),
(8, 19, 54, 1, 499622, 1),
(9, 13, 6, 7, 2479904, 1),
(10, 10, 68, 8, 3635600, 1),
(11, 5, 34, 9, 3181671, 1),
(12, 11, 16, 3, 738336, 1),
(13, 20, 55, 4, 1030692, 1),
(14, 12, 66, 10, 4619770, 1),
(15, 17, 63, 9, 4475421, 1),
(16, 6, 30, 3, 1037796, 1),
(17, 8, 62, 10, 4452930, 1),
(18, 9, 54, 4, 1859952, 1),
(19, 2, 65, 6, 1489608, 1),
(20, 1, 68, 7, 1385349, 1),
(21, 9, 13, 10, 3101830, 1),
(22, 15, 36, 8, 3977792, 1),
(23, 18, 58, 5, 2497540, 1),
(24, 13, 55, 3, 429159, 1),
(25, 10, 52, 8, 3660064, 1),
(26, 14, 52, 6, 1226322, 1),
(27, 19, 21, 10, 3176730, 1),
(28, 2, 4, 5, 1077110, 1),
(29, 20, 61, 9, 4133601, 1),
(30, 16, 48, 2, 721194, 1),
(31, 17, 16, 3, 1368654, 1),
(32, 4, 68, 4, 1532020, 1),
(33, 12, 63, 5, 1936715, 1),
(34, 11, 26, 10, 593490, 1),
(35, 1, 38, 10, 4912380, 1),
(36, 7, 12, 3, 772083, 1),
(37, 8, 36, 3, 1442973, 1),
(38, 5, 38, 5, 2471855, 1),
(39, 3, 41, 4, 1596984, 1),
(40, 6, 13, 6, 2957220, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_masakan`
--

CREATE TABLE `jenis_masakan` (
  `id_jenis_masakan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_masakan`
--

INSERT INTO `jenis_masakan` (`id_jenis_masakan`, `nama`, `status`) VALUES
(1, 'Indonesia', 1),
(2, 'Asia', 1),
(3, 'Indonesia', 1),
(4, 'Europa', 1),
(5, 'junkfood', 1),
(6, 'junkfood', 1),
(7, 'amerika', 1),
(8, 'Indonesia', 1),
(9, 'Indonesia', 1),
(10, 'Chinese', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_makanan`
--

CREATE TABLE `menu_makanan` (
  `id_menu` int(11) NOT NULL,
  `id_tempatmakan` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_jenis_masakan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_makanan`
--

INSERT INTO `menu_makanan` (`id_menu`, `id_tempatmakan`, `nama`, `harga`, `foto`, `status`, `id_jenis_masakan`) VALUES
(1, 12, 'Little Bacon Burger', '15499', NULL, 1, 10),
(2, 21, 'Little Cheeseburger', '59785', NULL, 1, 7),
(3, 12, 'Pasta', '60338', NULL, 1, 7),
(4, 3, 'Bacon Burger', '75313', NULL, 1, 6),
(5, 4, 'Cheese Pizza', '35559', NULL, 1, 2),
(6, 6, 'Cheese Dog', '60411', NULL, 1, 4),
(7, 9, 'Little Hamburger', '66799', NULL, 1, 10),
(8, 21, 'Bacon Dog', '60970', NULL, 1, 3),
(9, 5, 'Bacon Dog', '64277', NULL, 1, 3),
(10, 23, 'Cheese Dog', '30105', NULL, 1, 9),
(11, 25, 'Bacon Cheeseburger', '68173', NULL, 1, 9),
(12, 12, 'Veggie Sandwich', '34169', NULL, 1, 10),
(13, 21, 'Cheese Dog', '20205', NULL, 1, 3),
(14, 16, 'Little Bacon Cheeseburger', '73038', NULL, 1, 10),
(16, 10, 'Little Cheeseburger', '69792', NULL, 1, 10),
(17, 9, 'Little Cheeseburger', '67566', NULL, 1, 10),
(18, 8, 'Little Bacon Burger', '71330', NULL, 1, 9),
(19, 10, 'Cheese Dog', '45244', NULL, 1, 8),
(20, 9, 'Cheese Pizza', '64576', NULL, 1, 10),
(21, 6, 'Cheese Dog', '46609', NULL, 1, 5),
(22, 20, 'Bacon Burger', '95352', NULL, 1, 6),
(23, 15, 'Pasta', '93239', NULL, 1, 4),
(24, 20, 'Cheeseburger', '80095', NULL, 1, 5),
(25, 12, 'Cheeseburger', '52986', NULL, 1, 1),
(26, 16, 'Little Bacon Burger', '82031', NULL, 1, 10),
(27, 18, 'Bacon Burger', '46454', NULL, 1, 9),
(28, 19, 'Little Cheeseburger', '61476', NULL, 1, 5),
(30, 14, 'Little Bacon Burger', '75970', NULL, 1, 4),
(31, 1, 'Cheese Pizza', '50263', NULL, 1, 10),
(32, 18, 'Cheese Pizza', '87565', NULL, 1, 6),
(33, 20, 'Pasta', '25891', NULL, 1, 9),
(34, 7, 'Pasta', '78109', NULL, 1, 7),
(35, 17, 'Hamburger', '95227', NULL, 1, 1),
(36, 3, 'Bacon Cheese Dog', '50929', NULL, 1, 6),
(37, 5, 'Cheese Pizza', '33792', NULL, 1, 7),
(38, 20, 'Cheeseburger', '94097', NULL, 1, 6),
(39, 16, 'Grilled Cheese', '65547', NULL, 1, 1),
(40, 8, 'Cheese Veggie Sandwich', '85548', NULL, 1, 4),
(41, 13, 'Bacon Cheeseburger', '64853', NULL, 1, 9),
(42, 4, 'Bacon Cheeseburger', '57309', NULL, 1, 2),
(43, 14, 'Cheeseburger', '90372', NULL, 1, 6),
(44, 19, 'Little Bacon Burger', '20063', NULL, 1, 1),
(45, 9, 'Bacon Burger', '74256', NULL, 1, 9),
(46, 11, 'Little Cheeseburger', '50213', NULL, 1, 7),
(47, 15, 'Bacon Burger', '39155', NULL, 1, 4),
(48, 3, 'Pasta', '41084', NULL, 1, 10),
(49, 18, 'Bacon Cheeseburger', '96082', NULL, 1, 7),
(50, 19, 'Little Hamburger', '44443', NULL, 1, 6),
(51, 16, 'Bacon Cheese Dog', '63025', NULL, 1, 6),
(52, 14, 'Bacon Cheese Dog', '32365', NULL, 1, 10),
(53, 20, 'Grilled Cheese', '51310', NULL, 1, 7),
(54, 8, 'Little Hamburger', '57550', NULL, 1, 7),
(55, 18, 'Little Hamburger', '62451', NULL, 1, 8),
(56, 18, 'Grilled Cheese', '88938', NULL, 1, 8),
(57, 16, 'Bacon Dog', '37772', NULL, 1, 4),
(58, 20, 'Hamburger', '42756', NULL, 1, 2),
(59, 16, 'Cheese Dog', '20721', NULL, 1, 8),
(60, 19, 'Little Cheeseburger', '65398', NULL, 1, 7),
(61, 8, 'Hamburger', '67260', NULL, 1, 3),
(62, 11, 'Little Cheeseburger', '69228', NULL, 1, 4),
(63, 17, 'Bacon Burger', '24456', NULL, 1, 10),
(64, 3, 'Cheese Dog', '8931', NULL, 1, 4),
(65, 13, 'Bacon Cheeseburger', '39782', NULL, 1, 7),
(66, 9, 'Little Bacon Cheeseburger', '85899', NULL, 1, 8),
(67, 13, 'Little Hamburger', '37068', NULL, 1, 4),
(68, 7, 'Little Cheeseburger', '92510', NULL, 1, 9),
(69, 10, 'Veggie Sandwich', '62904', NULL, 1, 4),
(70, 19, 'Little Cheeseburger', '94902', NULL, 1, 2),
(71, 14, 'Cheese Veggie Sandwich', '86644', NULL, 1, 4),
(72, 14, 'Grilled Cheese', '53414', NULL, 1, 3),
(73, 11, 'Cheese Pizza', '86822', NULL, 1, 10),
(74, 13, 'Little Bacon Burger', '75907', NULL, 1, 7),
(75, 15, 'Grilled Cheese', '82310', NULL, 1, 7),
(76, 19, 'Cheese Dog', '40620', NULL, 1, 4),
(77, 20, 'Little Bacon Burger', '24701', NULL, 1, 2),
(78, 5, 'Little Cheeseburger', '94629', NULL, 1, 9),
(79, 4, 'Cheese Pizza', '73289', NULL, 1, 6);

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_booking` int(11) DEFAULT NULL,
  `total_bayar` decimal(10,0) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_booking`, `total_bayar`, `status`) VALUES
(1, 16, '373032', 1),
(2, 18, '207320', 1),
(3, 14, '92251', 1),
(4, 13, '284569', 1),
(5, 17, '445320', 1),
(6, 11, '273210', 1),
(7, 10, '340022', 1),
(8, 12, '449567', 1),
(9, 3, '390086', 1),
(10, 5, '81338', 1),
(11, 2, '124983', 1),
(12, 19, '293032', 1),
(13, 9, '229907', 1),
(14, 8, '247398', 1),
(15, 6, '316011', 1),
(16, 15, '470716', 1),
(17, 4, '364711', 1),
(18, 20, '93293', 1),
(19, 7, '384605', 1),
(20, 1, '388738', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `id_pemilik` int(11) NOT NULL,
  `nama` varchar(65) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`id_pemilik`, `nama`, `password`, `status`) VALUES
(1, 'ramadan.safina', '$2y$10$AFD8.A/QdDZcep3P4x1f8.LzBYDMeTmvcIDT53mKm5J6pZ61Icq8y', 1),
(2, 'heryanto63', '$2y$10$q6on.JlwouI8kdlYR3mfne/2sAVnLq4MZH40r6dHF/ysRYPNExCqW', 1),
(3, 'michelle88', '$2y$10$CAPm80EmATszpgb79Bkhnem4lmRVkU72IH1v5KSv4WpzIJ9MaWI9u', 1),
(4, 'hartana66', '$2y$10$EFtXfTpFrRcKRJTUiAhqmu9wA6BpUBmhfjzfyVJyxB3FPwbdMGSDy', 1),
(5, 'hartati.pia', '$2y$10$ZYz.pd/wCLKt92M4ILOFuO/2dhJzg8Wxzal8WYP5NyCAMBfZe6rim', 1),
(6, 'lidya76', '$2y$10$HNABeMFUppBbwDj8S79BEeM.7MroP0BMNA1N3GsasxX1PkUCFsPNC', 1),
(7, 'ardianto.cahyanto', '$2y$10$GK4B9WI4MUGmTwQBGQGcF./qCiDJ0/kMp4gyHM6ZRcG2lrYv4qImK', 1),
(8, 'mitra50', '$2y$10$7mlySShJyisx7Hi4i965U.hXldRAqcAZnef33Mfza9dOjeP9k3416', 1),
(9, 'cemplunk43', '$2y$10$qdCjjytC6BrZTPL6ljgumuo0VhYfodmXwEZtVXyRvy5LUJeLKVolW', 1),
(10, 'maryadi42', '$2y$10$whQ51BbL3ZPisZS8tJYwaOq8Zhuj7p6IfYzSfcTF6P/vmcqkTbPS2', 1),
(11, 'fitria.usada', '$2y$10$aaUf/z78Br7p/RzLsBe43uYrqNVa0iObzqH5u0j5cjNLLnI1q4G.6', 1),
(12, 'zhasanah', '$2y$10$s.jUM72VzM31KIR/tR5.suFa8yWSFOS5v2RlU..9bvaALvjJi4NTi', 1),
(13, 'dinda63', '$2y$10$MRiW6qnvdvqaoorlO7G8QuhslXfeCoJUY5bdecHVrNrvbmf.ssrz.', 1),
(14, 'titin.yuniar', '$2y$10$hwi30D9IQkKNzYKvCkWFUe/Y/r6vDUSOYGCneMt/FemuplOZ5/b0q', 1),
(15, 'oni.marbun', '$2y$10$lRCnnqoN0zv3gUVVxK.jAu3jQPN42MWQRBO0pd87SbXZono/3U0fu', 1),
(16, 'samiah.oktaviani', '$2y$10$ueXW9ORwW4Z9CNgbWngIyedneor7WogwxHilqmTz3T/gc5PEn8s82', 1),
(17, 'kartika.damanik', '$2y$10$LQUVW4PL4vw7GreOBTWt/ePgQHzqJIRlsgam8VrHj/AVFFKXuz74.', 1),
(18, 'sbudiyanto', '$2y$10$mHGvSYcmOXSIIKAriNSLcuP.7RPVFKpdnn6rw0E2T0SIXJSIZ6RIO', 1),
(19, 'rrahimah', '$2y$10$wRuqDdnKm0Q5XTHG3U7sm.OcllzKS7W.JxfMfGylLY54ef8Mxr3oW', 1),
(20, 'kamila.farida', '$2y$10$ojY5.Cmoo/P4/fA5VwL2c.VdU5f2O0.5bdlOkZbF3EQusKRCbxHie', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tempat_makan`
--

CREATE TABLE `tempat_makan` (
  `id_tempatmakan` int(11) NOT NULL,
  `nama` varchar(64) DEFAULT NULL,
  `alamat` text,
  `foto` varchar(50) DEFAULT NULL,
  `id_pemilik` int(15) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double NOT NULL,
  `kontak` varchar(23) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tempat_makan`
--

INSERT INTO `tempat_makan` (`id_tempatmakan`, `nama`, `alamat`, `foto`, `id_pemilik`, `latitude`, `longitude`, `kontak`, `status`) VALUES
(1, 'UD Safitri Yuliarti', 'Jln. Dipatiukur No. 912, Payakumbuh 89573, Lampung', NULL, 20, -7.79799, 110.369313, '0744 6818 0972', 1),
(3, 'UD Dabukke Tbk', 'Jr. Tubagus Ismail No. 314, Administrasi Jakarta Timur 27095, JaBar', NULL, 13, -7.797981, 110.367674, '0859 914 604', 1),
(4, 'PD Padmasari Puspasari', 'Kpg. Raden Saleh No. 454, Mataram 55702, SumBar', NULL, 15, -7.797811, 110.367294, '0642 0516 4194', 1),
(5, 'PT Hakim (Persero) Tbk', 'Ds. Gardujati No. 837, Cimahi 60100, Banten', NULL, 9, -7.797934, 110.363052, '0697 1650 7212', 1),
(6, 'PT Nurdiyanti', 'Dk. Nakula No. 322, Tasikmalaya 55905, BaBel', NULL, 17, -7.797199, 110.366007, '(+62) 810 024 480', 1),
(7, 'Perum Prakasa Siregar (Persero) Tbk', 'Ds. Basuki No. 964, Tasikmalaya 18223, SulTra', NULL, 9, -7.798002, 110.368748, '(+62) 28 5513 947', 1),
(8, 'PT Kusmawati (Persero) Tbk', 'Jln. Dr. Junjunan No. 209, Bandung 10882, JaTim', NULL, 20, -7.797949, 110.36798, '(+62) 804 7146 979', 1),
(9, 'CV Uyainah Astuti (Persero) Tbk', 'Kpg. Rajawali Barat No. 995, Tanjungbalai 11927, SumSel', NULL, 2, -7.797633, 110.36439, '(+62) 26 7469 661', 1),
(10, 'CV Siregar Mustofa Tbk', 'Kpg. Moch. Toha No. 848, Prabumulih 34504, BaBel', NULL, 7, -7.797572, 110.364601, '(+62) 293 6256 005', 1),
(11, 'PD Yuniar Pratama', 'Jln. Rajawali Timur No. 844, Bandung 55582, KalTim', NULL, 19, -7.797265, 110.367773, '029 3671 1272', 1),
(12, 'UD Laksita Tbk', 'Gg. Orang No. 25, Salatiga 27914, Riau', NULL, 15, -7.797453, 110.36214, '0809 0758 319', 1),
(13, 'Perum Januar Tarihoran', 'Ki. Bah Jaya No. 108, Batam 98119, SumUt', NULL, 11, -7.797531, 110.369508, '(+62) 437 5348 711', 1),
(14, 'PT Yolanda Padmasari', 'Kpg. Reksoninten No. 561, Binjai 80349, SulBar', NULL, 6, -7.797284, 110.362581, '(+62) 388 9045 6021', 1),
(15, 'PT Mustofa', 'Dk. Jend. A. Yani No. 524, Bekasi 40699, KalBar', NULL, 12, -7.797428, 110.364568, '0262 8409 162', 1),
(16, 'Perum Nurdiyanti (Persero) Tbk', 'Psr. Basuki No. 774, Cimahi 39852, Maluku', NULL, 8, -7.797699, 110.366844, '0350 1172 007', 1),
(17, 'PT Jailani Mayasari Tbk', 'Kpg. Baladewa No. 613, Solok 88118, JaBar', NULL, 14, -7.79768, 110.364552, '(+62) 524 5929 174', 1),
(18, 'PT Adriansyah Waluyo', 'Kpg. Veteran No. 99, Bogor 50530, MalUt', NULL, 20, -7.797678, 110.367132, '(+62) 922 1142 113', 1),
(19, 'Perum Laksita Tbk', 'Jr. Sudirman No. 654, Banjarmasin 93814, KalTeng', NULL, 8, -7.79742, 110.365121, '022 6772 629', 1),
(20, 'CV Haryanto', 'Psr. Ronggowarsito No. 895, Jambi 65676, KalTim', NULL, 20, -7.797838, 110.368615, '0281 6180 4591', 1),
(21, 'PT Lestari Ramadan (Persero) Tbk', 'Jr. Reksoninten No. 442, Blitar 35534, Jambi', NULL, 11, -7.797374, 110.36756, '(+62) 393 5241 7648', 1),
(22, 'PD Zulaika Nasyiah Tbk', 'Jln. Lembong No. 284, Jambi 16943, SumSel', NULL, 19, -7.797301, 110.366684, '0321 1594 8990', 1),
(23, 'PT Agustina', 'Ds. Sutarjo No. 310, Medan 14730, DKI', NULL, 13, -7.797434, 110.361243, '0633 4323 0933', 1),
(24, 'UD Padmasari Halim', 'Gg. Madrasah No. 385, Medan 26235, Banten', NULL, 10, -7.79784, 110.362399, '0618 2218 607', 1),
(25, 'Perum Dabukke', 'Psr. Dewi Sartika No. 383, Kendari 71358, Riau', NULL, 9, -7.797965, 110.362991, '0997 2860 3763', 1),
(26, 'CV Setiawan Tampubolon Tbk', 'Jr. Abdul. Muis No. 171, Bogor 36308, Bengkulu', NULL, 13, -7.797955, 110.366137, '0600 1667 2916', 1),
(27, 'PT Jailani', 'Jln. Bambon No. 925, Administrasi Jakarta Pusat 97174, BaBel', NULL, 9, -7.797482, 110.367263, '(+62) 269 0725 194', 1),
(28, 'PD Firgantoro (Persero) Tbk', 'Ds. Rajiman No. 144, Surakarta 49287, Gorontalo', NULL, 16, -7.797597, 110.363148, '0691 4228 176', 1),
(29, 'UD Handayani', 'Jr. Rajiman No. 359, Bukittinggi 94800, Maluku', NULL, 3, -7.797432, 110.361536, '027 9621 401', 1),
(30, 'CV Uyainah Thamrin Tbk', 'Kpg. Qrisdoren No. 986, Lubuklinggau 81763, KalTeng', NULL, 19, -7.797991, 110.36261, '(+62) 205 5003 484', 1),
(31, 'UD Lailasari Nasyiah (Persero) Tbk', 'Jr. Haji No. 178, Kotamobagu 62810, KalSel', NULL, 9, -7.797865, 110.367352, '(+62) 671 4952 454', 1),
(32, 'PD Firmansyah (Persero) Tbk', 'Ds. Bambon No. 546, Bima 15276, Maluku', NULL, 14, -7.797498, 110.362182, '(+62) 784 1961 716', 1),
(33, 'PD Hidayanto (Persero) Tbk', 'Jr. Krakatau No. 666, Tidore Kepulauan 79997, DIY', NULL, 13, -7.798031, 110.367978, '(+62) 27 2853 6348', 1),
(34, 'UD Nugroho Januar', 'Psr. Dr. Junjunan No. 463, Kotamobagu 18198, Bali', NULL, 13, -7.797536, 110.368706, '(+62) 363 1946 462', 1),
(35, 'PT Mahendra Suryono (Persero) Tbk', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 285, Denpasar 50863, KalTim', NULL, 16, -7.797556, 110.364922, '0785 7960 773', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `no_hp`, `email`, `jenis_kelamin`, `password`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Elvina Prastuti S.Pt', '0278 0926 4201', 'cinta.widodo@gmail.co.id', 'laki-laki', '$2y$10$O8ir.Sq.N18.QcwX2nxNDulSb8yi/OV..2czjWSCh9Z5yb1jWgJNy', NULL, NULL, NULL, 1),
(2, 'Anastasia Raisa Safitri M.TI.', '0795 6414 3437', 'salimah.wacana@waskita.go.id', 'perempuan', '$2y$10$jVNVxTS16L3d0gMouMF1ge9YTpQQnI0Im0c7PkV1SxMvkQWsVDOr.', NULL, NULL, NULL, 1),
(3, 'Paulin Yulianti', '023 4658 5187', 'winda90@yahoo.co.id', 'perempuan', '$2y$10$TRwhNRyh3td7z6CbM7/9QuCONKJXnxp9aRLPO6SyngpJfbbJAxq7y', NULL, NULL, NULL, 1),
(4, 'Mila Astuti', '(+62) 325 8525 215', 'tlatupono@usada.co.id', 'laki-laki', '$2y$10$Vx58mjfCetNAoQhTGJ4nVug0P6QpdqKgW5sAo.wJFUIFO4SvU8zlm', NULL, NULL, NULL, 1),
(5, 'Najam Tasnim Mandala', '0972 5570 0426', 'megantara.harto@wastuti.biz.id', 'laki-laki', '$2y$10$7knk61mVBXXctMwTK4gTXORqTAK/OtdEeMrFRpwmQlfBeTmLIQ95S', NULL, NULL, NULL, 1),
(6, 'Drajat Wibisono', '(+62) 409 8386 089', 'sidiq43@hidayanto.mil.id', 'perempuan', '$2y$10$1HScJWdPTcYOHHlz/hPS4uoRjoE89ibkcoZ61g1MiAgeZ9HsYyBNi', NULL, NULL, NULL, 1),
(7, 'Umi Cinthia Wijayanti S.Ked', '0516 4197 8507', 'ajiman.prastuti@pradana.info', 'laki-laki', '$2y$10$SfMIr2JW9.m4Ev3gW8q5ZuZ5JlWIoFicvjYh0Cne4oWlNLYDuXiJe', NULL, NULL, NULL, 1),
(8, 'Asman Ramadan', '(+62) 964 0645 990', 'lrahimah@oktaviani.info', 'perempuan', '$2y$10$H8EWUi6Zn8hZVbg1UVZg/u6/9KJ.xGcNxCEHLpY11XVLV/F2rYZ76', NULL, NULL, NULL, 1),
(9, 'Violet Widya Padmasari S.E.', '(+62) 903 6788 697', 'oliva94@yuniar.biz', 'perempuan', '$2y$10$7F3cPsq2pgGnAycQy6GSyeH5NOLH/cQpjTmQH9KUzWszPbFa03Ry6', NULL, NULL, NULL, 1),
(10, 'Wardaya Prayogo Irawan S.E.I', '0854 8965 010', 'ytamba@hassanah.desa.id', 'laki-laki', '$2y$10$qt.NfNSBHDBpgj3p2VN0qer4hMsjM7eWOP69pnrYmg04NbwmC9kmu', NULL, NULL, NULL, 1),
(11, 'Fitria Wijayanti', '0677 2057 2244', 'xtamba@wahyudin.com', 'laki-laki', '$2y$10$yBo60UpVaX9ROUdIQYTVi.Ozy0WmEQu.JUgmiAhQjogT6Y265bm0y', NULL, NULL, NULL, 1),
(12, 'Karma Wibowo', '0562 5794 0255', 'jaiman28@puspita.asia', 'laki-laki', '$2y$10$4vbqHQ3XoO2ncGhoBbdMKej6QSnkEumJoYJp2Y3xTCuY5V7OXXQ82', NULL, NULL, NULL, 1),
(13, 'Paramita Zahra Kuswandari', '0556 9905 7877', 'qmayasari@hartati.go.id', 'perempuan', '$2y$10$Ep31Tn3ivJopiNZcKnS8huwHMmxxjD1IhlhZ3s9rc2ufyG0uIhYQG', NULL, NULL, NULL, 1),
(14, 'Candrakanta Salahudin', '0720 9019 7167', 'silvia.mulyani@yahoo.com', 'perempuan', '$2y$10$FpjAO9BJXyWgX/N/ecTm3O5Fq7yquUNGGoM80B4I3qkrWJ8hhDBSy', NULL, NULL, NULL, 1),
(15, 'Malika Siti Melani', '020 1867 3907', 'zwulandari@yolanda.sch.id', 'perempuan', '$2y$10$.0JqGsHeUf.VgKLkuxBQJ.Nk6KyQYohLeCareTOgdAkxw1kDTmX2u', NULL, NULL, NULL, 1),
(16, 'Tiara Hastuti', '0456 7965 622', 'kpuspita@januar.info', 'perempuan', '$2y$10$MZoWIXmneUZMYS2up/ahnOkeToURKfb.PqP9djxUukBx6XB3VJv.u', NULL, NULL, NULL, 1),
(17, 'Belinda Palastri', '0494 6188 605', 'prasetya.hani@gmail.com', 'laki-laki', '$2y$10$Kb61XlKgozYPICuu21yxr.SAN/0oty8JvUdkT48p0hAd6vnSKzmQi', NULL, NULL, NULL, 1),
(18, 'Paulin Susanti', '0526 9755 518', 'devi06@rahimah.ac.id', 'laki-laki', '$2y$10$BMcaC6hSdHamCo6Uhf80NOQhRnTLI3qvv2UJnq/JEFBhhCB4rpUii', NULL, NULL, NULL, 1),
(19, 'Pia Amelia Usamah', '0794 2640 7306', 'hardi.habibi@mardhiyah.ac.id', 'laki-laki', '$2y$10$OaPUcbkcdTLn0UiK7W30ZOCWQMwt4xdDlH7qWOQM8RVS9LUpqQw5y', NULL, NULL, NULL, 1),
(20, 'Cengkir Januar', '0337 7632 7842', 'nurul.putra@gmail.com', 'perempuan', '$2y$10$8E4mj86hGUC5/Ib0oCI0kuDZ0J6.NmO2XQ1fRgM.1mU4B2dN7wLLq', NULL, NULL, NULL, 1),
(21, 'Prasetyo Permadi S.E.I', '(+62) 880 8731 779', 'usitompul@firgantoro.com', 'laki-laki', '$2y$10$zK5nuTbzBLnz.tcU.TtrDO4/znMgk85rTCkX9IkdVE2jRB2y6sBF6', NULL, NULL, NULL, 1),
(22, 'Icha Agustina', '0210 4303 3502', 'lintang53@gmail.com', 'perempuan', '$2y$10$uOUw2slBaTp96qLHwvjshelrbGJnVGY7ysd/ZWnsnyOGYNadrkcDm', NULL, NULL, NULL, 1),
(23, 'Caket Candra Napitupulu S.Sos', '0845 1171 049', 'rahmawati.rafi@wacana.asia', 'perempuan', '$2y$10$BZXfveKf.B9IsmdDLNydkeWKw/4Shm4q4XEyS0bV7q1ifWUtSgwg2', NULL, NULL, NULL, 1),
(24, 'Cahyono Jumadi Thamrin M.Ak', '0551 2998 342', 'puspa.sudiati@gmail.com', 'perempuan', '$2y$10$4LVE6cEZ3ldyuR50Y2bbl.u5inkMKxUnzJGCd3i7KgxxHDPdCx2G6', NULL, NULL, NULL, 1),
(25, 'Melinda Hassanah', '(+62) 982 6744 0153', 'mustofa.wulandari@gmail.com', 'laki-laki', '$2y$10$UjRI.R.LuIrr81qudKsZNeX3cI6L.lnKRW6nGcy.VRgZyKTR5F9iq', NULL, NULL, NULL, 1),
(26, 'Adinata Kusumo', '0586 9758 3853', 'gabriella.najmudin@yahoo.com', 'perempuan', '$2y$10$l55HxwhwAmT2U4gWMrxNQujv7IL1BsL/lI85mACKvF/xfvvw3dkIC', NULL, NULL, NULL, 1),
(27, 'Usman Hendra Wibowo', '0498 0200 374', 'gzulkarnain@uyainah.or.id', 'perempuan', '$2y$10$yw3GIAdr0hrbxqlIXg6Sm.e8j1Ab6hGI4hKm9ktp65Wr2cH7idSmi', NULL, NULL, NULL, 1),
(28, 'Ilsa Wani Usada S.Farm', '(+62) 450 4203 2456', 'ykuswoyo@gmail.co.id', 'perempuan', '$2y$10$c1rPYFUlWUb.QPaBTka/x.nJ4Qo3t7Bq0PCaD931p/6J4iWIre.ti', NULL, NULL, NULL, 1),
(29, 'Indah Lintang Yulianti', '(+62) 863 707 155', 'fujiati.galiono@halimah.mil.id', 'perempuan', '$2y$10$n/7sP.FREfnA6rLXjJ4fzO0Fng1rReI.4DRDDTj4UNJIaZdn/s.hC', NULL, NULL, NULL, 1),
(30, 'Yessi Alika Astuti', '0887 8928 8305', 'tirtayasa.mardhiyah@yahoo.co.id', 'laki-laki', '$2y$10$fr/XDaU9dhfdgypMfBF1tuBKUGexkIRxkyjvK1U7EjCHbGXmdVMt2', NULL, NULL, NULL, 1),
(31, 'Mursinin Dabukke', '0680 0872 0575', 'ajimat80@gmail.com', 'laki-laki', '$2y$10$6My39GmzEMlW/5xRelA7oeSYRa/myFckGtgDsHmJkumyytHKvp.We', NULL, NULL, NULL, 1),
(32, 'Cinthia Zahra Anggraini', '(+62) 528 7415 914', 'faizah55@yahoo.com', 'laki-laki', '$2y$10$ULNgLxNRMo3.b.PnFZHDeOZuhsvaWmRDxZDN9reJrXYu6fLXFA6Q2', NULL, NULL, NULL, 1),
(33, 'Kala Wasita M.Kom.', '(+62) 920 6038 7709', 'ssaefullah@gmail.co.id', 'laki-laki', '$2y$10$7aM0BZds6qHoPGs60R7ygO4eyBW2GcchHjt.GZkN.1tA7rDKDC9cG', NULL, NULL, NULL, 1),
(34, 'Nasrullah Utama Prakasa', '025 2644 3880', 'cici.laksmiwati@yahoo.com', 'perempuan', '$2y$10$q9uWzlTtEIzIErdG/kLvoe7IwEqZBvbHaAs/cAvRKF8ZxN/h32F.a', NULL, NULL, NULL, 1),
(35, 'Pranata Cakrabuana Tarihoran', '0630 3843 3586', 'faizah.prayoga@maryati.desa.id', 'perempuan', '$2y$10$csN2/IwmhHvSnP/XVD8V4.AgW111wC2Z/.SQZH9oK3PYD35XWo/Te', NULL, NULL, NULL, 1),
(36, 'Bella Fathonah Wulandari', '(+62) 854 459 988', 'puti.sitompul@hariyah.name', 'laki-laki', '$2y$10$gdwlFfmieST2vJzj.Sh75OzxGXjnM20wWGluLfV07nSStKYtHu5La', NULL, NULL, NULL, 1),
(37, 'Carla Nurdiyanti', '(+62) 451 5529 2723', 'jkuswandari@yahoo.co.id', 'perempuan', '$2y$10$G0bLwhky5x5Ay4l1PBvejeclEzVfgxmV.uoXPzzaqm6hFWV2t.H0K', NULL, NULL, NULL, 1),
(38, 'Halima Sudiati S.Gz', '(+62) 758 7227 087', 'daruna.saputra@yahoo.com', 'laki-laki', '$2y$10$tWYuoo36iN7U0ptM1s/xIuy2V87VTLLLUrSE8FS/sA94JAdAxD4Su', NULL, NULL, NULL, 1),
(39, 'Uchita Eli Widiastuti S.Kom', '0289 3750 2947', 'cahya67@anggraini.go.id', 'laki-laki', '$2y$10$kMMNzOf/xJecBSa2UpQEY.5bhPPsuAsaVyf4R8jZIGY5v8Ohobd7G', NULL, NULL, NULL, 1),
(40, 'Maida Unjani Hastuti S.Pt', '0890 0025 9058', 'yoga30@gmail.co.id', 'laki-laki', '$2y$10$fCe56eGH9v5kwhz0M8W82eLfG2y56sW41DMk5KSLw.B10FTobRAH.', NULL, NULL, NULL, 1),
(41, 'Zaenab Hassanah', '(+62) 436 4661 460', 'dewi.agustina@ramadan.biz.id', 'laki-laki', '$2y$10$JS6/5kJk5M6rv67y6gIRoeNUIeiNkzlIJSjs2SqGR.EpWNziMQmRm', NULL, NULL, NULL, 1),
(42, 'Nasab Ega Gunarto', '0459 1664 055', 'anom86@sitompul.in', 'laki-laki', '$2y$10$I5PvV/NCvdrnL2mJN4XtU.OCJ96zDcRNBSIJGtosQvOiSh.dLv7na', NULL, NULL, NULL, 1),
(43, 'Diah Hassanah', '(+62) 590 4522 1411', 'zulkarnain.tina@prakasa.mil.id', 'perempuan', '$2y$10$UVIKBdboGgPuuZIfJ.vFfObCnKO6cEibgLRwvto52Qn5RWN28U4De', NULL, NULL, NULL, 1),
(44, 'Ami Handayani S.E.I', '(+62) 358 0564 1161', 'umi.hariyah@prastuti.biz', 'perempuan', '$2y$10$lfjmpgVftKSPMRFm1AjhI.6b9FHoCndg2sXNUpIDKZdx2.e1yw/VO', NULL, NULL, NULL, 1),
(45, 'Latif Pradana S.Ked', '025 3346 4596', 'harjasa26@gmail.co.id', 'laki-laki', '$2y$10$rN0kmyhiiay4XjAjEtYqV.XIrtBjNiMAl.p9abvssPnWr9CE5lC86', NULL, NULL, NULL, 1),
(46, 'Parman Narpati', '0359 6149 9633', 'hakim.amelia@yahoo.co.id', 'perempuan', '$2y$10$dLsyn6sZ22zN7fv9gmfi2OmF/dgE9DJMJwWn9DygtjNtP6q8chYYK', NULL, NULL, NULL, 1),
(47, 'Umi Zulfa Handayani S.Pt', '0773 4480 5856', 'ganjaran.winarno@yahoo.com', 'laki-laki', '$2y$10$5PLU78OkOprvLPeRIdWWY.r4/ZDyxE4w/iL0BX0nYQGw.dS396YuK', NULL, NULL, NULL, 1),
(48, 'Mila Sudiati', '(+62) 582 6503 988', 'tsirait@suryatmi.desa.id', 'perempuan', '$2y$10$d1qfQrdSZRcUoQBlS5gfcePIAd2pIz/7O6Q7r7KGXlbZ/Wr78Ilmm', NULL, NULL, NULL, 1),
(49, 'Aurora Farida S.Pt', '(+62) 580 7626 030', 'genta.prasetya@gmail.com', 'perempuan', '$2y$10$HO3rCMBUDC2XF.M6AxMfPeMBXCC.46qDkM9QQVqdUpKB6yxM8hPRy', NULL, NULL, NULL, 1),
(50, 'Sakti Nugroho', '0408 3575 298', 'kuswoyo.estiono@kusumo.in', 'perempuan', '$2y$10$pegSlG032gfQVbQl6bMPUOdWt0ekE8K0wEmILT.dl1slWzjQJezRK', NULL, NULL, NULL, 1),
(51, 'Taswir Simbolon M.Farm', '(+62) 766 0215 084', 'farida.galar@yahoo.com', 'laki-laki', '$2y$10$DrhhouKQOFnr4lso6MUSou.RVQe3Js1Ht4R8HUMxFUnsuA4xFE9dO', NULL, NULL, NULL, 1),
(52, 'Luthfi Nashiruddin', '0621 9621 034', 'nasyiah.lurhur@marbun.info', 'perempuan', '$2y$10$7RCMJOFIjemcL5W1PCbI6O1UoH16Oeqj8aJEaRtGGVMUwTPSSUcXu', NULL, NULL, NULL, 1),
(53, 'Yoga Cemplunk Halim S.Ked', '(+62) 416 4386 849', 'vera21@yahoo.com', 'laki-laki', '$2y$10$EpQKIYbmd9L/G23/47VJ8.iqE7Q.La/c0wES0W.wV4eU3Z3h52Ote', NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `id_tempat_makan` (`id_tempat_makan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id_bookingdetail`),
  ADD KEY `id_booking` (`id_booking`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `jenis_masakan`
--
ALTER TABLE `jenis_masakan`
  ADD PRIMARY KEY (`id_jenis_masakan`);

--
-- Indexes for table `menu_makanan`
--
ALTER TABLE `menu_makanan`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_tempat_makan` (`id_tempatmakan`),
  ADD KEY `id_jenis_masakan` (`id_jenis_masakan`);

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
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_booking` (`id_booking`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`id_pemilik`);

--
-- Indexes for table `tempat_makan`
--
ALTER TABLE `tempat_makan`
  ADD PRIMARY KEY (`id_tempatmakan`),
  ADD KEY `id_pemilik` (`id_pemilik`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id_bookingdetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jenis_masakan`
--
ALTER TABLE `jenis_masakan`
  MODIFY `id_jenis_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_makanan`
--
ALTER TABLE `menu_makanan`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pemilik`
--
ALTER TABLE `pemilik`
  MODIFY `id_pemilik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tempat_makan`
--
ALTER TABLE `tempat_makan`
  MODIFY `id_tempatmakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`id_tempat_makan`) REFERENCES `tempat_makan` (`id_tempatmakan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD CONSTRAINT `booking_detail_ibfk_1` FOREIGN KEY (`id_booking`) REFERENCES `booking` (`id_booking`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_detail_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu_makanan` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_makanan`
--
ALTER TABLE `menu_makanan`
  ADD CONSTRAINT `menu_makanan_ibfk_1` FOREIGN KEY (`id_tempatmakan`) REFERENCES `tempat_makan` (`id_tempatmakan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_makanan_ibfk_2` FOREIGN KEY (`id_jenis_masakan`) REFERENCES `jenis_masakan` (`id_jenis_masakan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_booking`) REFERENCES `booking` (`id_booking`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tempat_makan`
--
ALTER TABLE `tempat_makan`
  ADD CONSTRAINT `tempat_makan_ibfk_1` FOREIGN KEY (`id_pemilik`) REFERENCES `pemilik` (`id_pemilik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
