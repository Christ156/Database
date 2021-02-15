-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 01:49 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jelajahbanyumas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`foto`)),
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `telepon`, `password`, `foto`, `create_at`, `update_at`) VALUES
(1, 'christvaldo kurnia putra', 'christvaldo46@gmail.com', '083844136761', 'valdo123', NULL, '2021-01-29 14:14:46', '2021-01-29 14:14:46'),
(2, 'eko susilo', 'susilo10@gmail.com', '085601771828', 'susilo123', NULL, '2021-01-29 14:19:01', '2021-01-29 14:19:01'),
(3, 'haidar jundi', 'haidar02@gmail.com', '081391655363', 'haidar123', NULL, '2021-01-29 14:20:30', '2021-01-29 14:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `desa_ajibarang`
--

CREATE TABLE `desa_ajibarang` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_ajibarang`
--

INSERT INTO `desa_ajibarang` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Ajibarang Kulon'),
(0, 2, 'Ajibarang Wetan'),
(0, 3, 'Banjarsari'),
(0, 4, 'Ciberung'),
(0, 5, 'Darmakradenan'),
(0, 6, 'Jingkang'),
(0, 7, 'Kalibenda'),
(0, 8, 'Karangbawang'),
(0, 9, 'Kracak'),
(0, 10, 'Lesmana'),
(0, 11, 'Pancasan'),
(0, 12, 'Pancurendang'),
(0, 13, 'Pandansari'),
(0, 14, 'Sawangan'),
(0, 15, 'Tipar Kidul');

-- --------------------------------------------------------

--
-- Table structure for table `desa_banyumas`
--

CREATE TABLE `desa_banyumas` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_banyumas`
--

INSERT INTO `desa_banyumas` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Binangun'),
(0, 2, 'Danaraja'),
(0, 3, 'Dawuhan'),
(0, 4, 'Kalisube'),
(0, 5, 'Karangrau'),
(0, 6, 'Kedunggede'),
(0, 7, 'Kedunguter'),
(0, 8, 'kejawar'),
(0, 9, 'Papringan'),
(0, 10, 'Pasinggangan'),
(0, 11, 'Pekunden'),
(0, 12, 'Sudagaran');

-- --------------------------------------------------------

--
-- Table structure for table `desa_baturraden`
--

CREATE TABLE `desa_baturraden` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_baturraden`
--

INSERT INTO `desa_baturraden` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Karangmangu'),
(0, 2, 'Karangsalam'),
(0, 3, 'Karangtengah'),
(0, 4, 'Kebumen'),
(0, 5, 'Kemutug Kidul'),
(0, 6, 'Kemutug Lor'),
(0, 7, 'Ketenger'),
(0, 8, 'Kutasari'),
(0, 9, 'Pamijen'),
(0, 10, 'Pandak'),
(0, 11, 'Purwosari'),
(0, 12, 'Rempoah');

-- --------------------------------------------------------

--
-- Table structure for table `desa_cilongok`
--

CREATE TABLE `desa_cilongok` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_cilongok`
--

INSERT INTO `desa_cilongok` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Batuanten'),
(0, 2, 'Cikidang'),
(0, 3, 'Cilongok'),
(0, 4, 'Cipete'),
(0, 5, 'Gununglurah'),
(0, 6, 'Jatisaba'),
(0, 7, 'Kalisari'),
(0, 8, 'Karanglo'),
(0, 9, 'Karangtengah'),
(0, 10, 'Kasegeran'),
(0, 11, 'Langgongsari'),
(0, 12, 'Pageraji'),
(0, 13, 'Panembangan'),
(0, 14, 'Panusupan'),
(0, 15, 'Pejogol'),
(0, 16, 'Pernasidi'),
(0, 17, 'Rancamaya'),
(0, 18, 'Sambirata'),
(0, 19, 'Sokawera'),
(0, 20, 'Sudimara');

-- --------------------------------------------------------

--
-- Table structure for table `desa_gumelar`
--

CREATE TABLE `desa_gumelar` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_gumelar`
--

INSERT INTO `desa_gumelar` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Cihonje'),
(0, 2, 'Cilangkap'),
(0, 3, 'Gancang'),
(0, 4, 'Gumelar'),
(0, 5, 'Karangkemojing'),
(0, 6, 'Kedungurang'),
(0, 7, 'Paningkaban'),
(0, 8, 'Samudra'),
(0, 9, 'Samudra Kulon'),
(0, 10, 'Tiaga');

-- --------------------------------------------------------

--
-- Table structure for table `desa_jatilawang`
--

CREATE TABLE `desa_jatilawang` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_jatilawang`
--

INSERT INTO `desa_jatilawang` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Adisari'),
(0, 2, 'Bantar'),
(0, 3, 'Gentawangi'),
(0, 4, 'Gunung Wetan'),
(0, 5, 'Karanganyar'),
(0, 6, 'Karanglewas'),
(0, 7, 'Kedungwringin'),
(0, 8, 'Margasana'),
(0, 9, 'Pekuncen'),
(0, 10, 'Tinggarjaya'),
(0, 11, 'Tunjung');

-- --------------------------------------------------------

--
-- Table structure for table `desa_kalibagor`
--

CREATE TABLE `desa_kalibagor` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_kalibagor`
--

INSERT INTO `desa_kalibagor` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Kalibagor'),
(0, 2, 'Kalicupak Kidul'),
(0, 3, 'Kalicupak Lor'),
(0, 4, 'Kaliori'),
(0, 5, 'Kalisogra Wetan'),
(0, 6, 'Karangdadap'),
(0, 7, 'Pajerukan'),
(0, 8, 'Pekaja'),
(0, 9, 'Petir'),
(0, 10, 'Srowot'),
(0, 11, 'Suro'),
(0, 12, 'Wlahar Wetan');

-- --------------------------------------------------------

--
-- Table structure for table `desa_karanglewas`
--

CREATE TABLE `desa_karanglewas` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_karanglewas`
--

INSERT INTO `desa_karanglewas` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Babakan'),
(0, 2, 'Jipang'),
(0, 3, 'Karanggude Kulon'),
(0, 4, 'Karangkemiri'),
(0, 5, 'Karanglewas Kidul'),
(0, 6, 'Kediri'),
(0, 7, 'Pangebatan'),
(0, 8, 'Pasir Kulon'),
(0, 9, 'Pasir Lor'),
(0, 10, 'Pasir Wetan'),
(0, 11, 'Singasari'),
(0, 12, 'Sunyalangu'),
(0, 13, 'Tamansari');

-- --------------------------------------------------------

--
-- Table structure for table `desa_kebasen`
--

CREATE TABLE `desa_kebasen` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_kebasen`
--

INSERT INTO `desa_kebasen` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Adisana'),
(0, 2, 'Bangsa'),
(0, 3, 'Cindaga'),
(0, 4, 'Gambarsari'),
(0, 5, 'Kalisalak'),
(0, 6, 'Kaliwedi'),
(0, 7, 'Karangsari'),
(0, 8, 'Kebasen'),
(0, 9, 'Mandirancan'),
(0, 10, 'Randegan'),
(0, 11, 'Sawangan'),
(0, 12, 'Tumiyang');

-- --------------------------------------------------------

--
-- Table structure for table `desa_kedungbanteng`
--

CREATE TABLE `desa_kedungbanteng` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_kedungbanteng`
--

INSERT INTO `desa_kedungbanteng` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Baseh'),
(0, 2, 'Beji'),
(0, 3, 'Dawuhan Kulon'),
(0, 4, 'Dawuhan Wetan'),
(0, 5, 'Kalikesur'),
(0, 6, 'Kalisalak'),
(0, 7, 'Karangnangka'),
(0, 8, 'Karangsalam Kidul'),
(0, 9, 'Kebocoran'),
(0, 10, 'Kedungbanteng'),
(0, 11, 'Keniten'),
(0, 12, 'Kutaliman'),
(0, 13, 'Melung'),
(0, 14, 'Windujaya');

-- --------------------------------------------------------

--
-- Table structure for table `desa_kembaran`
--

CREATE TABLE `desa_kembaran` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_kembaran`
--

INSERT INTO `desa_kembaran` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Bantarwuni'),
(0, 2, 'Bojongsari'),
(0, 3, 'Dukuhwaluh'),
(0, 4, 'Karangsari'),
(0, 5, 'Karangsoka'),
(0, 6, 'Karangtengah'),
(0, 7, 'Kembaran'),
(0, 8, 'Kramat'),
(0, 9, 'Ledug'),
(0, 10, 'Linggasari'),
(0, 11, 'Pliken'),
(0, 12, 'Purbadana'),
(0, 13, 'Purwodadi'),
(0, 14, 'Sambeng Kulon'),
(0, 15, 'Sambeng Wetan'),
(0, 16, 'Tambaksari Kidul');

-- --------------------------------------------------------

--
-- Table structure for table `desa_kemranjen`
--

CREATE TABLE `desa_kemranjen` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_kemranjen`
--

INSERT INTO `desa_kemranjen` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Alasmalang'),
(0, 2, 'Grujugan'),
(0, 3, 'Karanggintung'),
(0, 4, 'Karangjati'),
(0, 5, 'Karangsalam'),
(0, 6, 'Kebarongan'),
(0, 7, 'Kecila'),
(0, 8, 'Kedungpring'),
(0, 9, 'Nusamangir'),
(0, 10, 'Pageralang'),
(0, 11, 'Petarangan'),
(0, 12, 'Sibalung'),
(0, 13, 'Sibrama'),
(0, 14, 'Sidamulya'),
(0, 15, 'Sirau');

-- --------------------------------------------------------

--
-- Table structure for table `desa_lumbir`
--

CREATE TABLE `desa_lumbir` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_lumbir`
--

INSERT INTO `desa_lumbir` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Besuki'),
(0, 2, 'Canduk'),
(0, 3, 'Cidora'),
(0, 4, 'Cingebul'),
(0, 5, 'Cirahab'),
(0, 6, 'Dermaji'),
(0, 7, 'Karanggayam'),
(0, 8, 'Kedunggede'),
(0, 9, 'Lumbir'),
(0, 10, 'Parungkamal');

-- --------------------------------------------------------

--
-- Table structure for table `desa_patikraja`
--

CREATE TABLE `desa_patikraja` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_patikraja`
--

INSERT INTO `desa_patikraja` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Karangayar'),
(0, 2, 'Karangendep'),
(0, 3, 'Karangrandu'),
(0, 4, 'Kedungwringin'),
(0, 5, 'Kedungwuluh Kidul'),
(0, 6, 'Kedungwuluh Lor'),
(0, 7, 'Notog'),
(0, 8, 'Patikraja'),
(0, 9, 'Pegalongan'),
(0, 10, 'Sawangan Wetan'),
(0, 11, 'Sidabowa'),
(0, 12, 'Sokawera Kidul'),
(0, 13, 'Wlahar Kulon');

-- --------------------------------------------------------

--
-- Table structure for table `desa_pekuncen`
--

CREATE TABLE `desa_pekuncen` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_pekuncen`
--

INSERT INTO `desa_pekuncen` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Banjaranyar'),
(0, 2, 'Candinegara'),
(0, 3, 'Cibangkong'),
(0, 4, 'Cikawung'),
(0, 5, 'Cikembulan'),
(0, 6, 'Glempang'),
(0, 7, 'Karangkemiri'),
(0, 8, 'Karangklesem'),
(0, 9, 'Krajan'),
(0, 10, 'Kranggan'),
(0, 11, 'Pasiraman Kidul'),
(0, 12, 'Pasiraman Lor'),
(0, 13, 'Pekuncen'),
(0, 14, 'Petahunan'),
(0, 15, 'Semedo'),
(0, 16, 'Tumiyang');

-- --------------------------------------------------------

--
-- Table structure for table `desa_purwojati`
--

CREATE TABLE `desa_purwojati` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_purwojati`
--

INSERT INTO `desa_purwojati` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Gerduren'),
(0, 2, 'Kaliputih'),
(0, 3, 'Kalitapen'),
(0, 4, 'Kaliurip'),
(0, 5, 'Kaliwangi'),
(0, 6, 'Karangmangu'),
(0, 7, 'Karangtalun Kidul'),
(0, 8, 'Karangtalun Lor'),
(0, 9, 'Klapasawit'),
(0, 10, 'Purwojati');

-- --------------------------------------------------------

--
-- Table structure for table `desa_purwokertobarat`
--

CREATE TABLE `desa_purwokertobarat` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_purwokertobarat`
--

INSERT INTO `desa_purwokertobarat` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Bantarsoka'),
(0, 2, 'Karanglewas Lor'),
(0, 3, 'Kedungwuluh'),
(0, 4, 'kober'),
(0, 5, 'Pasir Kidul'),
(0, 6, 'Pasirmuncang'),
(0, 7, 'Rejasari');

-- --------------------------------------------------------

--
-- Table structure for table `desa_purwokertoselatan`
--

CREATE TABLE `desa_purwokertoselatan` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_purwokertoselatan`
--

INSERT INTO `desa_purwokertoselatan` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Berkoh'),
(0, 2, 'Karangklesem'),
(0, 3, 'Karangpucung'),
(0, 4, 'Purwokerto Kidul'),
(0, 5, 'Purwokerto Kulon'),
(0, 6, 'Tanjung'),
(0, 7, 'Teluk');

-- --------------------------------------------------------

--
-- Table structure for table `desa_purwokertotimur`
--

CREATE TABLE `desa_purwokertotimur` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_purwokertotimur`
--

INSERT INTO `desa_purwokertotimur` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Arcawinangun'),
(0, 2, 'Kranji'),
(0, 3, 'Mersi'),
(0, 4, 'Purwokerto Lor'),
(0, 5, 'Purwokerto Wetan '),
(0, 6, 'Sokanegara');

-- --------------------------------------------------------

--
-- Table structure for table `desa_purwokertoutara`
--

CREATE TABLE `desa_purwokertoutara` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_purwokertoutara`
--

INSERT INTO `desa_purwokertoutara` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Bancarkembar'),
(0, 2, 'Bobosan'),
(0, 3, 'Grendeng'),
(0, 4, 'Karangwangkal'),
(0, 5, 'Pabuaran'),
(0, 6, 'Purwanegara'),
(0, 7, 'Sumampir');

-- --------------------------------------------------------

--
-- Table structure for table `desa_rawalo`
--

CREATE TABLE `desa_rawalo` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_rawalo`
--

INSERT INTO `desa_rawalo` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Banjarparakan'),
(0, 2, 'Losari'),
(0, 3, 'Menganti'),
(0, 4, 'Pesawahan'),
(0, 5, 'Rawalo'),
(0, 6, 'Sanggreman'),
(0, 7, 'Sidamulih'),
(0, 8, 'Tambaknegara'),
(0, 9, 'Tipar');

-- --------------------------------------------------------

--
-- Table structure for table `desa_sokaraja`
--

CREATE TABLE `desa_sokaraja` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_sokaraja`
--

INSERT INTO `desa_sokaraja` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Banjaranyar'),
(0, 2, 'Banjarsari Kidul'),
(0, 3, 'Jompo Kulon'),
(0, 4, 'Kalikidang'),
(0, 5, 'Karangduren'),
(0, 6, 'Karangkedawung'),
(0, 7, 'Karangnanas'),
(0, 8, 'Karangrau'),
(0, 9, 'Kedondong'),
(0, 10, 'Klahang'),
(0, 11, 'Lemberang'),
(0, 12, 'Pamijen'),
(0, 13, 'Sokaraja kidul'),
(0, 14, 'Sokaraja Kulon'),
(0, 15, 'Sokaraja Lor'),
(0, 16, 'Sokaraja Tengah'),
(0, 17, 'Sokaraja Wetan'),
(0, 18, 'Wiradadi');

-- --------------------------------------------------------

--
-- Table structure for table `desa_somagede`
--

CREATE TABLE `desa_somagede` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_somagede`
--

INSERT INTO `desa_somagede` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Kanding'),
(0, 2, 'Kemawi'),
(0, 3, 'Klinting'),
(0, 4, 'Piasa Kulon'),
(0, 5, 'Plana'),
(0, 6, 'Sokawera'),
(0, 7, 'Somagede'),
(0, 8, 'Somakaton'),
(0, 9, 'Tanggeran');

-- --------------------------------------------------------

--
-- Table structure for table `desa_sumbang`
--

CREATE TABLE `desa_sumbang` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_sumbang`
--

INSERT INTO `desa_sumbang` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Banjarsari Kulon'),
(0, 2, 'Banjarsari Wetan'),
(0, 3, 'Banteran'),
(0, 4, 'Ciberem'),
(0, 5, 'Datar'),
(0, 6, 'Gandatapa'),
(0, 7, 'Karangcegak'),
(0, 8, 'Karanggintung'),
(0, 9, 'Karangturi'),
(0, 10, 'Kawungcarang'),
(0, 11, 'Kebanggan'),
(0, 12, 'KEdungmalang'),
(0, 13, 'Kotayasa'),
(0, 14, 'Limpakuwus'),
(0, 15, 'Sikapat'),
(0, 16, 'Silado'),
(0, 17, 'Sumbang'),
(0, 18, 'Susukan'),
(0, 19, 'Tambaksogra');

-- --------------------------------------------------------

--
-- Table structure for table `desa_sumpiuh`
--

CREATE TABLE `desa_sumpiuh` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_sumpiuh`
--

INSERT INTO `desa_sumpiuh` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Banjarpanepen'),
(0, 2, 'Bogangin'),
(0, 3, 'Karanggedang'),
(0, 4, 'Kemiri'),
(0, 5, 'Ketanda'),
(0, 6, 'Kuntili'),
(0, 7, 'Lebeng'),
(0, 8, 'Nusadadi'),
(0, 9, 'Pandak'),
(0, 10, 'Selandaka'),
(0, 11, 'Selanegara'),
(0, 12, 'Kebokura'),
(0, 13, 'Kradenan'),
(0, 14, 'Sumpiuh');

-- --------------------------------------------------------

--
-- Table structure for table `desa_tambak`
--

CREATE TABLE `desa_tambak` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_tambak`
--

INSERT INTO `desa_tambak` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Karangpetir'),
(0, 2, 'Karangpucung'),
(0, 3, 'Kamulyan'),
(0, 4, 'Gebangsari'),
(0, 5, 'Pesantren'),
(0, 6, 'Prembun'),
(0, 7, 'Buniayu'),
(0, 8, 'Purwodadi'),
(0, 9, 'Watuagung'),
(0, 10, 'Gumelar Lor'),
(0, 11, 'Gumelar Kidul'),
(0, 12, 'Plangkapan');

-- --------------------------------------------------------

--
-- Table structure for table `desa_wangon`
--

CREATE TABLE `desa_wangon` (
  `id_kec` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa_wangon`
--

INSERT INTO `desa_wangon` (`id_kec`, `id`, `desa`) VALUES
(0, 1, 'Banteran'),
(0, 2, 'Cikakak'),
(0, 3, 'Jambu'),
(0, 4, 'Jurangbahas'),
(0, 5, 'Klapagading'),
(0, 6, 'Klapagading Kulon'),
(0, 7, 'Pangadegan'),
(0, 8, 'Randegan'),
(0, 9, 'Rawaheng'),
(0, 10, 'Wangon'),
(0, 11, 'Windunegara'),
(0, 12, 'Wlahar');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `admin`, `kecamatan`) VALUES
(1, 'haidar', 'Ajibarang');

-- --------------------------------------------------------

--
-- Table structure for table `objek_wisata`
--

CREATE TABLE `objek_wisata` (
  `id` int(11) NOT NULL,
  `objek_wisata` varchar(255) NOT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`foto`)),
  `alamat` text NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `id` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`foto`)),
  `deskripsi` text NOT NULL,
  `like` int(255) NOT NULL,
  `komentar` int(11) NOT NULL,
  `bookmark` tinyint(1) NOT NULL,
  `uploader` varchar(255) NOT NULL,
  `upload_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`foto`)),
  `bio` text DEFAULT 'Ayo tuliskan bio anda'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_ajibarang`
--
ALTER TABLE `desa_ajibarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_banyumas`
--
ALTER TABLE `desa_banyumas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_baturraden`
--
ALTER TABLE `desa_baturraden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_cilongok`
--
ALTER TABLE `desa_cilongok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kec` (`id_kec`);

--
-- Indexes for table `desa_gumelar`
--
ALTER TABLE `desa_gumelar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_jatilawang`
--
ALTER TABLE `desa_jatilawang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_kalibagor`
--
ALTER TABLE `desa_kalibagor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_karanglewas`
--
ALTER TABLE `desa_karanglewas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_kebasen`
--
ALTER TABLE `desa_kebasen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_kedungbanteng`
--
ALTER TABLE `desa_kedungbanteng`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_kembaran`
--
ALTER TABLE `desa_kembaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_kemranjen`
--
ALTER TABLE `desa_kemranjen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_lumbir`
--
ALTER TABLE `desa_lumbir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_patikraja`
--
ALTER TABLE `desa_patikraja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_pekuncen`
--
ALTER TABLE `desa_pekuncen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_purwojati`
--
ALTER TABLE `desa_purwojati`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_purwokertobarat`
--
ALTER TABLE `desa_purwokertobarat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_purwokertoselatan`
--
ALTER TABLE `desa_purwokertoselatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_purwokertotimur`
--
ALTER TABLE `desa_purwokertotimur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_purwokertoutara`
--
ALTER TABLE `desa_purwokertoutara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_rawalo`
--
ALTER TABLE `desa_rawalo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_sokaraja`
--
ALTER TABLE `desa_sokaraja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_somagede`
--
ALTER TABLE `desa_somagede`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_sumbang`
--
ALTER TABLE `desa_sumbang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_sumpiuh`
--
ALTER TABLE `desa_sumpiuh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_tambak`
--
ALTER TABLE `desa_tambak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_wangon`
--
ALTER TABLE `desa_wangon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`uploader`(1));

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`(1));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `desa_ajibarang`
--
ALTER TABLE `desa_ajibarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `desa_banyumas`
--
ALTER TABLE `desa_banyumas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `desa_baturraden`
--
ALTER TABLE `desa_baturraden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `desa_cilongok`
--
ALTER TABLE `desa_cilongok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `desa_gumelar`
--
ALTER TABLE `desa_gumelar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `desa_jatilawang`
--
ALTER TABLE `desa_jatilawang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `desa_kalibagor`
--
ALTER TABLE `desa_kalibagor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `desa_karanglewas`
--
ALTER TABLE `desa_karanglewas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `desa_kebasen`
--
ALTER TABLE `desa_kebasen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `desa_kedungbanteng`
--
ALTER TABLE `desa_kedungbanteng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `desa_kembaran`
--
ALTER TABLE `desa_kembaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `desa_kemranjen`
--
ALTER TABLE `desa_kemranjen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `desa_lumbir`
--
ALTER TABLE `desa_lumbir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `desa_patikraja`
--
ALTER TABLE `desa_patikraja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `desa_pekuncen`
--
ALTER TABLE `desa_pekuncen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `desa_purwojati`
--
ALTER TABLE `desa_purwojati`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `desa_purwokertobarat`
--
ALTER TABLE `desa_purwokertobarat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `desa_purwokertoselatan`
--
ALTER TABLE `desa_purwokertoselatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `desa_purwokertotimur`
--
ALTER TABLE `desa_purwokertotimur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `desa_purwokertoutara`
--
ALTER TABLE `desa_purwokertoutara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `desa_rawalo`
--
ALTER TABLE `desa_rawalo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `desa_sokaraja`
--
ALTER TABLE `desa_sokaraja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `desa_somagede`
--
ALTER TABLE `desa_somagede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `desa_sumbang`
--
ALTER TABLE `desa_sumbang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `desa_sumpiuh`
--
ALTER TABLE `desa_sumpiuh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `desa_tambak`
--
ALTER TABLE `desa_tambak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `desa_wangon`
--
ALTER TABLE `desa_wangon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `objek_wisata`
--
ALTER TABLE `objek_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `postingan`
--
ALTER TABLE `postingan`
  ADD CONSTRAINT `postingan_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
