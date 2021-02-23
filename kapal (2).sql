-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 08:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kapal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'abcd', '17b4deb0459f13aa3a81dccd28f1a246', 'Cek'),
(2, 'coba', 'c3ec0f7b054e729c5a716c8125839829', 'Cek2'),
(3, 'galih', '0a657c9334fbc70e5eb3b0578c3ea0f0', 'galih prakoso');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `tanggal_input_stok` date NOT NULL,
  `tanggal_update_stok` date NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `stok_barang` float NOT NULL,
  `jumlah_barang_keluar` int(11) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga_beli_barang` int(11) NOT NULL,
  `harga_jual_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `tanggal_input_stok`, `tanggal_update_stok`, `nama_barang`, `stok_barang`, `jumlah_barang_keluar`, `satuan`, `harga_beli_barang`, `harga_jual_barang`) VALUES
(31, '2020-10-16', '2020-10-25', 'Jaring 24 7inch', 0, 16, 'kg', 50000, 60000),
(33, '2020-10-16', '2020-10-16', 'Jaring 24 8inch', 13, 7, 'kg', 80000, 90000),
(34, '2020-10-16', '2020-10-16', 'Jaring 30 7inch', 20, 0, 'kg', 50000, 70000),
(41, '2020-10-24', '2020-10-25', 'Baling Baling4', 20.6, 38, 'kg', 10000, 15000),
(42, '2020-10-17', '2020-10-17', 'Freon', 35, 15, 'buah', 10000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `id_laporan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `laba_penjualan` int(11) NOT NULL,
  `bulan_laporan` varchar(14) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `tanggal_pengeluaran` date NOT NULL,
  `nama_pengeluaran` varchar(100) NOT NULL,
  `besar_pengeluaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `tanggal_pengeluaran`, `nama_pengeluaran`, `besar_pengeluaran`) VALUES
(63, '2020-10-16', '20 kg @Rp.50000 Jaring 24 7inch', 1000000),
(65, '2020-10-16', '20 kg @Rp.80000 Jaring 24 8inch', 1600000),
(66, '2020-10-16', '20 kg @Rp.50000 Jaring 30 7inch', 1000000),
(67, '2020-10-16', '50 buah @Rp.50000 Freon', 2500000),
(68, '2020-10-16', '20 buah @Rp.50000 Oli Mesin', 1000000),
(69, '2021-01-02', '100 butir @Rp.50000 Inovasi Baru', 5000000),
(70, '2020-10-21', '200 buah @Rp.50000 Plastik', 10000000),
(71, '2020-10-21', '25 buah @Rp.Rp. 5.000.000 Freon', 0),
(72, '2020-10-21', '200 buah @Rp.50000 Plastik', 10000000),
(73, '2020-10-16', '56.2 kg @Rp.50000 Baling Baling', 2810000),
(74, '2020-10-21', '2 kg @Rp.50000 Baling Baling', 100000),
(75, '2020-10-17', '50 buah @Rp.10000 Freon', 500000),
(76, '2020-10-24', '20 buah @Rp.50000 Oli Mesin', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(4) NOT NULL,
  `nomor_nota` varchar(20) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `nama_customer` varchar(40) NOT NULL,
  `nama_pemesan` varchar(40) NOT NULL,
  `nama_barang` varchar(10000) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `keuntungan` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `nomor_nota`, `tanggal_penjualan`, `quantity`, `nama_customer`, `nama_pemesan`, `nama_barang`, `jumlah`, `subtotal`, `keuntungan`, `total`, `status`) VALUES
(1, '42', 'Fik20201030', '2020-10-30', '-', 'Fikri', 'Kapten1', 'Freon', 10, 50000000, -50000, 50000, 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
