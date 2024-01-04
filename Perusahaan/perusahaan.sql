-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2024 pada 05.16
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
-- Database: `perusahaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_perusahaan`
--

CREATE TABLE `anggota_perusahaan` (
  `id_angota` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` text NOT NULL,
  `Usia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota_perusahaan`
--

INSERT INTO `anggota_perusahaan` (`id_angota`, `Nama`, `Alamat`, `Usia`) VALUES
(1, 'Aureliya zahera ', 'Jl. Condongcatur', 25),
(2, 'Nazendra Azrak ', 'Jl. Madukusumo', 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji_pegawai`
--

CREATE TABLE `gaji_pegawai` (
  `id_Gaji` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `jumlah_gaji` varchar(20) DEFAULT NULL,
  `tanggal_gaji` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gaji_pegawai`
--

INSERT INTO `gaji_pegawai` (`id_Gaji`, `id_pegawai`, `jumlah_gaji`, `tanggal_gaji`) VALUES
(7706, 1, '8.000.000', '2023-07-01'),
(8809, 2, '9.000.000', '2023-07-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartu_anggota`
--

CREATE TABLE `kartu_anggota` (
  `id_kartu` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `nomor_kartu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kartu_anggota`
--

INSERT INTO `kartu_anggota` (`id_kartu`, `id_anggota`, `nomor_kartu`) VALUES
(1, 1, 'TL-012'),
(2, 2, 'TL-014');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontrak_pegawai`
--

CREATE TABLE `kontrak_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Periode_masuk` date NOT NULL,
  `Periode_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontrak_pegawai`
--

INSERT INTO `kontrak_pegawai` (`id_pegawai`, `Nama`, `Periode_masuk`, `Periode_keluar`) VALUES
(342, 'Nazendra Azrak', '2023-06-01', '2025-06-01'),
(715, 'Aureliya Zahera', '2023-07-03', '2025-07-07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota_perusahaan`
--
ALTER TABLE `anggota_perusahaan`
  ADD PRIMARY KEY (`id_angota`);

--
-- Indeks untuk tabel `gaji_pegawai`
--
ALTER TABLE `gaji_pegawai`
  ADD PRIMARY KEY (`id_Gaji`),
  ADD KEY `FK_Pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `kartu_anggota`
--
ALTER TABLE `kartu_anggota`
  ADD PRIMARY KEY (`id_kartu`),
  ADD KEY `FK_Anggota` (`id_anggota`);

--
-- Indeks untuk tabel `kontrak_pegawai`
--
ALTER TABLE `kontrak_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota_perusahaan`
--
ALTER TABLE `anggota_perusahaan`
  MODIFY `id_angota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `gaji_pegawai`
--
ALTER TABLE `gaji_pegawai`
  MODIFY `id_Gaji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8810;

--
-- AUTO_INCREMENT untuk tabel `kartu_anggota`
--
ALTER TABLE `kartu_anggota`
  MODIFY `id_kartu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kontrak_pegawai`
--
ALTER TABLE `kontrak_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=717;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `gaji_pegawai`
--
ALTER TABLE `gaji_pegawai`
  ADD CONSTRAINT `FK_Pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `anggota_perusahaan` (`id_angota`);

--
-- Ketidakleluasaan untuk tabel `kartu_anggota`
--
ALTER TABLE `kartu_anggota`
  ADD CONSTRAINT `FK_Anggota` FOREIGN KEY (`id_anggota`) REFERENCES `anggota_perusahaan` (`id_angota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
