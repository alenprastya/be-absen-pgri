-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Sep 2023 pada 03.50
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen-pgri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `jenis_absen` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `kelaId` int(11) DEFAULT NULL,
  `kode_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kode_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `kode_kelas`, `nama_kelas`, `createdAt`, `updatedAt`, `userId`) VALUES
(9, 1, '10 DKV 1', '2023-09-22 04:27:01', '2023-09-22 04:27:01', NULL),
(10, 2, '10 DKV 2', '2023-09-22 04:37:45', '2023-09-22 04:37:45', NULL),
(11, 3, '10 DKV 3', '2023-09-22 05:44:15', '2023-09-22 05:44:15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-kRTnkM32JiBI-uFZdOr879G-mONtsus', '2023-09-23 04:36:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:36:46', '2023-09-22 04:36:46'),
('1FQubQn4-h_fz3afox-M4WqikwHFLzCC', '2023-09-23 03:31:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:31:09', '2023-09-22 03:31:09'),
('4vZjAAbcUAdumV1Rqll-ZjoaAu9fIN9f', '2023-09-23 04:36:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:36:25', '2023-09-22 04:36:25'),
('74xKA0-COEYvtmxIHaSRvZpXJuMihACD', '2023-09-23 04:26:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:26:26', '2023-09-22 04:26:26'),
('7I7jGM8GgPWbMue40SF_xyW2LRzSaEwI', '2023-09-23 04:27:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:27:01', '2023-09-22 04:27:01'),
('7tIBYkAeFO0oO0GNzPoHDhHXZIdYBgeM', '2023-09-23 04:20:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:20:45', '2023-09-22 04:20:45'),
('81i7N-gqdFNRwea3thWTpPOp9CL65BeT', '2023-09-23 04:07:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:07:05', '2023-09-22 04:07:05'),
('97H_7KdluWyXviEBR3BdmuLD5rrzaY0t', '2023-09-23 03:48:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:48:04', '2023-09-22 03:48:04'),
('9WjhZSkY61iWPGboKKuBEpW-gokp-wnQ', '2023-09-23 04:35:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:35:58', '2023-09-22 04:35:58'),
('adO8apcpiJkIS0SsGBhu96356t2TAaoc', '2023-09-23 04:26:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:26:24', '2023-09-22 04:26:24'),
('b6xu1HUT5AwueSOj7xua97GbPWie9KR6', '2023-09-23 04:36:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:36:37', '2023-09-22 04:36:37'),
('BuQR85FYxRyx14ske0v9_QFxL3iKG-ik', '2023-09-23 04:21:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:21:03', '2023-09-22 04:21:03'),
('BvwGi4hpgPcXR0ShQ-sKO37RtZnU3q32', '2023-09-23 04:26:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:26:04', '2023-09-22 04:26:04'),
('C6OnzSbdgp41DfDfvQE6l0TY2r1rYbba', '2023-09-23 05:45:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"76c915d3-2341-4813-99be-f5e26a597afa\"}', '2023-09-22 04:06:27', '2023-09-22 05:45:23'),
('cpBZFBqBf_yajJDXRD1JqSlUdN23FfJd', '2023-09-23 04:26:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:26:15', '2023-09-22 04:26:15'),
('fBEfL2BMSwoa0AhcU05zOKkJa2EttWWn', '2023-09-23 04:20:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:20:40', '2023-09-22 04:20:40'),
('FdL7RXhK10NzL0FpXrINN2qsr2MDBQqT', '2023-09-23 03:37:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:37:20', '2023-09-22 03:37:20'),
('GRPVHChome6eujObxJB0whErl69Omquw', '2023-09-23 03:47:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:47:18', '2023-09-22 03:47:18'),
('hvXzC42wIQU7zM_GI3he6UvYDZMCpk9C', '2023-09-23 04:33:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:33:01', '2023-09-22 04:33:01'),
('hZOgdSCE54nKVTXM1ogOOJsY_TqP4JG9', '2023-09-23 03:44:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:44:18', '2023-09-22 03:44:18'),
('Ig7TyWj47rTN_5sJMEpTBBbDsVPz-dK_', '2023-09-23 05:44:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 05:44:15', '2023-09-22 05:44:15'),
('Jv-Y0iATV0sT6ysu6iAz5IAzLQnzwWX-', '2023-09-23 03:46:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:46:40', '2023-09-22 03:46:40'),
('KgkXUDv1xH5ELO7l4P6fHNXGblispjhP', '2023-09-23 04:24:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"76c915d3-2341-4813-99be-f5e26a597afa\"}', '2023-09-22 03:11:34', '2023-09-22 04:24:57'),
('KY5aJbsbiOBqZGNxmToZOX0hL7gN58M3', '2023-09-23 04:21:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:21:06', '2023-09-22 04:21:06'),
('mGT5BYxbPQnpiUNYkrKaiY7C9rX9JhYQ', '2023-09-23 04:26:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:26:07', '2023-09-22 04:26:07'),
('NKbzElXdwdH4DljUySLVtLVHvLB_lKfy', '2023-09-23 04:20:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:20:36', '2023-09-22 04:20:36'),
('NQZ8Z4yJZWL1-DiYUkcG1hjllmh0wU-P', '2023-09-23 04:26:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:26:28', '2023-09-22 04:26:28'),
('pyDnjkOHhqQZGe8DxPLk0ne96t0ubCbR', '2023-09-23 04:37:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:37:45', '2023-09-22 04:37:45'),
('Qa9FB6KBHE-n7vPrgrlwDDWTPN-Dt_P8', '2023-09-23 03:45:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:45:50', '2023-09-22 03:45:50'),
('qXxpeFTFCnwdg1DIVNWW4Op35QXI9ELb', '2023-09-23 04:06:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:06:27', '2023-09-22 04:06:27'),
('tIBbUO_znHTJSWi8KuAeokhgDVc96Yf7', '2023-09-23 04:29:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:29:40', '2023-09-22 04:29:40'),
('TZycB6yvsy_RyTLUUuNLig5q8AO8bFDc', '2023-09-23 04:09:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:09:29', '2023-09-22 04:09:29'),
('W7ujTas4zBVwJkcyTGhhdyl6dVhHkfcT', '2023-09-23 04:27:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:27:34', '2023-09-22 04:27:34'),
('WJPMbAOONrAf37LM0qD29e5pRhBOM4Uw', '2023-09-23 04:21:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:21:08', '2023-09-22 04:21:08'),
('XSPI4ux_o6gcFmHhKDbuONqitPjOOR-x', '2023-09-23 03:45:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:45:25', '2023-09-22 03:45:25'),
('xX5djjc-RXM7jlID3fA1EemFgZwAxVON', '2023-09-23 04:37:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:37:06', '2023-09-22 04:37:06'),
('YjiCwJ51d_X65Lj4BfL5bb_bwCFI9Vh-', '2023-09-23 03:46:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:46:00', '2023-09-22 03:46:00'),
('Ym8owGnGdQsajyjufdk8c4SvN-L4Wr1S', '2023-09-23 03:35:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:35:43', '2023-09-22 03:35:43'),
('YyT9jMR9haTJRKz40FE1XYNnJDyo66kE', '2023-09-23 03:33:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:33:19', '2023-09-22 03:33:19'),
('ZIY8hsQcy2NxLFEJwgCD4JleKuz71deb', '2023-09-23 03:11:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:11:56', '2023-09-22 03:11:56'),
('zJiz5Axmqr0Gug0yjmsXhLu70eTbmFMs', '2023-09-23 04:09:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:09:37', '2023-09-22 04:09:37'),
('Zxxmv04aeRHjl8_F8aO8ezRZNBOxw-1h', '2023-09-23 03:44:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 03:44:11', '2023-09-22 03:44:11'),
('Zz6WOE7Pc9lpb1dmmPAS8Wd3pBlNy0e7', '2023-09-23 04:09:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-22 04:09:21', '2023-09-22 04:09:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `kode_kelas` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '76c915d3-2341-4813-99be-f5e26a597afa', 'Alen Prastya', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$W3e2DfqBe/jFVS6ocu34Nw$d/eE1qnVWSC5EJsKq7lXFxOeH/KZOcqWCVHZXEuGqfw', 'admin', '2023-09-22 03:11:46', '2023-09-22 03:11:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `walas`
--

CREATE TABLE `walas` (
  `id` int(11) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama_walas` varchar(255) NOT NULL,
  `kode_kelas` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`),
  ADD KEY `userId` (`userId`),
  ADD KEY `kelaId` (`kelaId`),
  ADD KEY `kode_kelas` (`kode_kelas`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_kelas` (`kode_kelas`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `kode_kelas` (`kode_kelas`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `walas`
--
ALTER TABLE `walas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `walas`
--
ALTER TABLE `walas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `absensi_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `absensi_ibfk_3` FOREIGN KEY (`kelaId`) REFERENCES `kelas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `absensi_ibfk_4` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `walas`
--
ALTER TABLE `walas`
  ADD CONSTRAINT `walas_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
