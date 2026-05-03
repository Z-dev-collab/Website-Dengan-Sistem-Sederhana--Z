-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2026 pada 08.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmhs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`id_mhs`, `nama`, `jurusan`, `id_mapel`) VALUES
(1, 'Afifah Raihana', 'Kedokteran', 2),
(2, 'Lukman Nul Hakim', 'K3', 3),
(3, 'Ardiansyah Pratama', 'Teknik Informasi', 1),
(4, 'Afifah Raihana', 'Kedokteran', 4),
(5, 'Lukman Nul Hakim', 'K3', 5),
(6, 'Syifaa', 'Kedokteran', 6),
(7, 'Ardiansyah Pratama', 'Teknik Elektro', 6),
(8, 'Lukman Nul Hakim', 'K3', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(20) NOT NULL,
  `jumlah_sks` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_mapel`, `nama_mapel`, `jumlah_sks`) VALUES
(6, 'Kewirausahaan', '20 SKS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_dosen`
--

CREATE TABLE `nama_dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(20) NOT NULL,
  `nomor_hp` int(11) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nama_dosen`
--

INSERT INTO `nama_dosen` (`id_dosen`, `nama_dosen`, `nomor_hp`, `alamat`, `id_mapel`) VALUES
(6, 'Raden Aldhian Deska ', 2147483647, 'Bukit Jodoh Blok L R', 6),
(4, 'Raden Aldhian ', 2147483647, 'Bukit Jodoh Blok L R', 5),
(5, 'Zoharyadi Tri Admaja', 2147483647, 'Bengkong', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sks`
--

CREATE TABLE `sks` (
  `id_sks` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `status` enum('Waiting') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sks`
--

INSERT INTO `sks` (`id_sks`, `id_dosen`, `id_mhs`, `status`) VALUES
(3, 3, 3, 'Waiting'),
(2, 3, 1, 'Waiting'),
(4, 5, 1, 'Waiting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama`, `status`) VALUES
(2, 'Ardiansyah', '1234', 'Ardiansyah Pratama', 'Tidak Aktif'),
(3, 'Afifah07099', '070509', 'Afifah Raihana', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `nama_dosen`
--
ALTER TABLE `nama_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `sks`
--
ALTER TABLE `sks`
  ADD PRIMARY KEY (`id_sks`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `nama_dosen`
--
ALTER TABLE `nama_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sks`
--
ALTER TABLE `sks`
  MODIFY `id_sks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
