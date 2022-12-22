-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Des 2022 pada 13.41
-- Versi server: 10.5.16-MariaDB
-- Versi PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19717438_madiskaqu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggaran`
--

CREATE TABLE `anggaran` (
  `jumlah` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggaran`
--

INSERT INTO `anggaran` (`jumlah`) VALUES
(0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas`
--

CREATE TABLE `kas` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kas`
--

INSERT INTO `kas` (`id`, `kode`, `tanggal`, `jumlah`, `operator`, `status_delete`) VALUES
(1, 'KAS/2209/0001', '2022-09-30', 3, 'ruham', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_detail`
--

CREATE TABLE `kas_detail` (
  `id` int(11) NOT NULL,
  `id_kas` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kas_detail`
--

INSERT INTO `kas_detail` (`id`, `id_kas`, `id_user`, `jumlah`, `status_delete`) VALUES
(1, 1, 7, 1, 1),
(2, 1, 8, 1, 1),
(3, 1, 9, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `nama`, `tanggal`, `deskripsi`, `image`, `status_delete`) VALUES
(1, 'Lorem Ipsum', '2022-10-08', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1654695950954.jpg', 0),
(2, 'Misty', '2022-06-15', 'An example of where you can put an image of a project, or anything else, along with a description.', '1654696001579.jpg', 1),
(3, 'Mountains', '2022-06-22', 'Another example of a project with its respective description. These sections work well responsively as well, try this theme on a small screen!', '1654696054255.jpg', 1),
(4, 'hello world', '2020-09-30', 'tests', '1664538113992.png', 1),
(5, 'lorem ipsum', '2022-10-08', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1665229793540.jpg', 0),
(6, 'Lorem ipsum', '2022-10-08', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1665231122680.jpg', 0),
(7, 'test', '2022-10-18', 'cobaaaaaaaaaaaaaaa', '1666060809747.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `no_wa` varchar(15) NOT NULL,
  `status_kirim` tinyint(1) NOT NULL DEFAULT 0,
  `password_baru` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lupa_password`
--

INSERT INTO `lupa_password` (`id`, `id_user`, `tanggal`, `no_wa`, `status_kirim`, `password_baru`) VALUES
(1, 7, '2022-10-08', '089607765169', 1, '1665228272');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pemasukan`
--

CREATE TABLE `m_pemasukan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `status_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_pemasukan`
--

INSERT INTO `m_pemasukan` (`id`, `nama`, `status_delete`) VALUES
(1, 'Kas', 0),
(2, 'kas1', 1),
(3, 'Belanja Rutin', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pengeluaran`
--

CREATE TABLE `m_pengeluaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `status_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_pengeluaran`
--

INSERT INTO `m_pengeluaran` (`id`, `nama`, `status_delete`) VALUES
(1, 'beli makanan', 1),
(2, 'beli makanan', 1),
(3, 'beli makanan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notif_pengumuman`
--

CREATE TABLE `notif_pengumuman` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_pengumuman` int(11) DEFAULT NULL,
  `telah_dibaca` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id` int(11) NOT NULL,
  `idm_pemasukan` int(11) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemasukan`
--

INSERT INTO `pemasukan` (`id`, `idm_pemasukan`, `kode`, `tanggal`, `jumlah`, `operator`, `keterangan`, `status_delete`) VALUES
(1, 1, 'PMS/2209/0001', '2022-09-30', 3, 'ruham', NULL, 1);

--
-- Trigger `pemasukan`
--
DELIMITER $$
CREATE TRIGGER `pemasukan_insert` AFTER INSERT ON `pemasukan` FOR EACH ROW BEGIN
    UPDATE anggaran SET jumlah = jumlah + NEW.jumlah;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pemasukan_update` AFTER UPDATE ON `pemasukan` FOR EACH ROW BEGIN
	IF(NEW.status_delete = 0) THEN
		UPDATE anggaran SET jumlah = (jumlah - OLD.jumlah) + NEW.jumlah;
    ELSE
    	UPDATE anggaran SET jumlah = jumlah - NEW.jumlah;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `idm_pengeluaran` int(11) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `idm_pengeluaran`, `kode`, `tanggal`, `jumlah`, `operator`, `keterangan`, `status_delete`) VALUES
(1, NULL, 'PNG/2209/0001', '2022-09-30', 0, 'ruham', '', 1);

--
-- Trigger `pengeluaran`
--
DELIMITER $$
CREATE TRIGGER `pengeluaran_insert` AFTER INSERT ON `pengeluaran` FOR EACH ROW BEGIN
    UPDATE anggaran SET jumlah = jumlah - NEW.jumlah;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pengeluaran_update` AFTER UPDATE ON `pengeluaran` FOR EACH ROW BEGIN
	IF(NEW.status_delete = 0) THEN
		UPDATE anggaran SET jumlah = (jumlah + OLD.jumlah) - NEW.jumlah;
    ELSE
    	UPDATE anggaran SET jumlah = jumlah + NEW.jumlah;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `waktu` time DEFAULT '00:00:00',
  `tempat` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `nama`, `waktu`, `tempat`, `keterangan`, `tanggal`, `created_at`, `status_delete`) VALUES
(1, 'hello world', '12:00:00', 'asdad', 'adwdaw', '2022-01-04', '2022-09-30 12:30:30', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id` int(11) NOT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `nama_peminjam` varchar(30) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '0: belum; 1: kembali',
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `merk` varchar(50) DEFAULT NULL,
  `stok` int(11) DEFAULT 0,
  `dipinjam` int(11) DEFAULT 0,
  `keterangan` text DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `unit`
--

INSERT INTO `unit` (`id`, `nama`, `merk`, `stok`, `dipinjam`, `keterangan`, `status_delete`) VALUES
(1, 'ruham', 'hp', 1, 0, 'pinjaeman\r\n', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type` int(11) NOT NULL,
  `nomor_wa` varchar(15) NOT NULL,
  `status_approve` tinyint(1) NOT NULL COMMENT '0:belum disetujui, 1: sudah disetujui',
  `status_delete` tinyint(1) DEFAULT 0,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `user_type`, `nomor_wa`, `status_approve`, `status_delete`, `image`) VALUES
(7, 'syaid andhika', 'andhika22', '$2y$10$b7NnP0fmknU3ZWXUaS2AJ.3T5uzouIHZnXxw4NivF98lCV7fVdPPy', 1, '089607765169', 1, 0, '1669687687.png'),
(8, 'Ruhamaja Aslaba', 'ruham', '$2y$10$h9pwn5ojYXf3vbrtKVNfqeSgtIksKuclmQS7mMwpNTRDcvYCn2h6.', 2, '082138977255', 1, 0, 'no-image.svg'),
(9, 'Galuh Abdul Rozaq', 'galuh', '$2y$10$YAptCuA/WX0mEf0wP.xzluy7Lu.E0eDRw2lzC/u5t6lkmgT5oveBe', 3, ' 085158522503', 1, 0, 'no-image.svg'),
(10, 'zulfan', 'zulfa', '$2y$10$YGmVpOFyefyzVQftawHY0O7Mii/.gSKf6/LTadJtPcjyuvibW0NvC', 4, '234567890-', 1, 0, 'no-image.svg'),
(11, 'coba', 'coba', '$2y$10$ANKx4/VArIyLqEYL6AJkiOiyk8MQaR6O60TS4039aHjDMMmIKpttK', 4, '08976', 1, 0, 'no-image.svg'),
(12, 'cobaaa', 'cobaaa', '$2y$10$JJgvL1JOs/jDEl39gWIhGO4WuZqsPKCfDxQLdu/UCz9Ss6oFbFEZe', 4, '09890', 0, 0, 'no-image.svg'),
(13, 'test69', 'test69', '$2y$10$F7spbc.XOMGN301zNhJAQ.9Sq/o8pVO6xPVD1kkBqy2530iDJSs06', 4, '69', 1, 0, 'no-image.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_type`
--

CREATE TABLE `user_type` (
  `id_user_type` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_type`
--

INSERT INTO `user_type` (`id_user_type`, `nama`, `status_delete`) VALUES
(1, 'admin', 0),
(2, 'bendahara', 0),
(3, 'petugas', 0),
(4, 'anggota', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_detail`
--
ALTER TABLE `kas_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_pemasukan`
--
ALTER TABLE `m_pemasukan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_pengeluaran`
--
ALTER TABLE `m_pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notif_pengumuman`
--
ALTER TABLE `notif_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id_user_type`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kas`
--
ALTER TABLE `kas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kas_detail`
--
ALTER TABLE `kas_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `m_pemasukan`
--
ALTER TABLE `m_pemasukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_pengeluaran`
--
ALTER TABLE `m_pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `notif_pengumuman`
--
ALTER TABLE `notif_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id_user_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
