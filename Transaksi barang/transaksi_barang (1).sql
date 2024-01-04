-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2023 pada 07.51
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transaksi_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `harga_barang` int(8) NOT NULL,
  `id_jenis_barang` int(11) NOT NULL,
  `nama_toko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_toko`, `nama_barang`, `harga_barang`, `id_jenis_barang`, `nama_toko`) VALUES
(1, 1, 'Bola', 75000, 1, 'Toko Sport'),
(2, 2, 'Meja', 200000, 2, 'Toko Agung mebel'),
(3, 3, 'Monitor', 1000000, 3, 'JayaPhone'),
(4, 4, 'Ember\r\n\r\n\r\n', 50000, 4, 'Toko jelita'),
(5, 5, 'Baju\r\n\r\n\r\n', 500000, 5, 'JM fashion\r\n\r\n'),
(6, 6, 'Skincare\r\n\r\n\r\n', 700000, 4, 'Toko Jelita\r\n\r\n'),
(7, 7, 'Mouse\r\n\r\n\r\n', 300000, 3, 'JayaPhone\r\n\r\n'),
(8, 8, 'Gelang\r\n\r\n\r\n', 70000, 5, 'JM fashion\r\n\r\n'),
(9, 9, 'Toko Agung mebel\r\n\r\n', 150000, 2, 'Toko Agung mebel\r\n\r\n'),
(10, 10, 'Hijab\r\n\r\n\r\n', 50000, 5, 'JM fashion\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id` int(11) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES
(1, 'Alat olahraga'),
(2, 'Mebel '),
(3, 'Alat eletronik '),
(4, 'Fashion'),
(5, 'Perawatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(11) NOT NULL,
  `nama_pembeli` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id`, `nama_pembeli`, `alamat`) VALUES
(1, 'Sumanto ', 'yogyakarta'),
(2, 'Paimon', ' jakarta'),
(3, 'Jennie ', 'bali'),
(4, 'Suparman ', 'yogyakarta'),
(5, 'Aura', 'yogyakarta'),
(6, 'Malika ', ' kalimantan'),
(7, 'Rose', ' bali'),
(8, 'Lisa', ' bali'),
(9, 'Surop', ' jakarta'),
(10, 'Natasha ', 'yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `nama_supplier` varchar(20) NOT NULL,
  `alamat_supplier` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama_barang`, `nama_supplier`, `alamat_supplier`) VALUES
(1, 'Bola ', 'PT. Jaya ', 'Bandung'),
(2, 'Meja ', 'PT. Modalbuy ', 'Jakarta'),
(3, 'Monitor', 'PT. Eltronik ', 'Jakarta'),
(4, 'Ember', 'PT. Modalbuy', 'Jakarta'),
(5, 'Baju', ' PT. JMfashion', 'Yogyakarta'),
(6, 'Skincare', ' PT. MSglow ', ' Jakarta'),
(7, 'Mouse ', ' PT.Eltronik', ' Jakarta'),
(8, 'Gelang', ' PT. JMfashion', ' Yogyakarta'),
(9, 'kursi', 'PT. Modalbuy ', 'Jakarta'),
(10, 'Hijab', 'PT. JMfashion', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(20) NOT NULL,
  `jenis-barang` varchar(20) NOT NULL,
  `alamat_supplier` varchar(30) NOT NULL,
  `nama_toko` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id`, `nama_supplier`, `jenis-barang`, `alamat_supplier`, `nama_toko`) VALUES
(1, 'PT. Jaya ', 'Alat olahraga ', 'Bandung ', 'Toko Sport'),
(2, 'PT. Modalbuy ', 'Mebel ', 'Jakarta ', 'Toko Agung mebel'),
(3, 'PT. Eltronik', 'Alat eletronik ', 'Jakarta', 'JayaPhone'),
(4, 'PT. Modalbuy', ' Mebel', 'Jakarta', 'Toko Agung mebel'),
(5, 'PT. JMfashion ', ' Fashion', 'Yogyakarta ', ' JM fashion'),
(6, 'PT. MSglow ', 'Perawatan', ' Jakarta', ' Toko Jelita'),
(7, 'PT.Eltronik', 'Alat elektronik', ' Jakarta', ' JayaPhone'),
(8, 'PT. JMfashion ', 'Fashion ', 'Yogyakarta', ' JM fashion'),
(9, 'PT. Modalbuy ', 'Mebel ', 'Jakarta', ' Toko Agung mebel'),
(10, 'PT. JMfashion ', 'Fashion', 'Yogyakarta', 'JM fashion');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_barang`
--

CREATE TABLE `transaksi_barang` (
  `id_transaksi` int(11) NOT NULL,
  `id_pembeli` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `jumlah-beli` int(11) NOT NULL,
  `total_bayar` int(40) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_barang`
--

INSERT INTO `transaksi_barang` (`id_transaksi`, `id_pembeli`, `id_barang`, `jumlah-beli`, `total_bayar`, `tanggal_transaksi`) VALUES
(1, 1, 1, 10, 750000, '2023-04-10'),
(2, 2, 2, 39, 7800000, '2023-02-12'),
(3, 3, 3, 8, 8000000, '2023-07-15'),
(4, 4, 4, 6, 300000, '2023-05-11'),
(5, 5, 5, 7, 3500000, '2023-07-14'),
(6, 6, 6, 2, 140000, '2023-02-26'),
(7, 7, 7, 4, 120000, '2023-08-17'),
(8, 8, 8, 1, 70000, '2023-03-30'),
(9, 9, 9, 5, 750000, '2023-02-28'),
(10, 10, 10, 6, 300000, '2023-09-09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_jenis` (`id_jenis_barang`),
  ADD KEY `FK_toko` (`id_toko`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `FK_transaksi` (`id_barang`),
  ADD KEY `FK_pemebeli` (`id_pembeli`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `FK_jenis` FOREIGN KEY (`id_jenis_barang`) REFERENCES `jenis_barang` (`id`),
  ADD CONSTRAINT `FK_toko` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id`);

--
-- Ketidakleluasaan untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD CONSTRAINT `FK_supplier` FOREIGN KEY (`id`) REFERENCES `supplier` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD CONSTRAINT `FK_pemebeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id`),
  ADD CONSTRAINT `FK_transaksi` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
