-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2023 pada 06.09
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
-- Database: `perpustakaan_vania`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_buku`
--

CREATE TABLE `jenis_buku` (
  `id` int(11) NOT NULL,
  `kode_buku` int(4) NOT NULL,
  `jenis_buku` varchar(40) NOT NULL,
  `Lokasi_Rak` varchar(40) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `Tanggal_Buku_Masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_buku`
--

INSERT INTO `jenis_buku` (`id`, `kode_buku`, `jenis_buku`, `Lokasi_Rak`, `jumlah`, `Tanggal_Buku_Masuk`) VALUES
(1, 1290, 'Novel', 'Area 1 rak 2', 1000, '0000-00-00'),
(2, 1292, 'Komik', 'Area 2 rak 1', 1000, '0000-00-00'),
(3, 3129, 'Matematika', 'Area 3 rak 3', 589, '0000-00-00'),
(4, 1294, 'Ilmu pengetahuan alam', 'Area 1 rak 3', 600, '0000-00-00'),
(5, 1295, 'Bahasa Inggris', 'Area 3 rak 4', 750, '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_buku`
--

CREATE TABLE `peminjaman_buku` (
  `id` int(11) NOT NULL,
  `nama_anggota` varchar(40) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman_buku`
--

INSERT INTO `peminjaman_buku` (`id`, `nama_anggota`, `jumlah`, `no_telp`, `tanggal_peminjaman`, `tanggal_pengembalian`) VALUES
(1, 'Azellyra', 2, '0895-6678-14', '0000-00-00', '2009-06-02'),
(2, 'Putra', 1, '0821-6721-58', '0000-00-00', '0000-00-00'),
(3, 'Anendra', 3, '0858-6634-89', '0000-00-00', '0000-00-00'),
(4, 'Aura', 2, '0821-4588-55', '0000-00-00', '0000-00-00'),
(5, 'Silvana', 3, '0832-9859-14', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran_anggota_perpustakaan`
--

CREATE TABLE `pendaftaran_anggota_perpustakaan` (
  `id` int(10) NOT NULL,
  `nama_anggota` varchar(40) NOT NULL,
  `NIS` int(4) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` text NOT NULL,
  `biaya` int(15) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftaran_anggota_perpustakaan`
--

INSERT INTO `pendaftaran_anggota_perpustakaan` (`id`, `nama_anggota`, `NIS`, `alamat`, `no_telp`, `biaya`, `tanggal`) VALUES
(1, 'Azellyra', 5055, 'Condongcatur', '0895-6678-1426', 10, '2023-07-17'),
(2, 'Putra', 7932, 'Gedong Kuning', '0821-6721-5831', 10, '2023-06-12'),
(3, 'Anendra', 4012, 'Baweran', '0858-6634-8912', 10, '2023-04-01'),
(4, 'Aura', 6890, 'Maguwo', '0821-4588-5512', 10, '2023-05-13'),
(5, 'Silvana', 3056, 'Jl. Pramuka', '0832-9859-1457', 10, '2023-06-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian_buku`
--

CREATE TABLE `pengembalian_buku` (
  `id` int(11) NOT NULL,
  `nama_anggota` varchar(40) NOT NULL,
  `keterlambatan` varchar(40) DEFAULT NULL,
  `rusak` varchar(40) DEFAULT NULL,
  `hilang` varchar(40) DEFAULT NULL,
  `Donatur` varchar(40) DEFAULT NULL,
  `Total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian_buku`
--

INSERT INTO `pengembalian_buku` (`id`, `nama_anggota`, `keterlambatan`, `rusak`, `hilang`, `Donatur`, `Total`) VALUES
(1, 'Azellyra', '3 hari', NULL, NULL, '1 buku', 2),
(2, 'Putra', NULL, '', NULL, NULL, 5),
(3, 'Anendra', '7 hari', NULL, NULL, '4 buku', 7),
(4, 'Aura', '20 hari', NULL, NULL, NULL, 10),
(5, '', NULL, '1 buku', NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` int(10) NOT NULL,
  `kode` int(4) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `no_telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `kode`, `nama`, `gender`, `alamat`, `no_telp`) VALUES
(1, 4478, 'Sherlyn Vatiza', 'p', 'Jl. Adjipungkur', '0896-4491-48'),
(2, 4428, 'Juneyaa Daren', 'l', 'Jl. Madukusuma', '0821-7145-97'),
(3, 4489, 'Karina Alettia', 'p', 'Jl. Tiarap siaga 6', '0857-3319-45'),
(4, 4490, 'Szasha Zhania', 'p', 'Jl. Block O', '0851-2156-99'),
(5, 4412, 'Rafi Azzam', 'l', 'Jl. Mangga Dua', '0821-9365-78');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tata_tertib`
--

CREATE TABLE `tata_tertib` (
  `id` int(10) NOT NULL,
  `Tata_tertib` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tata_tertib`
--

INSERT INTO `tata_tertib` (`id`, `Tata_tertib`) VALUES
(1, 'Dilarang Membawa Makanan dan Minuman '),
(2, 'Dilarang Makan dan minum didalam perpustakaan '),
(3, 'Dilarang membawa hewan peliharaan ataupun liar ke dalam perpustakaan '),
(4, 'Dialarang Tidur di dalam perpustakaan '),
(5, 'Dilarang Berisik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_buku`
--
ALTER TABLE `jenis_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjaman_buku`
--
ALTER TABLE `peminjaman_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendaftaran_anggota_perpustakaan`
--
ALTER TABLE `pendaftaran_anggota_perpustakaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembalian_buku`
--
ALTER TABLE `pengembalian_buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_buku`
--
ALTER TABLE `jenis_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `peminjaman_buku`
--
ALTER TABLE `peminjaman_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran_anggota_perpustakaan`
--
ALTER TABLE `pendaftaran_anggota_perpustakaan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengembalian_buku`
--
ALTER TABLE `pengembalian_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
