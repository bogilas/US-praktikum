-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 04:00 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oglasi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `delatnosti`
--

CREATE TABLE `delatnosti` (
  `delatnosti_SIF` int(11) NOT NULL,
  `sifra` varchar(255) NOT NULL,
  `Naziv` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `grad_sif` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `regija_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lokacija`
--

CREATE TABLE `lokacija` (
  `lokacija_sif` int(11) NOT NULL,
  `opstina_sif` int(11) NOT NULL,
  `adresa` varchar(100) NOT NULL,
  `kordinata_duzina` decimal(10,0) NOT NULL,
  `kordinata_sirina` decimal(10,0) NOT NULL,
  `preduzece_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nudi_proizvod`
--

CREATE TABLE `nudi_proizvod` (
  `nudi_proizvod_sif` int(11) NOT NULL,
  `cena` varchar(100) NOT NULL,
  `proizvod_sif` int(11) NOT NULL,
  `preduzece_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opstina`
--

CREATE TABLE `opstina` (
  `opstina_sif` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `grad_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `preduzece`
--

CREATE TABLE `preduzece` (
  `preduzece_sif` int(11) NOT NULL,
  `pun_naziv` text NOT NULL,
  `kratak_naziv` varchar(100) NOT NULL,
  `mat_br` varchar(100) NOT NULL,
  `pib` varchar(100) NOT NULL,
  `sajt_link` varchar(100) NOT NULL,
  `telefon` varchar(100) NOT NULL,
  `posebne_napomene` text NOT NULL,
  `preduzetnik_sif` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `logotip` varchar(255) NOT NULL,
  `kratak_opis` text NOT NULL,
  `glavna_lokacija_sif` int(11) NOT NULL,
  `glavna_delatnost_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `preduzece_delatnost`
--

CREATE TABLE `preduzece_delatnost` (
  `preduzece_delatnost_sif` int(11) NOT NULL,
  `preduzece_sif` int(11) NOT NULL,
  `delatnost_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `preduzetnik`
--

CREATE TABLE `preduzetnik` (
  `preduzetnik_sif` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `prezime` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `adresa` varchar(255) NOT NULL,
  `sifra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `proizvod_sif` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `opis` varchar(250) NOT NULL,
  `vrsta_proizvoda_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radno_vreme`
--

CREATE TABLE `radno_vreme` (
  `readno_vreme_sif` int(11) NOT NULL,
  `preduzece_sif` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `otvara` time NOT NULL,
  `zatvara` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regija`
--

CREATE TABLE `regija` (
  `regija_sif` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slike`
--

CREATE TABLE `slike` (
  `slike_sif` int(11) NOT NULL,
  `slika` varchar(255) NOT NULL,
  `preduzece_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon`
--

CREATE TABLE `telefon` (
  `telefon_sif` int(11) NOT NULL,
  `telefon` varchar(100) NOT NULL,
  `preduzece_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_proizvoda`
--

CREATE TABLE `vrsta_proizvoda` (
  `vrsta_proizvoda_sif` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delatnosti`
--
ALTER TABLE `delatnosti`
  ADD PRIMARY KEY (`delatnosti_SIF`),
  ADD UNIQUE KEY `sifra` (`sifra`);

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`grad_sif`),
  ADD UNIQUE KEY `naziv` (`naziv`),
  ADD KEY `grad_regija` (`regija_sif`);

--
-- Indexes for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD PRIMARY KEY (`lokacija_sif`),
  ADD KEY `lokacija_opstina` (`opstina_sif`),
  ADD KEY `lokacija_preduzece` (`preduzece_sif`);

--
-- Indexes for table `nudi_proizvod`
--
ALTER TABLE `nudi_proizvod`
  ADD PRIMARY KEY (`nudi_proizvod_sif`),
  ADD KEY `np_pro` (`proizvod_sif`),
  ADD KEY `np_pre` (`preduzece_sif`);

--
-- Indexes for table `opstina`
--
ALTER TABLE `opstina`
  ADD PRIMARY KEY (`opstina_sif`),
  ADD KEY `opstina_grad` (`grad_sif`);

--
-- Indexes for table `preduzece`
--
ALTER TABLE `preduzece`
  ADD PRIMARY KEY (`preduzece_sif`),
  ADD UNIQUE KEY `pib` (`pib`),
  ADD KEY `preduzece_preduzetnik` (`preduzetnik_sif`),
  ADD KEY `preduzece_lokacija` (`glavna_lokacija_sif`),
  ADD KEY `preduzece_delatnost` (`glavna_delatnost_sif`);

--
-- Indexes for table `preduzece_delatnost`
--
ALTER TABLE `preduzece_delatnost`
  ADD PRIMARY KEY (`preduzece_delatnost_sif`),
  ADD KEY `pd_p` (`preduzece_sif`),
  ADD KEY `pd_d` (`delatnost_sif`);

--
-- Indexes for table `preduzetnik`
--
ALTER TABLE `preduzetnik`
  ADD PRIMARY KEY (`preduzetnik_sif`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`proizvod_sif`),
  ADD KEY `p_vp` (`vrsta_proizvoda_sif`);

--
-- Indexes for table `radno_vreme`
--
ALTER TABLE `radno_vreme`
  ADD PRIMARY KEY (`readno_vreme_sif`),
  ADD KEY `rv_preduzece` (`preduzece_sif`);

--
-- Indexes for table `regija`
--
ALTER TABLE `regija`
  ADD PRIMARY KEY (`regija_sif`);

--
-- Indexes for table `slike`
--
ALTER TABLE `slike`
  ADD PRIMARY KEY (`slike_sif`),
  ADD KEY `slike_preduzece` (`preduzece_sif`);

--
-- Indexes for table `telefon`
--
ALTER TABLE `telefon`
  ADD PRIMARY KEY (`telefon_sif`),
  ADD KEY `telefon_preduzece` (`preduzece_sif`);

--
-- Indexes for table `vrsta_proizvoda`
--
ALTER TABLE `vrsta_proizvoda`
  ADD PRIMARY KEY (`vrsta_proizvoda_sif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delatnosti`
--
ALTER TABLE `delatnosti`
  MODIFY `delatnosti_SIF` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grad`
--
ALTER TABLE `grad`
  MODIFY `grad_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokacija`
--
ALTER TABLE `lokacija`
  MODIFY `lokacija_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nudi_proizvod`
--
ALTER TABLE `nudi_proizvod`
  MODIFY `nudi_proizvod_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opstina`
--
ALTER TABLE `opstina`
  MODIFY `opstina_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preduzece`
--
ALTER TABLE `preduzece`
  MODIFY `preduzece_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preduzece_delatnost`
--
ALTER TABLE `preduzece_delatnost`
  MODIFY `preduzece_delatnost_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preduzetnik`
--
ALTER TABLE `preduzetnik`
  MODIFY `preduzetnik_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proizvod`
--
ALTER TABLE `proizvod`
  MODIFY `proizvod_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radno_vreme`
--
ALTER TABLE `radno_vreme`
  MODIFY `readno_vreme_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regija`
--
ALTER TABLE `regija`
  MODIFY `regija_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `slike_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telefon`
--
ALTER TABLE `telefon`
  MODIFY `telefon_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vrsta_proizvoda`
--
ALTER TABLE `vrsta_proizvoda`
  MODIFY `vrsta_proizvoda_sif` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grad`
--
ALTER TABLE `grad`
  ADD CONSTRAINT `grad_regija` FOREIGN KEY (`regija_sif`) REFERENCES `regija` (`regija_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD CONSTRAINT `lokacija_opstina` FOREIGN KEY (`opstina_sif`) REFERENCES `opstina` (`opstina_sif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lokacija_preduzece` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nudi_proizvod`
--
ALTER TABLE `nudi_proizvod`
  ADD CONSTRAINT `np_pre` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `np_pro` FOREIGN KEY (`proizvod_sif`) REFERENCES `proizvod` (`proizvod_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `opstina`
--
ALTER TABLE `opstina`
  ADD CONSTRAINT `opstina_grad` FOREIGN KEY (`grad_sif`) REFERENCES `grad` (`grad_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preduzece`
--
ALTER TABLE `preduzece`
  ADD CONSTRAINT `preduzece_delatnost` FOREIGN KEY (`glavna_delatnost_sif`) REFERENCES `delatnosti` (`delatnosti_SIF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preduzece_lokacija` FOREIGN KEY (`glavna_lokacija_sif`) REFERENCES `lokacija` (`lokacija_sif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preduzece_preduzetnik` FOREIGN KEY (`preduzetnik_sif`) REFERENCES `preduzetnik` (`preduzetnik_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preduzece_delatnost`
--
ALTER TABLE `preduzece_delatnost`
  ADD CONSTRAINT `pd_d` FOREIGN KEY (`delatnost_sif`) REFERENCES `delatnosti` (`delatnosti_SIF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pd_p` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD CONSTRAINT `p_vp` FOREIGN KEY (`vrsta_proizvoda_sif`) REFERENCES `vrsta_proizvoda` (`vrsta_proizvoda_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `radno_vreme`
--
ALTER TABLE `radno_vreme`
  ADD CONSTRAINT `rv_preduzece` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`);

--
-- Constraints for table `slike`
--
ALTER TABLE `slike`
  ADD CONSTRAINT `slike_preduzece` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `telefon`
--
ALTER TABLE `telefon`
  ADD CONSTRAINT `telefon_preduzece` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
