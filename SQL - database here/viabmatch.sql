-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2017 at 09:27 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viabmatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `autocmp`
--

CREATE TABLE `autocmp` (
  `id` int(10) UNSIGNED NOT NULL,
  `base_table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raport_table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_table_column` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raport_table_column` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autocmp`
--

INSERT INTO `autocmp` (`id`, `base_table_name`, `raport_table_name`, `user_id`, `base_table_column`, `raport_table_column`) VALUES
(1, 'viab', 'mol', '1', 'Data', 'Data_Tranz'),
(2, 'viab', 'mol', '1', 'Litri', 'Cantitate'),
(3, 'viab', 'shell', '1', 'Data', 'Delivery_Date'),
(4, 'viab', 'shell', '1', 'Litri', 'Motorina_Quantity');

-- --------------------------------------------------------

--
-- Table structure for table `copyofviab`
--

CREATE TABLE `copyofviab` (
  `id` int(10) UNSIGNED NOT NULL,
  `Masina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Localitate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tara` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valoare` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valuta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TVa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Litri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Metoda_Plata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Validat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Doc_Validare` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Doc_Validare` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

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
(4, '2017_08_25_075304_create_reports_table', 1),
(5, '2017_08_28_111239_create_items_table', 1),
(7, '2017_08_28_124742_create_copyofviab_table', 1),
(11, '2017_09_05_103618_validate_user_auth', 3),
(15, '2017_08_28_124701_create_mol_table', 4),
(16, '2017_08_28_124908_create_viab_table', 4),
(17, '2017_09_01_091805_create_shell2_table', 4),
(18, '2017_08_25_073806_create_uploads_table', 5),
(19, '2017_09_06_085901_create_autocmp_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mol`
--

CREATE TABLE `mol` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nr` int(11) NOT NULL,
  `NR_Factura` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Tranz` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Livrarii_bunurilor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ora` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cust_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NR_Card` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NR_Inmatriculare` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Kilometraj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CentruCost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Statia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cod_produs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Denumire_produs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cantitate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pret_unitar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TVA` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TVA_Discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NET_facturat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TVA_facturat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total_facturat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mol`
--

INSERT INTO `mol` (`id`, `Nr`, `NR_Factura`, `Data_Tranz`, `Data_Livrarii_bunurilor`, `Ora`, `Cust_name`, `NR_Card`, `NR_Inmatriculare`, `Kilometraj`, `CentruCost`, `Statia`, `Cod_produs`, `Denumire_produs`, `UM`, `Cantitate`, `Pret_unitar`, `Total`, `TVA`, `Discount`, `TVA_Discount`, `NET_facturat`, `TVA_facturat`, `Total_facturat`) VALUES
(176, 1, '2620827353', '2017-06-16', '7-3-2017', '16:52:00', 'FOCUS TRANS AUTO SRL', '7080051001484568 ', 'B107AGT ', '303418', 'x', 'PITESTI 2 - BALCESCU 85', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '71.56', '4.55', '325.6', '51.99', '0', '0', '273.01', '51.87', '324.88'),
(177, 2, '2620827353', '2017-06-17', '7-3-2017', '14:48:00', 'FOCUS TRANS AUTO SRL', '7080051001486530 ', 'B124AGT ', '254604', 'x', 'GIURGIU BUCURESTIULUI', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '105.04', '4.49', '471.63', '75.3', '0', '0', '396.33', '75.3', '471.63'),
(178, 3, '2620827353', '2017-06-17', '7-3-2017', '17:14:00', 'FOCUS TRANS AUTO SRL', '7080051001484576 ', '1FOCUS ', 'x', 'x', 'AUTOSTRADA A1 KM 49', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '60.06', '4.65', '279.28', '44.59', '0', '0', '229.14', '43.54', '272.67'),
(179, 4, '2620827353', '2017-06-17', '7-3-2017', '17:23:00', 'FOCUS TRANS AUTO SRL', '7080051001484543 ', 'AG10UIK ', '634676', 'x', 'AUTOSTRADA A1 KM 49', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '64.22', '4.65', '298.62', '47.68', '0', '0', '245.01', '46.55', '291.56'),
(180, 5, '2620827353', '2017-06-18', '7-3-2017', '9:10:00', 'FOCUS TRANS AUTO SRL', '7080051001638932 ', 'B420AGT ', '124303', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '68.21', '4.59', '313.08', '49.99', '0', '0', '260.23', '49.44', '309.67'),
(181, 6, '2620827353', '2017-06-18', '7-3-2017', '13:32:00', 'FOCUS TRANS AUTO SRL', '7080051001638932 ', 'B420AGT ', 'x', 'x', 'PITESTI 3 AUTOSTRADA KM 80', '91004', 'ROVINIETA B12 ', 'BUC', '1', '438.11', '438.11', '69.95', '0', '0', '368.16', '69.95', '438.11'),
(182, 7, '2620827353', '2017-06-18', '7-3-2017', '18:40:00', 'FOCUS TRANS AUTO SRL', '7080051001638932 ', 'B420AGT ', '124815', 'x', 'RAMNICU VALCEA 1 CALEA LUI TRAIAN 291', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '68.78', '4.64', '319.14', '50.96', '0', '0', '262.4', '49.86', '312.26'),
(183, 8, '2620827353', '2017-06-19', '7-3-2017', '7:19:00', 'FOCUS TRANS AUTO SRL', '7080051001718957 ', 'AG87FCS ', '72901', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '81', '4.59', '371.79', '59.36', '0', '0', '309.03', '58.71', '367.74'),
(184, 9, '2620827353', '2017-06-19', '7-3-2017', '7:20:00', 'FOCUS TRANS AUTO SRL', '7080051001718957 ', 'AG87FCS ', '72901', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '185.01', '4.59', '849.2', '135.59', '0', '0', '705.84', '134.11', '839.95'),
(185, 10, '2620827353', '2017-06-19', '7-3-2017', '16:02:00', 'FOCUS TRANS AUTO SRL', '7080051001486522 ', 'B123AGT ', '236332', 'x', 'A1 NORD CALNIC KM 38', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '78.67', '4.57', '359.52', '57.4', '0', '0', '300.14', '57.03', '357.16'),
(186, 11, '2620827353', '2017-06-21', '7-3-2017', '15:37:00', 'FOCUS TRANS AUTO SRL', '7080051001486530 ', 'B124AGT ', '255024', 'x', 'PITESTI 1 NICOLAE BALCESCU (S.BUCURESTI)', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '47.48', '4.55', '216.03', '34.49', '0', '0', '181.14', '34.42', '215.56'),
(187, 12, '2620827353', '2017-06-21', '7-3-2017', '17:45:00', 'FOCUS TRANS AUTO SRL', '7080051001484568 ', 'B107AGT ', '305572', 'x', 'PITESTI 2 - BALCESCU 85', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '79.11', '4.55', '359.95', '57.47', '0', '0', '301.81', '57.34', '359.16'),
(188, 13, '2620827353', '2017-06-22', '7-3-2017', '16:43:00', 'FOCUS TRANS AUTO SRL', '7080051001638932 ', 'B420AGT ', '128834', 'x', 'PITESTI 1 NICOLAE BALCESCU (S.BUCURESTI)', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '68.69', '4.52', '310.48', '49.57', '0', '0', '260.33', '49.46', '309.79'),
(189, 14, '2620827353', '2017-06-22', '7-3-2017', '16:47:00', 'FOCUS TRANS AUTO SRL', '7080051001556126 ', 'B52AGT ', '367453', 'x', 'PITESTI 1 NICOLAE BALCESCU (S.BUCURESTI)', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '62.84', '4.52', '284.04', '45.35', '0', '0', '238.16', '45.25', '283.41'),
(190, 15, '2620827353', '2017-06-22', '7-3-2017', '21:36:00', 'FOCUS TRANS AUTO SRL', '7080051001638932 ', 'B420AGT ', '129124', 'x', 'PITESTI 1 NICOLAE BALCESCU (S.BUCURESTI)', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '38.22', '4.52', '172.75', '27.58', '0', '0', '144.85', '27.52', '172.37'),
(191, 16, '2620827353', '2017-06-22', '7-3-2017', '21:54:00', 'FOCUS TRANS AUTO SRL', '7080051001486522 ', 'B123AGT ', '240280', 'x', 'PITESTI 1 NICOLAE BALCESCU (S.BUCURESTI)', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '100.97', '4.52', '456.38', '72.87', '0', '0', '382.67', '72.71', '455.37'),
(192, 17, '2620827353', '2017-06-23', '7-3-2017', '13:01:00', 'FOCUS TRANS AUTO SRL', '7080051001556126 ', 'B52AGT ', '367770', 'x', 'PITESTI 6 - BALCESCU', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '39.1', '4.52', '176.73', '28.22', '0', '0', '148.19', '28.16', '176.34'),
(193, 18, '2620827353', '2017-06-23', '7-3-2017', '13:41:00', 'FOCUS TRANS AUTO SRL', '7080051001638957 ', 'B900FCS ', '574805', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '123.03', '4.56', '561.02', '89.57', '0', '0', '466.27', '88.59', '554.87'),
(194, 19, '2620827353', '2017-06-23', '7-3-2017', '20:52:00', 'FOCUS TRANS AUTO SRL', '7080051001638957 ', 'B900FCS ', '574825', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '20.02', '4.56', '91.29', '14.58', '0', '0', '75.87', '14.42', '90.29'),
(195, 20, '2620827353', '2017-06-23', '7-3-2017', '21:01:00', 'FOCUS TRANS AUTO SRL', '7080051001638957 ', 'B900FCS ', '574825', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '5', '4.56', '22.8', '3.64', '0', '0', '18.95', '3.6', '22.55'),
(196, 21, '2620827353', '2017-06-23', '7-3-2017', '23:28:00', 'FOCUS TRANS AUTO SRL', '7080051001484576 ', '1FOCUS ', 'x', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '60.01', '4.56', '273.65', '43.69', '0', '0', '227.43', '43.21', '270.65'),
(197, 22, '2620827353', '2017-06-25', '7-3-2017', '16:53:00', 'FOCUS TRANS AUTO SRL', '7080051001556126 ', 'B52AGT ', '368177', 'x', 'PITESTI 6 - BALCESCU', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '49.31', '4.52', '222.88', '35.59', '0', '0', '186.88', '35.51', '222.39'),
(198, 23, '2620827353', '2017-06-26', '7-3-2017', '8:31:00', 'FOCUS TRANS AUTO SRL', '7080051001638940 ', 'B520AGT ', '160704', 'x', 'BUCURESTI VALEA CASCADELOR', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '85.8', '4.56', '391.25', '62.47', '0', '0', '325.17', '61.78', '386.96'),
(199, 24, '2620827353', '2017-06-26', '7-3-2017', '11:23:00', 'FOCUS TRANS AUTO SRL', '7080051001760553 ', 'AG29FCS ', '253867', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '187.01', '4.56', '852.77', '136.16', '0', '0', '708.75', '134.66', '843.42'),
(200, 25, '2620827353', '2017-06-26', '7-3-2017', '11:35:00', 'FOCUS TRANS AUTO SRL', '7080051001760553 ', 'AG29FCS ', '253867', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '50.02', '4.56', '228.09', '36.42', '0', '0', '189.57', '36.02', '225.59'),
(201, 26, '2620827353', '2017-06-26', '7-3-2017', '19:33:00', 'FOCUS TRANS AUTO SRL', '7080051001718957 ', 'AG87FCS ', '77043', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '202.42', '4.56', '923.04', '147.38', '0', '0', '767.16', '145.76', '912.91'),
(202, 27, '2620827353', '2017-06-26', '7-3-2017', '19:34:00', 'FOCUS TRANS AUTO SRL', '7080051001718957 ', 'AG87FCS ', '77043', 'x', 'PITESTI 4 INTRARE AUTOSTRADA', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '72.88', '4.56', '332.33', '53.06', '0', '0', '276.21', '52.48', '328.69'),
(203, 28, '2620827353', '2017-06-28', '7-3-2017', '11:16:00', 'FOCUS TRANS AUTO SRL', '7080051001484568 ', 'B107AGT ', '307556', 'x', 'PITESTI 2 - BALCESCU 85', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '70.8', '4.52', '320.02', '51.1', '0', '0', '268.33', '50.98', '319.31'),
(204, 29, '2620827353', '2017-06-28', '7-3-2017', '13:44:00', 'FOCUS TRANS AUTO SRL', '7080051001638932 ', 'B420AGT ', '133467', 'x', 'PITESTI 1 NICOLAE BALCESCU (S.BUCURESTI)', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '73.91', '4.52', '334.07', '53.34', '0', '0', '280.11', '53.22', '333.33'),
(205, 30, '2620827353', '2017-06-29', '7-3-2017', '9:25:00', 'FOCUS TRANS AUTO SRL', '7080051001484576 ', '1FOCUS ', 'x', 'x', 'BUCURESTI VALEA CASCADELOR', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '48.61', '4.56', '221.66', '35.39', '0', '0', '184.23', '35', '219.23'),
(206, 31, '2620827353', '2017-06-29', '7-3-2017', '9:25:00', 'FOCUS TRANS AUTO SRL', '7080051001484576 ', '1FOCUS ', 'x', 'x', 'BUCURESTI VALEA CASCADELOR', '73954', 'EVOX TROPICAL 4& TERMINATOR 50', 'BUC', '1', '27.99', '27.99', '4.47', '0', '0', '23.52', '4.47', '27.99'),
(207, 32, '2620827353', '2017-06-29', '7-3-2017', '19:07:00', 'FOCUS TRANS AUTO SRL', '7080051001638940 ', 'B520AGT ', '162411', 'x', 'BUCURESTI VALEA CASCADELOR', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '64.7', '4.56', '295.03', '47.11', '0', '0', '245.21', '46.59', '291.8'),
(208, 33, '2620827353', '2017-06-29', '7-3-2017', '20:18:00', 'FOCUS TRANS AUTO SRL', '7080051001638932 ', 'B420AGT ', '133780', 'x', 'PITESTI 1 NICOLAE BALCESCU (S.BUCURESTI)', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '37.46', '4.52', '169.32', '27.03', '0', '0', '141.97', '26.97', '168.94'),
(209, 34, '2620827353', '2017-06-30', '7-3-2017', '2:26:00', 'FOCUS TRANS AUTO SRL', '7080051001556126 ', 'B52AGT ', '373131', 'x', 'FAGARAS', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '57.75', '4.58', '264.5', '42.23', '0', '0', '218.87', '41.58', '260.45'),
(210, 35, '2620827353', '2017-06-30', '7-3-2017', '14:11:00', 'FOCUS TRANS AUTO SRL', '7080051001556126 ', 'B52AGT ', 'x', 'x', 'PITESTI 6 - BALCESCU', '22', 'MOTORINA TEMPO DIESEL ', 'L ', '46.54', '4.52', '210.36', '33.59', '0', '0', '176.38', '33.51', '209.9');

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
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `report_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `report_type`, `type`) VALUES
(1, 1, 'viab', 'main'),
(2, 1, 'mol', 'added'),
(3, 1, 'copyofviab', 'added'),
(4, 1, 'shell', 'added');

-- --------------------------------------------------------

--
-- Table structure for table `shell`
--

CREATE TABLE `shell` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nr` int(11) NOT NULL,
  `Order_Number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Order_Date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country_Id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country_Name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Delivery_Date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Customer_Id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Customer_Name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Vehicle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Kilometrage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Station_Id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Station_Name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Product_Id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Product_Name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Local_Currency_Code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Local_Quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rebate_Amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Local_Total_Amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Loca_Total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Net_Amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Vat_Amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total_Amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QTYF` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tax_Net_Amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tax_Vat_Amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tax_Total_Amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Motorina_Quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Card_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Link_Header` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shell`
--

INSERT INTO `shell` (`id`, `Nr`, `Order_Number`, `Order_Date`, `Country_Id`, `Country_Name`, `Delivery_Date`, `Customer_Id`, `Customer_Name`, `Card`, `Vehicle`, `Kilometrage`, `Station_Id`, `Station_Name`, `Product_Id`, `Product_Name`, `Local_Currency_Code`, `Local_Quantity`, `Price`, `Rebate_Amount`, `Local_Total_Amount`, `Loca_Total`, `Net_Amount`, `Vat_Amount`, `Total_Amount`, `QTYF`, `Tax_Net_Amount`, `Tax_Vat_Amount`, `Tax_Total_Amount`, `Motorina_Quantity`, `Card_No`, `Link_Header`) VALUES
(72, 1, '8000292607', '2017-08-16', '013', 'Franta', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '002', 'Service Fee', 'EUR', '1', '0.87', '0', '0.87', '0.87', '0.87', '0', '0.87', '0', '0', '0', '0', '0', '0130', 'B900FCS ITR     0130'),
(73, 2, '8000292607', '2017-08-16', '013', 'Franta', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '002', 'Service Fee', 'EUR', '1', '1', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0155', 'AG29FCS ITR     0155'),
(74, 3, '8000292607', '2017-08-16', '013', 'Franta', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290148', 'AG87FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '002', 'Service Fee', 'EUR', '1', '1', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0148', 'AG87FCS ITR     0148'),
(75, 4, '8000292607', '2017-08-16', '013', 'Franta', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '002', 'Service Fee', 'EUR', '1', '1', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0130', 'B900FCS ITR     0130'),
(76, 5, '8000292607', '2017-08-16', '013', 'Franta', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290148', 'AG87FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '002', 'Service Fee', 'EUR', '1', '2.5', '0', '2.5', '2.5', '2.5', '0', '2.5', '0', '0', '0', '0', '0', '0148', 'AG87FCS ITR     0148'),
(77, 6, '8000292607', '2017-08-16', '013', 'Franta', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '002', 'Service Fee', 'EUR', '1', '2.5', '0', '2.5', '2.5', '2.5', '0', '2.5', '0', '0', '0', '0', '0', '0155', 'AG29FCS ITR     0155'),
(78, 7, '8000292607', '2017-08-16', '013', 'Franta', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '002', 'Service Fee', 'EUR', '1', '2.5', '0', '2.5', '2.5', '2.5', '0', '2.5', '0', '0', '0', '0', '0', '0130', 'B900FCS ITR     0130'),
(79, 8, '8000292607', '2017-08-16', '013', 'Franta', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '002', 'Service Fee', 'EUR', '1', '7.54', '0', '7.54', '7.54', '7.54', '0', '7.54', '0', '0', '0', '0', '0', '0130', 'B900FCS ITR     0130'),
(80, 9, '3500000264', '2017-08-16', '114', 'Germania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290058', 'FOCUS TRANS AUTO', '000000', '0000', 'TRANSCAMION SCHIFFAHRTSAGENTUR          ', '010', 'TMF', 'EUR', '1', '121.88', '0', '121.88', '121.88', '121.88', '0', '121.88', '0', '0', '0', '0', '0', '0058', 'FOCUS TRANS AUTO0058'),
(81, 10, '6300039391', '2017-08-16', '030', 'Slovenia', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290082', 'B900FCS         ', '000000', '0000', 'D998 DARS                               ', '012', 'Motorway Toll', 'EUR', '1', '23.5', '0', '23.5', '23.5', '19.26', '4.24', '23.5', '0', '19.26', '4.24', '23.5', '0', '0082', 'B900FCS         0082'),
(82, 11, '6300039391', '2017-08-16', '030', 'Slovenia', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290082', 'B900FCS         ', '000000', '0000', 'D998 DARS                               ', '012', 'Motorway Toll', 'EUR', '1', '31.3', '0', '31.3', '31.3', '25.66', '5.64', '31.3', '0', '25.66', '5.64', '31.3', '0', '0082', 'B900FCS         0082'),
(83, 12, '6300039391', '2017-08-16', '030', 'Slovenia', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290082', 'B900FCS         ', '000000', '0000', 'D998 DARS                               ', '012', 'Motorway Toll', 'EUR', '1', '41.6', '0', '41.6', '41.6', '34.1', '7.5', '41.6', '0', '34.1', '7.5', '41.6', '0', '0082', 'B900FCS         0082'),
(84, 13, '5515032781', '2017-08-16', '416', 'Italia', '2017-08-08', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290163', 'TAXE DRUM FDE   ', '000000', '0000', 'FDE MOTORWAY SERVICE                    ', '012', 'Motorway Toll', 'EUR', '1', '157.2', '0', '157.2', '157.2', '157.2', '0', '157.2', '0', '157.2', '0', '157.2', '0', '0163', 'TAXE DRUM FDE   0163'),
(85, 14, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-25', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '10.3', '0', '10.3', '10.3', '8.51', '1.79', '10.3', '0', '8.51', '1.79', '10.3', '0', '0130', 'B900FCS ITR     0130'),
(86, 15, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '2.77', '0', '2.77', '2.77', '2.29', '0.48', '2.77', '0', '2.29', '0.48', '2.77', '0', '0155', 'AG29FCS ITR     0155'),
(87, 16, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '4.75', '0', '4.75', '4.75', '3.93', '0.82', '4.75', '0', '3.93', '0.82', '4.75', '0', '0130', 'B900FCS ITR     0130'),
(88, 17, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '4.9', '0', '4.9', '4.9', '4.05', '0.85', '4.9', '0', '4.05', '0.85', '4.9', '0', '0155', 'AG29FCS ITR     0155'),
(89, 18, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '7.78', '0', '7.78', '7.78', '6.43', '1.35', '7.78', '0', '6.43', '1.35', '7.78', '0', '0155', 'AG29FCS ITR     0155'),
(90, 19, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '10.3', '0', '10.3', '10.3', '8.51', '1.79', '10.3', '0', '8.51', '1.79', '10.3', '0', '0155', 'AG29FCS ITR     0155'),
(91, 20, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '14.35', '0', '14.35', '14.35', '11.86', '2.49', '14.35', '0', '11.86', '2.49', '14.35', '0', '0155', 'AG29FCS ITR     0155'),
(92, 21, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-27', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '1.74', '0', '1.74', '1.74', '1.44', '0.3', '1.74', '0', '1.44', '0.3', '1.74', '0', '0155', 'AG29FCS ITR     0155'),
(93, 22, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-27', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '2.37', '0', '2.37', '2.37', '1.96', '0.41', '2.37', '0', '1.96', '0.41', '2.37', '0', '0155', 'AG29FCS ITR     0155'),
(94, 23, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-28', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '1.7', '0', '1.7', '1.7', '1.4', '0.3', '1.7', '0', '1.4', '0.3', '1.7', '0', '0130', 'B900FCS ITR     0130'),
(95, 24, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-28', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '1.75', '0', '1.75', '1.75', '1.45', '0.3', '1.75', '0', '1.45', '0.3', '1.75', '0', '0130', 'B900FCS ITR     0130'),
(96, 25, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-28', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '4.75', '0', '4.75', '4.75', '3.93', '0.82', '4.75', '0', '3.93', '0.82', '4.75', '0', '0130', 'B900FCS ITR     0130'),
(97, 26, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-28', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '18.55', '0', '18.55', '18.55', '15.33', '3.22', '18.55', '0', '15.33', '3.22', '18.55', '0', '0130', 'B900FCS ITR     0130'),
(98, 27, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-28', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '24.2', '0', '24.2', '24.2', '20', '4.2', '24.2', '0', '20', '4.2', '24.2', '0', '0130', 'B900FCS ITR     0130'),
(99, 28, '3715036485', '2017-08-16', '121', 'Spania', '2017-07-28', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '25.85', '0', '25.85', '25.85', '21.36', '4.49', '25.85', '0', '21.36', '4.49', '25.85', '0', '0130', 'B900FCS ITR     0130'),
(100, 29, '3715036486', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '-3.93', '0', '-3.93', '-3.93', '-3.25', '-0.68', '-3.93', '0', '-3.25', '-0.68', '-3.93', '0', '0155', 'AG29FCS ITR     0155'),
(101, 30, '3715036486', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '-3.05', '0', '-3.05', '-3.05', '-2.52', '-0.53', '-3.05', '0', '-2.52', '-0.53', '-3.05', '0', '0155', 'AG29FCS ITR     0155'),
(102, 31, '3715036486', '2017-08-16', '121', 'Spania', '2017-07-26', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '-1.32', '0', '-1.32', '-1.32', '-1.09', '-0.23', '-1.32', '0', '-1.09', '-0.23', '-1.32', '0', '0155', 'AG29FCS ITR     0155'),
(103, 32, '3715036486', '2017-08-16', '121', 'Spania', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '-9.99', '0', '-9.99', '-9.99', '-8.26', '-1.73', '-9.99', '0', '-8.26', '-1.73', '-9.99', '0', '0155', 'AG29FCS ITR     0155'),
(104, 33, '3715036486', '2017-08-16', '121', 'Spania', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '-7.73', '0', '-7.73', '-7.73', '-6.39', '-1.34', '-7.73', '0', '-6.39', '-1.34', '-7.73', '0', '0155', 'AG29FCS ITR     0155'),
(105, 34, '3715036486', '2017-08-16', '121', 'Spania', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '-7.73', '0', '-7.73', '-7.73', '-6.39', '-1.34', '-7.73', '0', '-6.39', '-1.34', '-7.73', '0', '0130', 'B900FCS ITR     0130'),
(106, 35, '3715036486', '2017-08-16', '121', 'Spania', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'EUROSHELL CARDS BV - SPAIN              ', '014', 'Road Tax', 'EUR', '1', '-7.06', '0', '-7.06', '-7.06', '-5.83', '-1.23', '-7.06', '0', '-5.83', '-1.23', '-7.06', '0', '0130', 'B900FCS ITR     0130'),
(107, 36, '5000262019', '2017-08-16', '008', 'Austria', '2017-07-31', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290124', 'AG29FCS         ', '000000', '0000', 'TMF AUSTRIA MOTORWAY                    ', '014', 'Road Tax', 'EUR', '1', '20.56', '0', '20.56', '20.56', '17.13', '3.43', '20.56', '0', '17.13', '3.43', '20.56', '0', '0124', 'AG29FCS         0124'),
(108, 37, '5000262019', '2017-08-16', '008', 'Austria', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290124', 'AG29FCS         ', '000000', '0000', 'TMF AUSTRIA MOTORWAY                    ', '014', 'Road Tax', 'EUR', '1', '131.74', '0', '131.74', '131.74', '109.78', '21.96', '131.74', '0', '109.78', '21.96', '131.74', '0', '0124', 'AG29FCS         0124'),
(109, 38, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-28', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '9.3', '0', '9.3', '9.3', '7.75', '1.55', '9.3', '0', '7.75', '1.55', '9.3', '0', '0155', 'AG29FCS ITR     0155'),
(110, 39, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-29', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '13', '0', '13', '13', '10.83', '2.17', '13', '0', '10.83', '2.17', '13', '0', '0130', 'B900FCS ITR     0130'),
(111, 40, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-29', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '67', '0', '67', '67', '55.83', '11.17', '67', '0', '55.83', '11.17', '67', '0', '0130', 'B900FCS ITR     0130'),
(112, 41, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-31', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '4.8', '0', '4.8', '4.8', '4', '0.8', '4.8', '0', '4', '0.8', '4.8', '0', '0130', 'B900FCS ITR     0130'),
(113, 42, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-31', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '7', '0', '7', '7', '5.83', '1.17', '7', '0', '5.83', '1.17', '7', '0', '0130', 'B900FCS ITR     0130'),
(114, 43, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-31', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '9.8', '0', '9.8', '9.8', '8.17', '1.63', '9.8', '0', '8.17', '1.63', '9.8', '0', '0155', 'AG29FCS ITR     0155'),
(115, 44, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-31', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '9.8', '0', '9.8', '9.8', '8.17', '1.63', '9.8', '0', '8.17', '1.63', '9.8', '0', '0130', 'B900FCS ITR     0130'),
(116, 45, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-31', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290130', 'B900FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '44.6', '0', '44.6', '44.6', '37.17', '7.43', '44.6', '0', '37.17', '7.43', '44.6', '0', '0130', 'B900FCS ITR     0130'),
(117, 46, '8000292607', '2017-08-16', '013', 'Franta', '2017-07-31', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077253500228290155', 'AG29FCS ITR     ', '000000', '0000', 'AXXES SAS                               ', '014', 'Road Tax', 'EUR', '1', '60.6', '0', '60.6', '60.6', '50.5', '10.1', '60.6', '0', '50.5', '10.1', '60.6', '0', '0155', 'AG29FCS ITR     0155'),
(118, 47, '6400632755', '2017-08-16', '014', 'Germania', '2017-07-31', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290108', 'B520AGT         ', '173766', '0307', 'FLOERSHEIM, B�RGERMEISTER- L.           ', '030', 'Diesel Fuel', 'EUR', '31', '1.08', '0', '33.45', '33.45', '28.11', '5.34', '33.45', '31', '0', '0', '0', '31', '0108', 'B520AGT         0108'),
(119, 48, '6400632755', '2017-08-16', '014', 'Germania', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290108', 'B520AGT         ', '174316', '0441', 'NEUFARN, MUENCHNER STR.                 ', '030', 'Diesel Fuel', 'EUR', '29', '1.11', '0', '32.16', '32.16', '27.03', '5.13', '32.16', '29', '0', '0', '0', '29', '0108', 'B520AGT         0108'),
(120, 49, '6400632755', '2017-08-16', '014', 'Germania', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290108', 'B520AGT         ', '174066', '0568', 'SUESSEN, HEIDENHEIMER STR               ', '030', 'Diesel Fuel', 'EUR', '32.69', '1.1', '0', '35.93', '35.93', '30.19', '5.74', '35.93', '32.69', '0', '0', '0', '32.69', '0108', 'B520AGT         0108'),
(121, 50, '6400632755', '2017-08-16', '014', 'Germania', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290066', 'B123AGT         ', '263693', '7778', 'BERG, LUDWIG-ERHARD-RING 2.             ', '030', 'Diesel Fuel', 'EUR', '63', '1.09', '0', '68.61', '68.61', '57.66', '10.95', '68.61', '63', '0', '0', '0', '63', '0066', 'B123AGT         0066'),
(122, 51, '6400632755', '2017-08-16', '014', 'Germania', '2017-08-02', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290066', 'B123AGT         ', '264338', '7516', 'RHEDE, DAENNENDIEK 8.                   ', '030', 'Diesel Fuel', 'EUR', '75', '1.13', '0', '84.68', '84.68', '71.16', '13.52', '84.68', '75', '0', '0', '0', '75', '0066', 'B123AGT         0066'),
(123, 52, '6400632755', '2017-08-16', '014', 'Germania', '2017-08-02', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290066', 'B123AGT         ', '264909', '7778', 'BERG, LUDWIG-ERHARD-RING 2.             ', '030', 'Diesel Fuel', 'EUR', '71.93', '1.26', '0', '90.56', '90.56', '76.1', '14.46', '90.56', '71.93', '0', '0', '0', '71.93', '0066', 'B123AGT         0066'),
(124, 53, '1500006250', '2017-08-16', '031', 'Bulgaria', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290041', 'B107AGT         ', '234349', '3012', '3012 YAMBOL                             ', '030', 'Diesel Fuel', 'BGN', '78.83', '1.93', '0', '152.14', '152.14', '64.81', '12.96', '77.77', '78.83', '0', '0', '0', '78.83', '0041', 'B107AGT         0041'),
(125, 54, '1500006250', '2017-08-16', '031', 'Bulgaria', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290090', 'B420AGT         ', '149230', '4005', '4005 LYUBIMETZ EAST                     ', '030', 'Diesel Fuel', 'BGN', '56.4', '2.06', '0', '116.18', '116.18', '49.5', '9.9', '59.4', '56.4', '0', '0', '0', '56.4', '0090', 'B420AGT         0090'),
(126, 55, '1500006250', '2017-08-16', '031', 'Bulgaria', '2017-08-05', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290041', 'B107AGT         ', '325524', '3012', '3012 YAMBOL                             ', '030', 'Diesel Fuel', 'BGN', '109.67', '1.93', '0', '211.66', '211.66', '90.18', '18.03', '108.21', '109.67', '0', '0', '0', '109.67', '0041', 'B107AGT         0041'),
(127, 56, '1500006424', '2017-08-16', '031', 'Bulgaria', '2017-08-10', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290090', 'B420AGT         ', '150188', '3012', '3012 YAMBOL                             ', '030', 'Diesel Fuel', 'BGN', '70.1', '1.93', '0', '135.29', '135.29', '57.64', '11.53', '69.17', '70.1', '0', '0', '0', '70.1', '0090', 'B420AGT         0090'),
(128, 57, '1500006424', '2017-08-16', '031', 'Bulgaria', '2017-08-13', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290090', 'B420AGT         ', '151387', '3012', '3012 YAMBOL                             ', '030', 'Diesel Fuel', 'BGN', '88.73', '1.93', '0', '171.25', '171.25', '72.96', '14.59', '87.55', '88.73', '0', '0', '0', '88.73', '0090', 'B420AGT         0090'),
(129, 58, 'I180042448', '2017-08-16', '034', 'Ungaria', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290066', 'B123AGT         ', '263140', '0046', 'MOSONMAGYAR�V�R I.                      ', '030', 'Diesel Fuel', 'HUF', '39', '345.9', '0', '13,490.00', '13,490.00', '34.89', '9.43', '44.32', '39', '0', '0', '0', '39', '0066', 'B123AGT         0066'),
(130, 59, 'I180042448', '2017-08-16', '034', 'Ungaria', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290066', 'B123AGT         ', '262813', '0028', 'SZEGED II.                              ', '030', 'Diesel Fuel', 'HUF', '115', '336.9', '0', '38,744.00', '38,744.00', '100.22', '27.06', '127.28', '115', '0', '0', '0', '115', '0066', 'B123AGT         0066'),
(131, 60, 'I180042448', '2017-08-16', '034', 'Ungaria', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290124', 'AG29FCS         ', '267459', '0046', 'MOSONMAGYAR�V�R I.                      ', '030', 'Diesel Fuel', 'HUF', '634.01', '346.9', '0', '219,938.00', '219,938.00', '568.92', '153.61', '722.53', '634.01', '0', '0', '0', '634.01', '0124', 'AG29FCS         0124'),
(132, 61, 'I180042448', '2017-08-16', '034', 'Ungaria', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290108', 'B520AGT         ', '174835', '0544', 'GY?R IV 544                             ', '030', 'Diesel Fuel', 'HUF', '63', '339.9', '0', '21,414.00', '21,414.00', '55.39', '14.96', '70.35', '63', '0', '0', '0', '63', '0108', 'B520AGT         0108'),
(133, 62, 'I180042448', '2017-08-16', '034', 'Ungaria', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290108', 'B520AGT         ', '175444', '0085', 'MAK�                                    ', '030', 'Diesel Fuel', 'HUF', '84', '337.9', '0', '28,384.00', '28,384.00', '73.42', '19.83', '93.25', '84', '0', '0', '0', '84', '0108', 'B520AGT         0108'),
(134, 63, 'I180042448', '2017-08-16', '034', 'Ungaria', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290066', 'B123AGT         ', '265740', '0008', 'T�R�KSZENTMIKL�S                        ', '030', 'Diesel Fuel', 'HUF', '28', '336.89', '0', '9,433.00', '9,433.00', '24.4', '6.59', '30.99', '28', '0', '0', '0', '28', '0066', 'B123AGT         0066'),
(135, 64, 'I180042448', '2017-08-16', '034', 'Ungaria', '2017-08-03', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290066', 'B123AGT         ', '265496', '0544', 'GY?R IV 544                             ', '030', 'Diesel Fuel', 'HUF', '71', '342.9', '0', '24,346.00', '24,346.00', '62.98', '17', '79.98', '71', '0', '0', '0', '71', '0066', 'B123AGT         0066'),
(136, 65, 'I180042448', '2017-08-16', '034', 'Ungaria', '2017-08-15', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290025', 'B52AGT          ', '000037', '0544', 'GY?R IV 544                             ', '030', 'Diesel Fuel', 'HUF', '56.42', '344.9', '0', '19,459.00', '19,459.00', '50.34', '13.59', '63.93', '56.42', '0', '0', '0', '56.42', '0025', 'B52AGT          0025'),
(137, 66, '3115001543', '2017-08-16', '041', 'Turcia', '2017-06-28', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290108', 'B520AGT         ', '      ', '5286', 'GEBZE ORGAN?ZE SANAY?.                  ', '032', 'Diesel Extra', 'TRY', '51.89', '4.33', '0', '224.68', '224.68', '45.98', '8.28', '54.26', '51.89', '0', '0', '0', '51.89', '0108', 'B520AGT         0108'),
(138, 67, '3115001543', '2017-08-16', '041', 'Turcia', '2017-08-02', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290090', 'B420AGT         ', '014875', '2097', 'ERTU?RUL.                               ', '032', 'Diesel Extra', 'TRY', '80.57', '4.58', '0', '369.01', '369.01', '75.52', '13.59', '89.11', '80.57', '0', '0', '0', '80.57', '0090', 'B420AGT         0090'),
(139, 68, '3115001543', '2017-08-16', '041', 'Turcia', '2017-08-04', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290041', 'B107AGT         ', '      ', '4177', '�ERKEZK�Y G?R???.                       ', '032', 'Diesel Extra', 'TRY', '40', '4.55', '0', '182', '182', '37.25', '6.7', '43.95', '40', '0', '0', '0', '40', '0041', 'B107AGT         0041'),
(140, 69, '3115001543', '2017-08-16', '041', 'Turcia', '2017-08-11', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290090', 'B420AGT         ', '015079', '5887', 'CIFTLIKKOY KURUCESME..                  ', '032', 'Diesel Extra', 'TRY', '70', '4.57', '0', '319.9', '319.9', '65.47', '11.78', '77.25', '70', '0', '0', '0', '70', '0090', 'B420AGT         0090'),
(141, 70, '6300039391', '2017-08-16', '030', 'Slovenia', '2017-08-01', 'HU50022829', 'FOCUS TRANS AUTO SRL', '7077251500228290082', 'B900FCS         ', '008888', '0000', 'SEZANA                                  ', '032', 'Diesel Extra', 'EUR', '473.45', '1.17', '0', '552.52', '552.52', '452.89', '99.63', '552.52', '473.45', '0', '0', '0', '473.45', '0082', 'B900FCS         0082'),
(142, 71, '3300067469', '2017-08-16', '110', 'Returnare TVA - NETA', '2017-07-25', 'HU50022829', 'FOCUS TRANS AUTO SRL', '0000000000000000000', '                ', '      ', '0000', 'FDE A/S                                 ', '098', 'VAT Refund', 'EUR', '1', '-1,987.05', '0', '-1,987.05', '-1,987.05', '-1,987.05', '0', '-1,987.05', '0', '0', '0', '0', '0', '0000', '                0000');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `imported` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_name`, `file_extension`, `file_path`, `report_type`, `user_id`, `imported`, `created_at`, `updated_at`) VALUES
(1, 'viab_mol.csv', '.csv', 'viab_mol_1504687295.csv', 'viab', 1, 'da', '2017-09-06 05:41:35', '2017-09-06 05:41:35'),
(2, 'mol.csv', '.csv', '\'mol_1504687314.csv', 'mol', 1, 'da', '2017-09-06 05:41:54', '2017-09-06 05:41:54'),
(3, 'shell2.csv', '.csv', 'shell2_1504688931.csv', 'shell', 1, 'da', '2017-09-06 06:08:51', '2017-09-06 06:08:51'),
(4, 'viab_shell.csv', '.csv', 'viab_shell_1504688963.csv', 'viab', 1, 'da', '2017-09-06 06:09:23', '2017-09-06 06:09:23'),
(5, 'viab_mol.csv', '.csv', 'viab_mol_1504698113.csv', 'viab', 1, 'da', '2017-09-06 08:41:53', '2017-09-06 08:41:53'),
(6, 'mol.csv', '.csv', 'mol_1504698124.csv', 'mol', 1, 'da', '2017-09-06 08:42:04', '2017-09-06 08:42:04'),
(7, 'mol.csv', '.csv', 'mol_1504698719.csv', 'mol', 1, 'nu', '2017-09-06 08:51:59', '2017-09-06 08:51:59'),
(8, 'mol.xls', '.xls', 'mol_1504698988.xls', 'viab', 1, 'nu', '2017-09-06 08:56:28', '2017-09-06 08:56:28'),
(9, 'mol.xls', '.xls', 'mol_1504699043.xls', 'mol', 1, 'da', '2017-09-06 08:57:23', '2017-09-06 08:57:23'),
(10, 'viab_mol.csv', '.csv', 'viab_mol_1504765329.csv', 'viab', 1, 'da', '2017-09-07 03:22:10', '2017-09-07 03:22:10'),
(11, 'mol.csv', '.csv', 'mol_1504765339.csv', 'mol', 1, 'da', '2017-09-07 03:22:19', '2017-09-07 03:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `enable_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `enable_user`) VALUES
(1, 'Cristian', 'cristivoicu20@yahoo.com', '$2y$10$HZOq6l1XpH9VrwdLMTqv5.Hn1vjrUXWEAIisxCIFTfSz4Z/FTuUDe', 'OyPxNA7RDm4ozo12EekPRFZOmFG70mAhzCPMeEIIMjAxJFr9cmVMNOauX4fy', '2017-09-05 05:10:51', '2017-09-05 05:10:51', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `viab`
--

CREATE TABLE `viab` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nr` int(11) NOT NULL,
  `Masina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Localitate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tara` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valoare` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valuta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TVa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Litri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Metoda_Plata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Validat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Doc_Validare` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Doc_Validare` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `viab`
--

INSERT INTO `viab` (`id`, `Nr`, `Masina`, `Data`, `Localitate`, `Tara`, `Valoare`, `Valuta`, `TVa`, `Litri`, `Document`, `Metoda_Plata`, `Card`, `Validat`, `Doc_Validare`, `Data_Doc_Validare`) VALUES
(547, 1, 'B-107-AGT', '2017-06-01', 'Pitesti', 'RO', '425.21', 'RON', '19', '90.47', NULL, 'Card', 'MOL', 'Nu', NULL, NULL),
(548, 2, 'B-900-FCS', '2017-06-02', 'Pitesti', 'RO', '1083.71', 'RON', '19', '227.67', '144', 'Card', 'MOL', 'Nu', NULL, NULL),
(549, 3, 'B-124-AGT', '2017-06-02', 'Pitesti', 'RO', '235.52', 'RON', '19', '49.9', '58', 'Card', 'MOL', 'Nu', NULL, NULL),
(550, 4, 'B-124-AGT', '2017-06-02', 'Arad', 'RO', '404.37', 'RON', '19', '85.49', '32', 'Card', 'MOL', 'Nu', NULL, NULL),
(551, 5, 'B-900-FCS', '2017-06-02', 'Pitesti', 'RO', '658.21', 'RON', '19', '138.28', '150', 'Card', 'MOL', 'Nu', NULL, NULL),
(552, 6, 'AG-87-FCS', '2017-06-05', 'Pitesti', 'RO', '1299.19', 'RON', '19', '272.94', NULL, 'Card', 'MOL', 'Nu', NULL, NULL),
(553, 7, 'AG-29-FCS', '2017-06-07', 'Pitesti', 'RO', '505.44', 'RON', '19', '108', NULL, 'Card', 'MOL', 'Nu', NULL, NULL),
(554, 8, 'AG-29-FCS', '2017-06-07', 'Pitesti', 'RO', '893.88', 'RON', '19', '191', NULL, 'Card', 'MOL', 'Nu', NULL, NULL),
(555, 9, 'B-520-AGT', '2017-06-07', 'Brasov', 'RO', '339.11', 'RON', '19', '72', '70', 'Card', 'MOL', 'Nu', NULL, NULL),
(556, 10, 'B-124-AGT', '2017-06-08', 'Calnic', 'RO', '454.96', 'RON', '19', '98.69', '85', 'Card', 'MOL', 'Nu', NULL, NULL),
(557, 11, 'B-123-AGT', '2017-06-10', 'Bucuresti', 'RO', '176.7', 'RON', '19', '38', '11', 'Card', 'MOL', 'Nu', NULL, NULL),
(558, 12, 'B-520-AGT', '2017-06-11', 'Bucuresti', 'RO', '96.77', 'RON', '19', '20.81', '25', 'Card', 'MOL', 'Nu', NULL, NULL),
(559, 13, 'B-420-AGT', '2017-06-12', 'Pitesti', 'RO', '327.24', 'RON', '19', '71.14', '176', 'Card', 'MOL', 'Nu', NULL, NULL),
(560, 14, 'B-420-AGT', '2017-06-13', 'Giarmata', 'RO', '381.34', 'RON', '19', '82.9', '83', 'Card', 'MOL', 'Nu', NULL, NULL),
(561, 15, 'B-900-FCS', '2017-06-13', 'Pitesti', 'RO', '801.47', 'RON', '19', '172.36', '109', 'Card', 'MOL', 'Nu', NULL, NULL),
(562, 16, 'B-900-FCS', '2017-06-13', 'Pitesti', 'RO', '534.01', 'RON', '19', '114.84', '112', 'Card', 'MOL', 'Nu', NULL, NULL),
(563, 17, 'B-52-AGT', '2017-06-13', 'Pitesti', 'RO', '193.76', 'RON', '19', '42.12', '133', 'Card', 'MOL', 'Nu', NULL, NULL),
(564, 18, 'AG-29-FCS', '2017-06-15', 'Pitesti', 'RO', '221.28', 'RON', '19', '48', '16', 'Card', 'MOL', 'Nu', NULL, NULL),
(565, 19, 'AG-29-FCS', '2017-06-15', 'Pitesti', 'RO', '875.9', 'RON', '19', '190', '13', 'Card', 'MOL', 'Nu', NULL, NULL),
(566, 20, 'B-107-AGT', '2017-06-16', 'Pitesti', 'RO', '325.6', 'RON', '19', '71.56', NULL, 'Card', 'MOL', 'da', NULL, NULL),
(567, 21, 'B-124-AGT', '2017-06-17', 'Giurgiu', 'RO', '471.63', 'RON', '19', '105.04', '171', 'Card', 'MOL', 'da', NULL, NULL),
(568, 22, 'B-420-AGT', '2017-06-18', 'Pitesti', 'RO', '313.08', 'RON', '19', '68.21', '24', 'Card', 'MOL', 'da', NULL, NULL),
(569, 23, 'AG-87-FCS', '2017-06-19', 'Pitesti', 'RO', '371.79', 'RON', '19', '81', '7', 'Card', 'MOL', 'da', NULL, NULL),
(570, 24, 'AG-87-FCS', '2017-06-19', 'Pitesti', 'RO', '849.2', 'RON', '19', '185.01', '8', 'Card', 'MOL', 'da', NULL, NULL),
(571, 25, 'B-123-AGT', '2017-06-19', 'Calnic', 'RO', '359.52', 'RON', '19', '78.67', '49', 'Card', 'MOL', 'da', NULL, NULL),
(572, 26, 'B-124-AGT', '2017-06-21', 'Pitesti', 'RO', '216.03', 'RON', '19', '47.48', '130', 'Card', 'MOL', 'da', NULL, NULL),
(573, 27, 'B-107-AGT', '2017-06-21', 'Pitesti', 'RO', '359.95', 'RON', '19', '79.11', '453', 'Card', 'MOL', 'da', NULL, NULL),
(574, 28, 'B-124-AGT', '2017-06-21', 'Pitesti', 'RO', '216.03', 'RON', '19', '47.48', '130', 'Card', 'MOL', 'da', NULL, NULL),
(575, 29, 'B-123-AGT', '2017-06-22', 'Pitesti', 'RO', '456.38', 'RON', '19', '101', NULL, 'Card', 'MOL', 'Nu', NULL, NULL),
(576, 30, 'B-420-AGT', '2017-06-22', 'Pitesti', 'RO', '172.75', 'RON', '19', '38.22', '38', 'Card', 'MOL', 'da', NULL, NULL),
(577, 31, 'B-52-AGT', '2017-06-22', 'Pitesti', 'RO', '284.04', 'RON', '20', '62.84', '149', 'Card', 'MOL', 'da', NULL, NULL),
(578, 32, 'B-420-AGT', '2017-06-22', 'Pitesti', 'RO', '310.48', 'RON', '19', '69.69', '146', 'Card', 'MOL', 'Nu', NULL, NULL),
(579, 33, 'B-52-AGT', '2017-06-23', 'Pitesti', 'RO', '176.73', 'RON', '19', '39.1', '70', 'Card', 'MOL', 'da', NULL, NULL),
(580, 34, 'B-900-FCS', '2017-06-23', 'Pitesti', 'RO', '22.8', 'RON', '19', '5', '58', 'Card', 'MOL', 'da', NULL, NULL),
(581, 35, 'B-900-FCS', '2017-06-23', 'Pitesti', 'RO', '91.28', 'RON', '19', '20.02', '56', 'Card', 'MOL', 'da', NULL, NULL),
(582, 36, 'B-900-FCS', '2017-06-23', 'Pitesti', 'RO', '561.03', 'RON', '19', '123.03', '140', 'Card', 'MOL', 'da', NULL, NULL),
(583, 37, 'B-52-AGT', '2017-06-25', 'Pitesti', 'RO', '222.88', 'RON', '19', '49.31', '130', 'Card', 'MOL', 'da', NULL, NULL),
(584, 38, 'AG-87-FCS', '2017-06-26', 'Pitesti', 'RO', '332.33', 'RON', '19', '72.88', '19', 'Card', 'MOL', 'da', NULL, NULL),
(585, 39, 'AG-29-FCS', '2017-06-26', 'Pitesti', 'RO', '228.09', 'RON', '19', '50.02', '105', 'Card', 'MOL', 'da', NULL, NULL),
(586, 40, 'AG-29-FCS', '2017-06-26', 'Pitesti', 'RO', '852.77', 'RON', '19', '187.01', '98', 'Card', 'MOL', 'da', NULL, NULL),
(587, 41, 'B-520-AGT', '2017-06-26', 'Bucuresti', 'RO', '391.25', 'RON', '19', '85.8', '22', 'Card', 'MOL', 'da', NULL, NULL),
(588, 42, 'AG-87-FCS', '2017-06-26', 'Pitesti', 'RO', '923.04', 'RON', '19', '202.42', '18', 'Card', 'MOL', 'da', NULL, NULL),
(589, 43, 'B-107-AGT', '2017-06-28', 'Pitesti', 'RO', '320.01', 'RON', '19', '70.8', NULL, 'Card', 'MOL', 'da', NULL, NULL),
(590, 44, 'B-420-AGT', '2017-06-28', 'Pitesti', 'RO', '334.07', 'RON', '19', '73.91', '86', 'Card', 'MOL', 'da', NULL, NULL),
(591, 45, 'B-420-AGT', '2017-06-29', 'Pitesti', 'RO', '169.33', 'RON', '19', '37.46', NULL, 'Card', 'MOL', 'da', NULL, NULL),
(592, 46, 'B-520-AGT', '2017-06-29', 'Bucuresti', 'RO', '295.02', 'RON', '19', '64.7', '1', 'Card', 'MOL', 'da', NULL, NULL),
(593, 47, 'B-52-AGT', '2017-06-30', 'Fagaras', 'RO', '264.5', 'RON', '19', '57.75', '12', 'Card', 'MOL', 'da', NULL, NULL),
(594, 48, 'B-52-AGT', '2017-06-30', 'Pitesti', 'RO', '210.36', 'RON', '19', '46.54', NULL, 'Card', 'MOL', 'da', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autocmp`
--
ALTER TABLE `autocmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copyofviab`
--
ALTER TABLE `copyofviab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mol`
--
ALTER TABLE `mol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shell`
--
ALTER TABLE `shell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `viab`
--
ALTER TABLE `viab`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autocmp`
--
ALTER TABLE `autocmp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `copyofviab`
--
ALTER TABLE `copyofviab`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `mol`
--
ALTER TABLE `mol`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shell`
--
ALTER TABLE `shell`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `viab`
--
ALTER TABLE `viab`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
