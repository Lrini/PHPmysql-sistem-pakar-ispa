-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Agu 2017 pada 17.17
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pakarispa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisa_hasil`
--

CREATE TABLE IF NOT EXISTS `analisa_hasil` (
`id` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` enum('L','P') NOT NULL,
  `umur` int(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `noip` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `analisa_hasil`
--

INSERT INTO `analisa_hasil` (`id`, `nama`, `kelamin`, `umur`, `alamat`, `pekerjaan`, `kd_penyakit`, `noip`, `tanggal`) VALUES
(1, 'g', 'L', 12, 'dd', 'dd', 'P006', '::1', '2017-08-13 14:29:11'),
(2, 'ivan', 'L', 25, 'oeleta', 'staf IT', 'P007', '::1', '2017-08-13 15:00:57'),
(3, 'BB', 'L', 12, 'ghh', 'fggg', 'P001', '::1', '2017-08-13 15:19:06'),
(4, 'ha', 'L', 12, 'haha', 'haha', 'P006', '::1', '2017-08-13 15:37:31'),
(5, 'nn', 'P', 34, 'nnn', 'nn', 'P005', '::1', '2017-08-13 15:42:42'),
(6, 'nnh', 'L', 21, 'nn', 'nn', 'P003', '::1', '2017-08-13 15:45:06'),
(7, 'jj', 'L', 12, 'nnn', 'aa', 'P001', '::1', '2017-08-13 15:46:21'),
(8, 'fff', 'L', 21, 'nnn', 'ss', 'P004', '::1', '2017-08-13 15:46:42'),
(9, 'ttt', 'L', 42, 'jnngff', 'asd', 'P007', '::1', '2017-08-13 15:48:52'),
(10, 'NING', 'P', 13, 'HAHHA', 'KKSKS', 'P001', '::1', '2017-08-22 11:40:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE IF NOT EXISTS `gejala` (
  `kd_gejala` varchar(4) NOT NULL,
  `nm_gejala` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `nm_gejala`) VALUES
('G001', 'Hidung gatal'),
('G002', 'Pilek'),
('G003', 'Demam (>37,2 derajat C-39 derajat C)'),
('G004', 'Demam (>39 derajat C)'),
('G005', 'Bersin-bersin'),
('G006', 'Tenggorokan sakit'),
('G007', 'Suara serak'),
('G008', 'Batuk'),
('G009', 'Badan pegal'),
('G010', 'Bercak pada kulit'),
('G011', 'Telinga sakit'),
('G012', 'Nyeri telan'),
('G013', 'Sakit kepala'),
('G014', 'Telinga mengeluarkan cairan'),
('G015', 'Nyeri saat tulang-tulang pipi ditekan'),
('G016', 'Badan lemas/lesu'),
('G017', 'Pernapasan bunyi seperti mengorok'),
('G018', 'Sela iga tertarik ke dalam'),
('G019', 'Sesak napas'),
('G020', 'Sakit pada bagian dada'),
('G021', 'Seperti ada cairan pada suara saat bernapas'),
('G022', 'Malas menyusui (utk anak berumur 6 bulan-2 tahun)'),
('G023', 'Kesadaran menurun'),
('G024', 'Mual'),
('G025', 'Kepala rasa berat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakar`
--

CREATE TABLE IF NOT EXISTS `pakar` (
  `userID` varchar(30) NOT NULL,
  `passID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pakar`
--

INSERT INTO `pakar` (`userID`, `passID`) VALUES
('admin', '15b60f92e11ebfc6ac90b20f3943c59c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `kd_penyakit` varchar(4) NOT NULL,
  `nm_penyakit` varchar(60) NOT NULL,
  `keterangan` mediumtext NOT NULL,
  `solusi` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kd_penyakit`, `nm_penyakit`, `keterangan`, `solusi`) VALUES
('P001', 'Rhinitis', 'Rhintitis adalah suatu peradangan pada selaput lendir hidung/rongga hidung. Rhinitis disebabkan oleh virus, misalnya virus influenza. Penyakit ini juga dapat terjadi karena reaksi alergi terhadap perubahan cuaca, serbuk sari dan debu.', '1. Cari tahu penyebab alergi dan hindari\r\n2. Banyak minum air putih\r\n3. Rajin berolahraga\r\n4. Istirahat'),
('P002', 'Faringitis', 'Faringitis dikenal juga dengan radang tenggorokan (amandel). Faringitis adalah suatu peradangan pada tenggorokan yang bisa disebabkan oleh bakteri maupun virus, misalnya virus common cold, flu, adenovirus, mononukleosis atau HIV.', '1. Banyak minum air hangat\r\n2. Istirahat yang cukup\r\n3. Periksa ke dokter\r\n'),
('P003', 'Sinusitis', 'Sinusitis adalah peradangan saluran pada rongga tengkorak yang menghubungkan hidung dan rongga mata. Sinusitis merupakan suatu peradangan pada sinus yang terjadi karena alergi atau infeksi virus, bakteri maupun jamur. ', '1. Cari penyebab alergi, hindari\r\n2. Periksakan diri ke dokter kalau keluhan berlanjut\r\n'),
('P004', 'Bronkitis', 'Bronkitis adalah infeksi pada saluran pernapasan utama dari paru-paru atau bronkus yang menyebabkan terjadinya peradangan atau inflamasi pada saluran tersebut.', 'Segera periksakan diri ke dokter'),
('P005', 'Bronkiolitis', 'Bronkiolitis adalah infeksi saluran napas yang menyebabkan terjadinya radang dan penyumbatan di dalam bronkiolus atau saluran pernapasan kecil di dalam paru-paru.', 'Segera periksakan diri ke dokter'),
('P006', 'Pneumonia', 'Pneumonia atau dikenal juga dengan istilah paru-paru basah adalah infeksi yang memicu inflamasi pada kantong-kantong udara di salah satu atau kedua paru-paru. Pada pengidap pneumonia, sekumpulan kantong-kantong udara kecil di ujung saluran pernapasan dalam paru-paru akan membengkak dan dipenuhi cairan.', 'Segera ke Rumah Sakit/Pelayanan Kesehatan terdekat'),
('P007', 'Rhinofaringitis', 'Rhinofaringitis adalah suatu penyakit dimana terdapat gejala rhinitis maupun faringitis.', '1. Banyak minum air hangat\r\n2. Istirahat yang cukup\r\n3. Periksa ke dokter');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE IF NOT EXISTS `relasi` (
  `kd_gejala` varchar(4) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`kd_gejala`, `kd_penyakit`) VALUES
('G001', 'P001'),
('G002', 'P001'),
('G002', 'P003'),
('G002', 'P007'),
('G003', 'P001'),
('G003', 'P004'),
('G003', 'P005'),
('G003', 'P007'),
('G004', 'P006'),
('G005', 'P001'),
('G006', 'P002'),
('G006', 'P007'),
('G007', 'P002'),
('G008', 'P002'),
('G008', 'P004'),
('G008', 'P005'),
('G008', 'P006'),
('G008', 'P007'),
('G009', 'P002'),
('G010', 'P002'),
('G011', 'P002'),
('G011', 'P003'),
('G012', 'P002'),
('G012', 'P007'),
('G013', 'P003'),
('G014', 'P003'),
('G015', 'P003'),
('G016', 'P004'),
('G017', 'P004'),
('G018', 'P004'),
('G018', 'P006'),
('G019', 'P004'),
('G019', 'P005'),
('G019', 'P006'),
('G020', 'P004'),
('G020', 'P006'),
('G021', 'P004'),
('G021', 'P005'),
('G021', 'P006'),
('G022', 'P005'),
('G023', 'P005'),
('G023', 'P006');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
`id` int(11) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `rule` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rule`
--

INSERT INTO `rule` (`id`, `kd_gejala`, `kd_penyakit`, `rule`) VALUES
(3, 'G001', 'P001', 1),
(4, 'G002', 'P001', 1),
(5, 'G003', 'P001', 1),
(6, 'G005', 'P001', 1),
(7, 'G001', 'P001', 1),
(8, 'G002', 'P001', 1),
(9, 'G003', 'P001', 1),
(10, 'G001', 'P001', 1),
(11, 'G002', 'P001', 1),
(12, 'G001', 'P001', 1),
(13, 'G002', 'P001', 1),
(14, 'G005', 'P001', 1),
(15, 'G002', 'P001', 1),
(16, 'G003', 'P001', 1),
(17, 'G005', 'P001', 1),
(18, 'G002', 'P001', 1),
(19, 'G003', 'P001', 1),
(20, 'G002', 'P001', 1),
(21, 'G005', 'P001', 1),
(22, 'G003', 'P001', 1),
(23, 'G005', 'P001', 1),
(24, 'G003', 'P002', 2),
(25, 'G006', 'P002', 2),
(26, 'G007', 'P002', 2),
(27, 'G008', 'P002', 2),
(28, 'G009', 'P002', 2),
(29, 'G010', 'P002', 2),
(30, 'G012', 'P002', 2),
(31, 'G006', 'P002', 2),
(32, 'G007', 'P002', 2),
(33, 'G008', 'P002', 2),
(34, 'G012', 'P002', 2),
(35, 'G007', 'P002', 2),
(36, 'G008', 'P002', 2),
(37, 'G012', 'P002', 2),
(38, 'G008', 'P002', 2),
(39, 'G012', 'P002', 2),
(40, 'G008', 'P002', 2),
(41, 'G012', 'P002', 2),
(42, 'G006', 'P002', 2),
(43, 'G007', 'P002', 2),
(44, 'G002', 'P003', 3),
(45, 'G003', 'P003', 3),
(46, 'G011', 'P003', 3),
(47, 'G013', 'P003', 3),
(48, 'G014', 'P003', 3),
(49, 'G015', 'P003', 3),
(50, 'G002', 'P003', 3),
(51, 'G011', 'P003', 3),
(52, 'G013', 'P003', 3),
(53, 'G014', 'P003', 3),
(54, 'G015', 'P003', 3),
(55, 'G002', 'P003', 3),
(56, 'G003', 'P003', 3),
(57, 'G013', 'P003', 3),
(58, 'G014', 'P003', 3),
(59, 'G015', 'P003', 3),
(60, 'G002', 'P003', 3),
(61, 'G003', 'P003', 3),
(62, 'G014', 'P003', 3),
(63, 'G015', 'P003', 3),
(64, 'G002', 'P003', 3),
(65, 'G003', 'P003', 3),
(66, 'G011', 'P003', 3),
(67, 'G014', 'P003', 3),
(68, 'G015', 'P003', 3),
(69, 'G002', 'P003', 3),
(70, 'G003', 'P003', 3),
(71, 'G011', 'P003', 3),
(72, 'G013', 'P003', 3),
(73, 'G014', 'P003', 3),
(74, 'G002', 'P003', 3),
(75, 'G003', 'P003', 3),
(76, 'G011', 'P003', 3),
(77, 'G013', 'P003', 3),
(78, 'G015', 'P003', 3),
(79, 'G002', 'P003', 3),
(80, 'G013', 'P003', 3),
(81, 'G014', 'P003', 3),
(82, 'G015', 'P003', 3),
(83, 'G002', 'P003', 3),
(84, 'G014', 'P003', 3),
(85, 'G015', 'P003', 3),
(86, 'G002', 'P003', 3),
(87, 'G015', 'P003', 3),
(88, 'G014', 'P003', 3),
(89, 'G015', 'P003', 3),
(90, 'G002', 'P003', 3),
(91, 'G025', 'P003', 3),
(92, 'G003', 'P004', 4),
(93, 'G008', 'P004', 4),
(94, 'G013', 'P004', 4),
(95, 'G016', 'P004', 4),
(96, 'G017', 'P004', 4),
(97, 'G018', 'P004', 4),
(98, 'G019', 'P004', 4),
(99, 'G020', 'P004', 4),
(100, 'G003', 'P004', 4),
(101, 'G008', 'P004', 4),
(102, 'G013', 'P004', 4),
(103, 'G016', 'P004', 4),
(104, 'G017', 'P004', 4),
(105, 'G018', 'P004', 4),
(106, 'G019', 'P004', 4),
(107, 'G003', 'P004', 4),
(108, 'G008', 'P004', 4),
(109, 'G013', 'P004', 4),
(110, 'G016', 'P004', 4),
(111, 'G017', 'P004', 4),
(112, 'G018', 'P004', 4),
(144, 'G003', 'P004', 4),
(145, 'G008', 'P004', 4),
(146, 'G013', 'P004', 4),
(147, 'G016', 'P004', 4),
(148, 'G017', 'P004', 4),
(149, 'G003', 'P004', 4),
(150, 'G008', 'P004', 4),
(151, 'G013', 'P004', 4),
(152, 'G016', 'P004', 4),
(153, 'G008', 'P004', 4),
(154, 'G016', 'P004', 4),
(155, 'G017', 'P004', 4),
(156, 'G008', 'P004', 4),
(157, 'G016', 'P004', 4),
(158, 'G017', 'P004', 4),
(159, 'G018', 'P004', 4),
(160, 'G019', 'P004', 4),
(161, 'G020', 'P004', 4),
(162, 'G008', 'P004', 4),
(163, 'G016', 'P004', 4),
(164, 'G017', 'P004', 4),
(165, 'G018', 'P004', 4),
(166, 'G019', 'P004', 4),
(167, 'G008', 'P004', 4),
(168, 'G016', 'P004', 4),
(169, 'G017', 'P004', 4),
(170, 'G018', 'P004', 4),
(171, 'G008', 'P004', 4),
(172, 'G016', 'P004', 4),
(173, 'G017', 'P004', 4),
(174, 'G003', 'P005', 5),
(175, 'G008', 'P005', 5),
(176, 'G016', 'P005', 5),
(177, 'G018', 'P005', 5),
(178, 'G019', 'P005', 5),
(179, 'G021', 'P005', 5),
(180, 'G022', 'P005', 5),
(181, 'G003', 'P005', 5),
(182, 'G008', 'P005', 5),
(183, 'G016', 'P005', 5),
(184, 'G018', 'P005', 5),
(185, 'G019', 'P005', 5),
(186, 'G021', 'P005', 5),
(187, 'G003', 'P005', 5),
(188, 'G008', 'P005', 5),
(189, 'G016', 'P005', 5),
(190, 'G018', 'P005', 5),
(191, 'G019', 'P005', 5),
(192, 'G003', 'P005', 5),
(193, 'G008', 'P005', 5),
(194, 'G016', 'P005', 5),
(195, 'G018', 'P005', 5),
(196, 'G003', 'P005', 5),
(197, 'G008', 'P005', 5),
(198, 'G016', 'P005', 5),
(199, 'G003', 'P005', 5),
(200, 'G008', 'P005', 5),
(201, 'G004', 'P006', 6),
(202, 'G008', 'P006', 6),
(203, 'G016', 'P006', 6),
(204, 'G019', 'P006', 6),
(205, 'G023', 'P006', 6),
(206, 'G024', 'P006', 6),
(207, 'G025', 'P006', 6),
(208, 'G004', 'P006', 6),
(209, 'G008', 'P006', 6),
(210, 'G016', 'P006', 6),
(211, 'G019', 'P006', 6),
(212, 'G023', 'P006', 6),
(213, 'G024', 'P006', 6),
(214, 'G004', 'P006', 6),
(215, 'G008', 'P006', 6),
(216, 'G016', 'P006', 6),
(217, 'G019', 'P006', 6),
(218, 'G023', 'P006', 6),
(219, 'G004', 'P006', 6),
(220, 'G008', 'P006', 6),
(221, 'G016', 'P006', 6),
(222, 'G019', 'P006', 6),
(223, 'G004', 'P006', 6),
(224, 'G008', 'P006', 6),
(225, 'G019', 'P006', 6),
(226, 'G004', 'P006', 6),
(227, 'G019', 'P006', 6),
(228, 'G020', 'P006', 6),
(229, 'G023', 'P006', 6),
(230, 'G004', 'P006', 6),
(231, 'G019', 'P006', 6),
(232, 'G020', 'P006', 6),
(233, 'G004', 'P006', 6),
(234, 'G019', 'P006', 6),
(235, 'G023', 'P006', 6),
(236, 'G002', 'P007', 7),
(237, 'G003', 'P007', 7),
(238, 'G005', 'P007', 7),
(239, 'G006', 'P007', 7),
(240, 'G007', 'P007', 7),
(241, 'G008', 'P007', 7),
(242, 'G009', 'P007', 7),
(243, 'G010', 'P007', 7),
(244, 'G012', 'P007', 7),
(245, 'G013', 'P007', 7),
(246, 'G002', 'P007', 7),
(247, 'G003', 'P007', 7),
(248, 'G005', 'P007', 7),
(249, 'G006', 'P007', 7),
(250, 'G007', 'P007', 7),
(251, 'G008', 'P007', 7),
(252, 'G009', 'P007', 7),
(253, 'G010', 'P007', 7),
(254, 'G012', 'P007', 7),
(255, 'G002', 'P007', 7),
(256, 'G003', 'P007', 7),
(257, 'G005', 'P007', 7),
(258, 'G006', 'P007', 7),
(259, 'G007', 'P007', 7),
(260, 'G008', 'P007', 7),
(261, 'G009', 'P007', 7),
(262, 'G010', 'P007', 7),
(263, 'G002', 'P007', 7),
(264, 'G003', 'P007', 7),
(265, 'G005', 'P007', 7),
(266, 'G006', 'P007', 7),
(267, 'G007', 'P007', 7),
(268, 'G008', 'P007', 7),
(269, 'G009', 'P007', 7),
(270, 'G002', 'P007', 7),
(271, 'G003', 'P007', 7),
(272, 'G005', 'P007', 7),
(273, 'G006', 'P007', 7),
(274, 'G007', 'P007', 7),
(275, 'G008', 'P007', 7),
(276, 'G002', 'P007', 7),
(277, 'G003', 'P007', 7),
(278, 'G005', 'P007', 7),
(279, 'G006', 'P007', 7),
(280, 'G007', 'P007', 7),
(281, 'G002', 'P007', 7),
(282, 'G003', 'P007', 7),
(283, 'G005', 'P007', 7),
(284, 'G008', 'P007', 7),
(285, 'G003', 'P007', 7),
(286, 'G008', 'P007', 7),
(287, 'G012', 'P007', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_analisa`
--

CREATE TABLE IF NOT EXISTS `tmp_analisa` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_analisa`
--

INSERT INTO `tmp_analisa` (`noip`, `kd_penyakit`, `kd_gejala`) VALUES
('::1', 'P001', 'G001'),
('::1', 'P001', 'G002'),
('::1', 'P001', 'G003'),
('::1', 'P001', 'G005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_gejala`
--

CREATE TABLE IF NOT EXISTS `tmp_gejala` (
  `noip` varchar(20) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`noip`, `kd_gejala`) VALUES
('::1', 'G001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_pasien`
--

CREATE TABLE IF NOT EXISTS `tmp_pasien` (
`id` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` enum('L','P') NOT NULL,
  `umur` int(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `noip` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_pasien`
--

INSERT INTO `tmp_pasien` (`id`, `nama`, `kelamin`, `umur`, `alamat`, `pekerjaan`, `noip`, `tanggal`) VALUES
(97, 'NING', 'P', 13, 'HAHHA', 'KKSKS', '::1', '2017-08-22 11:40:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_penyakit`
--

CREATE TABLE IF NOT EXISTS `tmp_penyakit` (
  `noip` varchar(20) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_penyakit`
--

INSERT INTO `tmp_penyakit` (`noip`, `kd_penyakit`) VALUES
('::1', 'P001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
 ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `pakar`
--
ALTER TABLE `pakar`
 ADD PRIMARY KEY (`userID`,`passID`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
 ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indexes for table `relasi`
--
ALTER TABLE `relasi`
 ADD PRIMARY KEY (`kd_gejala`,`kd_penyakit`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
 ADD PRIMARY KEY (`id`), ADD KEY `kd_gejala` (`kd_gejala`), ADD KEY `kd_penyakit` (`kd_penyakit`);

--
-- Indexes for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rule`
--
ALTER TABLE `rule`
ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`kd_gejala`) REFERENCES `gejala` (`kd_gejala`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `rule_ibfk_2` FOREIGN KEY (`kd_penyakit`) REFERENCES `penyakit` (`kd_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
