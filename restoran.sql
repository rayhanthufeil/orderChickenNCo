-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2022 at 04:44 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `id_level` int(1) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'administator'),
(2, 'waiter'),
(3, 'kasir'),
(4, 'owner'),
(5, 'pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `masakan`
--

CREATE TABLE IF NOT EXISTS `masakan` (
  `id_masakan` int(11) NOT NULL,
  `nama_masakan` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `status_masakan` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `kategori_masakan` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masakan`
--

INSERT INTO `masakan` (`id_masakan`, `nama_masakan`, `deskripsi`, `harga`, `status_masakan`, `foto`, `kategori_masakan`) VALUES
(1, 'Sweet Honey Sauce', 'Large', 25000, 1, '411-_MG_7511.JPG', 'Makanan'),
(2, 'Spicy Honey Sauce', 'Large', 25000, 1, '663-_MG_7512.JPG', 'Makanan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_order`
--

CREATE TABLE IF NOT EXISTS `tb_detail_order` (
  `dorder_id` int(11) NOT NULL,
  `check_available` int(11) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `dorder_keterangan` text,
  `dorder_jumlah` int(11) NOT NULL,
  `dorder_hartot` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `dorder_status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_order`
--

INSERT INTO `tb_detail_order` (`dorder_id`, `check_available`, `id_order`, `id_masakan`, `dorder_keterangan`, `dorder_jumlah`, `dorder_hartot`, `id_user`, `dorder_status`) VALUES
(89, 4, 'ORD0004', 9, '', 1, 40000, 4, 1),
(90, 4, 'ORD0004', 14, '', 1, 12000, 4, 1),
(91, 5, 'ORD0005', 7, '', 1, 28000, 4, 1),
(92, 5, 'ORD0005', 10, '', 1, 15000, 4, 1),
(94, 6, 'ORD0006', 9, '', 1, 40000, 4, 1),
(95, 7, 'ORD0007', 6, '', 1, 35000, 0, 1),
(96, 7, 'ORD0007', 7, '', 1, 28000, 0, 1),
(97, 7, 'ORD0007', 9, '', 1, 40000, 4, 1),
(98, 7, 'ORD0007', 1, '', 1, 25000, 8, 1),
(99, 7, 'ORD0007', 2, '', 1, 25000, 8, 1),
(100, 8, 'ORD0008', 1, '', 1, 25000, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_meja`
--

CREATE TABLE IF NOT EXISTS `tb_meja` (
  `meja_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_meja`
--

INSERT INTO `tb_meja` (`meja_id`, `status`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 1),
(6, 1),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
  `id_order` varchar(50) NOT NULL,
  `order_meja` int(11) NOT NULL,
  `order_tanggal` int(11) NOT NULL,
  `order_nganTanggal` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `order_keterangan` text,
  `order_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `order_meja`, `order_tanggal`, `order_nganTanggal`, `id_user`, `order_keterangan`, `order_status`) VALUES
('ORD0001', 2, 1583585823, '07-03-2020', 15, '', '1'),
('ORD0002', 6, 1583586689, '07-03-2020', 15, '', '1'),
('ORD0003', 2, 1583594954, '07-03-2020', 15, '', '1'),
('ORD0004', 1, 1583828391, '10-03-2020', 4, '', '1'),
('ORD0005', 1, 1583913339, '11-03-2020', 4, '', '1'),
('ORD0006', 1, 1583913610, '11-03-2020', 4, '', '1'),
('ORD0007', 5, 1660833668, '18-08-2022', 8, '', '0'),
('ORD0008', 6, 1660833732, '18-08-2022', 8, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_order` varchar(50) NOT NULL,
  `transaksi_tanggal` int(11) NOT NULL,
  `transaksi_nganTanggal` varchar(50) NOT NULL,
  `transaksi_hartot` int(11) NOT NULL,
  `transaksi_diskon` int(11) NOT NULL,
  `transaksi_totbar` int(11) NOT NULL,
  `transaksi_uang` int(11) NOT NULL,
  `transaksi_kembalian` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_user`, `id_order`, `transaksi_tanggal`, `transaksi_nganTanggal`, `transaksi_hartot`, `transaksi_diskon`, `transaksi_totbar`, `transaksi_uang`, `transaksi_kembalian`) VALUES
(14, 8, 'ORD0005', 1583913366, '11-03-2020', 43000, 0, 43000, 50000, 7000),
(15, 8, 'ORD0006', 1583913996, '11-03-2020', 40000, 100, 0, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `id_level` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(4, 'taufik', 'taufik', 'Taufik Hidayat', 1),
(5, 'siti', 'siti', 'Siti Algisna', 2),
(6, 'hidayat', 'hidayat', 'Hidayat', 3),
(7, 'algisna', 'algisna', 'Algisna', 4),
(8, 'doni', 'doni', 'Doni', 5),
(9, 'awal', 'awal', 'Awaludin Naufal', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `masakan`
--
ALTER TABLE `masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  ADD PRIMARY KEY (`dorder_id`);

--
-- Indexes for table `tb_meja`
--
ALTER TABLE `tb_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masakan`
--
ALTER TABLE `masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  MODIFY `dorder_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `tb_meja`
--
ALTER TABLE `tb_meja`
  MODIFY `meja_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
