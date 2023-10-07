-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 09:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `listrik_pascabayar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `KodeLogin` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `NamaLengkap` varchar(100) NOT NULL,
  `Level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`KodeLogin`, `Username`, `Password`, `NamaLengkap`, `Level`) VALUES
(1, 'PLG100000000', 'PLG100000000', 'Septa Riana ', 'Pelanggan'),
(3, 'admin', 'admin', 'Admin', 'Admin'),
(6, 'petugas', 'petugas', 'Danel Fransisko Sitio', 'Petugas'),
(7, 'PLG100000001', 'PLG100000001', 'Eka Sapta', 'Pelanggan'),
(9, 'PLG100000002', 'PLG100000002', 'Evin Nainggolan', 'Pelanggan'),
(10, 'PLG100000003', 'PLG100000003', 'Daniel Fransisko Sitio', 'Pelanggan'),
(11, 'PLG100000004', 'PLG100000004', 'i gede wayan', 'Pelanggan'),
(12, 'PLG100000005', 'PLG100000005', 'sari Indah ', 'Pelanggan'),
(13, 'PLG100000006', 'PLG100000006', 'Gok panatap ', 'Pelanggan'),
(14, 'PLG100000007', 'PLG100000007', 'Joy Ferdinan ', 'Pelanggan'),
(15, 'PLG100000008', 'PLG100000008', 'Napogos au', 'Pelanggan'),
(16, 'PLG100000009', 'PLG100000009', 'luluh hati', 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `KodePelanggan` int(11) NOT NULL,
  `NoPelanggan` varchar(100) NOT NULL,
  `NoMeter` varchar(100) NOT NULL,
  `KodeTarif` int(11) NOT NULL,
  `NamaLengkap` varchar(100) NOT NULL,
  `Telp` varchar(16) NOT NULL,
  `Alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`KodePelanggan`, `NoPelanggan`, `NoMeter`, `KodeTarif`, `NamaLengkap`, `Telp`, `Alamat`) VALUES
(1, 'PLG100000000', '081231239', 9, 'Septa Riana ', '081239221327', 'Jln. Srengseng raya no 13'),
(3, 'PLG100000001', '123982312', 5, 'Eka Sapta', '08123213123', 'Jln. Nangka Selatan no 126'),
(5, 'PLG100000002', '293102930', 6, 'Evin Nainggolan', '081239221327', 'Jln. Bambu 1 No56\r\n'),
(6, 'PLG100000003', '293102930', 1, 'Daniel Fransisko Sitio', '082267636848', 'Jln pemancingan 17A'),
(7, 'PLG100000004', '183608931	', 8, 'i gede wayan', '0852815772266', 'Jln. Tukad bayusari no 60'),
(8, 'PLG100000005', '182605941	', 7, 'sari Indah ', '08779356215', 'Jln. sunset road no 167'),
(9, 'PLG100000006', '183354713', 9, 'Gok panatap ', '082374663322', 'Jln. Bambu no 02'),
(10, 'PLG100000007', '773341882', 7, 'Joy Ferdinan ', '089987564545', 'Jln. kuta raya no 17'),
(11, 'PLG100000008', '554266218', 5, 'Napogos au', '08526637772', 'Jln. Garuda kencana no 19A'),
(12, 'PLG100000009', '128736611', 8, 'luluh hati', '083188255514', 'Jln. Nagori bahtangan no 32');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `KodePembayaran` int(11) NOT NULL,
  `KodeTagihan` int(11) NOT NULL,
  `TglBayar` date NOT NULL,
  `JumlahTagihan` double(10,0) NOT NULL,
  `BuktiPembayaran` varchar(255) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`KodePembayaran`, `KodeTagihan`, `TglBayar`, `JumlahTagihan`, `BuktiPembayaran`, `Status`) VALUES
(12, 21, '2023-07-20', 84360, 'TGH100000007_U7EKHI6L_1689789893.jpg', '2'),
(14, 22, '2023-07-20', 42670, 'TGH100000008_YFH2K3RE_1689789940.jpg', '2'),
(15, 23, '2023-07-20', 10910, 'TGH100000009_TI2MVS1J_1689789983.jpg', '1'),
(16, 25, '2023-07-20', 92308, 'TGH100000011_S3CDRBT2_1689789998.jpg', '1'),
(17, 28, '2023-07-20', 105047, 'TGH100000014_6FUEZQLA_1689818438.jpg', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan`
--

CREATE TABLE `tb_tagihan` (
  `KodeTagihan` int(11) NOT NULL,
  `NoTagihan` varchar(100) NOT NULL,
  `NoPelanggan` varchar(100) NOT NULL,
  `TahunTagih` int(20) NOT NULL,
  `BulanTagih` varchar(20) NOT NULL,
  `JumlahPemakaian` varchar(100) NOT NULL,
  `TotalBayar` double(10,0) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tagihan`
--

INSERT INTO `tb_tagihan` (`KodeTagihan`, `NoTagihan`, `NoPelanggan`, `TahunTagih`, `BulanTagih`, `JumlahPemakaian`, `TotalBayar`, `Status`) VALUES
(21, 'TGH100000007', 'PLG100000002', 2023, '6', '55', 84360, '2'),
(22, 'TGH100000008', 'PLG100000003', 2023, '6', '54', 42670, '2'),
(23, 'TGH100000009', 'PLG100000001', 2023, '7', '26', 10910, '1'),
(25, 'TGH100000011', 'PLG100000005', 2023, '7', '57', 92308, '1'),
(26, 'TGH100000012', 'PLG100000004', 2023, '7', '77', 126188, '0'),
(27, 'TGH100000013', 'PLG100000003', 2023, '7', '39', 33595, '0'),
(28, 'TGH100000014', 'PLG100000000', 2023, '7', '53', 105047, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tarif`
--

CREATE TABLE `tb_tarif` (
  `KodeTarif` int(11) NOT NULL,
  `Daya` varchar(50) NOT NULL,
  `TarifPerKwh` double(10,0) NOT NULL,
  `Beban` double(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tarif`
--

INSERT INTO `tb_tarif` (`KodeTarif`, `Daya`, `TarifPerKwh`, `Beban`) VALUES
(1, '900', 605, 10000),
(5, '450', 415, 10000),
(6, '900', 1352, 10000),
(7, '1300', 1444, 10000),
(8, '2200', 1444, 15000),
(9, '3500', 1699, 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`KodeLogin`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`KodePelanggan`),
  ADD KEY `NoPelanggan` (`NoPelanggan`),
  ADD KEY `KodeTarif` (`KodeTarif`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`KodePembayaran`),
  ADD KEY `KodeTagihan` (`KodeTagihan`);

--
-- Indexes for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD PRIMARY KEY (`KodeTagihan`),
  ADD KEY `NoPelanggan` (`NoPelanggan`);

--
-- Indexes for table `tb_tarif`
--
ALTER TABLE `tb_tarif`
  ADD PRIMARY KEY (`KodeTarif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `KodeLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `KodePelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `KodePembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  MODIFY `KodeTagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_tarif`
--
ALTER TABLE `tb_tarif`
  MODIFY `KodeTarif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`NoPelanggan`) REFERENCES `tb_login` (`Username`),
  ADD CONSTRAINT `tb_pelanggan_ibfk_2` FOREIGN KEY (`KodeTarif`) REFERENCES `tb_tarif` (`KodeTarif`);

--
-- Constraints for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD CONSTRAINT `tb_pembayaran_ibfk_1` FOREIGN KEY (`KodeTagihan`) REFERENCES `tb_tagihan` (`KodeTagihan`);

--
-- Constraints for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD CONSTRAINT `tb_tagihan_ibfk_1` FOREIGN KEY (`NoPelanggan`) REFERENCES `tb_pelanggan` (`NoPelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
