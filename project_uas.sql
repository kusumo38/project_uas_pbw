-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 09:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Perpustakaan kampus', 'this is a wider card with suporting text', '20250106183625.jpg', '2025-01-06 18:36:25', 'admin'),
(2, 'ruang kelas', 'this car has supporting ', 'ruang-kelas.jpg', '2024-12-22 19:41:09', 'admin'),
(3, 'kelompok belajar', 'this is a wider', '20250106183721.jpeg', '2025-01-06 18:37:21', 'admin'),
(4, 'auditorium', 'this is a wider card', 'auditorium.jpg', '2024-12-13 19:48:49', 'admin'),
(22, 'taman', 'this card has supporting', 'taman.jpeg', '2024-12-08 19:49:29', 'admin'),
(28, 'ruanglab', 'this car has suporting', 'ruang-lab.jpg', '2024-12-04 19:51:18', 'admin'),
(37, 'awawaw', 'adadad', '20250109120717.png', '2025-01-09 12:07:17', 'admin'),
(38, 'anya', 'awdawdaw', '20250109145936.png', '2025-01-09 14:59:36', 'mey');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `nama` varchar(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `nama`, `tanggal`, `gambar`) VALUES
(4, 'jay', '2025-01-09', '20250109012350.jpg'),
(16, 'pacar ivan', '2025-01-09', '20250109120835.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '20250109012503.jpg'),
(3, 'jay', '202cb962ac59075b964b07152d234b70', '20250109012603.jpg'),
(10, 'Imvanzz', '202cb962ac59075b964b07152d234b70', '20250109122544.png'),
(18, 'senarya', '827ccb0eea8a706c4c34a16891f84e7b', 'Screenshot 2025-01-01 230637.png'),
(20, 'mey', '81dc9bdb52d04dc20036dbd8313ed055', 'Screenshot 2024-12-30 085212.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
