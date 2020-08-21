-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 05:57 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absenkit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `id_absensi` int(10) NOT NULL,
  `id_jadwal` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `nis` varchar(10) NOT NULL,
  `ket` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensih`
--

CREATE TABLE `tb_absensih` (
  `id_absensih` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `nis` varchar(10) NOT NULL,
  `ket` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(3) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `nama_guru` varchar(40) NOT NULL,
  `kode_guru` varchar(5) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `kode_guru`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `agama`) VALUES
(9, '16102001', 'Drs. DIDIK SRI PURWADI, S.Kom, M.Kom', 'A', 'LAKI-LAKI', 'SEMARANG', '1961-10-15', 'SEMARANG', 'ISLAM'),
(10, '16102002', 'SEPTIAN ADI NUGRAHA', 'B', 'LAKI-LAKI', 'SEMARANG', '1984-09-28', 'SEMARANG', 'ISLAM'),
(11, '16102003', 'nur zaini', 'C', 'LAKI-LAKI', 'DEMAK', '1978-09-26', 'SEMARANG', 'ISLAM'),
(13, '16102005', 'DARSONO', 'E', 'LAKI-LAKI', 'BLORA', '1963-05-02', 'SEMARANG', 'ISLAM'),
(14, '16102006', 'FILIA RELYANTI', 'F', 'PEREMPUAN', 'KENDAL', '1980-02-20', 'SEMARANG', 'ISLAM');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` int(5) NOT NULL,
  `id_mengajar` int(4) NOT NULL,
  `hari` varchar(7) NOT NULL,
  `jam_mulai` varchar(10) NOT NULL,
  `jam_berakhir` varchar(10) NOT NULL,
  `id_kelas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id_jadwal`, `id_mengajar`, `hari`, `jam_mulai`, `jam_berakhir`, `id_kelas`) VALUES
(33, 16, 'Rabu', '07:00', '08:20', 12),
(40, 32, 'Rabu', '08:20', '09:45', 11),
(41, 17, 'Rabu', '10:05', '11:20', 11),
(44, 32, 'Rabu', '07:00', '08:20', 10),
(47, 17, 'Rabu', '11:20', '13:00', 10),
(50, 16, 'Kamis', '08:20', '09:45', 12),
(64, 17, 'Jumat', '07:00', '08:20', 12),
(69, 32, 'Jumat', '10:05', '11:20', 11),
(70, 32, 'Jumat', '08:20', '09:45', 10),
(86, 36, 'Sabtu', '11:20', '13:00', 10),
(88, 36, 'Senin', '07:00', '08:00', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(3) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `kelas`) VALUES
(10, 'X'),
(11, 'XI'),
(12, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id_mapel` int(3) NOT NULL,
  `kode_mapel` varchar(5) NOT NULL,
  `mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(8, '01', 'PENDIDIKAN AGAMA ISLAM'),
(9, '02', 'PENDIDIKAN KEWARGANERAAN'),
(10, '03', 'BAHASA INDONESIA'),
(11, '04', 'MATEMATIKA'),
(12, '05', 'PBO'),
(13, '06', 'ILMU PENGETAHUAN SOSIAL'),
(14, '07', 'BAHASA INGGRIS'),
(15, '08', 'SENI BUDAYA'),
(16, '09', 'PENDIDIKAN JASMANI DAN KESEHATAN (PENJASKES)'),
(17, '10', 'KETERAMPILAN'),
(18, '11', 'BAHASA SUNDA'),
(19, '12', 'PMOGRAMAN WEB'),
(20, '13', 'BIMBINGAN DAN KONSELING'),
(21, '14', 'AQIDAH AKHLAK'),
(22, '15', 'AL-QURAN DAN HADIST'),
(23, '16', 'FIQIH'),
(24, '17', 'SARANA KEROHANIAN ISLAM'),
(25, '18', 'BAHASA ARAB'),
(26, '19', 'INSYA BAHASA INGGRIS'),
(27, '20', 'NAHWU SOROF'),
(28, '21', 'MAHFUDOH, INSYA BAHASA ARAB'),
(31, '22', 'BBB');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(3) NOT NULL,
  `kode_guru` varchar(10) NOT NULL,
  `kode_mapel` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_guru`, `kode_mapel`) VALUES
(16, 'E', '20'),
(17, 'F', '14'),
(32, 'B', '19'),
(36, 'B', '05'),
(39, 'C', '01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(3) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `username`, `pass`, `status`) VALUES
(26, 'admin', '123456', 'admin'),
(27, 'guru', '123456', 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(3) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `nama_siswa` varchar(40) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `nama_ortu` varchar(40) NOT NULL,
  `no_ortu` varchar(15) NOT NULL,
  `id_kelas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `agama`, `nama_ortu`, `no_ortu`, `id_kelas`) VALUES
(1, '13001', 'ANDI MUH RIFQI', 'LAKI-LAKI', 'SEMARANG', '2005-12-04', 'SEMARANG', 'ISLAM', 'MUSKAR', '08123456789', 10),
(3, '13002', 'DZULFAQQOR AMIN', 'LAKI-LAKI', 'JAKARTA', '2004-12-22', 'SEMARANG', 'ISLAM', 'ARPEN', '08345678901', 10),
(4, '13003', 'MUH. AMMAR', 'LAKI-LAKI', 'JOGJA', '2005-10-16', 'SEMARANG', 'ISLAM', 'RUSYDAH', '+628123456789', 10),
(11, '13004', 'RAVI SOFYAN', 'LAKI-LAKI', 'TASIKMALAYA', '0000-00-00', 'SEMARANG', 'ISLAM', 'MR', '3653786428', 10),
(12, '13102001', 'ANISA WIBOWO', 'PEREMPUAN', 'CILACAP', '2005-03-31', 'JALAN KENANGAN', 'ISLAM', 'MUCHLIS', '085434567281', 10),
(2, '14001', 'PRADIKA DESTARINI', 'PEREMPUAN', 'PURBALINGGA', '2004-12-11', 'SEMARANG', 'ISLAM', 'RINI', '08234567890', 11),
(7, '14002', 'CALVIN SUTOYO', 'LAKI-LAKI', 'PADANG, SUMATERA BAR', '2004-01-05', 'SEMARANG TIMUR', 'ISLAM', 'SUTOYO HADININGRAT', '+6254447474', 11),
(5, '15001', 'HARUN AR-RASYID', 'LAKI-LAKI', 'MANILA', '2004-10-15', 'SEMARANG SELATAN', 'ISLAM', 'RASYID AL-HIKMAH', '+624545657778', 11),
(6, '15002', 'JUNETY', 'PEREMPUAN', 'JAKARTA', '2005-08-08', 'SEMARANG', 'ISLAM', 'MOH.SAIPUDIN', '+6251514578', 11),
(13, '8883', 'FITRI WIDAYANTI', 'PEREMPUAN', 'SEMARANG', '2002-10-28', 'TEMBALANG', 'ISLAM', 'GIONO', '0858882768', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indexes for table `tb_absensih`
--
ALTER TABLE `tb_absensih`
  ADD PRIMARY KEY (`id_absensih`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `id_guru` (`id_guru`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `kode_guru_2` (`kode_guru`),
  ADD KEY `kode_guru` (`kode_guru`);

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mengajar` (`id_mengajar`),
  ADD KEY `id_mengajar_2` (`id_mengajar`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD UNIQUE KEY `kode_mapel` (`kode_mapel`);

--
-- Indexes for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD UNIQUE KEY `id_mengajar` (`id_mengajar`),
  ADD KEY `kode_mapel` (`kode_mapel`),
  ADD KEY `kode_guru` (`kode_guru`),
  ADD KEY `kode_guru_2` (`kode_guru`),
  ADD KEY `kode_mapel_2` (`kode_mapel`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `username_2` (`username`),
  ADD KEY `username_3` (`username`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`),
  ADD UNIQUE KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_kelas_2` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `id_absensi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tb_absensih`
--
ALTER TABLE `tb_absensih`
  MODIFY `id_absensih` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id_jadwal` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id_mapel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD CONSTRAINT `tb_absensi_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD CONSTRAINT `tb_jadwal_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_jadwal_ibfk_2` FOREIGN KEY (`id_mengajar`) REFERENCES `tb_mengajar` (`id_mengajar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD CONSTRAINT `tb_mengajar_ibfk_1` FOREIGN KEY (`kode_mapel`) REFERENCES `tb_mapel` (`kode_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_mengajar_ibfk_2` FOREIGN KEY (`kode_guru`) REFERENCES `tb_guru` (`kode_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
