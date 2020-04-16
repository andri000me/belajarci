-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 05:11 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `x_bp`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_daftar`
--

CREATE TABLE `t_daftar` (
  `id_user` int(11) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `status` enum('terima','tolak','','') NOT NULL,
  `level` enum('admin','member','','') NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `terakhir_masuk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_daftar`
--

INSERT INTO `t_daftar` (`id_user`, `nama_depan`, `nama_belakang`, `email`, `password`, `status`, `level`, `tgl_daftar`, `terakhir_masuk`) VALUES
(20, 'yono', 'nurhayati', 'nsiti7621@gmail.com', 'sha256:1000:FhYGWPpxzAvQO/Ks0QBgUvchHphZVhyq:zpLRIInSUxKatPWVsFxcQ93hMmIFmzGs', 'terima', 'member', '2020-04-16 03:02:27', '2020-04-16 05:02:27 AM'),
(21, 'dino', 'saaurus', 'cahyono05.yono@gmail.com', '', 'tolak', 'member', '2020-04-16 02:58:24', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_tokens`
--

CREATE TABLE `t_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_tokens`
--

INSERT INTO `t_tokens` (`id`, `token`, `id_user`, `created`) VALUES
(0, '17495b0daf149568cfb8f1caaa1c38', 20, '2020-04-14'),
(0, '9451a314911c9642519da407e4f442', 20, '2020-04-15'),
(0, '2432c3346fc867e9026174ea73ab78', 21, '2020-04-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_daftar`
--
ALTER TABLE `t_daftar`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_daftar`
--
ALTER TABLE `t_daftar`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
