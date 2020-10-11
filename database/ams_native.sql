-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2019 at 04:46 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams_native`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepsek`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Dinas Pendidikan Pemuda Dan Olahraga', 'BPJS Ketenagakerjaan', 'BUMN', 'Jalan ', 'M. Rudianto', '-', 'https://www.bpjsketenagakerjaan.go.id/', 'rudi@masrud.com', 'logo.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 100, 10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(1, 1, 'PERATURAN DIREKSI BPJS KETENAGAKERJAAN', 'PERDIR/12/072018', 'PEDOMAN PENGELOLAAN PRODUK HUKUM, NASKAH DINAS, SURAT MASUK DAN SURAT KELUAR DI LINGKUNGAN BPJS KETENAGAKERJAAN', 'PERDIR', '2019-02-06', '2019-02-06', '7048-PERDIR 12 072018 Pedoman Pengelolaan Produk Hukum, Naskah Dinas, Surat Masuk dan Surat Keluar di Lingkungan BPJS Ketenagakerjaan-compressed.pdf', 'PEDOMAN PENGELOLAAN PRODUK HUKUM, NASKAH DINAS, SURAT MASUK DAN SURAT KELUAR DI LINGKUNGAN BPJS KETENAGAKERJAAN', 1),
(6, 2, 'PERATURAN DIREKSI BPJS KETENAGAKERJAAN', 'PERDIR/19/082018', 'PEDOMAN PENGELOLAAN KEARSIPAN DI LINGKUNGAN BPJS KETENAGAKERJAAN', 'PERDIR', '2019-02-07', '2019-02-07', '6192-PERDIR 19 082018 Pedoman Pengelolaan Kearsipan di Lingkungan BPJS Ketenagakerjaan.pdf', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(8, 1, 'DL / DIKLAT DAN PELATIHAN', 'Karir', 'Diklat dan Pelatihan', 'DL 00', 'DL', '2019-02-06', '2019-02-03', '', '-', 1),
(9, 2, 'DL / DIKLAT DAN PELATIHAN', 'Orientasi Persiapan Kerja', 'Naskah-naskah yang berkaitan dengan penyelenggaraan Orientasi Persiapan Kerja, mulai dari usulan sampai dengan evaluasi dan penyusunan laporan.', 'DL 00.00', 'DL', '2019-02-06', '2019-02-03', '', '-', 1),
(10, 3, 'DL / DIKLAT DAN PELATIHAN', 'Program Pengembangan Teknis', 'Naskah yang berkaitan dengan penyelenggaran program pengembangan penyesuain tugas, mulai dari usulan samai dengan evaluasi dan penyusunan laporan: \r\nA. Program pengembangan penyesuaian tugas; \r\nB. Program pengembangan terkait Job Description; \r\nC. Program pengembangan teknis lainnya.', 'DL 00.01', 'DL', '2019-02-06', '2019-02-03', '', '-', 1),
(13, 4, 'DL/DIKLAT DAN PELATIHAN', 'Development Program', 'Naskah-naskah yang berkaitan dengan penyelenggaraan program pengembangan kepemimpinan, mulai dari usulan sampai dengan evaluasi dan penyusunan laporan: A. Basic; B. Intermediate; C. Advance; D. Executive', 'DL 00.02', 'DL', '2019-02-06', '2019-02-06', '', '-', 1),
(14, 5, 'DL/DIKLAT DAN PELATIHAN', 'Program Purna Tugas', 'Naskah-naskah yang berkaitan dengan penyelenggaran Program Purna Tugas, dimulai dari usulan, pelaksanaan dan evaluasi.', 'DL 00.03', 'DL', '2019-02-06', '2019-02-06', '', '-', 1),
(15, 6, 'DL/DIKLAT DAN PELATIHAN', 'Penyegaran', 'Diklat dan Pelatihan', 'DL 01', 'DL', '2019-02-06', '2019-02-06', '', '-', 1),
(16, 7, 'DL/DIKLAT DAN PELATIHAN', 'Kursus', 'Naskah-naskah yang berkaitan dengan penyelenggaraan kursus, dimulai dari usulan pelaksanaan dan evaluasi.', 'DL 01.00', 'DL', '2019-02-06', '2019-02-06', '', '-', 1),
(17, 8, 'DL/DIKLAT DAN PELATIHAN', 'Studi Banding', 'Naskah-naskah yang berkaitan dengan studi banding di dalam dan luar negeri, dimulai dari usulan, pelaksanaan dan evaluasi.', 'DL 01.01', 'DL', '2019-02-06', '2019-02-06', '', '-', 1),
(18, 9, 'DL/DIKLAT DAN PELATIHAN', 'Seminar, onferensi, Lokakarya dan Simposium', 'Naskah-naskah yang berkaitan dengan seminar, konferensi, lokakarya dan simposium, mulai dari usulan, plekasanaan dan evaluasi.', 'DL 01.02', 'DL', '2019-02-06', '2019-02-06', '', '-', 1),
(19, 10, 'DL/DIKLAT DAN PELATIHAN', 'Training/Workshop', 'Naskah-naskah yang berkaitan dengan penyelenggaraan training / workshop, dimulai dari usulan, pelaksanaan dan evaluasi.', 'DL 01.03', 'DL', '2019-02-06', '2019-02-06', '', '-', 1),
(20, 11, 'HK/HUKUM', 'Peraturan Perundang-Undangan', 'Hukum', 'HK 00', 'HK', '2019-02-06', '2019-02-06', '', '-', 1),
(21, 12, 'HK/HUKUM', 'UU/Peraturan pemerintah pengganti Undang-Undang (Perpu)', 'Naskah-Naskah yang berkaitan dengan undang-undang/ peraturan pemerintah pengganti undang-undang', 'HK 00.00', 'HK', '2019-02-06', '2019-02-06', '', '-', 1),
(22, 13, 'HK/HUKUM', 'Peraturan Pemerintah (PP)', 'Naskah-naskah yang berkaitan dengan Peraturan Pemerintah.', 'HK 00.01', 'HK', '2019-02-06', '2019-02-06', '', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '-', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
