-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2021 pada 08.53
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zakat1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamustahik`
--

CREATE TABLE `datamustahik` (
  `kodemustahik` int(11) NOT NULL,
  `namamustahik` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `rt` varchar(11) NOT NULL,
  `rw` varchar(11) NOT NULL,
  `jmlkartukeluarga` int(11) NOT NULL,
  `jmlangkeluarga` int(11) NOT NULL,
  `status` varchar(128) NOT NULL,
  `catatan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datamustahik`
--

INSERT INTO `datamustahik` (`kodemustahik`, `namamustahik`, `alamat`, `rt`, `rw`, `jmlkartukeluarga`, `jmlangkeluarga`, `status`, `catatan`) VALUES
(3, 'jamat', 'ciputat', '01', '011', 1, 5, 'Tidak Mampu', 'mantapppp'),
(4, 'Bayuuunn', 'uf 3 no 99', '1', '021', 1, 5, 'Yatim/Piatu', 'oke'),
(5, 'Ibu Hasanuda', 'TA 9 No 2', '05', '022', 1, 6, 'Tidak Mampu', 'oke'),
(7, 'asep', 'cijonggol', '11', '021', 2, 3, 'Yatim/Piatu', 'okeee21312');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapanitia`
--

CREATE TABLE `datapanitia` (
  `kodepanitia` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jammasuk` time NOT NULL,
  `jamakhir` time NOT NULL,
  `namapanitia` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `nohp` varchar(128) NOT NULL,
  `catatan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datapanitia`
--

INSERT INTO `datapanitia` (`kodepanitia`, `tanggal`, `jammasuk`, `jamakhir`, `namapanitia`, `alamat`, `nohp`, `catatan`) VALUES
(5, '2021-06-12', '16:40:00', '22:40:00', 'Fajri', 'Jalan Yang Ada', '1000521', 'popp'),
(6, '2021-05-28', '18:08:00', '22:08:00', 'hiruman', 'Bonang', '0851533322', 'ngutang'),
(7, '2021-05-28', '07:00:00', '02:00:00', 'master john', 'oke', '22222222', ''),
(8, '2021-07-02', '12:34:00', '18:34:00', 'dapa', 'tc 2 no 3', '082233994545', 'mantap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapezakat`
--

CREATE TABLE `datapezakat` (
  `kodezakat` int(11) NOT NULL,
  `tanggaljam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `namapezakat` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jumlahjiwa` int(11) NOT NULL,
  `berupaberas` float NOT NULL,
  `berupauang` varchar(128) NOT NULL,
  `fidyahberas` float NOT NULL,
  `fidyahuang` varchar(128) NOT NULL,
  `infaq` varchar(128) NOT NULL,
  `zakatmal` varchar(128) NOT NULL,
  `totalberas` float NOT NULL,
  `totaluang` varchar(128) NOT NULL,
  `panitiajaga` varchar(50) NOT NULL,
  `panitiajaga2` varchar(50) NOT NULL,
  `telahdiubahadmin` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datapezakat`
--

INSERT INTO `datapezakat` (`kodezakat`, `tanggaljam`, `namapezakat`, `alamat`, `jumlahjiwa`, `berupaberas`, `berupauang`, `fidyahberas`, `fidyahuang`, `infaq`, `zakatmal`, `totalberas`, `totaluang`, `panitiajaga`, `panitiajaga2`, `telahdiubahadmin`) VALUES
(30, '2021-04-27 06:54:53', 'm fajri', 'uf 3 no 9', 22, 10.5, '70000', 2.3, '10000', '30000', '20000', 12.8, '130000', '5', '', 'Ya'),
(31, '2021-04-22 03:24:45', 'bagas', 'th 9 no 14', 666, 13, '888', 0, '', '100000', '', 0, '', '5', '', 'Ya'),
(32, '2021-04-22 15:22:42', 'ucokop', 'Jalan bojongnangka', 3, 10.5, '0', 0, '', '0', '', 0, '', ' 5', '', 'Ya'),
(42, '2021-04-24 14:09:56', 'hasan', 'Cibogo Wetan Blok Danau Nomor Asik ', 4, 14, '140,000', 0, '', '30,000', '', 0, '', 'Admin', '', ''),
(43, '2021-04-27 06:23:11', 'Asep', 'Jalan Cikupa', 2, 7, '', 0, '', '', '', 0, '', '', '', ''),
(44, '2021-04-27 07:23:13', 'sulthan', 'uf 3 no 99999', 30, 3.5, '20,000', 0, '', '2,777,777', '', 0, '', '7', '', ''),
(45, '2021-04-27 07:17:20', 'sulthan', 'uf 3 no 11111', 30, 3.5, '1,000,000', 0, '', '2,777,777', '', 0, '', '', '', ''),
(46, '2021-04-27 07:17:36', 'sulthan', 'CIPETE JAMAL', 30, 3.5, '1,000,000', 0, '', '2,777,777', '', 0, '', '', '', ''),
(47, '2021-04-27 07:17:54', 'sulthan', 'jamalll', 30, 3.5, '1,000,000', 0, '', '2,777,777', '', 0, '', '', '', ''),
(48, '2021-04-27 08:04:53', 'Sulthan', 'Jalan Bojongnangka', 2, 7, '70,000', 0, '', '20,000', '', 0, '', ' 5', '', 'Ya'),
(49, '2021-05-06 15:32:16', 'Bpk Hasan', 'TC 2 No 3', 4, 0, '140,000', 0, '', '10,000', '', 0, '', ' 6', '', ''),
(50, '2021-05-06 16:04:08', 'Bpk Farda', 'UB 2 No 1', 4, 0, '140,000', 0, '', '10,000', '', 0, '', ' 6', '', ''),
(51, '2021-05-06 16:31:23', 'Bpk Indra', 'TA 9 No 2', 3, 0, '105,000', 0, '', '', '', 0, '', ' 5', ' ADmin', ''),
(52, '2021-05-07 03:08:19', 'Test Nama', 'TD 2 No 4', 4, 14, '140,000', 14, '280,000', '20,000', '50,000', 0, '', ' 5', ' 6', ''),
(53, '2021-05-07 03:10:01', 'Test Data Zakat', 'TA 10 No 2 Test', 3, 10.5, '105,000', 3.5, '70,000', '20,000', '10,500', 0, '', ' 7', ' 6', ''),
(54, '2021-05-08 03:28:00', 'mamat', 'ta 2 no 3', 1, 23.2, '20000', 19.5, '20000', '10000', '300000', 42.7, '350000', ' 5', ' 6', 'Ya'),
(55, '2021-05-08 04:17:09', 'dapajamas', 'ta 9 no 2', 1, 3.5, '100000', 7, '20000', '25000', '10000', 10.5, '155000', ' 6', ' 5', ''),
(56, '2021-05-11 07:01:36', 'johanes', 'rw 1 bt', 1, 3.5, '', 0, '', '', '', 3.5, '0', ' 5', ' 6', ''),
(57, '2021-05-11 07:11:00', 'jackobus', 'tokyo', 2, 7, '', 0, '', '', '', 7, '0', '5', ' ', ''),
(58, '2021-05-25 08:54:49', 'Bpk Supardi', 'TD 2 No 14', 2, 7, '70000', 3.5, '100000', '20000', '10000', 10.5, '200000', ' 6', ' 7', ''),
(59, '2021-05-25 09:28:04', 'bapak joahanes', 'cikupa', 2, 3.5, '20000', 3.6, '100000', '5000', '20000', 7.1, '145000', ' 5', ' 6', ''),
(60, '2021-05-28 06:31:43', 'Master Joohanses', 'Ciputat', 2, 7, '35000', 3.5, '20000', '40000', '5000', 10.5, '100000', ' 6', ' 5', ''),
(61, '2021-05-28 07:27:46', 'Hiruman Johanes', 'Cipondoh', 2, 7, '70000', 3.5, '10000', '100000', '20000', 10.5, '200000', ' 5', 'jiyad', ''),
(64, '2021-05-28 08:16:58', 'master hilman', 'ciputattt', 2, 3.5, '70000', 3.5, '40000', '30000', '10000', 7, '150000', ' 6', '', ''),
(65, '2021-05-28 08:20:20', 'master sulthan', 'citra', 2, 3.5, '30000', 3.5, '10000', '20000', '40000', 7, '100000', ' 6', ' sultan', ''),
(66, '2021-05-28 08:22:19', 'farhan', 'bonang', 2, 7, '35000', 3.5, '20000', '50000', '45000', 10.5, '150000', ' 5', ' hiruman', ''),
(67, '2021-06-03 14:21:42', 'asep', 'bismillah', 3, 0, '', 0, '', '', '', 0, '0', ' 5', ' master john', ''),
(68, '2021-06-08 05:27:50', 'Hiruman Kun', 'Cipete', 1, 3.5, '35000', 3.5, '5000', '5000', '5000', 7, '50000', ' 5', ' master john', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`) VALUES
(5, 'Panitia', 'panitia@email.com', 'undraw_profile_21.jpg', '$2y$10$5y4drFrBOigZXdOZeft9HuynQzFawFsW19Kv4cmxffJBBzZrtKXT.', 2),
(6, 'Admin', 'admin@email.com', 'default.jpg', '$2y$10$zx7w0z8Wxvu2trEcdDNYaeoiu9tY9lA2/OiLQkcIdMGr37KY9TEiW', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datamustahik`
--
ALTER TABLE `datamustahik`
  ADD PRIMARY KEY (`kodemustahik`);

--
-- Indeks untuk tabel `datapanitia`
--
ALTER TABLE `datapanitia`
  ADD PRIMARY KEY (`kodepanitia`);

--
-- Indeks untuk tabel `datapezakat`
--
ALTER TABLE `datapezakat`
  ADD PRIMARY KEY (`kodezakat`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datamustahik`
--
ALTER TABLE `datamustahik`
  MODIFY `kodemustahik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `datapanitia`
--
ALTER TABLE `datapanitia`
  MODIFY `kodepanitia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `datapezakat`
--
ALTER TABLE `datapezakat`
  MODIFY `kodezakat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
