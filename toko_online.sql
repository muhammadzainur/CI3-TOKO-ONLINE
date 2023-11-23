-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 07:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(2, 'Kamera', 'Kamera canon eos 700d', 'elektronik', 5900000, 8, 'kamera.jpg'),
(4, 'Laptop Asus', 'Laptop Asus ram 2 gb', 'elektronik', 4500000, 40, 'laptop.jpg'),
(9, 'Samsung Galaxy A20', 'Samsung Galaxy A20', 'elektronik', 3400000, 28, 'hp.jpg'),
(18, 'Baju Wanita', 'Baju wanita Elza Crop', 'Pakaian Wanita', 100000, 10, 'laptop.jpg'),
(19, 'Baju Wanita Kekinian', 'Muslim', 'Pakaian Wanita', 100000, 20, 'wanita2.jpeg'),
(20, 'Baju Anak', 'Baju Pesta', 'Pakaian Anak-anak', 110000, 21, 'images_(1).jpeg'),
(21, 'Baju Anak Prempuan', 'Baju Menggemaskan', 'Pakaian Anak-anak', 130000, 21, 'images_(2).jpeg'),
(22, 'Raket Bulu Tangkis', 'khusus Olahraga', 'Peralatan Olahraga', 60000, 15, 'download_(2).jpeg'),
(23, 'Bola Basket', 'Khusus Basket', 'Peralatan Olahraga', 20000, 18, 'download_(3).jpeg'),
(24, 'Bola Voli', 'Khusus Voli', 'Peralatan Olahraga', 16000, 25, 'download_(4).jpeg'),
(25, 'Baju Anak', 'Baju Kids Envano Kaos', 'Pakaian Anak-anak', 80000, 30, 'anak.jpeg'),
(27, 'Baju Anak', 'Baju Anak Lexios', 'Pakaian Anak-anak', 80000, 21, 'images_(3).jpeg'),
(28, 'Sepatu', 'Sepatu Merk All Star', 'Pakaian Pria', 300000, 30, 'sepatu1.jpg'),
(29, 'Jam Tangan', 'Jam Tangan Asli', 'Pakaian Pria', 300000, 30, 'jam1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(3, 'zainur', 'Jl.Ikan ', '2023-11-16 21:48:22', '2023-11-17 21:48:22'),
(6, 'M.Zainur Rozikin B.N', 'Malang', '2023-11-16 22:00:27', '2023-11-17 22:00:27'),
(8, 'hello word', 'Jl.Ikan Piranha Atas', '2023-11-16 22:04:27', '2023-11-17 22:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 2, 4, 'Laptop Asus', 1, 4500000, ''),
(2, 2, 2, 'Kamera', 1, 5900000, ''),
(3, 2, 9, 'Samsung Galaxy A20', 1, 3400000, ''),
(4, 2, 17, 'Jam Tangan', 1, 300000, ''),
(5, 3, 2, 'Kamera', 1, 5900000, ''),
(6, 3, 4, 'Laptop Asus', 1, 4500000, ''),
(7, 3, 9, 'Samsung Galaxy A20', 1, 3400000, ''),
(8, 3, 17, 'Jam Tangan', 1, 300000, ''),
(9, 6, 2, 'Kamera', 1, 5900000, ''),
(10, 8, 2, 'Kamera', 1, 5900000, ''),
(11, 8, 9, 'Samsung Galaxy A20', 1, 3400000, ''),
(12, 9, 17, 'Jam Tangan', 1, 300000, ''),
(13, 10, 28, 'Sepatu', 1, 300000, ''),
(14, 11, 2, 'Kamera', 1, 5900000, ''),
(15, 12, 9, 'Samsung Galaxy A20', 2, 3400000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'zainur', 'muhammad zainur', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
