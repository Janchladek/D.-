-- --------------------------------------------------------
-- Hostiteľ:                     127.0.0.1
-- Verze serveru:                10.4.21-MariaDB - mariadb.org binary distribution
-- OS serveru:                   Win64
-- HeidiSQL Verzia:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportování struktury databáze pro
CREATE DATABASE IF NOT EXISTS `projekt` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `projekt`;

-- Exportování struktury pro tabulka projekt.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meno` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `Sposob_platby` varchar(255) DEFAULT NULL,
  `auto` varchar(255) DEFAULT NULL,
  `predajna` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Exportování dat pro tabulku projekt.account: ~10 rows (přibližně)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`, `meno`, `email`, `login`, `Sposob_platby`, `auto`, `predajna`) VALUES
	(1, 'jan_Chladek', 'janchladek@gmail.com', 'janko', 'Karta', 'Bmw_M3', 'Zilina'),
	(2, 'Erik_Opicak', 'Opicak@gmail.com', 'ericek', 'Hotovost', 'Audi_tt', 'Zilina'),
	(3, 'Sandra_Chlebova', 'SandraCh@gmail.com', 'Sandricka', 'Karta', 'golf_gti', 'Martin'),
	(4, 'Andrej_David', 'DavidA@azet.sk', 'Davidos', 'Hotovost', 'Ford_mustang', 'Cadca'),
	(5, 'Patrik_Hviezdica', 'PatrikHvie@gmail.com', 'Patrikos', 'Hotovost', 'Ford_St', 'Martin'),
	(6, 'Erik_lopata', 'Lopata@gmail.com', 'Lopatos', 'Karta', 'Skoda_Fabia ', 'Bratislava'),
	(7, 'Erika_Tavaciakova', 'TavaciakovaErika@gmail.com', 'ErikaT', 'Karta', 'Skoda_Octavia', 'Kosice'),
	(8, 'Filip_Lopata', 'LopataFilip@azet.sk', 'Filda', 'Karta', 'Honda_Civiq', 'Bratislava'),
	(9, 'Samuel_Pocinek', 'Pocinek@centrum.sk', 'ZdenoP', 'Hotovost', 'Supra', 'Cadca'),
	(10, 'Marcel_Zavadzan', 'MarcelitoZA@azet.sk', 'Marcelito', 'Hotovost', 'Cupra', 'Martin');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Exportování struktury pro tabulka projekt.auta
CREATE TABLE IF NOT EXISTS `auta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Znacka` varchar(50) DEFAULT NULL,
  `Cena_auta` int(11) DEFAULT NULL,
  `Pocet_KM` int(11) DEFAULT NULL,
  `Rok_vyroby` int(11) DEFAULT NULL,
  `Palivo` varchar(50) DEFAULT NULL,
  `Vykon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Exportování dat pro tabulku projekt.auta: ~10 rows (přibližně)
/*!40000 ALTER TABLE `auta` DISABLE KEYS */;
INSERT INTO `auta` (`id`, `Znacka`, `Cena_auta`, `Pocet_KM`, `Rok_vyroby`, `Palivo`, `Vykon`) VALUES
	(1, 'Bmw_M3', 100000, 14000, 2020, 'Diesel', '400Kw'),
	(2, 'Audi_tt', 90000, 80000, 2019, 'benzin', '250Kw'),
	(3, 'golf_gti', 15000, 120045, 2015, 'Diesel', '500KW'),
	(4, 'Ford_mustang', 45000, 100000, 2017, 'benzin', '202KW'),
	(5, 'Ford_St', 42000, 67000, 2019, 'Diesel', '400Kw'),
	(6, 'Skoda_Fabia ', 8000, 250000, 2008, 'Diesel', '90KW'),
	(7, 'Skoda_Octavia', 12000, 320000, 2015, 'benzin', '120kw'),
	(8, 'Honda_Civiq', 42000, 20000, 2017, 'Diesel', '400KW'),
	(9, 'Supra', 24500, 13000, 2018, 'Diesel', '800KW'),
	(10, 'Cupra', 20000, 55500, 2015, 'benzin', '200Kw');
/*!40000 ALTER TABLE `auta` ENABLE KEYS */;

-- Exportování struktury pro tabulka projekt.blok
CREATE TABLE IF NOT EXISTS `blok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Auto` varchar(50) DEFAULT NULL,
  `cena_pozicania` int(11) DEFAULT NULL,
  `datum_pozicania` date DEFAULT NULL,
  `Mesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Exportování dat pro tabulku projekt.blok: ~10 rows (přibližně)
/*!40000 ALTER TABLE `blok` DISABLE KEYS */;
INSERT INTO `blok` (`id`, `Auto`, `cena_pozicania`, `datum_pozicania`, `Mesto`) VALUES
	(1, 'Bmw_M3', 300, '2021-12-19', 'Zilina'),
	(2, 'Audi_tt', 80, '2021-10-19', 'Zilina'),
	(3, 'golf_gti', 200, '2021-04-08', 'Martin'),
	(4, 'Ford_mustang', 260, '2021-10-13', 'Cadca'),
	(5, 'Ford_St', 100, '2020-09-14', 'Martin'),
	(6, 'Skoda_Fabia ', 60, '2021-01-21', 'Bratislava'),
	(7, 'Skoda_Octavia', 50, '2021-12-30', 'Kosice'),
	(8, 'Honda_Civiq', 200, '2022-01-04', 'Bratislava'),
	(9, 'Supra', 200, '2022-01-20', 'Cadca'),
	(10, 'Cupra', 250, '2021-12-25', 'Martin');
/*!40000 ALTER TABLE `blok` ENABLE KEYS */;

-- Exportování struktury pro tabulka projekt.predajna
CREATE TABLE IF NOT EXISTS `predajna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auta` varchar(50) DEFAULT NULL,
  `zakaznik` varchar(50) DEFAULT NULL,
  `Sposob_platby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Exportování dat pro tabulku projekt.predajna: ~10 rows (přibližně)
/*!40000 ALTER TABLE `predajna` DISABLE KEYS */;
INSERT INTO `predajna` (`id`, `auta`, `zakaznik`, `Sposob_platby`) VALUES
	(1, 'Bmw_M3', 'jan_Chladek', 'Karta'),
	(2, 'Audi_tt', 'Erik_Opicak', 'Hotovost'),
	(3, 'golf_gti', 'Sandra_Chlebova', 'Karta'),
	(4, 'Ford_mustang', 'Andrej_David', 'Hotovost'),
	(5, 'Ford_St', 'Patrik_Hviezdica', 'Hotovost'),
	(6, 'Skoda_Fabia ', 'Erik_lopata', 'Karta'),
	(7, 'Skoda_Octavia', 'Erika_Tavaciakova', 'Karta'),
	(8, 'Honda_Civiq', 'Filip_Lopata', 'Karta'),
	(9, 'Supra', 'Samuel_Pocinek', 'Hotovost'),
	(10, 'Cupra', 'Marcel_Zavadzan', 'Hotovost');
/*!40000 ALTER TABLE `predajna` ENABLE KEYS */;

-- Exportování struktury pro tabulka projekt.sposob_platby
CREATE TABLE IF NOT EXISTS `sposob_platby` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Typ_platby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Exportování dat pro tabulku projekt.sposob_platby: ~2 rows (přibližně)
/*!40000 ALTER TABLE `sposob_platby` DISABLE KEYS */;
INSERT INTO `sposob_platby` (`id`, `Typ_platby`) VALUES
	(1, 'Karta'),
	(2, 'Hotovost');
/*!40000 ALTER TABLE `sposob_platby` ENABLE KEYS */;

-- Exportování struktury pro tabulka projekt.zakaznik
CREATE TABLE IF NOT EXISTS `zakaznik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meno` varchar(50) DEFAULT NULL,
  `priezvisko` varchar(50) DEFAULT NULL,
  `datum_narodenia` date DEFAULT NULL,
  `bydlisko` varchar(50) DEFAULT NULL,
  `psc` varchar(255) DEFAULT NULL,
  `telefone_cislo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Exportování dat pro tabulku projekt.zakaznik: ~10 rows (přibližně)
/*!40000 ALTER TABLE `zakaznik` DISABLE KEYS */;
INSERT INTO `zakaznik` (`id`, `meno`, `priezvisko`, `datum_narodenia`, `bydlisko`, `psc`, `telefone_cislo`) VALUES
	(1, 'Jan', 'Chladek', '2003-01-19', 'Jarna ', '01001', '0911290532'),
	(2, 'Erik ', 'Opicak', '2002-01-11', 'Severna', '01002', '0912345456'),
	(3, 'Sandra', 'Chlebova', '2000-02-28', 'Agátová', '20202', '0923321312'),
	(4, 'Andrej', 'David', '1992-06-10', 'Dubová', '32131', '0923123123'),
	(5, 'Patrik', 'Hvezdica', '2002-03-08', 'Bytčianska', '30103', '0931231231'),
	(6, 'Erik', 'Lopata', '1991-11-19', 'Hlinská', '01001', '0933414562'),
	(7, 'Erika ', 'Tavaciakova', '1983-10-18', 'Gaštanová', '01022', '0904568284'),
	(8, 'Filip', 'Lopata', '1993-01-23', 'Košická', '33311', '0904525452'),
	(9, 'Samuel', 'Pocinek', '1998-12-18', 'Košická', '333111', '0945458484'),
	(10, 'Marcel', 'Zavadzan', '1995-03-15', 'Mostná', '01001', '0904342343');
/*!40000 ALTER TABLE `zakaznik` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
