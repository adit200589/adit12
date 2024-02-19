-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Feb 2024 pada 09.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aditya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(25) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `thn_terbit` date NOT NULL,
  `jml_halaman` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `jml_halaman`, `deskripsi`, `isi_buku`) VALUES
('65d176fc4d158.jpg', 'KB0001', 'novel', 'Berani tidak di sukai', 'Ichiro kismihi &amp; Fumitake koga', 'PT Gramedia Pustaka Utama ', '2019-09-09', 323, 'Menggambarkan bagaimana cara mengungkapkan kekuatan di dalam diri untuk mencapai kebahagiaan sejati dan menjadi versi terbaik diri kita', 'Berani Tidak Disukai (Ichiro Kishimi, Fumitake Koga) .pdf'),
('65d18be51ac67.jpg', 'KB0002', 'Komik', 'si juki', 'Faza Meonk', ' Bukune', '2014-02-15', 146, 'Menceritakan si juki pemuda anti mainstream ', 'Si Juki Komik Strip (Faza Meonk) .pdf'),
('65d17b9e2d222.png', 'KB0003', 'novel', 'seni membaca pikiran dan perasaan orang lain', 'Euny Hong', 'PT Gramedia Pustaka Utama ', '2020-05-14', 256, 'Nunchi adalah suatu seni memahami dengan seketika apa yang orang-orang pikirkan dan rasakan , agar dapat meningkatkan kualitas hubungan dalam hidup', 'Nunchi Seni Membaca Pikiran dan Perasaan Orang LainÑRahasia Hidup Bahagia dan Sukses dari Korea (Euny Hong) (z-lib.org).pdf'),
('65d17d83217b2.jpg', 'KB0004', 'Dongeng', 'Kalah oleh si cerdik', 'Atisah', 'Gramedia Pustaka Utama', '2007-07-17', 58, 'Mendeskrisikan nilai-nilai pendidikan karakter yang terdapat dalam cerita ', 'Kalah oleh Si Cerdik.pdf'),
('65d17fa127893.png', 'KB0005', 'NonFiksi', 'Rich Dad poor Dad', 'Robert T. Kiyosaki', 'Gramedia Pustaka Utama', '2016-08-21', 270, 'Rich Dad Poor Dad adalah buku yang membahas masalah finansial banyak orang di karenakan ajaran keliru orang tua mereka mengenai keungan , yang juga dialaminya semasa kecil dan remaja.', 'Rich Dad Poor Dad (Robert T. Kiyosaki) (z-lib.org).pdf'),
('65d181ecd2b4a.jpg', 'KB0006', 'Sejarah', 'Sejarah dunia yang di sembunyikan', 'Jonathan Black', 'Alvabet', '2015-05-01', 633, 'Mengungkapkan tentang keraguan dan kepercayaan kita akan sejarah mitologi yunani dan mesir kuno serta cerita rakyat yahudi yang tidak dapat kita lihat langsung kebenarannya.', 'Sejarah Dunia yang Disembunyikan (Jonathan Black).pdf'),
('65d1c65094463.jpg', 'KB0007', 'Dongeng', 'Timun Emas', 'Danandjaja', 'Mulia jaya', '2018-03-14', 56, 'Menceritakan kisah seorang gadis pemberani yang mencoba untuk bertahan dan melarikan diri dari raksasa hijau yang jahat yang mencoba untuk menangkap dan memakannya', 'Timun emas.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('Dongeng'),
('filsafat'),
('informatika'),
('Komik'),
('NonFiksi'),
('novel'),
('sains'),
('Sejarah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`nisn`, `nama`, `password`, `kelas`, `jurusan`, `alamat`) VALUES
(10, 'aditya', '12345', '12', 'Rekayasa Perangkat Lunak', 'bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sebagai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `sebagai`) VALUES
(36, 'dit', '123', 'Aditya Nur Ramadhan', 'petugas'),
(44, 'adit', '12345', 'Aditya Nur Ramadhan', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nisn`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `nisn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12346;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_4` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
