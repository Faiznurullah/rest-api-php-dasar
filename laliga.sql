-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 11:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_api_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `laliga`
--

CREATE TABLE `laliga` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laliga`
--

INSERT INTO `laliga` (`id`, `nama`, `asal`, `deskripsi`) VALUES
(1, 'Athletic Club', 'Bilbao, Spanyol', 'Athletic Club, atau biasa disebut dengan Athletic Bilbao, adalah sebuah tim sepak bola Spanyol yang berbasis di Bilbao, Basque Country. Tim ini didirikan tahun 1898 oleh para pelaut Inggris dari Southampton, hal ini berpengaruh pada warna jersei Athletic Club.'),
(2, 'Cadiz FC', 'Cadiz, Spanyol', 'Cádiz Club de Fútbol, S.A.D. merupakan sebuah klub sepak bola Spanyol yang berbasis di Cádiz, di komunitas otonomi Andalusia. Klub ini didirikan pada tahun 1910 dan kini bermain di La Liga dan menggelar pertandingan kandang di Estadio Ramón de Carranza, yang memiliki kapasitas 20,724 tempat duduk. '),
(3, 'RC Celta Vigo', 'Vigo, Spanyol', 'RC Celta Vigo adalah sebuah tim sepak bola Spanyol yang berbasis di Vigo. Tim ini didirikan pada tahun 1923. Klub ini memainkan pertandingan kandangnya di Stadion Balaidos yang berkapasitas 31.500 penonton. Seragam mereka berwarna biru langit dan celana putih.'),
(4, 'Deportivo Alavés', 'Pais Vasco, Spanyol', 'Deportivo Alavés atau biasanya dipanggil Alavés adalah sebuah klub sepak bola Spanyol yang bermarkas di Vitoria-Gasteiz, Pais Vasco. Klub ini memainkan pertandingan kandangnya di Stadion Mendizorroza yang berkapasitas 19.900 penonton. Seragam mereka adalah biru-putih.'),
(5, 'FC Barcelona', 'Barcelona, Spanyol', 'Fútbol Club Barcelona, juga dikenal sebagai Barcelona atau Barça, adalah klub sepak bola profesional yang berbasis di Barcelona, Catalunya, Spanyol, yang ikut serta di kompetisi tertinggi sepak bola Spanyol, La Liga.'),
(6, 'Getafe', 'Madrid, Spanyol', 'Getafe CF adalah nama tim sepak bola Spanyol. Bermarkas di Madrid. Tim ini berdiri tahun 1983. Klub ini memainkan pertandingan di Stadion Coliseum Alfonso Pérez yang berkapasitas 16.000 penonton. Seragam mereka berwarna biru. Klub ini pertama kali berlaga di La Liga pada musim kompetisi 2004-05.'),
(7, 'Real Madrid', 'Madrid, Spanyol', 'Real Madrid Club de Fútbol, umumnya dikenal sebagai Real Madrid, adalah klub sepak bola profesional yang berbasis di Madrid, Spanyol. Didirikan pada tahun 1902 sebagai Madrid Football Club, secara tradisional mengenakan kostum kandang putih.'),
(8, 'Real Betis', 'Sevilla, Spanyol', 'Real Betis Balompié, S.A.D., mengarah ke Betis, tim sepak bola profesional yang berbasis di Sevilla.'),
(9, 'Real Sociedad', 'Basque, Spanyol', 'Real Sociedad de Fútbol, S.A.D. adalah sebuah klub sepak bola Spanyol yang berbasis di kota San Sebastián, Basque, didirikan pada 7 September 1909. Stadion kandang mereka adalah Anoeta, yang berkapasitas 32.200 penonton.'),
(10, 'Sevilla', 'Seville, Spanyol', 'Sevilla Fútbol Club, adalah klub sepak bola profesional Spanyol yang berbasis di Seville, ibu kota dan kota terbesar dari komunitas otonom Andalusia, Spanyol. Itu bermain di papan atas sepak bola Spanyol, La Liga.'),
(11, 'Villarreal', 'Villarreal, Spanyol', 'Villarreal Club de Fútbol, S.A.D., umumnya disingkat menjadi Villarreal CF atau hanya Villarreal, adalah sebuah klub sepak bola profesional yang berbasis di Villarreal, Spanyol. Klub ini bermain dalam La Liga, kompetisi sepak bola liga tertinggi dalam sepak bola di Spanyol.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laliga`
--
ALTER TABLE `laliga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laliga`
--
ALTER TABLE `laliga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
