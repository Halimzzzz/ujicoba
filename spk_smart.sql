-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Bulan Mei 2023 pada 02.19
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benih_tomat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_alternatif`, `username`) VALUES
(17, 'Adelia Putri Maharani', 'dira'),
(18, 'Desvia Cinta', 'dira'),
(19, 'Ega Cns', 'dira'),
(21, 'Rizki Ragil Saputra', 'dira'),
(22, 'Bagus Hidayattullah', 'dira');

-- --------------------------------------------------------

--
-- Struktur dari tabel `checked`
--

CREATE TABLE `checked` (
  `id_checked` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `checked`
--

INSERT INTO `checked` (`id_checked`, `id_alternatif`, `username`) VALUES
(70, 17, 'dira'),
(71, 18, 'dira'),
(72, 19, 'dira'),
(73, 21, 'dira'),
(74, 22, 'dira');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(10) NOT NULL,
  `nama_kriteria` varchar(25) NOT NULL,
  `jenis_kriteria` set('Benefit','Cost') NOT NULL,
  `bobot_kriteria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama_kriteria`, `jenis_kriteria`, `bobot_kriteria`) VALUES
(1, 'C1', 'Nilai Hafalan', 'Benefit', 0.4),
(2, 'C2', 'Nilai Kelancaran', 'Benefit', 0.3),
(3, 'C3', 'Nilai Tahlil', 'Benefit', 0.1),
(4, 'C4', 'Nilai Tajiwd', 'Benefit', 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks`
--

CREATE TABLE `matriks` (
  `id_matriks` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matriks`
--

INSERT INTO `matriks` (`id_matriks`, `id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(141, 0, 1, 3),
(142, 0, 2, 6),
(143, 0, 3, 11),
(144, 0, 4, 15),
(156, 17, 1, 1),
(157, 17, 2, 4),
(158, 17, 3, 9),
(159, 17, 4, 13),
(161, 18, 1, 2),
(162, 18, 2, 5),
(163, 18, 3, 10),
(164, 18, 4, 14),
(166, 19, 1, 3),
(167, 19, 2, 6),
(168, 19, 3, 11),
(169, 19, 4, 15),
(175, 21, 1, 1),
(176, 21, 2, 6),
(177, 21, 3, 10),
(178, 21, 4, 14),
(179, 22, 1, 3),
(180, 22, 2, 6),
(181, 22, 3, 9),
(182, 22, 4, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` set('Admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Dira Anis AR', 'dira', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'Admin'),
(2, 'ase', 'aser', 'basuki', 'Admin'),
(3, 'basuki nur halim', 'halim', '20ad246ed9899ca47838da95dfb139c45fd8155bf603e884fdd6e8a8dfdd1116', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peringkat`
--

CREATE TABLE `peringkat` (
  `id_peringkat` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai_peringkat` float NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peringkat`
--

INSERT INTO `peringkat` (`id_peringkat`, `id_alternatif`, `nilai_peringkat`, `username`) VALUES
(67, 17, 1, 'dira'),
(68, 18, 0.333, 'dira'),
(69, 19, 0, 'dira'),
(70, 21, 0.5, 'dira'),
(71, 22, 0.3, 'dira');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_subkriteria` varchar(30) NOT NULL,
  `nilai_subkriteria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `nama_subkriteria`, `nilai_subkriteria`) VALUES
(1, 1, 'Hafal seluruh Juz Amma', 100),
(2, 1, 'Hafal lebih dari setengah juz', 80),
(3, 1, 'Hafal setengah juz', 70),
(4, 2, 'Sangat lancar', 100),
(5, 2, 'Lancar', 80),
(6, 2, 'Cukup lancar ', 70),
(7, 2, 'Kurang lancar ', 50),
(8, 2, 'Sangat tidak lancar', 0),
(9, 3, 'Hafal seluruh bacaan tahlil', 100),
(10, 3, 'Hafal lebih dari setengah baca', 80),
(11, 3, 'Hafal sebagian', 70),
(12, 3, 'Tidak hafal sama sekali', 50),
(13, 4, 'Sangat baik', 100),
(14, 4, 'Baik', 80),
(15, 4, 'Cukup', 70),
(16, 4, 'Kurang', 50),
(17, 4, 'Sangat kurang', 0),
(24, 1, 'Hafal beberapa surat ', 50),
(25, 1, 'Tidak hafal', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `checked`
--
ALTER TABLE `checked`
  ADD PRIMARY KEY (`id_checked`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `matriks`
--
ALTER TABLE `matriks`
  ADD PRIMARY KEY (`id_matriks`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `peringkat`
--
ALTER TABLE `peringkat`
  ADD PRIMARY KEY (`id_peringkat`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `checked`
--
ALTER TABLE `checked`
  MODIFY `id_checked` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `matriks`
--
ALTER TABLE `matriks`
  MODIFY `id_matriks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `peringkat`
--
ALTER TABLE `peringkat`
  MODIFY `id_peringkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
