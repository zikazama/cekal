-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2020 pada 17.33
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cekal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id_makanan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `berat` double NOT NULL,
  `kalori` double NOT NULL,
  `satuan` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`id_makanan`, `nama`, `name`, `berat`, `kalori`, `satuan`, `created_at`) VALUES
(1, 'Jagung Rebus', 'Boiled corn', 250, 90.2, 1, '2020-11-20 16:09:29'),
(2, 'Kentang Rebus', 'Boiled potato', 200, 166, 2, '2020-11-20 16:09:29'),
(3, 'Ketan Putih', 'White rice', 120, 217, 2.75, '2020-11-20 16:09:29'),
(4, 'Ketupat', 'The diamond', 160, 32, 0.5, '2020-11-20 16:09:29'),
(5, 'Lontong', 'Rice cake', 200, 38, 0.5, '2020-11-20 16:09:29'),
(6, 'Nasi Putih', 'White rice', 100, 175, 2.25, '2020-11-20 16:09:29'),
(7, 'Nasi Putih Kentucky', 'Kentucky White Rice', 225, 349, 4.25, '2020-11-20 16:09:29'),
(8, 'Roti Tawar Serat Tinggi', 'High Fiber Fresh Bread', 60, 149, 1.75, '2020-11-20 16:09:29'),
(9, 'Singkong Rebus', 'Boiled Cassava', 100, 146, 1.75, '2020-11-20 16:09:29'),
(10, 'Talas Rebus', 'Boiled Taro', 100, 98, 1.25, '2020-11-20 16:09:29'),
(11, 'Ubi Rebus', 'Boiled Sweet Potatoes', 100, 125, 1.5, '2020-11-20 16:09:29'),
(12, 'Bubur', 'Porridge', 200, 44, 0.5, '2020-11-20 16:09:29'),
(13, 'Crakers', 'Crackers', 50, 229, 2.75, '2020-11-20 16:09:29'),
(14, 'Makaroni', 'Macaroni', 25, 91, 1.25, '2020-11-20 16:09:29'),
(15, 'Mie Instant', 'Instant noodle', 50, 168, 2, '2020-11-20 16:09:29'),
(16, 'Nasi Tim', 'Tim Rice', 100, 88, 1, '2020-11-20 16:09:29'),
(17, 'Nasi Uduk', 'Uduk rice', 200, 506, 6.25, '2020-11-20 16:09:29'),
(18, 'Roti Tawar', 'White bread', 50, 128, 1.5, '2020-11-20 16:09:29'),
(19, 'Bihun Goreng', 'Fried vermicelli', 150, 296, 3.75, '2020-11-20 16:09:29'),
(20, 'Bubur Ayam', 'Chicken porridge', 200, 165, 2, '2020-11-20 16:09:29'),
(21, 'Bubur Sum-Sum', 'Porridge Sum-Sum', 100, 178, 2.25, '2020-11-20 16:09:29'),
(22, 'Kentang Goreng', 'French fries', 150, 211, 2.75, '2020-11-20 16:09:29'),
(23, 'Mie Goreng', 'Fried noodles', 200, 321, 4, '2020-11-20 16:09:29'),
(24, 'Nasi Goreng', 'Fried rice', 100, 267, 3.25, '2020-11-20 16:09:29'),
(25, 'Soun Goreng', 'Fried Soun', 100, 263, 3.25, '2020-11-20 16:09:29'),
(26, 'Spaghetti', 'Spaghetti', 300, 642, 8, '2020-11-20 16:09:29'),
(27, 'Tape singkong', 'Tape cassava', 150, 260, 3.25, '2020-11-20 16:09:29'),
(28, 'Arsik', 'Arsik', 95, 94.05, 1, '2020-11-20 16:09:29'),
(29, 'Ayam Bakar Bumbu Kuning', 'Yellow Seasoned Grilled Chicken', 100, 129.4, 1.5, '2020-11-20 16:09:29'),
(30, 'Ayam Panggang', 'Grilled chicken', 100, 164.3, 3.25, '2020-11-20 16:09:29'),
(31, 'Daging Panggang', 'Roasts', 70, 150, 1.75, '2020-11-20 16:09:29'),
(32, 'Ikan Mas Pepes', 'Pepes Goldfish', 200, 143.5, 1.75, '2020-11-20 16:09:29'),
(33, 'Sambal Goreng Tempe', 'Tempe Fried Sambal', 50, 116, 1.5, '2020-11-20 16:09:29'),
(34, 'Telur Asin Rebus', 'Salted Boiled Egg', 75, 138, 1.75, '2020-11-20 16:09:29'),
(35, 'Telur Ayam Rebus', 'Boiled Chicken Eggs', 60, 97, 1.25, '2020-11-20 16:09:29'),
(36, 'Udang Rebus', 'Boiled Shrimp', 100, 91, 1.25, '2020-11-20 16:09:29'),
(37, 'Ati Ayam Goreng', 'Ati Fried Chicken', 50, 98, 1.25, '2020-11-20 16:09:29'),
(38, 'Ayam Pop', 'Chicken Pop', 200, 265, 3.25, '2020-11-20 16:09:29'),
(39, 'Bakso Daging Sapi', 'Beef Meatballs', 100, 260, 3.25, '2020-11-20 16:09:29'),
(40, 'Empal Daging', 'Empal Meat', 100, 147, 1.75, '2020-11-20 16:09:29'),
(41, 'Ikan Bandeng Goreng', 'Fried Milkfish', 160, 180.7, 2.25, '2020-11-20 16:09:29'),
(42, 'Ikan Baronang Goreng', 'Fried Baronang Fish', 120, 107.5, 1.25, '2020-11-20 16:09:29'),
(43, 'Ikan Bawal Goreng', 'Fried Pomfret', 120, 113.3, 1.5, '2020-11-20 16:09:29'),
(44, 'Ikan Ekor Goreng', 'Fried Tail Fish', 100, 107.8, 1.25, '2020-11-20 16:09:29'),
(45, 'Ikan Kembung Goreng', 'Fried Mackerel', 80, 87.65, 1, '2020-11-20 16:09:29'),
(46, 'Ikan Lele Goreng', 'Fried Catfish', 60, 57.5, 0.75, '2020-11-20 16:09:29'),
(47, 'Ikan Patin Goreng', 'Fried Patin Fish', 200, 252.7, 3, '2020-11-20 16:09:29'),
(48, 'Ikan Selar Goreng', 'Fried Selar Fish', 40, 63.75, 0.75, '2020-11-20 16:09:29'),
(49, 'Ikan Tenggiri Goreng', 'Fried Mackerel Fish', 60, 85.3, 1, '2020-11-20 16:09:29'),
(50, 'Ikan Teri Goreng', 'Fried Anchovies', 50, 66, 0.75, '2020-11-20 16:09:29'),
(51, 'Ikan Tuna Goreng', 'Fried Tuna', 60, 110, 1.25, '2020-11-20 16:09:29'),
(52, 'Kerang Rebus', 'Boiled Mussels', 100, 59, 0.75, '2020-11-20 16:09:29'),
(53, 'Macaroni Schootel', 'Macaroni Schootel', 50, 177, 2.25, '2020-11-20 16:09:29'),
(54, 'Tahu Bacem', 'Know Bacem', 100, 147, 1.75, '2020-11-20 16:09:29'),
(55, 'Telur Mata Sapi', 'Sunny side up', 60, 40, 1.75, '2020-11-20 16:09:29'),
(56, 'Tempe Bacem', 'Tempe Bacem', 50, 157, 2, '2020-11-20 16:09:29'),
(57, 'Tempe Goreng', 'Fried tempe', 50, 118, 1.5, '2020-11-20 16:09:29'),
(58, 'Tenggiri Bumbu Kuning', 'Yellow Seasoned Mackerel', 90, 94.4, 1, '2020-11-20 16:09:29'),
(59, 'Udang Goreng Besar', 'Large Fried Shrimp', 80, 68.25, 3.25, '2020-11-20 16:09:29'),
(60, 'Abon Sapi', 'Beef floss', 50, 158, 2, '2020-11-20 16:09:29'),
(61, 'Ayam Goreng Kecap', 'Soy Sauce Fried Chicken', 75, 358.8, 4.5, '2020-11-20 16:09:29'),
(62, 'Ayam Panggang', 'Grilled chicken', 80, 385.6, 4.75, '2020-11-20 16:09:29'),
(63, 'Chiken Wing / Sayap Ayam', 'Chiken Wing / Chicken Wings', 50, 63.6, 0.75, '2020-11-20 16:09:29'),
(64, 'Daging Balado', 'Balado meat', 50, 147, 1.75, '2020-11-20 16:09:29'),
(65, 'Dendeng Balado', 'Balado jerky', 40, 338, 4.25, '2020-11-20 16:09:29'),
(66, 'Gulai Ayam', 'Chicken Curry', 100, 165.3, 2, '2020-11-20 16:09:29'),
(67, 'Gulai Cumi', 'Squid curry', 100, 183, 2.25, '2020-11-20 16:09:29'),
(68, 'Gulai Kepala Ikan Kakap', 'Snapper Fish Head Curry', 320, 218.8, 2.75, '2020-11-20 16:09:29'),
(69, 'Gulai Limpa', 'Spleen Curry', 60, 294, 3.5, '2020-11-20 16:09:29'),
(70, 'Gulai Tunjang', 'Gulai Tukung', 80, 251, 3, '2020-11-20 16:09:29'),
(71, 'Ikan Kembung Balado', 'Balado mackerel', 125, 236.7, 3, '2020-11-20 16:09:29'),
(72, 'Ikan Teri', 'Anchovy', 50, 213, 2.75, '2020-11-20 16:09:29'),
(73, 'Kakap Goreng Tepung', 'Flour Fried Snapper', 80, 119, 1.5, '2020-11-20 16:09:29'),
(74, 'Kakap Panir', 'Panir Snapper', 75, 220, 2.75, '2020-11-20 16:09:29'),
(75, 'Keripik Tempe', 'Tempe Chips', 25, 68, 0.75, '2020-11-20 16:09:29'),
(76, 'Meat Ball / Daging Cincang Bulat', 'Meat Ball / Round Minced Meat', 50, 168, 2, '2020-11-20 16:09:29'),
(77, 'Ayam Kentucky Paha Atas', 'Upper Thigh Kentucky Chicken', 150, 194.5, 2.5, '2020-11-20 16:09:29'),
(78, 'Perkedel Jagung', 'Corn Cakes', 50, 108, 1.25, '2020-11-20 16:09:29'),
(79, 'Perkedel Kentang', 'Potato Cake', 50, 123, 1.5, '2020-11-20 16:09:29'),
(80, 'Pu Yung Hai', 'Pu Yung Hai', 50, 114, 1.5, '2020-11-20 16:09:29'),
(81, 'Rendang Daging', 'Meat Rendang', 75, 285.5, 3.5, '2020-11-20 16:09:29'),
(82, 'Sate Ayam', 'Chicken satay', 100, 466, 6, '2020-11-20 16:09:29'),
(83, 'Ayam Kentucky Sayap', 'Kentucky Chicken Wings', 150, 116, 1.5, '2020-11-20 16:09:29'),
(84, 'Semur Ayam', 'Chicken stew', 50, 177.8, 2.25, '2020-11-20 16:09:29'),
(85, 'Sambal Goreng Ati + Kentang', 'Sambal Goreng Ati + Potatoes', 100, 127, 1.5, '2020-11-20 16:09:29'),
(86, 'Sambal Goreng Tempe Teri', 'Teri Tempe Fried Sambal', 150, 276, 3.5, '2020-11-20 16:09:29'),
(87, 'Sambal Goreng Ati Sapi', 'Beef Ati Fried Sambal', 100, 200, 2.5, '2020-11-20 16:09:29'),
(88, 'Sambal Goreng Udang + Kentang', 'Shrimp Fried Sambal + Potatoes', 100, 123, 1.5, '2020-11-20 16:09:29'),
(89, 'Sop Sapi', 'Beef Soup', 260, 227, 2.75, '2020-11-20 16:09:29'),
(90, 'Tahu Goreng', 'Fried tofu', 100, 111, 1.5, '2020-11-20 16:09:29'),
(91, 'Tahu Isi', 'Know the Contents', 150, 124, 1.5, '2020-11-20 16:09:29'),
(92, 'Tahu Sumedang', 'Know Sumedang', 100, 113, 1.5, '2020-11-20 16:09:29'),
(93, 'Telur dadar', 'Omelet', 75, 188, 2.25, '2020-11-20 16:09:29'),
(94, 'Acar Kuning', 'Yellow Pickles', 75, 53, 0.5, '2020-11-20 16:09:29'),
(95, 'Bening Bayam', 'Clear Spinach', 50, 18, 0.25, '2020-11-20 16:09:29'),
(96, 'Cah Labu Siam', 'Cah Chayote', 100, 41.6, 0.5, '2020-11-20 16:09:29'),
(97, 'Sayur Asam', 'Sour Vegetable', 100, 88, 1, '2020-11-20 16:09:29'),
(98, 'Sop Ayam Kombinasi', 'Combination Chicken Soup', 100, 95, 1.25, '2020-11-20 16:09:29'),
(99, 'Sop Bayam', 'Spinach Soup', 50, 78, 1, '2020-11-20 16:09:29'),
(100, 'Sop Kimlo', 'Kimlo soup', 100, 104, 1.25, '2020-11-20 16:09:29'),
(101, 'Sop Mutiara Jagung', 'Pearl Corn Soup', 100, 113, 1.5, '2020-11-20 16:09:29'),
(102, 'Asop Oyong Misoa', 'Asop Oyong Misoa', 100, 106, 1.25, '2020-11-20 16:09:29'),
(103, 'Sop Telur Putuh', 'Whole Egg Soup', 100, 116, 1.5, '2020-11-20 16:09:29'),
(104, 'Sayur Lodeh', 'Vegetable Lodeh', 100, 61, 0.75, '2020-11-20 16:09:29'),
(105, 'Cah Jagung Putren', 'Cah Corn Putren', 100, 59, 0.75, '2020-11-20 16:09:29'),
(106, 'Cah kacang Panjang', 'Long bean chew', 100, 72, 1, '2020-11-20 16:09:29'),
(107, 'Sop Oyong Telur Puyuh', 'Quail Egg Oyong Soup', 100, 134, 1.75, '2020-11-20 16:09:29'),
(108, 'Setup Kentang Buncis', 'Beans Potato Setup', 100, 95, 1, '2020-11-20 16:09:29'),
(109, 'Tumis Buncis', 'Sauteed Beans', 100, 52, 1.5, '2020-11-20 16:09:29'),
(110, 'Tumis Daun Singkong', 'Saute Cassava Leaves', 120, 151, 1.75, '2020-11-20 16:09:29'),
(111, 'Tumis Kc. Panjang + Jagung', 'Stir-fry Kc. Long + Corn', 125, 118, 1.75, '2020-11-20 16:09:29'),
(112, 'Buntil', 'Knapsack', 100, 106, 1.25, '2020-11-20 16:09:29'),
(113, 'Gudeg', 'Gudeg', 150, 132, 1.75, '2020-11-20 16:09:29'),
(114, 'Teh (Cangkir)', 'Tea (Cup)', 1, 0.4, 2.8, '2020-11-20 16:09:29'),
(115, 'Kopi (Cangkir)', 'Coffee (Cup)', 1, 18, 0.25, '2020-11-20 16:09:29'),
(116, 'Juice Tomat (Gelas)', 'Tomato Juice (Glass)', 100, 20, 0.25, '2020-11-20 16:09:29'),
(117, 'Juice Melon (Gelas)', 'Juice Melon (Glass)', 150, 35, 0.5, '2020-11-20 16:09:29'),
(118, 'Es Kelapa Muda (Gelas)', 'Young Coconut Ice (Glass)', 100, 42, 0.5, '2020-11-20 16:09:29'),
(119, 'Es Cendol', 'Cendol ice', 100, 168, 2, '2020-11-20 16:09:29'),
(120, 'Susu Skim', 'Skim Milk', 15, 54, 0.75, '2020-11-20 16:09:29'),
(121, 'Coca Cola Diet (Kaleng)', 'Coca Cola Diet (Canned)', 1, 1, 0, '2020-11-20 16:09:29'),
(122, 'Asinan', 'Asinan', 250, 208, 2.5, '2020-11-20 16:09:29'),
(123, 'Toge Goreng', 'Toge Fried', 250, 243, 3, '2020-11-20 16:09:29'),
(124, 'Gado - Gado', 'Mixed vegetables with the peanut sauce', 150, 295, 3.75, '2020-11-20 16:09:29'),
(125, 'Ketoprak', 'Ketoprak', 250, 153, 2, '2020-11-20 16:09:29'),
(126, 'Pempek', 'Pempek', 200, 384, 4.75, '2020-11-20 16:09:29'),
(127, 'Rawon', 'Rawon', 160, 331, 4, '2020-11-20 16:09:29'),
(128, 'Soto Ayam', 'Chicken Soto', 100, 101, 1.25, '2020-11-20 16:09:29'),
(129, 'Soto Padang', 'Soto Padang', 100, 127, 1.5, '2020-11-20 16:09:29'),
(130, 'Tongseng', 'Tongseng', 120, 331, 4, '2020-11-20 16:09:29'),
(131, 'Hamburger', 'Hamburger', 125, 257, 3.25, '2020-11-20 16:09:29'),
(132, 'Kerupuk Palembang', 'Palembang crackers', 50, 168, 2, '2020-11-20 16:09:29'),
(133, 'Kerupuk Udang', 'Prawn crackers', 20, 72, 1, '2020-11-20 16:09:29'),
(134, 'Mie Bakso', 'Meatball noodles', 200, 302, 3.75, '2020-11-20 16:09:29'),
(135, 'Nasi Tim Ayam', 'Chicken Team Rice', 420, 588, 7.25, '2020-11-20 16:09:29'),
(136, 'Pizza', 'Pizza', 125, 163, 2, '2020-11-20 16:09:29'),
(137, 'Sate Kambing', 'Goat satay', 180, 729, 9, '2020-11-20 16:09:29'),
(138, 'Sayur Krecek', 'Vegetable Krecek', 175, 249, 3, '2020-11-20 16:09:29'),
(139, 'Siomay', 'Siomay', 100, 361, 3.75, '2020-11-20 16:09:29'),
(140, 'Soto Betawi', 'soto Betawi', 150, 135, 1.75, '2020-11-20 16:09:29'),
(141, 'Soto Makasar', 'Soto Makasar', 150, 525, 6.5, '2020-11-20 16:09:29'),
(142, 'Soto Sulung', 'Eldest Soto', 150, 86, 1, '2020-11-20 16:09:29'),
(143, 'Apel', 'Apple', 160, 92, 1, '2020-11-20 16:09:29'),
(144, 'Apel Merah', 'Red Apple', 140, 82, 1, '2020-11-20 16:09:29'),
(145, 'Belimbing', 'Star fruit', 160, 80, 0.75, '2020-11-20 16:09:29'),
(146, 'Duku', 'Duku', 200, 81, 1, '2020-11-20 16:09:29'),
(147, 'Jambu Air', 'Water apple', 60, 35.4, 0.5, '2020-11-20 16:09:29'),
(148, 'Jambu Biji', 'Guava', 320, 157, 2, '2020-11-20 16:09:29'),
(149, 'Jeruk Medan', 'Medan orange', 140, 46, 0.5, '2020-11-20 16:09:29'),
(150, 'Jeruk Pontianak', 'Pontianak orange', 150, 67, 0.75, '2020-11-20 16:09:29'),
(151, 'Jeruk Sunkist', 'Sunkist oranges', 200, 40, 0.5, '2020-11-20 16:09:29'),
(152, 'Mangga Manalagi', 'Mango Manalagi', 100, 72, 1, '2020-11-20 16:09:29'),
(153, 'Nanas', 'Pineapple', 200, 104, 1.25, '2020-11-20 16:09:29'),
(154, 'Pepaya', 'Papaya', 100, 46, 0.5, '2020-11-20 16:09:29'),
(155, 'Pir', 'Pear', 200, 80, 1, '2020-11-20 16:09:29'),
(156, 'Pisang Rebus', 'Boiled banana', 125, 136.5, 1.75, '2020-11-20 16:09:29'),
(157, 'Salak', 'Salak', 150, 63.6, 0.75, '2020-11-20 16:09:29'),
(158, 'Semangka', 'Watermelon', 150, 48, 0.5, '2020-11-20 16:09:29'),
(159, 'Alpukat', 'Avocado', 100, 85, 1, '2020-11-20 16:09:29'),
(160, 'Anggur', 'Grape', 125, 60, 0.75, '2020-11-20 16:09:29'),
(161, 'Lengkeng', 'Longan', 100, 79, 1, '2020-11-20 16:09:29'),
(162, 'Melon', 'Melon', 120, 46, 0.5, '2020-11-20 16:09:29'),
(163, 'Mangga Harum Manis', 'Sweet Harum Mango', 300, 90, 1, '2020-11-20 16:09:29'),
(164, 'Pir Hijau', 'Green Pear', 200, 105, 1.25, '2020-11-20 16:09:29'),
(165, 'Pisang Ambon', 'Banana of Ambon', 100, 74.2, 1, '2020-11-20 16:09:29'),
(166, 'Pisang Barangan', 'Banana Barangan', 200, 236, 3, '2020-11-20 16:09:29'),
(167, 'Pisang Mas', 'Banana Mas', 125, 11, 1.5, '2020-11-20 16:09:29'),
(168, 'Pisang Raja', 'Plantain', 150, 126, 1.5, '2020-11-20 16:09:29'),
(169, 'Sirsak', 'Soursop', 125, 55, 0.25, '2020-11-20 16:09:29'),
(170, 'Durian Montong', 'Durian Montong', 100, 134, 1.5, '2020-11-20 16:09:29'),
(171, 'Rambutan', 'Rambutan', 100, 69, 0.75, '2020-11-20 16:09:29'),
(172, 'sawo', 'sapodilla', 100, 92, 1.75, '2020-11-20 16:09:29'),
(173, 'Arem - Arem', 'Arem - Arem', 75, 225, 2.75, '2020-11-20 16:09:29'),
(174, 'Bubur Kacang Ijo', 'Green Bean Porridge', 100, 102, 1.25, '2020-11-20 16:09:29'),
(175, 'Ketupat Ketan', 'Ketupat Sticky Rice', 120, 216, 2.75, '2020-11-20 16:09:29'),
(176, 'Lemper', 'Lemper', 70, 247, 3, '2020-11-20 16:09:29'),
(177, 'Lepet', 'Lepet', 120, 210, 2.5, '2020-11-20 16:09:29'),
(178, 'Lepet Ketan', 'Lepet sticky rice', 170, 346, 4.25, '2020-11-20 16:09:29'),
(179, 'Bolu Gulung', 'Roll cake', 110, 300, 3.75, '2020-11-20 16:09:29'),
(180, 'Cakwee', 'Cakwee', 50, 143, 1.75, '2020-11-20 16:09:29'),
(181, 'Getuk Lindri', 'Getuk Lindri', 60, 127, 1.75, '2020-11-20 16:09:29'),
(182, 'Hot Dog', 'Hot dog', 100, 285, 3.5, '2020-11-20 16:09:29'),
(183, 'Kerak Telur', 'Egg Crust', 120, 599, 7.5, '2020-11-20 16:09:29'),
(184, 'Kue Nagasari', 'Nagasari Cake', 70, 149, 1.75, '2020-11-20 16:09:29'),
(185, 'Kue Pancong', 'Pancong Cake', 80, 231, 3, '2020-11-20 16:09:29'),
(186, 'Mini Croissant', 'Mini Croissants', 80, 406, 5, '2020-11-20 16:09:29'),
(187, 'Sandwich', 'Sandwich', 100, 164, 2, '2020-11-20 16:09:29'),
(188, 'Serabi Pandan', 'Serabi Pandan', 60, 137, 1.75, '2020-11-20 16:09:29'),
(189, 'Semar Mendem', 'Semar Mendem', 100, 247, 3, '2020-11-20 16:09:29'),
(190, 'Uli + Tape Ketan', 'Uli + Sticky Tape', 160, 559, 7, '2020-11-20 16:09:29'),
(191, 'Bakpia', 'Bakpia', 25, 68, 1, '2020-11-20 16:09:29'),
(192, 'Bakwan', 'Bakwan', 100, 270, 3.25, '2020-11-20 16:09:29'),
(193, 'Bika Ambon', 'Bika Ambon', 50, 99, 1.25, '2020-11-20 16:09:29'),
(194, 'Black Forrest', 'Black Forrest', 200, 585, 7.5, '2020-11-20 16:09:29'),
(195, 'Cara Bikang', 'The Bikang Way', 70, 128, 1.5, '2020-11-20 16:09:29'),
(196, 'Cheese Cake', 'Cheese Cake', 10, 281, 3.5, '2020-11-20 16:09:29'),
(197, 'Dunkin Donat Keju', 'Dunkin Cheese Donuts', 170, 283, 3.5, '2020-11-20 16:09:29'),
(198, 'Emping Melinjo Asin', 'Melinjo Asin Chips', 25, 173, 2.25, '2020-11-20 16:09:29'),
(199, 'Kastengels (10 bh)', 'Kastengels (10 pcs)', 100, 426, 5.75, '2020-11-20 16:09:29'),
(200, 'Keju Lembaran (1bh)', 'Cheese Sheet (1bh)', 20, 65, 3.25, '2020-11-20 16:09:29'),
(201, 'Kerupuk Mie', 'Noodle crackers', 25, 119, 1.5, '2020-11-20 16:09:29'),
(202, 'Klepon', 'Klepon', 60, 68, 0.75, '2020-11-20 16:09:29'),
(203, 'Kroket Kentang', 'Potato Croquettes', 75, 146, 1.25, '2020-11-20 16:09:29'),
(204, 'Kue Ape', 'Ape Cake', 60, 151, 2, '2020-11-20 16:09:29'),
(205, 'Kue Cubit', 'Pinch Cake', 60, 183, 2.25, '2020-11-20 16:09:29'),
(206, 'Kue Cucur', 'Cucur Cake', 90, 152, 2, '2020-11-20 16:09:29'),
(207, 'Kue Ku', 'My Cake', 50, 237, 3, '2020-11-20 16:09:29'),
(208, 'Kue Lumpur', 'Mud cake', 80, 232, 3, '2020-11-20 16:09:29'),
(209, 'Kue Pukis', 'Pukis cake', 40, 181, 2.25, '2020-11-20 16:09:29'),
(210, 'Lapis Legit', 'Lapis Legit', 50, 307, 3.75, '2020-11-20 16:09:29'),
(211, 'Lemet/Timus', 'Lemet / Thymus', 120, 603, 7.5, '2020-11-20 16:09:29'),
(212, 'Lopis Ketan', 'Lopis sticky rice', 125, 350, 4.25, '2020-11-20 16:09:29'),
(213, 'Lumpia', 'Spring rolls', 60, 76, 1, '2020-11-20 16:09:29'),
(214, 'Martabak Keju', 'Cheese Martabak', 100, 265, 3.25, '2020-11-20 16:09:29'),
(215, 'Martabak Mesir', 'Egyptian Martabak', 100, 200, 2.5, '2020-11-20 16:09:29'),
(216, 'Martabak Telur', 'Egg Martabak', 95, 196, 2.5, '2020-11-20 16:09:29'),
(217, 'Muffin Coklat', 'Chocolate Muffins', 80, 361, 4.5, '2020-11-20 16:09:29'),
(218, 'Muffin Keju', 'Cheese Muffins', 80, 400, 5, '2020-11-20 16:09:29'),
(219, 'Nastar (7bh)', 'Nastar (7bh)', 150, 538, 6.75, '2020-11-20 16:09:29'),
(220, 'Onde - Onde', 'Boiled rice cake', 65, 317, 4, '2020-11-20 16:09:29'),
(221, 'Pastel', 'Pastel', 75, 302, 3.75, '2020-11-20 16:09:29'),
(222, 'Potato Chip', 'Potato Chips', 170, 298, 3.75, '2020-11-20 16:09:29'),
(223, 'Putu Mayang', 'Putu Mayang', 120, 98, 1.25, '2020-11-20 16:09:29'),
(224, 'Rempeyek Kacang', 'Peanut brittle', 50, 250, 3, '2020-11-20 16:09:29'),
(225, 'Risol', 'Risol', 100, 247, 3, '2020-11-20 16:09:29'),
(226, 'Roti Coklat', 'Chocolate bread', 100, 240, 3, '2020-11-20 16:09:29'),
(227, 'Sosis Solo', 'Solo sausage', 50, 191, 2.25, '2020-11-20 16:09:29'),
(228, 'Sus Vla', 'Sus Vla', 85, 129, 1.5, '2020-11-20 16:09:29'),
(229, 'Talam Hijau', 'Green tray', 70, 292, 3.5, '2020-11-20 16:09:29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
