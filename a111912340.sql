-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2022 pada 05.18
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a111912340`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `stok`, `gambar`, `id_kategori`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Yellow Sweater', 75000, 12, 'product-1.jpg', 2, 1, '2022-12-17 09:35:17', NULL, NULL),
(2, 'Dusty Pink Crop Swater', 1000000, 12, 'product-2.jpg', 2, 1, '1900-01-17 00:00:00', NULL, NULL),
(3, 'Green Jacket', 2500000, 3, 'product-3.jpg', 1, 1, '1900-01-17 00:00:00', NULL, NULL),
(4, 'Gree syal', 1324000, 15, 'product-4.jpg', 3, 1, '2022-12-17 03:42:19', NULL, NULL),
(5, 'Yellow-Bag', 1241400, 23, 'product-7.jpg', 3, 1, '2022-12-17 03:43:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) UNSIGNED NOT NULL,
  `kode_voucher` varchar(10) NOT NULL,
  `tanggal_mulai_berlaku` date NOT NULL,
  `tanggal_akhir_berlaku` date NOT NULL,
  `besar_diskon` tinyint(2) NOT NULL,
  `aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskon`
--

INSERT INTO `diskon` (`id`, `kode_voucher`, `tanggal_mulai_berlaku`, `tanggal_akhir_berlaku`, `besar_diskon`, `aktif`) VALUES
(1, 'a12ft5g5', '2022-12-17', '2022-12-19', 125, 1),
(2, 'Pandhupaga', '2022-12-17', '2022-12-28', 12, 0),
(3, 'lebaranind', '2022-12-17', '2022-12-30', 12, 1),
(4, 'Nataru22', '2022-12-21', '2022-12-31', 50, 1),
(5, 'KaesangWed', '2022-12-21', '2022-12-31', 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Men', 1, '2022-12-17 09:24:13', NULL, NULL),
(2, 'Women', 1, '2022-12-17 00:00:00', NULL, NULL),
(3, 'Kid', 1, '2022-12-17 09:27:22', NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED DEFAULT NULL,
  `id_user` int(11) UNSIGNED DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `id_barang`, `id_user`, `komentar`, `created_by`, `created_date`, `upload_by`, `upload_date`) VALUES
(1, 3, 3, 'dfjkdf', 3, '2022-12-16 21:40:29', NULL, NULL),
(2, 3, 4, 'kEREN CUK', 4, '2022-12-16 22:15:17', NULL, NULL),
(3, 3, 3, 'ujvk,j', 3, '2022-12-20 06:36:14', NULL, NULL),
(4, 1, 5, 'mantab', 5, '2022-12-20 21:07:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) UNSIGNED DEFAULT NULL,
  `id_pembeli` int(11) UNSIGNED DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `id_pembeli`, `jumlah`, `total_harga`, `alamat`, `ongkir`, `status`, `created_by`, `created_date`, `upload_by`, `upload_date`) VALUES
(1, 3, 3, 1, 2512000, '12,Semarang, Semarang Barat, Jawa tengah', 12000, 0, 3, '2022-12-16 21:40:23', NULL, NULL),
(2, 3, 4, 1, 2560000, 'sumbawa timur no 11 semarang', 60000, 0, 4, '2022-12-16 22:15:11', NULL, NULL),
(3, 1, 4, 1, 47000, '22, ciracas, east jakarta', 19000, 0, 4, '2022-12-17 01:48:50', NULL, NULL),
(4, 1, 4, 1, 1, '243245', 19000, 0, 4, '2022-12-17 02:03:43', NULL, NULL),
(5, 2, 3, 2, 2085000, 'Dukuh Tanggi Tengah Desa Tanggirejo Rt 01 Rw 03', 85000, 0, 3, '2022-12-20 06:35:58', NULL, NULL),
(6, 2, 3, 1, 1039000, '12,Semarang, Semarang Barat, Jawa tengah', 39000, 0, 3, '2022-12-20 06:45:43', NULL, NULL),
(7, 1, 5, 1, 139000, 'Dukuh Tanggi Tengah Desa Tanggirejo Rt 01 Rw 03', 73000, 0, 5, '2022-12-20 21:07:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `salt` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `avatar`, `role`, `created_by`, `created_date`, `upload_by`, `upload_date`) VALUES
(1, 'pandhupagas', '76405798ca0022651aba7399479815e0', '63943d185fc395.46846105', NULL, NULL, 0, '2022-12-10 02:02:32', NULL, NULL),
(2, 'kopirejeki', 'cf451867a270270a37aa30b12eb7ab36', '639d1cb27e7358.49094502', NULL, NULL, 0, '2022-12-16 19:34:42', NULL, NULL),
(3, 'airflow', 'ee0be3ae751456b7e0950e5bd73dd819', '639d1cd49355f9.74916687', NULL, NULL, 0, '2022-12-16 19:35:16', NULL, NULL),
(4, 'admin', '3ac9f4d169c42d92658104b0ad7a07e6', '639d423439d360.00510613', NULL, NULL, 0, '2022-12-16 22:14:44', NULL, NULL),
(5, 'admin124', 'c2cdcd35f3a1f4f79c2f21ae292c4229', '63a2716dab7570.44362768', NULL, NULL, 0, '2022-12-20 20:37:33', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreignm` (`id_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
