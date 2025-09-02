-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 19, 2022 at 08:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pembayaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar_bebas`
--

CREATE TABLE `tb_bayar_bebas` (
  `id_bayar_bebas` int(11) NOT NULL,
  `id_tagihan_bebas` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `cara_bayar` varchar(50) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pos_bayar` int(11) NOT NULL,
  `jam_bayar` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bulan`
--

CREATE TABLE `tb_bulan` (
  `id_bulan` varchar(15) NOT NULL DEFAULT '0',
  `nama_bulan` varchar(25) DEFAULT NULL,
  `urutan` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bulan`
--

INSERT INTO `tb_bulan` (`id_bulan`, `nama_bulan`, `urutan`) VALUES
('1', 'Januari', 7),
('10', 'Oktober', 4),
('11', 'November', 5),
('12', 'Desember', 6),
('2', 'Februari', 8),
('3', 'Maret', 9),
('4', 'April', 10),
('5', 'Mei', 11),
('6', 'Juni', 12),
('7', 'Juli', 1),
('8', 'Agustus', 2),
('9', 'September', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_bayar`
--

CREATE TABLE `tb_jenis_bayar` (
  `id_bayar` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `nama_bayar` varchar(100) NOT NULL,
  `tipe_bayar` varchar(30) NOT NULL,
  `id_pos_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis_bayar`
--

INSERT INTO `tb_jenis_bayar` (`id_bayar`, `id_tahun_ajaran`, `nama_bayar`, `tipe_bayar`, `id_pos_bayar`) VALUES
(11, 1, 'spp', 'Bulanan', 4),
(12, 3, 'SPP', 'Bulanan', 7),
(13, 3, 'spp2', 'Bulanan', 8),
(14, 3, 'bebas', 'Bebas', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kas`
--

CREATE TABLE `tb_kas` (
  `id_kas` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tgl_kas` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `penerimaan` int(11) NOT NULL,
  `pengeluaran` int(11) NOT NULL,
  `jenis_kas` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `id_pos_bayar` int(11) NOT NULL,
  `jam` time NOT NULL,
  `user` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `ket`) VALUES
(34, '1a', ''),
(35, '1b', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pos_bayar`
--

CREATE TABLE `tb_pos_bayar` (
  `id_pos_bayar` int(11) NOT NULL,
  `nama_pos` varchar(255) NOT NULL,
  `ket_pos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pos_bayar`
--

INSERT INTO `tb_pos_bayar` (`id_pos_bayar`, `nama_pos`, `ket_pos`) VALUES
(7, 'SPP', 'SPP'),
(8, 'spp2', 'spp2'),
(9, 'bebas', 'bebas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile`
--

CREATE TABLE `tb_profile` (
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `bendahara` varchar(100) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ktu` varchar(255) NOT NULL,
  `nip_ktu` varchar(30) NOT NULL,
  `no_wa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profile`
--

INSERT INTO `tb_profile` (`nama_sekolah`, `alamat`, `telpon`, `website`, `kota`, `bendahara`, `nip`, `foto`, `ktu`, `nip_ktu`, `no_wa`) VALUES
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877'),
('SD ISLAM NURUL QOMAR', '   JALAN RONGGOLAW NO 25 KOTA COBA-COBA', '021.090939', 'www.sekolah.com', 'Jakarta', 'Bejo Santoso', '085718480296', 'admin.png', 'ABDUL MUIS', '343434343434', '62877');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `kelas` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `nama_ortu` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp_ortu` varchar(15) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan_bebas`
--

CREATE TABLE `tb_tagihan_bebas` (
  `id_tagihan_bebas` int(11) NOT NULL,
  `id_bayar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL,
  `status_bayar` int(11) NOT NULL,
  `id_pos_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan_bulanan`
--

CREATE TABLE `tb_tagihan_bulanan` (
  `id_tagihan_bulanan` int(11) NOT NULL,
  `id_bayar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_bulan` int(11) NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `status_bayar` int(11) NOT NULL,
  `cara_bayar` varchar(30) NOT NULL,
  `id_pos_bayar` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `jam_bayar` time NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun_ajaran`
--

CREATE TABLE `tb_tahun_ajaran` (
  `id_tahun_ajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tahun_ajaran`
--

INSERT INTO `tb_tahun_ajaran` (`id_tahun_ajaran`, `tahun_ajaran`, `status`) VALUES
(1, '2018/2019', 'tidak'),
(2, '2019/2020', 'tidak'),
(3, '2020/2021', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `nama_user`, `password`, `level`, `foto`) VALUES
(402, 'admin', 'admin', 'admin', 'admin', 'admin.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bayar_bebas`
--
ALTER TABLE `tb_bayar_bebas`
  ADD PRIMARY KEY (`id_bayar_bebas`);

--
-- Indexes for table `tb_bulan`
--
ALTER TABLE `tb_bulan`
  ADD PRIMARY KEY (`id_bulan`);

--
-- Indexes for table `tb_jenis_bayar`
--
ALTER TABLE `tb_jenis_bayar`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `tb_kas`
--
ALTER TABLE `tb_kas`
  ADD PRIMARY KEY (`id_kas`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_pos_bayar`
--
ALTER TABLE `tb_pos_bayar`
  ADD PRIMARY KEY (`id_pos_bayar`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_tagihan_bebas`
--
ALTER TABLE `tb_tagihan_bebas`
  ADD PRIMARY KEY (`id_tagihan_bebas`);

--
-- Indexes for table `tb_tagihan_bulanan`
--
ALTER TABLE `tb_tagihan_bulanan`
  ADD PRIMARY KEY (`id_tagihan_bulanan`);

--
-- Indexes for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bayar_bebas`
--
ALTER TABLE `tb_bayar_bebas`
  MODIFY `id_bayar_bebas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tb_jenis_bayar`
--
ALTER TABLE `tb_jenis_bayar`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_kas`
--
ALTER TABLE `tb_kas`
  MODIFY `id_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_pos_bayar`
--
ALTER TABLE `tb_pos_bayar`
  MODIFY `id_pos_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `tb_tagihan_bebas`
--
ALTER TABLE `tb_tagihan_bebas`
  MODIFY `id_tagihan_bebas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tb_tagihan_bulanan`
--
ALTER TABLE `tb_tagihan_bulanan`
  MODIFY `id_tagihan_bulanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2437;

--
-- AUTO_INCREMENT for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  MODIFY `id_tahun_ajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
