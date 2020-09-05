-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Agu 2020 pada 04.45
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabassam_rental`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kendaraan_platnomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_tahunrakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_seat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kendaraan_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kendaraan_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`id`, `kendaraan_platnomor`, `kendaraan_merk`, `kendaraan_tipe`, `kendaraan_tahunrakit`, `kendaraan_seat`, `kendaraan_foto`, `kendaraan_pdf`, `kendaraan_fasilitas`, `kendaraan_status`, `created_at`, `updated_at`) VALUES
(1, '0876789', 'Avanza', 'Supernova', '2015', '4', '2020-08-10__02-07-07Avanza.jpg', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, '2020-08-09 19:07:08'),
(2, '0874849494', 'Avanza', 'Supernova', '2015', '6', '2020-08-10__02-07-42brio.jpg', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, '2020-08-09 19:07:42'),
(3, '0874849494', 'Avanza', 'Supernova', '2015', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(4, '0874849456', 'Avanza', 'Supernova', '2016', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(5, '0874849423', 'Avanza', 'Supernova', '2015', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(6, '0874849678', 'Avanza', 'Supernova', '2015', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(7, 'D93739A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(8, 'D93734A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(9, 'D93231A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(10, 'D93897A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(11, 'D93987A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(12, 'D93890A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(13, 'D93908A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(14, 'A7876578C', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(15, 'A7876558C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(16, 'A7876666C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(17, 'A7876679C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(18, 'A7876678C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(19, 'A78766710C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(20, 'A7876690C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(21, 'A7876666C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(22, 'A7876677C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(23, 'A7876678C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(24, 'A7876699C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(25, 'A7876677C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(26, 'A7876655C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(27, 'A7876633C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(28, 'A7876622C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(29, 'A7876687C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(30, 'A7876687C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(31, 'A787678C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(32, 'A7876567C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(33, 'A7876544C', 'Turbo', 'Turbo Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(34, 'A7876533C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(35, 'A7876522C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(36, 'A7876511C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(37, 'A78765123C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(38, 'A7876512C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(39, 'A78765555C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(40, 'A787WA', 'Turbo', 'Turbo Awaire', '2017', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(41, 'B987579D', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(42, 'B987223D', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(43, 'B987522D', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(44, 'B987233D', 'Avanza', 'Avanza Awaire', '2017', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(45, 'B987333D', 'Avanza', 'Avanza Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(46, 'B98723D', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(47, 'B987888D', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(48, 'AWE98765O', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(49, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(50, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(51, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(52, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(53, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(54, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(55, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(56, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(57, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(58, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(59, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(60, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(61, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(62, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(63, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(64, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(65, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(66, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(67, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(68, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(69, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(70, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(71, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(72, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(73, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(74, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(75, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(76, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(77, 'WAO87646G', 'Turbo', 'Turbo Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(78, 'WAO87646G', 'Turbo', 'Turbo Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(79, '0876789', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(80, '0874849494', 'Avanza', 'Supernova', '2015', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(81, '0874849494', 'Avanza', 'Supernova', '2015', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(82, '0874849456', 'Avanza', 'Supernova', '2016', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(83, '0874849423', 'Avanza', 'Supernova', '2015', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(84, '0874849678', 'Avanza', 'Supernova', '2015', '6', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(85, 'D93739A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(86, 'D93734A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(87, 'D93231A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(88, 'D93897A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(89, 'D93987A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(90, 'D93890A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(91, 'D93908A', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(92, 'A7876578C', 'Avanza', 'Supernova', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(93, 'A7876558C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(94, 'A7876666C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(95, 'A7876679C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(96, 'A7876678C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(97, 'A78766710C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(98, 'A7876690C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(99, 'A7876666C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(100, 'A7876677C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(101, 'A7876678C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(102, 'A7876699C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(103, 'A7876677C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(104, 'A7876655C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(105, 'A7876633C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(106, 'A7876622C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(107, 'A7876687C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(108, 'A7876687C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(109, 'A787678C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(110, 'A7876567C', 'Nissan', 'Nissan Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(111, 'A7876544C', 'Turbo', 'Turbo Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(112, 'A7876533C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(113, 'A7876522C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(114, 'A7876511C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(115, 'A78765123C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(116, 'A7876512C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(117, 'A78765555C', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(118, 'A787WA', 'Turbo', 'Turbo Awaire', '2017', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(119, 'B987579D', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(120, 'B987223D', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(121, 'B987522D', 'Turbo', 'Turbo Awaire', '2015', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(122, 'B987233D', 'Avanza', 'Avanza Awaire', '2017', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(123, 'B987333D', 'Avanza', 'Avanza Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(124, 'B98723D', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(125, 'B987888D', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(126, 'AWE98765O', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(127, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(128, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(129, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(130, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(131, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(132, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(133, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(134, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(135, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(136, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(137, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(138, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(139, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(140, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(141, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(142, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(143, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(144, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(145, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(146, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(147, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(148, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(149, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(150, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(151, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(152, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(153, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(154, 'WAO098767G', 'Nissan', 'Nissan Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(155, 'WAO87646G', 'Turbo', 'Turbo Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL),
(156, 'WAO87646G', 'Turbo', 'Turbo Awaire', '2012', '4', '', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_30_152746_create_products_table', 1),
(4, '2020_03_30_152914_create_comments_table', 1),
(5, '2020_06_13_034208_create_social_accounts_table', 1),
(6, '2020_06_14_044520_create_kendaraan_table', 1),
(7, '2020_06_27_142009_create_pelanggan_table', 1),
(8, '2020_06_27_142855_create_sopir_table', 1),
(9, '2020_06_27_152026_create_tarif_table', 1),
(10, '2020_06_27_232300_create_transaksi_table', 1),
(11, '2020_07_01_163639_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pelanggan_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pelanggan_telpon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pelanggan_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pelanggan_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `pelanggan_nama`, `pelanggan_alamat`, `pelanggan_telpon`, `pelanggan_foto`, `pelanggan_pdf`, `created_at`, `updated_at`) VALUES
(1, 'aidho', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(2, 'gilang', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(3, 'wiwit', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(4, 'paijo', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(5, 'dasmad', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(6, 'tukiemm', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(7, 'juki', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(8, 'jukiyu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(9, 'wiwito', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(10, 'wiwita', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(11, 'aidhono', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(12, 'gilang ganteng', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(13, 'wiwit jelek', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(14, 'paijo jojo', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(15, 'dasmad ceria', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(16, 'tukiemm cantik', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(17, 'juki muan', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(18, 'jukiyu nunu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(19, 'wiwito bino', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(20, 'wiwitanian', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(21, 'aidho yuyu', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(22, 'gilang secung', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(23, 'wiwit turah', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(24, 'paijo bucin', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(25, 'dasmad bunu', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(26, 'tukiemm jok', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(27, 'juki bol', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(28, 'jukiyuyu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(29, 'wiwitono', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(30, 'wiwitaase', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(31, 'aidhonom', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(32, 'gilang rol', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(33, 'wiwit bucin', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(34, 'paijo nol', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(35, 'dasmad cerianya', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(36, 'tukiemm cantikin', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(37, 'juki muannos', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(38, 'jukiyu nununi', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(39, 'wiwito binorid', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(40, 'wiwitanianse', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(41, 'yusilo', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(42, 'gilang bucin', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(43, 'wiwt cantik', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(44, 'paijo ko', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(45, 'dasmadde', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(46, 'tukiewe', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(47, 'jukin', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(48, 'jukiyuer', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(49, 'wiwitoe', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(50, 'wiwitaw', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(51, 'aidhonogg', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(52, ' ganteng', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(53, ' jelek', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(54, ' jojo', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(55, ' ceria', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(56, ' cantik', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(57, 'i muan', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(58, 'nunu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(59, 'bino', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(60, 'tanian', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(61, 'yuyu', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(62, 'secung', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(63, 'turah', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(64, 'bucin', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(65, 'bunu', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(66, ' jok', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(67, ' bol', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(68, 'iyuyu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(69, 'tono', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(70, 'aase', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(71, 'honom', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(72, 'rol', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(73, 'bucin', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(74, 'nol', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(75, 'cerianya', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(76, 'cantikin', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(77, 'muannos', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(78, 'nununi', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(79, ' binorid', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(80, 'malboro', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(81, ' promax', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(82, 'iceland', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(83, 'yonix', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(84, 'rollli', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(85, 'tanian mantan', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(86, 'yuyu jelek', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(87, 'serum', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(88, 'ayuene', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(89, 'jenggot', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(90, 'ibni', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(91, ' jokilor', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(92, ' bolill', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(93, 'iyuyuner', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(94, 'tononio', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(95, 'aaseqer', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(96, 'honomom', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(97, 'ijah', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(98, 'bucin sekale', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(99, 'nol delapan', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(100, 'cerianya dia', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(101, 'joli', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(102, 'muannosbol', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(103, 'nununinree', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(104, ' binoriserod', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(105, 'nianseseri', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(106, 'aidho', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(107, 'gilang', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(108, 'wiwit', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(109, 'paijo', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(110, 'dasmad', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(111, 'tukiemm', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(112, 'juki', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(113, 'jukiyu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(114, 'wiwito', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(115, 'wiwita', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(116, 'aidhono', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(117, 'gilang ganteng', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(118, 'wiwit jelek', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(119, 'paijo jojo', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(120, 'dasmad ceria', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(121, 'tukiemm cantik', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(122, 'juki muan', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(123, 'jukiyu nunu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(124, 'wiwito bino', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(125, 'wiwitanian', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(126, 'aidho yuyu', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(127, 'gilang secung', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(128, 'wiwit turah', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(129, 'paijo bucin', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(130, 'dasmad bunu', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(131, 'tukiemm jok', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(132, 'juki bol', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(133, 'jukiyuyu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(134, 'wiwitono', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(135, 'wiwitaase', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(136, 'aidhonom', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(137, 'gilang rol', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(138, 'wiwit bucin', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(139, 'paijo nol', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(140, 'dasmad cerianya', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(141, 'tukiemm cantikin', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(142, 'juki muannos', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(143, 'jukiyu nununi', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(144, 'wiwito binorid', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(145, 'wiwitanianse', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(146, 'yusilo', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(147, 'gilang bucin', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(148, 'wiwt cantik', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(149, 'paijo ko', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(150, 'dasmadde', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(151, 'tukiewe', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(152, 'jukin', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(153, 'jukiyuer', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(154, 'wiwitoe', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(155, 'wiwitaw', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(156, 'aidhonogg', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(157, ' ganteng', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(158, ' jelek', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(159, ' jojo', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(160, ' ceria', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(161, ' cantik', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(162, 'i muan', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(163, 'nunu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(164, 'bino', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(165, 'tanian', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(166, 'yuyu', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(167, 'secung', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(168, 'turah', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(169, 'bucin', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(170, 'bunu', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(171, ' jok', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(172, ' bol', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(173, 'iyuyu', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(174, 'tono', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(175, 'aase', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(176, 'honom', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(177, 'rol', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(178, 'bucin', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(179, 'nol', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(180, 'cerianya', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(181, 'cantikin', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(182, 'muannos', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(183, 'nununi', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(184, ' binorid', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(185, 'malboro', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(186, ' promax', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(187, 'iceland', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(188, 'yonix', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(189, 'rollli', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(190, 'tanian mantan', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(191, 'yuyu jelek', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(192, 'serum', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(193, 'ayuene', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(194, 'jenggot', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(195, 'ibni', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(196, ' jokilor', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(197, ' bolill', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(198, 'iyuyuner', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(199, 'tononio', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(200, 'aaseqer', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(201, 'honomom', 'asemtiga', '08765467899', NULL, NULL, NULL, NULL),
(202, 'ijah', 'brebes', '0876546888', NULL, NULL, NULL, NULL),
(203, 'bucin sekale', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(204, 'nol delapan', 'brebes', '08989546999', NULL, NULL, NULL, NULL),
(205, 'cerianya dia', 'brebes', '08765457954', NULL, NULL, NULL, NULL),
(206, 'joli', 'brebes', '0876546909', NULL, NULL, NULL, NULL),
(207, 'muannosbol', 'brebes', '0896546999', NULL, NULL, NULL, NULL),
(208, 'nununinree', 'brebes', '08765868909', NULL, NULL, NULL, NULL),
(209, ' binoriserod', 'brebes', '0876546999', NULL, NULL, NULL, NULL),
(210, 'nianseseri', 'brebes', '0876546999', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sopir`
--

CREATE TABLE `sopir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sopir_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_telpon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_sim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sopir_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sopir`
--

INSERT INTO `sopir` (`id`, `sopir_alamat`, `sopir_nama`, `sopir_telpon`, `sopir_ktp`, `sopir_sim`, `sopir_status`, `sopir_foto`, `sopir_pdf`, `created_at`, `updated_at`) VALUES
(2, 'Jalan Gandasasa', 'Pratama', '08775467899', '9999994888', '6789345455', 'jalan', NULL, NULL, NULL, NULL),
(3, 'Jalan Gandasaru', 'Edwin', '08765867899', '9999991888', '6789345464', 'jalan', NULL, NULL, NULL, NULL),
(5, 'Jalan Ganda', 'aldo', '08715467899', '9991998888', '6782345454', 'jalan', NULL, NULL, NULL, NULL),
(6, 'Jalan ala', 'tama', '08765767899', '9999998888', '6789345464', 'jalan', NULL, NULL, NULL, NULL),
(7, 'Jalan ulu', 'Edwin', '08765477899', '9999999888', '6789346454', 'jalan', NULL, NULL, NULL, NULL),
(8, 'Jalan lulu', 'Aldo januar', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, '2020-08-09 19:31:31'),
(9, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(10, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(11, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(12, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(13, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(14, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(15, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(16, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(17, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(18, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(19, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(20, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(21, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(22, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(23, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(24, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(25, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(26, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(27, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(28, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(29, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(30, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(31, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(32, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(33, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(34, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(35, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(36, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(37, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(38, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(39, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(40, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(41, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(42, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(43, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(44, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(45, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(46, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(47, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(48, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(49, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(50, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(51, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(52, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(53, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(54, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(55, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(56, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(57, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(58, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(59, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(60, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(61, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(62, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(63, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(64, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(65, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(66, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(67, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(68, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(69, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(70, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(71, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(72, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(73, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(74, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(75, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(76, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(77, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(78, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(79, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(80, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(81, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(82, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(83, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(84, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(85, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(86, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(87, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(88, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(89, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(90, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(91, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(92, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(93, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(94, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(95, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(96, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(97, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(98, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(99, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(100, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(101, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(102, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(103, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(104, 'Jalan Gandasasa', 'Pratama', '08775467899', '9999994888', '6789345455', 'jalan', NULL, NULL, NULL, NULL),
(105, 'Jalan Gandasaru', 'Edwin', '08765867899', '9999991888', '6789345464', 'jalan', NULL, NULL, NULL, NULL),
(106, 'Jalan sari', 'Reynaldo', '08795467899', '9999993888', '6789545454', 'jalan', NULL, NULL, NULL, NULL),
(107, 'Jalan Ganda', 'aldo', '08715467899', '9991998888', '6782345454', 'jalan', NULL, NULL, NULL, NULL),
(108, 'Jalan ala', 'tama', '08765767899', '9999998888', '6789345464', 'jalan', NULL, NULL, NULL, NULL),
(109, 'Jalan ulu', 'Edwin', '08765477899', '9999999888', '6789346454', 'jalan', NULL, NULL, NULL, NULL),
(110, 'Jalan lulu', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(111, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(112, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(113, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(114, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(115, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(116, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(117, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(118, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(119, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(120, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(121, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(122, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(123, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(124, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(125, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(126, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(127, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(128, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(129, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(130, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(131, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(132, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(133, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(134, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(135, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(136, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(137, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(138, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(139, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(140, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(141, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(142, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(143, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(144, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(145, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(146, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(147, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(148, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(149, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(150, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(151, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(152, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(153, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(154, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(155, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(156, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(157, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(158, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(159, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(160, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(161, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(162, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(163, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(164, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(165, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(166, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(167, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(168, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(169, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(170, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(171, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(172, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(173, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(174, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(175, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(176, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(177, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(178, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(179, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(180, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(181, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(182, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(183, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(184, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(185, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(186, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(187, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(188, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(189, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(190, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(191, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(192, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(193, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(194, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(195, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(196, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(197, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(198, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(199, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(200, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(201, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(202, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(203, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL),
(204, 'Jalan Gandasari', 'Reynaldo Edwin Pratama', '08765467899', '9999998888', '6789345454', 'jalan', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif`
--

CREATE TABLE `tarif` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kendaraan_platnomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif_perhari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif_overtime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarif_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tarif`
--

INSERT INTO `tarif` (`id`, `kendaraan_platnomor`, `tarif_perhari`, `tarif_overtime`, `tarif_foto`, `tarif_pdf`, `created_at`, `updated_at`) VALUES
(1, '1', '500000', '1000000', NULL, NULL, NULL, NULL),
(2, '2', '500000', '1000000', NULL, NULL, NULL, NULL),
(3, '3', '500000', '1000000', NULL, NULL, NULL, NULL),
(4, '4', '500000', '1000000', NULL, NULL, NULL, NULL),
(5, '5', '500000', '1000000', NULL, NULL, NULL, NULL),
(6, '6', '500000', '1000000', NULL, NULL, NULL, NULL),
(7, '7', '500000', '1000000', NULL, NULL, NULL, NULL),
(8, '8', '500000', '1000000', NULL, NULL, NULL, NULL),
(9, '9', '500000', '1000000', NULL, NULL, NULL, NULL),
(10, '10', '500000', '1000000', NULL, NULL, NULL, NULL),
(11, '11', '500000', '1000000', NULL, NULL, NULL, NULL),
(12, '12', '500000', '1000000', NULL, NULL, NULL, NULL),
(13, '13', '500000', '1000000', NULL, NULL, NULL, NULL),
(14, '14', '500000', '1000000', NULL, NULL, NULL, NULL),
(15, '15', '500000', '1000000', NULL, NULL, NULL, NULL),
(16, '16', '500000', '1000000', NULL, NULL, NULL, NULL),
(17, '17', '500000', '1000000', NULL, NULL, NULL, NULL),
(18, '18', '500000', '1000000', NULL, NULL, NULL, NULL),
(19, '19', '500000', '1000000', NULL, NULL, NULL, NULL),
(20, '20', '500000', '1000000', NULL, NULL, NULL, NULL),
(21, '21', '600000', '7000000', NULL, NULL, NULL, NULL),
(22, '22', '600000', '7000000', NULL, NULL, NULL, NULL),
(23, '23', '600000', '7000000', NULL, NULL, NULL, NULL),
(24, '24', '600000', '7000000', NULL, NULL, NULL, NULL),
(25, '25', '600000', '7000000', NULL, NULL, NULL, NULL),
(26, '26', '600000', '7000000', NULL, NULL, NULL, NULL),
(27, '27', '600000', '7000000', NULL, NULL, NULL, NULL),
(28, '28', '600000', '7000000', NULL, NULL, NULL, NULL),
(29, '29', '600000', '7000000', NULL, NULL, NULL, NULL),
(30, '30', '600000', '7000000', NULL, NULL, NULL, NULL),
(31, '31', '500000', '700000', NULL, NULL, NULL, NULL),
(32, '32', '400000', '800000', NULL, NULL, NULL, NULL),
(33, '33', '400000', '800000', NULL, NULL, NULL, NULL),
(34, '34', '400000', '800000', NULL, NULL, NULL, NULL),
(35, '35', '400000', '800000', NULL, NULL, NULL, NULL),
(36, '36', '400000', '800000', NULL, NULL, NULL, NULL),
(37, '37', '400000', '800000', NULL, NULL, NULL, NULL),
(38, '38', '400000', '800000', NULL, NULL, NULL, NULL),
(39, '39', '400000', '800000', NULL, NULL, NULL, NULL),
(40, '40', '400000', '800000', NULL, NULL, NULL, NULL),
(41, '41', '500000', '800000', NULL, NULL, NULL, NULL),
(42, '42', '500000', '800000', NULL, NULL, NULL, NULL),
(43, '43', '500000', '800000', NULL, NULL, NULL, NULL),
(44, '44', '500000', '800000', NULL, NULL, NULL, NULL),
(45, '45', '500000', '800000', NULL, NULL, NULL, NULL),
(46, '46', '500000', '800000', NULL, NULL, NULL, NULL),
(47, '47', '500000', '800000', NULL, NULL, NULL, NULL),
(48, '48', '500000', '800000', NULL, NULL, NULL, NULL),
(49, '49', '500000', '800000', NULL, NULL, NULL, NULL),
(50, '50', '500000', '800000', NULL, NULL, NULL, NULL),
(51, '51', '500000', '800000', NULL, NULL, NULL, NULL),
(52, '52', '500000', '800000', NULL, NULL, NULL, NULL),
(53, '53', '500000', '800000', NULL, NULL, NULL, NULL),
(54, '54', '500000', '800000', NULL, NULL, NULL, NULL),
(55, '55', '500000', '800000', NULL, NULL, NULL, NULL),
(56, '56', '500000', '800000', NULL, NULL, NULL, NULL),
(57, '57', '500000', '800000', NULL, NULL, NULL, NULL),
(58, '58', '500000', '800000', NULL, NULL, NULL, NULL),
(59, '59', '500000', '800000', NULL, NULL, NULL, NULL),
(60, '60', '500000', '800000', NULL, NULL, NULL, NULL),
(61, '61', '200000', '400000', NULL, NULL, NULL, NULL),
(62, '62', '200000', '400000', NULL, NULL, NULL, NULL),
(63, '63', '200000', '400000', NULL, NULL, NULL, NULL),
(64, '63', '200000', '400000', NULL, NULL, NULL, NULL),
(65, '64', '200000', '400000', NULL, NULL, NULL, NULL),
(66, '65', '200000', '400000', NULL, NULL, NULL, NULL),
(67, '66', '200000', '400000', NULL, NULL, NULL, NULL),
(68, '67', '200000', '400000', NULL, NULL, NULL, NULL),
(69, '68', '200000', '400000', NULL, NULL, NULL, NULL),
(70, '69', '200000', '400000', NULL, NULL, NULL, NULL),
(71, '70', '200000', '400000', NULL, NULL, NULL, NULL),
(72, '71', '200000', '400000', NULL, NULL, NULL, NULL),
(73, '72', '200000', '400000', NULL, NULL, NULL, NULL),
(74, '73', '200000', '400000', NULL, NULL, NULL, NULL),
(75, '74', '200000', '400000', NULL, NULL, NULL, NULL),
(76, '75', '200000', '400000', NULL, NULL, NULL, NULL),
(77, '76', '200000', '400000', NULL, NULL, NULL, NULL),
(78, '77', '200000', '400000', NULL, NULL, NULL, NULL),
(79, '80', '200000', '400000', NULL, NULL, NULL, NULL),
(80, '81', '200000', '400000', NULL, NULL, NULL, NULL),
(81, '82', '200000', '400000', NULL, NULL, NULL, NULL),
(82, '83', '200000', '400000', NULL, NULL, NULL, NULL),
(83, '84', '200000', '400000', NULL, NULL, NULL, NULL),
(84, '85', '200000', '400000', NULL, NULL, NULL, NULL),
(85, '86', '200000', '400000', NULL, NULL, NULL, NULL),
(86, '87', '200000', '400000', NULL, NULL, NULL, NULL),
(87, '88', '200000', '400000', NULL, NULL, NULL, NULL),
(88, '89', '200000', '400000', NULL, NULL, NULL, NULL),
(89, '90', '200000', '400000', NULL, NULL, NULL, NULL),
(90, '91', '200000', '400000', NULL, NULL, NULL, NULL),
(91, '92', '300000', '400000', NULL, NULL, NULL, NULL),
(92, '93', '300000', '400000', NULL, NULL, NULL, NULL),
(93, '94', '300000', '400000', NULL, NULL, NULL, NULL),
(94, '95', '300000', '400000', NULL, NULL, NULL, NULL),
(95, '96', '300000', '400000', NULL, NULL, NULL, NULL),
(96, '97', '300000', '400000', NULL, NULL, NULL, NULL),
(97, '98', '300000', '400000', NULL, NULL, NULL, NULL),
(98, '99', '300000', '400000', NULL, NULL, NULL, NULL),
(99, '100', '300000', '400000', NULL, NULL, NULL, NULL),
(100, '1', '500000', '1000000', NULL, NULL, NULL, NULL),
(101, '2', '500000', '1000000', NULL, NULL, NULL, NULL),
(102, '3', '500000', '1000000', NULL, NULL, NULL, NULL),
(103, '4', '500000', '1000000', NULL, NULL, NULL, NULL),
(104, '5', '500000', '1000000', NULL, NULL, NULL, NULL),
(105, '6', '500000', '1000000', NULL, NULL, NULL, NULL),
(106, '7', '500000', '1000000', NULL, NULL, NULL, NULL),
(107, '8', '500000', '1000000', NULL, NULL, NULL, NULL),
(108, '9', '500000', '1000000', NULL, NULL, NULL, NULL),
(109, '10', '500000', '1000000', NULL, NULL, NULL, NULL),
(110, '11', '500000', '1000000', NULL, NULL, NULL, NULL),
(111, '12', '500000', '1000000', NULL, NULL, NULL, NULL),
(112, '13', '500000', '1000000', NULL, NULL, NULL, NULL),
(113, '14', '500000', '1000000', NULL, NULL, NULL, NULL),
(114, '15', '500000', '1000000', NULL, NULL, NULL, NULL),
(115, '16', '500000', '1000000', NULL, NULL, NULL, NULL),
(116, '17', '500000', '1000000', NULL, NULL, NULL, NULL),
(117, '18', '500000', '1000000', NULL, NULL, NULL, NULL),
(118, '19', '500000', '1000000', NULL, NULL, NULL, NULL),
(119, '20', '500000', '1000000', NULL, NULL, NULL, NULL),
(120, '21', '600000', '7000000', NULL, NULL, NULL, NULL),
(121, '22', '600000', '7000000', NULL, NULL, NULL, NULL),
(122, '23', '600000', '7000000', NULL, NULL, NULL, NULL),
(123, '24', '600000', '7000000', NULL, NULL, NULL, NULL),
(124, '25', '600000', '7000000', NULL, NULL, NULL, NULL),
(125, '26', '600000', '7000000', NULL, NULL, NULL, NULL),
(126, '27', '600000', '7000000', NULL, NULL, NULL, NULL),
(127, '28', '600000', '7000000', NULL, NULL, NULL, NULL),
(128, '29', '600000', '7000000', NULL, NULL, NULL, NULL),
(129, '30', '600000', '7000000', NULL, NULL, NULL, NULL),
(130, '31', '500000', '700000', NULL, NULL, NULL, NULL),
(131, '32', '400000', '800000', NULL, NULL, NULL, NULL),
(132, '33', '400000', '800000', NULL, NULL, NULL, NULL),
(133, '34', '400000', '800000', NULL, NULL, NULL, NULL),
(134, '35', '400000', '800000', NULL, NULL, NULL, NULL),
(135, '36', '400000', '800000', NULL, NULL, NULL, NULL),
(136, '37', '400000', '800000', NULL, NULL, NULL, NULL),
(137, '38', '400000', '800000', NULL, NULL, NULL, NULL),
(138, '39', '400000', '800000', NULL, NULL, NULL, NULL),
(139, '40', '400000', '800000', NULL, NULL, NULL, NULL),
(140, '41', '500000', '800000', NULL, NULL, NULL, NULL),
(141, '42', '500000', '800000', NULL, NULL, NULL, NULL),
(142, '43', '500000', '800000', NULL, NULL, NULL, NULL),
(143, '44', '500000', '800000', NULL, NULL, NULL, NULL),
(144, '45', '500000', '800000', NULL, NULL, NULL, NULL),
(145, '46', '500000', '800000', NULL, NULL, NULL, NULL),
(146, '47', '500000', '800000', NULL, NULL, NULL, NULL),
(147, '48', '500000', '800000', NULL, NULL, NULL, NULL),
(148, '49', '500000', '800000', NULL, NULL, NULL, NULL),
(149, '50', '500000', '800000', NULL, NULL, NULL, NULL),
(150, '51', '500000', '800000', NULL, NULL, NULL, NULL),
(151, '52', '500000', '800000', NULL, NULL, NULL, NULL),
(152, '53', '500000', '800000', NULL, NULL, NULL, NULL),
(153, '54', '500000', '800000', NULL, NULL, NULL, NULL),
(154, '55', '500000', '800000', NULL, NULL, NULL, NULL),
(155, '56', '500000', '800000', NULL, NULL, NULL, NULL),
(156, '57', '500000', '800000', NULL, NULL, NULL, NULL),
(157, '58', '500000', '800000', NULL, NULL, NULL, NULL),
(158, '59', '500000', '800000', NULL, NULL, NULL, NULL),
(159, '60', '500000', '800000', NULL, NULL, NULL, NULL),
(160, '61', '200000', '400000', NULL, NULL, NULL, NULL),
(161, '62', '200000', '400000', NULL, NULL, NULL, NULL),
(162, '63', '200000', '400000', NULL, NULL, NULL, NULL),
(163, '63', '200000', '400000', NULL, NULL, NULL, NULL),
(164, '64', '200000', '400000', NULL, NULL, NULL, NULL),
(165, '65', '200000', '400000', NULL, NULL, NULL, NULL),
(166, '66', '200000', '400000', NULL, NULL, NULL, NULL),
(167, '67', '200000', '400000', NULL, NULL, NULL, NULL),
(168, '68', '200000', '400000', NULL, NULL, NULL, NULL),
(169, '69', '200000', '400000', NULL, NULL, NULL, NULL),
(170, '70', '200000', '400000', NULL, NULL, NULL, NULL),
(171, '71', '200000', '400000', NULL, NULL, NULL, NULL),
(172, '72', '200000', '400000', NULL, NULL, NULL, NULL),
(173, '73', '200000', '400000', NULL, NULL, NULL, NULL),
(174, '74', '200000', '400000', NULL, NULL, NULL, NULL),
(175, '75', '200000', '400000', NULL, NULL, NULL, NULL),
(176, '76', '200000', '400000', NULL, NULL, NULL, NULL),
(177, '77', '200000', '400000', NULL, NULL, NULL, NULL),
(178, '80', '200000', '400000', NULL, NULL, NULL, NULL),
(179, '81', '200000', '400000', NULL, NULL, NULL, NULL),
(180, '82', '200000', '400000', NULL, NULL, NULL, NULL),
(181, '83', '200000', '400000', NULL, NULL, NULL, NULL),
(182, '84', '200000', '400000', NULL, NULL, NULL, NULL),
(183, '85', '200000', '400000', NULL, NULL, NULL, NULL),
(184, '86', '200000', '400000', NULL, NULL, NULL, NULL),
(185, '87', '200000', '400000', NULL, NULL, NULL, NULL),
(186, '88', '200000', '400000', NULL, NULL, NULL, NULL),
(187, '89', '200000', '400000', NULL, NULL, NULL, NULL),
(188, '90', '200000', '400000', NULL, NULL, NULL, NULL),
(189, '91', '200000', '400000', NULL, NULL, NULL, NULL),
(190, '92', '300000', '400000', NULL, NULL, NULL, NULL),
(191, '93', '300000', '400000', NULL, NULL, NULL, NULL),
(192, '94', '300000', '400000', NULL, NULL, NULL, NULL),
(193, '95', '300000', '400000', NULL, NULL, NULL, NULL),
(194, '96', '300000', '400000', NULL, NULL, NULL, NULL),
(195, '97', '300000', '400000', NULL, NULL, NULL, NULL),
(196, '98', '300000', '400000', NULL, NULL, NULL, NULL),
(197, '99', '300000', '400000', NULL, NULL, NULL, NULL),
(198, '100', '300000', '400000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_tglmulai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_tglselesai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_tglovertime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_hariovertime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `pelanggan_id`, `sopir_id`, `transaksi_tglmulai`, `transaksi_tglselesai`, `transaksi_hari`, `transaksi_tglovertime`, `transaksi_hariovertime`, `transaksi_total`, `transaksi_status`, `created_at`, `updated_at`) VALUES
(1, '101', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(2, '102', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(3, '103', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(4, '104', '800000', '4000000', '4000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(5, '105', '900000', '5000000', '5000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(6, '106', '100000', '6000000', '6000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(7, '107', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(8, '108', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(9, '109', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(10, '110', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(11, '111', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(12, '112', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(13, '113', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(14, '115', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(15, '116', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(16, '117', '700000', '3000000', '3000000', '1000000', '100000', '1000000', '1000000', 'sukses', NULL, NULL),
(17, '118', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(18, '119', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(19, '120', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(20, '121', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(21, '122', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(22, '123', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(23, '124', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(24, '125', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(25, '126', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(26, '127', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(27, '128', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(28, '129', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(29, '130', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(30, '131', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(31, '132', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(32, '133', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(33, '134', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(34, '135', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(35, '136', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(36, '137', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(37, '138', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(38, '139', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(39, '140', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(40, '141', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(41, '142', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(42, '143', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(43, '145', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(44, '146', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(45, '147', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(46, '148', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(47, '149', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(48, '150', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(49, '151', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(50, '152', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(51, '153', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(52, '154', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(53, '155', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(54, '156', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(55, '157', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(56, '158', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(57, '159', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(58, '160', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(59, '161', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(60, '162', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(61, '163', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(62, '164', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(63, '165', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(64, '166', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(65, '167', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(66, '168', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(67, '169', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(68, '170', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(69, '171', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(70, '172', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(71, '173', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(72, '174', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(73, '175', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(74, '176', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(75, '177', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(76, '178', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(77, '179', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(78, '180', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(79, '181', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(80, '182', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(81, '183', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(82, '184', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(83, '185', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(84, '186', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(85, '187', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(86, '188', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(87, '189', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(88, '190', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(89, '191', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(90, '192', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(91, '193', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(92, '194', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(93, '195', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(94, '196', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(95, '197', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(96, '198', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(97, '199', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(98, '200', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(99, '201', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(100, '202', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(101, '101', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(102, '102', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(103, '103', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(104, '104', '800000', '4000000', '4000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(105, '105', '900000', '5000000', '5000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(106, '106', '100000', '6000000', '6000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(107, '107', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(108, '108', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(109, '109', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(110, '110', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(111, '111', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(112, '112', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(113, '113', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(114, '115', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(115, '116', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(116, '117', '700000', '3000000', '3000000', '1000000', '100000', '1000000', '1000000', 'sukses', NULL, NULL),
(117, '118', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(118, '119', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(119, '120', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(120, '121', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(121, '122', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(122, '123', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(123, '124', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(124, '125', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(125, '126', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(126, '127', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(127, '128', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(128, '129', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(129, '130', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(130, '131', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(131, '132', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(132, '133', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(133, '134', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(134, '135', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(135, '136', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(136, '137', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(137, '138', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(138, '139', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(139, '140', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(140, '141', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(141, '142', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(142, '143', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(143, '145', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(144, '146', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(145, '147', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(146, '148', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(147, '149', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(148, '150', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(149, '151', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(150, '152', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(151, '153', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(152, '154', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(153, '155', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(154, '156', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(155, '157', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(156, '158', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(157, '159', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(158, '160', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(159, '161', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(160, '162', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(161, '163', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(162, '164', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(163, '165', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(164, '166', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(165, '167', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(166, '168', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(167, '169', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(168, '170', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(169, '171', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(170, '172', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(171, '173', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(172, '174', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(173, '175', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(174, '176', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(175, '177', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(176, '178', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(177, '179', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(178, '180', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(179, '181', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(180, '182', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(181, '183', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(182, '184', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(183, '185', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(184, '186', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(185, '187', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(186, '188', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(187, '189', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(188, '190', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(189, '191', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(190, '192', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(191, '193', '500000', '1000000', '1000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(192, '194', '600000', '2000000', '2000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(193, '195', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(194, '196', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(195, '197', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(196, '198', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(197, '199', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(198, '200', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(199, '201', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL),
(200, '202', '700000', '3000000', '3000000', '1000000', '1000000', '1000000', '1000000', 'sukses', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Januarrio Kus Gunaldo', 'aldojanuar40@gmail.com', '2020-08-04 00:04:55', '$2y$10$kwK3a.Q9nDdDiiPCnmMsNen0W05djVK472UVhxeuXXqdbUSYiab8W', 'T5S1HKxJH3giTuFd1h4HAjopwimgSIka21qn2VGjJFTifzb9xaKJ5w6lqIuD', '2020-08-03 23:58:01', '2020-08-04 00:23:31'),
(2, 'Januarrio Kus Gunaldo', 'aldojanuarr40@gmail.com', '2020-08-09 19:27:32', '$2y$10$xxoyIaqqxr5ffmPr0rOmFek05F4ETUzieJTTeda92DO2wp06FBfoq', 'TTXcQmreoDYXXQxxBZXy72SVOuzeyHkvpE8ohh6GwkhHeZBPWn68Im0vxDEy', '2020-08-09 18:56:53', '2020-08-09 19:27:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_id_unique` (`provider_id`);

--
-- Indeks untuk tabel `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sopir`
--
ALTER TABLE `sopir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT untuk tabel `tarif`
--
ALTER TABLE `tarif`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
