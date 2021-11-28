-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 09:29 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `email`, `password`) VALUES
('admin', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judulberita` varchar(1000) NOT NULL,
  `isiberita` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judulberita`, `isiberita`) VALUES
(2, 'judul', ''),
(3, 'judul', 'aku\r\n'),
(4, 'judul', 'isi'),
(5, 'judul', 'ini isi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(11) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `gaji` int(10) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `usia` int(2) NOT NULL,
  `persyaratanlainnya` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id`, `posisi`, `gaji`, `pendidikan`, `usia`, `persyaratanlainnya`) VALUES
(1, 'HRD', 200000000, 'sd', 30, '-'),
(2, 'prt', 200000000, 'sd', 30, '-');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `idrole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`username`, `email`, `password`, `idrole`) VALUES
('indah', 'indahkhn99@student.uns.ac.id', '1', 2),
('indahh', 'indahkhn99@student.uns.ac.id', '1', 3),
('indahkhn', 'indahkhn99@gmail.com', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nohp` int(13) NOT NULL,
  `notlp` int(20) NOT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `noktp` int(20) NOT NULL,
  `tempatlahir` varchar(11) NOT NULL,
  `tanggallahir` date NOT NULL,
  `jeniskelamin` varchar(20) NOT NULL,
  `statuskawin` varchar(11) NOT NULL,
  `agama` varchar(11) NOT NULL,
  `kewarganegaraan` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `desa` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kabupaten` varchar(20) NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `kodepos` int(11) NOT NULL,
  `tinggibadan` int(11) NOT NULL,
  `beratbadan` int(11) NOT NULL,
  `cacatbadan` varchar(20) NOT NULL,
  `cacatlainnya` varchar(20) NOT NULL,
  `th_sd` int(20) NOT NULL,
  `sd` varchar(30) NOT NULL,
  `th_smp` int(20) NOT NULL,
  `smp` varchar(30) NOT NULL,
  `th_smk` int(20) NOT NULL,
  `smk` varchar(30) NOT NULL,
  `jurusansmk` varchar(30) NOT NULL,
  `th_diploma` int(20) NOT NULL,
  `diploma` varchar(30) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `th_diplomaa` int(20) NOT NULL,
  `diplomaa` varchar(30) NOT NULL,
  `prodii` varchar(30) NOT NULL,
  `th_diplomaaa` int(20) NOT NULL,
  `diplomaaa` varchar(30) NOT NULL,
  `prodiii` varchar(30) NOT NULL,
  `th_sarjana` int(20) NOT NULL,
  `sarjana` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `th_sarjanaa` int(20) NOT NULL,
  `sarjanaa` varchar(30) NOT NULL,
  `fakultass` varchar(30) NOT NULL,
  `th_sarjanaaa` int(20) NOT NULL,
  `sarjanaaa` varchar(30) NOT NULL,
  `fakultasss` varchar(30) NOT NULL,
  `nonformal` varchar(30) NOT NULL,
  `sertifikat` int(30) NOT NULL,
  `foto_sertif` varchar(30) NOT NULL,
  `kerja` varchar(30) NOT NULL,
  `gaji` int(30) NOT NULL,
  `pokok` varchar(30) NOT NULL,
  `sampingan` varchar(30) NOT NULL,
  `statuskerja` varchar(20) NOT NULL,
  `perusahaan` varchar(30) NOT NULL,
  `lokasi` varchar(30) NOT NULL,
  `lapusaha` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `lamakerja` int(30) NOT NULL,
  `upah` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `nama`, `nohp`, `notlp`, `foto`, `noktp`, `tempatlahir`, `tanggallahir`, `jeniskelamin`, `statuskawin`, `agama`, `kewarganegaraan`, `alamat`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `kodepos`, `tinggibadan`, `beratbadan`, `cacatbadan`, `cacatlainnya`, `th_sd`, `sd`, `th_smp`, `smp`, `th_smk`, `smk`, `jurusansmk`, `th_diploma`, `diploma`, `prodi`, `th_diplomaa`, `diplomaa`, `prodii`, `th_diplomaaa`, `diplomaaa`, `prodiii`, `th_sarjana`, `sarjana`, `fakultas`, `th_sarjanaa`, `sarjanaa`, `fakultass`, `th_sarjanaaa`, `sarjanaaa`, `fakultasss`, `nonformal`, `sertifikat`, `foto_sertif`, `kerja`, `gaji`, `pokok`, `sampingan`, `statuskerja`, `perusahaan`, `lokasi`, `lapusaha`, `jabatan`, `lamakerja`, `upah`, `status`) VALUES
(33, '', 'Indah Khoirun Nisa', 88, 9, 'struktur-organisasi.png', 1212, 'clp', '1999-06-15', 'perempuan', 'belumkawin', 'islam', 'indo', 'clcp', 'p', 's', 'c', 'jt', 2, 5656, 656, '-', '-', 2011, 'struktur-organisasi.png', 2014, 'struktur-organisasi.png', 2017, 'struktur-organisasi.png', '-', 2018, 'struktur-organisasi.png', '-', 2019, 'struktur-organisasi.png', '-', 2020, 'struktur-organisasi.png', '-', 2021, 'struktur-organisasi.png', '-', 2023, 'struktur-organisasi.png', '-', 2024, 'struktur-organisasi.png', '-', '-', 0, 'struktur-organisasi.png', '67', 0, '999', '9999', 'belumbekerja', '-', '-', '-', '-', 123, '45', '1');

-- --------------------------------------------------------

--
-- Table structure for table `register2`
--

CREATE TABLE `register2` (
  `id` int(50) NOT NULL,
  `namaperusahaan` varchar(100) NOT NULL,
  `website` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `jenispenyediakerja` varchar(50) NOT NULL,
  `logoperusahaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kodepos` int(30) NOT NULL,
  `nohp` int(30) NOT NULL,
  `notelp` int(30) NOT NULL,
  `nofax` int(30) NOT NULL,
  `kontakperson` int(30) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `googleplus` varchar(50) NOT NULL,
  `aktapendirian` varchar(50) NOT NULL,
  `siup` varchar(50) NOT NULL,
  `tdp` varchar(50) NOT NULL,
  `situ` varchar(50) NOT NULL,
  `ijinlainnya` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register2`
--

INSERT INTO `register2` (`id`, `namaperusahaan`, `website`, `deskripsi`, `jenispenyediakerja`, `logoperusahaan`, `alamat`, `kabupaten`, `provinsi`, `kodepos`, `nohp`, `notelp`, `nofax`, `kontakperson`, `jabatan`, `facebook`, `twitter`, `googleplus`, `aktapendirian`, `siup`, `tdp`, `situ`, `ijinlainnya`) VALUES
(1, 'perusahaanku', '', 'ini perusahaanku', 'penyedia kerja', 'Screenshot (12).png', 'sidareja', 'cilacap', 'jawa tengah', 0, 88, 0, 0, 0, 'CEO', '', '', '', 'Screenshot (11).png', 'Screenshot (13).png', 'Screenshot (4).png', 'Screenshot (14).png', 'Screenshot (3).png');

-- --------------------------------------------------------

--
-- Table structure for table `register3`
--

CREATE TABLE `register3` (
  `id` int(50) NOT NULL,
  `namalembaga` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `website` varchar(50) NOT NULL,
  `jenispenyediakerja` varchar(50) NOT NULL,
  `logolembaga` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kodepos` int(30) NOT NULL,
  `nohp` int(30) NOT NULL,
  `notelp` int(30) NOT NULL,
  `nofax` int(30) NOT NULL,
  `kontakperson` int(30) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `googleplus` varchar(50) NOT NULL,
  `akta` varchar(50) NOT NULL,
  `siup` varchar(50) NOT NULL,
  `tdp` varchar(50) NOT NULL,
  `situ` varchar(50) NOT NULL,
  `ijinlainnya` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register3`
--

INSERT INTO `register3` (`id`, `namalembaga`, `deskripsi`, `website`, `jenispenyediakerja`, `logolembaga`, `alamat`, `kabupaten`, `provinsi`, `kodepos`, `nohp`, `notelp`, `nofax`, `kontakperson`, `jabatan`, `facebook`, `twitter`, `googleplus`, `akta`, `siup`, `tdp`, `situ`, `ijinlainnya`) VALUES
(2, 'BLK SOLO', 'ini BLK', '', 'lembagapenyediakerja', 'Screenshot (8).png', '0', 'solo', 'jawa tengah', 0, 88, 0, 0, 0, 'CEO', '', '', '', 'Screenshot (6).png', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `idrole` int(2) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`idrole`, `role`) VALUES
(1, 'pencari kerja'),
(2, 'penyedia kerja'),
(3, 'lembaga pelatihan kerja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`),
  ADD KEY `username_2` (`username`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register2`
--
ALTER TABLE `register2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register3`
--
ALTER TABLE `register3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idrole`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `register2`
--
ALTER TABLE `register2`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `register3`
--
ALTER TABLE `register3`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
