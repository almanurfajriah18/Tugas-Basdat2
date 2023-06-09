-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 03:51 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kursus`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Desain Grafis');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `kode` varchar(45) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `durasi_dan_biaya` varchar(100) NOT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `kode`, `deskripsi`, `durasi_dan_biaya`, `kategori_id`) VALUES
(1, 'cv', 'Kursus Canva', '1 jam 20000', 1),
(2, 'in', 'Kursus Inkscape', '1 jam 15000', 1),
(3, 'gm', 'Kursus GIMP', '1 Jam 10000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `hp` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `materi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`id`, `nim`, `nama`, `gender`, `hp`, `email`, `alamat`, `foto`, `materi_id`) VALUES
(10, 12345678, 'Robert Kursi', 'Perempuan', 475962350, 'robertkursi@gmail', 'Bogor', '', 1),
(20, 3826296, 'Jhonson Eliziber', 'Laki - Laki', 328040, 'jhonsonemel@gmail.com', 'Siduarjo', NULL, 3),
(30, 3929072, 'Miya binti Layla', 'Perempuan', 397402, 'laylatulmiya@gmail.com', 'Jakarta', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_kelas`
--

CREATE TABLE `penjadwalan_kelas` (
  `id` int(11) NOT NULL,
  `kode_kelas` varchar(45) NOT NULL,
  `kelas` varchar(45) NOT NULL,
  `hari` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `materi_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `peserta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjadwalan_kelas`
--

INSERT INTO `penjadwalan_kelas` (`id`, `kode_kelas`, `kelas`, `hari`, `tgl_mulai`, `tgl_akhir`, `jam_mulai`, `jam_akhir`, `materi_id`, `pengajar_id`, `peserta_id`) VALUES
(4, 'enam', 'anggrek', '2023-06-06', '2023-06-06', '2023-06-06', '08:00:00', '10:00:00', 3, 30, 4),
(5, 'lima', 'tulip', '2023-06-05', '2023-06-05', '2023-06-05', '08:00:00', '10:00:00', 2, 20, 6),
(6, 'empat', 'dahlia', '2023-06-04', '2023-06-04', '2023-06-04', '08:00:00', '10:00:00', 3, 30, 2),
(7, 'tiga', 'matahari', '2023-06-03', '2023-06-03', '2023-06-03', '08:00:00', '10:00:00', 2, 20, 5),
(8, 'dua', 'melati', '2023-06-02', '2023-06-02', '2023-06-02', '08:00:00', '10:00:00', 3, 30, 1),
(9, 'satu', 'mawar', '2023-06-01', '2023-06-01', '2023-06-01', '08:00:00', '10:00:00', 1, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `hp` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `materi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id`, `nama`, `gender`, `hp`, `email`, `foto`, `materi_id`) VALUES
(1, 'Edoradore', 'Perempuan', 983274070, 'edoradore@gmail.com', NULL, 2),
(2, 'Angela Gustin', 'Perempuan', 83847979, 'angelagustin@gmail.com', NULL, 2),
(3, 'Alucrad  Hanzo', 'Laki-laki', 842569875, 'alucradhanzo@gmail.com', NULL, 1),
(4, 'Otong apiw', 'Laki - Laki', 854789653, 'otongapiw@gmail.com', NULL, 3),
(5, 'Harlia Purnama', 'Perempuan', 977625437, 'harliap@gmail.com', NULL, 3),
(6, 'Sricahyani', 'Perempuan', 564284957, 'yanicah@gmail.com', NULL, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_materi_kategori_idx` (`kategori_id`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengajar_materi1_idx` (`materi_id`);

--
-- Indexes for table `penjadwalan_kelas`
--
ALTER TABLE `penjadwalan_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_penjadwalan_kelas_materi1_idx` (`materi_id`),
  ADD KEY `fk_penjadwalan_kelas_pengajar1_idx` (`pengajar_id`),
  ADD KEY `fk_penjadwalan_kelas_peserta1_idx` (`peserta_id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_peserta_materi1_idx` (`materi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `penjadwalan_kelas`
--
ALTER TABLE `penjadwalan_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `fk_materi_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD CONSTRAINT `fk_pengajar_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `penjadwalan_kelas`
--
ALTER TABLE `penjadwalan_kelas`
  ADD CONSTRAINT `fk_penjadwalan_kelas_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_penjadwalan_kelas_pengajar1` FOREIGN KEY (`pengajar_id`) REFERENCES `pengajar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_penjadwalan_kelas_peserta1` FOREIGN KEY (`peserta_id`) REFERENCES `peserta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `fk_peserta_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
