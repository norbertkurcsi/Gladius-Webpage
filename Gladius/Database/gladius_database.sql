-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Máj 09. 21:09
-- Kiszolgáló verziója: 10.4.16-MariaDB
-- PHP verzió: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `gladius_database`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin_users`
--

CREATE TABLE `admin_users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `admin_users`
--

INSERT INTO `admin_users` (`ID`, `Name`, `Username`, `Password`) VALUES
(1, 'KURCSI Norbert', 'kurcsi_n', '12345'),
(2, 'PORA Vlad', 'pora_v', '12345'),
(3, 'POTA Florina', 'pora_f', '12345');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `antrenori`
--

CREATE TABLE `antrenori` (
  `id` int(1) DEFAULT NULL,
  `nume` varchar(6) DEFAULT NULL,
  `prenume` varchar(10) DEFAULT NULL,
  `poza` varchar(21) DEFAULT NULL,
  `data_nasterii` varchar(10) DEFAULT NULL,
  `locul_nasterii` varchar(8) DEFAULT NULL,
  `cetatenie` varchar(5) DEFAULT NULL,
  `facebook` varchar(41) DEFAULT NULL,
  `instagram` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `antrenori`
--

INSERT INTO `antrenori` (`id`, `nume`, `prenume`, `poza`, `data_nasterii`, `locul_nasterii`, `cetatenie`, `facebook`, `instagram`) VALUES
(1, 'Pora', 'Vlad', 'pora_vlad.png', '1983.03.12', 'Tg Mures', 'Român', 'https://www.facebook.com/vladone.pora', 'https://www.instagram.com/vladonepora/'),
(2, 'Pora', 'Florina', 'pora_florina.png', '1983.03.13', 'Tg Mures', 'Român', 'https://www.facebook.com/floricik.florina', 'https://www.instagram.com/florycoach/'),
(3, 'Baki', 'Szilárd', 'baki_szilard.png', '1996.01.01', 'Tg Mures', 'Român', 'https://www.facebook.com/baki.szilard', 'https://www.instagram.com/bakiszilard/'),
(4, 'Gacesa', 'Aleksandar', 'gacesa_aleksandar.png', '1988.05.19', 'Tg Mures', 'Sârb', 'https://www.facebook.com/gacesa1', '#'),
(5, 'Kurcsi', 'Norbert', 'kurcsi_norbert.png', '2002.05.28', 'Tg Mures', 'Român', 'https://www.facebook.com/norbert.kurcsi/', 'https://www.instagram.com/curchick/'),
(6, 'Tar', 'Krisztián', 'tar_krisztian.png', '2000.03.13', 'Tg Mures', 'Roman', 'https://www.facebook.com/tar.cristian', 'https://www.instagram.com/_krisztian17/');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `echipe`
--

CREATE TABLE `echipe` (
  `id` int(1) DEFAULT NULL,
  `categorie` varchar(13) DEFAULT NULL,
  `antrenor principal` int(1) DEFAULT NULL,
  `antrenor secund` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `echipe`
--

INSERT INTO `echipe` (`id`, `categorie`, `antrenor principal`, `antrenor secund`) VALUES
(1, 'U14 Masculin', 3, 1),
(2, 'U13 Feminin', 2, 6),
(3, 'U13Masculin', 1, 5),
(4, 'Mini Feminin', 2, 6),
(5, 'Baby Masculin', 3, 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jucatori`
--

CREATE TABLE `jucatori` (
  `id` int(2) DEFAULT NULL,
  `nume` varchar(10) DEFAULT NULL,
  `prenume` varchar(9) DEFAULT NULL,
  `poza` varchar(21) DEFAULT NULL,
  `echipament` varchar(3) DEFAULT NULL,
  `oras` varchar(11) DEFAULT NULL,
  `data_nasterii` varchar(10) DEFAULT NULL,
  `cetatenie` varchar(5) DEFAULT NULL,
  `inaltime` varchar(6) DEFAULT NULL,
  `greutate` varchar(4) DEFAULT NULL,
  `echipa` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `jucatori`
--

INSERT INTO `jucatori` (`id`, `nume`, `prenume`, `poza`, `echipament`, `oras`, `data_nasterii`, `cetatenie`, `inaltime`, `greutate`, `echipa`) VALUES
(1, 'Kurcsi', 'Kristof', 'kurcsi_kristof.png', '#0', 'Targu-Mures', '2002.09.03', 'Roman', '1.65cm', '40kg', 3),
(2, 'Dan', 'Victor', '#', '#2', 'Targu-Mures', '2002.09.04', 'Roman', '1.65cm', '40kg', 3),
(3, 'Fratean ', 'Luca', 'fratean_luca.png', '#3', 'Targu-Mures', '2002.09.05', 'Roman', '1.65cm', '40kg', 3),
(4, 'Platon', 'Cristian', 'platon_cristian.png', '#4', 'Targu-Mures', '2002.09.06', 'Roman', '1.65cm', '40kg', 3),
(5, 'Muntean', 'Iustin', 'muntean_iustin.png', '#5', 'Targu-Mures', '2002.09.07', 'Roman', '1.65cm', '40kg', 3),
(6, 'Taurean', 'Rares', 'taurean_rares.png', '#6', 'Targu-Mures', '2002.09.08', 'Roman', '1.65cm', '40kg', 3),
(7, 'Costin', 'Paul', '#', '#7', 'Targu-Mures', '2002.09.09', 'Roman', '1.65cm', '40kg', 3),
(8, 'Suceava', 'Darius', 'suceava_darius.png', '#8', 'Targu-Mures', '2002.09.10', 'Roman', '1.65cm', '40kg', 3),
(9, 'Suciu', 'Andrei', 'suciu_andrei.png', '#9', 'Targu-Mures', '2002.09.11', 'Roman', '1.65cm', '40kg', 3),
(10, 'Raduti', 'David', 'raduti_david.png', '#10', 'Targu-Mures', '2002.09.12', 'Roman', '1.65cm', '40kg', 3),
(11, 'Chebut', 'Eric', 'chebut_eric.png', '#11', 'Targu-Mures', '2002.09.13', 'Roman', '1.65cm', '40kg', 3),
(12, 'Milasan', 'Rares', '#', '#12', 'Targu-Mures', '2002.09.14', 'Roman', '1.65cm', '40kg', 3),
(13, 'Szanto', 'Szabi', 'szanto_szabi.png', '#13', 'Targu-Mures', '2002.09.15', 'Roman', '1.65cm', '40kg', 3),
(14, 'Campian', 'Mircea', '#', '#14', 'Targu-Mures', '2002.09.16', 'Roman', '1.65cm', '40kg', 3),
(15, 'Cetanas', 'Eli', 'cetanas_eli.png', '#15', 'Targu-Mures', '2002.09.17', 'Roman', '1.65cm', '40kg', 3),
(16, 'Hartagan', 'David', 'hartagan_david.png', '#16', 'Targu-Mures', '2002.09.18', 'Roman', '1.65cm', '40kg', 3),
(17, 'Cretu', 'Rares', 'cretu_rares.png', '#17', 'Targu-Mures', '2002.09.19', 'Roman', '1.65cm', '40kg', 3),
(18, 'Cucuiet', 'Raul', 'cucuiet_raul.png', '#18', 'Targu-Mures', '2002.09.20', 'Roman', '1.65cm', '40kg', 3),
(19, 'Chiorean', 'Darius', 'chiorean_darius.png', '#19', 'Targu-Mures', '2002.09.21', 'Roman', '1.65cm', '40kg', 3),
(20, 'Moldovan', 'Tudor', 'moldovan_tudor.png', '#20', 'Targu-Mures', '2002.09.22', 'Roman', '1.65cm', '40kg', 3),
(21, 'Lengyel', 'Csaba', 'lengyel_csaba.png', '#21', 'Targu-Mures', '2002.09.23', 'Roman', '1.65cm', '40kg', 3),
(22, 'Racean', 'Valentin', '#', '#22', 'Targu-Mures', '2002.09.24', 'Roman', '1.65cm', '40kg', 3),
(23, 'Racean ', 'Iulian', '#', '#23', 'Targu-Mures', '2002.09.25', 'Roman', '1.65cm', '40kg', 3),
(24, 'Morar ', 'Marcus', '#', '#24', 'Targu-Mures', '2002.09.26', 'Roman', '1.65cm', '40kg', 3),
(25, 'Voivoda', 'Andrei', '#', '#25', 'Targu-Mures', '2002.09.27', 'Roman', '1.65cm', '40kg', 3),
(26, 'Candea', 'David', '#', '#26', 'Targu-Mures', '2002.09.28', 'Roman', '1.65cm', '40kg', 3),
(27, 'Bakos', 'Tamas', 'bakos_tamas.png', '#27', 'Targu-Mures', '2002.09.29', 'Roman', '1.65cm', '40kg', 3),
(28, 'Kende', 'Koppany', '#', '#28', 'Targu-Mures', '2002.09.30', 'Roman', '1.65cm', '40kg', 3),
(29, 'Balinth', 'Erick', '#', '#29', 'Targu-Mures', '2002.10.01', 'Roman', '1.65cm', '40kg', 3),
(30, 'Moga', 'Daniel', '#', '#30', 'Targu-Mures', '2002.10.02', 'Roman', '1.65cm', '40kg', 3),
(31, 'Oanes', 'Adrian', '#', '#31', 'Targu-Mures', '2002.10.03', 'Roman', '1.65cm', '40kg', 3),
(32, 'Muntean', 'Dragos', '#', '#32', 'Targu-Mures', '2002.10.04', 'Roman', '1.65cm', '40kg', 3),
(33, 'Cozma', 'Lehel', '#', '#33', 'Targu-Mures', '2002.10.05', 'Roman', '1.65cm', '40kg', 3),
(34, 'Groza', 'Radu', '#', '#34', 'Targu-Mures', '2002.10.06', 'Roman', '1.65cm', '40kg', 3),
(35, 'Munteanu', 'Denis', 'munteanu_denis.png', '#35', 'Targu-Mures', '2002.10.07', 'Roman', '1.65cm', '40kg', 5),
(36, 'Mozes', 'Robert', 'mozes_robert.png', '#36', 'Targu-Mures', '2002.10.08', 'Roman', '1.65cm', '40kg', 5),
(37, 'Petrisor', 'Alex', 'petrisor_alex.png', '#37', 'Targu-Mures', '2002.10.09', 'Roman', '1.65cm', '40kg', 5),
(38, 'Noah', 'Andrei', '#', '#38', 'Targu-Mures', '2002.10.10', 'Roman', '1.65cm', '40kg', 5),
(39, 'Floarea', 'Filip', 'floarea_filip.png', '#39', 'Targu-Mures', '2002.10.11', 'Roman', '1.65cm', '40kg', 5),
(40, 'Beica ', 'Radu', 'beica_radu.png', '#40', 'Targu-Mures', '2002.10.12', 'Roman', '1.65cm', '40kg', 5),
(41, 'Cucuiet', 'Andrei', '#', '#41', 'Targu-Mures', '2002.10.13', 'Roman', '1.65cm', '40kg', 5),
(42, 'Petrisor', 'Victor', 'petrisor_victor.png', '#42', 'Targu-Mures', '2002.10.14', 'Roman', '1.65cm', '40kg', 5),
(43, 'Gal', 'Denis', 'gal_denis.png', '#43', 'Targu-Mures', '2002.10.15', 'Roman', '1.65cm', '40kg', 5),
(44, 'Chebut', 'Ianis', '#', '#44', 'Targu-Mures', '2002.10.16', 'Roman', '1.65cm', '40kg', 5),
(45, 'Furnea', 'Andrei', 'furnea_andrei.png', '#45', 'Targu-Mures', '2002.10.17', 'Roman', '1.65cm', '40kg', 5),
(46, 'Markus', 'Alex', 'markus_alex.png', '#46', 'Targu-Mures', '2002.10.18', 'Roman', '1.65cm', '40kg', 5),
(47, 'Stefanescu', 'Oliver', 'stefanescu_oliver.png', '#47', 'Targu-Mures', '2002.10.19', 'Roman', '1.65cm', '40kg', 5),
(48, 'Cuesdeanu', 'Edu', '#', '#48', 'Targu-Mures', '2002.10.20', 'Roman', '1.65cm', '40kg', 5),
(49, 'Szilaghi', 'Andrei', '#', '#49', 'Targu-Mures', '2002.10.21', 'Roman', '1.65cm', '40kg', 5),
(50, 'Donici', 'Luca', 'donici_luca.png', '#50', 'Targu-Mures', '2002.10.22', 'Roman', '1.65cm', '40kg', 5),
(51, 'Todoran', 'Marius', 'todoran_marius.png', '#51', 'Targu-Mures', '2002.10.23', 'Roman', '1.65cm', '40kg', 5),
(52, 'Vosloban', 'Andrei', 'vosloban_andrei.png', '#52', 'Targu-Mures', '2002.10.24', 'Roman', '1.65cm', '40kg', 5),
(53, 'Orban', 'David', 'orban_david.png', '#53', 'Targu-Mures', '2002.10.25', 'Roman', '1.65cm', '40kg', 5),
(54, 'Luca', 'Dragos', '#', '#54', 'Targu-Mures', '2002.10.26', 'Roman', '1.65cm', '40kg', 5),
(55, 'Matei', 'Daniel', '#', '#55', 'Targu-Mures', '2002.10.27', 'Roman', '1.65cm', '40kg', 5),
(56, 'Bucur', 'Koszt', '#', '#56', 'Targu-Mures', '2002.10.28', 'Roman', '1.65cm', '40kg', 5),
(57, 'Mare', 'Cristian', 'mare_cristian.png', '#57', 'Targu-Mures', '2002.10.29', 'Roman', '1.65cm', '40kg', 5),
(58, 'David', 'Cristian', 'david_cristian.png', '#1', 'Targu-Mures', '2002.10.30', 'Roman', '1.65cm', '40kg', 1),
(59, 'Pop', 'Victor', 'pop_victor.png', '#2', 'Targu-Mures', '2002.10.31', 'Roman', '1.65cm', '40kg', 1),
(60, 'Oprea', 'Sebastian', 'oprea_sebastian.png', '#3', 'Targu-Mures', '2002.11.01', 'Roman', '1.65cm', '40kg', 1),
(61, 'Costea', 'Vlad', 'costea_vlad.png', '#4', 'Targu-Mures', '2002.11.02', 'Roman', '1.65cm', '40kg', 1),
(62, 'Mailat', 'Rares', 'mailat_rares.png', '#5', 'Targu-Mures', '2002.11.03', 'Roman', '1.65cm', '40kg', 1),
(63, 'Tatar', 'Mihai', 'tatar_mihai.png', '#6', 'Targu-Mures', '2002.11.04', 'Roman', '1.65cm', '40kg', 1),
(64, 'Balogh', 'Robert', 'balogh_robert.png', '#7', 'Targu-Mures', '2002.11.05', 'Roman', '1.65cm', '40kg', 1),
(65, 'Bulbescu', 'David', 'bulbescu_david.png', '#8', 'Targu-Mures', '2002.11.06', 'Roman', '1.65cm', '40kg', 1),
(66, 'Maier', 'Vlad', 'maier_vlad.png', '#9', 'Targu-Mures', '2002.11.07', 'Roman', '1.65cm', '40kg', 1),
(67, 'Fratean ', 'David', 'fratean_david.png', '#10', 'Targu-Mures', '2002.11.08', 'Roman', '1.65cm', '40kg', 1),
(68, 'Moldovan', 'Horea', 'moldovan_horea.png', '#11', 'Targu-Mures', '2002.11.09', 'Roman', '1.65cm', '40kg', 1),
(69, 'Sincan', 'Andu', 'sincan_andu.png', '#12', 'Targu-Mures', '2002.11.10', 'Roman', '1.65cm', '40kg', 1),
(70, 'Comsa', 'Rares', 'comsa_rares.png', '#13', 'Targu-Mures', '2002.11.11', 'Roman', '1.65cm', '40kg', 1),
(71, 'Toganel', 'Filip', 'toganel_filip.png', '#14', 'Targu-Mures', '2002.11.12', 'Roman', '1.65cm', '40kg', 1),
(72, 'Donics', 'David', '#', '#15', 'Targu-Mures', '2002.11.13', 'Roman', '1.65cm', '40kg', 1),
(73, 'Stefan', 'Darius', '#', '#16', 'Targu-Mures', '2002.11.14', 'Roman', '1.65cm', '40kg', 1),
(74, 'Hajducsi', 'Mark', '#', '#17', 'Targu-Mures', '2002.11.15', 'Roman', '1.65cm', '40kg', 1),
(75, 'Campean', 'Doru', '#', '#18', 'Targu-Mures', '2002.11.16', 'Roman', '1.65cm', '40kg', 1),
(76, 'Alex', 'Lungu', '#', '#19', 'Targu-Mures', '2002.11.17', 'Roman', '1.65cm', '40kg', 1),
(77, 'Vunvulea', 'Stefan', '#', '#20', 'Targu-Mures', '2002.11.18', 'Roman', '1.65cm', '40kg', 1),
(78, 'Marginean', 'Dragos', '#', '#21', 'Targu-Mures', '2002.11.19', 'Roman', '1.65cm', '40kg', 1),
(79, 'Sabadi', 'Erik', '#', '#22', 'Targu-Mures', '2002.11.20', 'Roman', '1.65cm', '40kg', 1),
(80, 'Szombati', 'Huba', '#', '#23', 'Targu-Mures', '2002.11.21', 'Roman', '1.65cm', '40kg', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jucatori_noi`
--

CREATE TABLE `jucatori_noi` (
  `nume` varchar(255) NOT NULL,
  `varsta` int(100) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `parinte` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `jucatori_noi`
--

INSERT INTO `jucatori_noi` (`nume`, `varsta`, `categorie`, `parinte`, `telefon`, `email`, `id`, `data`) VALUES
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 5, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 6, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 7, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 8, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 9, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 10, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 11, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 12, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 13, '2021-05-09'),
('Kurcsi Norbert', 2, 'U13Masculin', 'Kurcsi Lajos', '0755800893', 'norbex2002@gmail.com', 14, '2021-05-09');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `login_history`
--

CREATE TABLE `login_history` (
  `id` int(200) NOT NULL,
  `user` int(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `login_history`
--

INSERT INTO `login_history` (`id`, `user`, `date`) VALUES
(2, 3, '2021-04-26'),
(0, 0, '2021-04-26'),
(1, 1, '2021-04-26'),
(1, 1, '2021-04-26'),
(1, 1, '2021-04-26'),
(1, 3, '2021-04-26'),
(1, 2, '2021-04-26'),
(3, 3, '2021-04-26'),
(4, 1, '2021-04-26'),
(5, 1, '2021-04-27'),
(6, 1, '2021-04-27'),
(7, 3, '2021-04-27'),
(8, 2, '2021-04-27'),
(9, 1, '2021-04-27'),
(10, 1, '2021-04-27'),
(11, 1, '2021-04-27'),
(12, 1, '2021-04-27'),
(13, 1, '2021-04-27'),
(14, 1, '2021-04-27'),
(15, 2, '2021-04-27'),
(16, 1, '2021-04-28'),
(17, 1, '2021-04-28'),
(18, 1, '2021-04-28'),
(19, 1, '2021-04-28'),
(20, 1, '2021-04-28'),
(21, 1, '2021-04-29'),
(22, 1, '2021-04-29'),
(23, 1, '2021-04-29'),
(24, 1, '2021-04-29'),
(25, 1, '2021-04-29'),
(26, 1, '2021-04-29'),
(27, 1, '2021-05-02'),
(28, 1, '2021-05-03'),
(29, 1, '2021-05-03'),
(30, 1, '2021-05-04'),
(31, 1, '2021-05-04'),
(32, 1, '2021-05-05'),
(33, 1, '2021-05-06'),
(34, 1, '2021-05-07'),
(35, 1, '2021-05-07'),
(36, 1, '2021-05-09');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `stiri`
--

CREATE TABLE `stiri` (
  `id` int(255) NOT NULL,
  `categorie` int(20) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `titlu` varchar(255) NOT NULL,
  `poza` varchar(255) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `stiri`
--

INSERT INTO `stiri` (`id`, `categorie`, `autor`, `data`, `titlu`, `poza`, `text`) VALUES
(49, 1, 'KURCSI Norbert', '2021-04-29', 'Calificare_la_turneul_final_pentru_juniorii_U14', 'cover.jpg', '<p>U-BT s-a calificat la turneul final U14, după ce a obținut două victorii și un eșec la competiția desfășurată &icirc;n acest weekend. Elevii lui Răzvan Cenean au disputat meciurile grupei A la Cluj-Napoca și au dat piept cu Alpha Sport Team Sibiu, Cuza Pirates Brăila, respectiv ABC Slam București.</p>\r\n\r\n<p>Juniorii noștri au debutat cu dreptul la turneu, mărșăluind &icirc;n fața celor de la Cuza Pirates Brăila, scor 101-27. U-BT a &icirc;ncheiat ziua de s&acirc;mbătă cu o victorie &icirc;mpotriva formației ABC Slam București, scor 98-53.</p>\r\n\r\n<p>Duminică am suferit &icirc;nsă o &icirc;nfr&acirc;ngere, 75-52 cu Alpha Team Sport Sibiu. Drept urmare, U-BT &icirc;ncheie grupa pe locul doi, dar se califică la turneul final.&nbsp;</p>\r\n\r\n<p>Răzvan Cenean, antrenor U-BT U14</p>\r\n\r\n<blockquote>\r\n<p>Felicit băieții pentru calificarea la turneul final U14. Consider că p&acirc;nă acum am avut o evoluție bună, care ne dă &icirc;ncredere pentru perioada următoare. Dușul rece suferit &icirc;n meciul cu Alpha Sibiu ne va ajuta să vedem ce putem să &icirc;mbunătățim &icirc;n cadrul antrenamentelor pentru a deveni mai puternici. Haide U!</p>\r\n</blockquote>\r\n'),
(50, 1, 'KURCSI Norbert', '2021-04-29', 'Turneu_pe_teren_propriu_pentru_juniorii_U14', 'cover.jpg', '<p>Sf&acirc;rșitul de săptăm&acirc;nă aduce un nou turneu pentru juniorii de la U-BT. Echipa U14 a clubului nostru va disputa meciuri pe teren propriu, la sala B din BTarena. Partidele sunt programate &icirc;n perioada 27-28 martie.</p>\r\n\r\n<p>Elevii lui Răzvan Cenean sunt repartizați &icirc;n grupa A, acolo unde vor mai fi prezente ACS Gladius T&acirc;rgu Mureș, respectiv ACS Transilvania Brașov. Programul meciurilor este următorul:</p>\r\n\r\n<p>S&acirc;mbătă, 27 martie 2021</p>\r\n\r\n<p>10:00 &ndash;&nbsp;<strong>U-BT Cluj-Napoca</strong>&nbsp;vs ACS Gladius T&acirc;rgu Mureș<br />\r\n14:30 &ndash; ACS Gladius T&acirc;rgu Mureș vs ACS Transilvania Brașov<br />\r\n18:00 &ndash; ACS Transilvania Brașov vs&nbsp;<strong>U-BT Cluj-Napoca</strong></p>\r\n\r\n<p>Duminică, 28 martie 2021</p>\r\n\r\n<p>10:00 &ndash;&nbsp;<strong>U-BT Cluj-Napoca</strong>&nbsp;vs ACS Transilvania Brașov<br />\r\n12:30 &ndash; ACS Transilvania Brașov vs ACS Gladius T&acirc;rgu Mureș<br />\r\n15:30 &ndash; ACS Gladius T&acirc;rgu Mureș vs&nbsp;<strong>U-BT Cluj-Napoca</strong></p>\r\n\r\n<p>Toate meciurile sunt trnamsise &icirc;n direct.</p>\r\n'),
(51, 1, 'KURCSI Norbert', '2021-04-30', 'Debut_perfect_pentru_juniorii_U14_în_noul_sezon', 'cover.jpg', '<p>Echipa noastră a debutat perfect &icirc;n noul sezon competițional la categoria U14. Juniorii pregătiți de Răzvan Cenean au participat la turneul de la Sighetu Marmației, acolo unde au repurtat trei succese din tot at&acirc;tea posibile.</p>\r\n\r\n<p>Practic, U-BT a &icirc;nvins-o s&acirc;mbătă dimineața pe CSM Oradea fără prea mari emoții, scor 89-59. Apoi, alb-negrii au obținut o nouă victorie clară &icirc;n fața celor de la CSM Sighetu Marmației, 81-26. &Icirc;n fine, U-BT a depășit-o duminică și pe ACS Gladius T&acirc;rgu Mureș, scor 86-34.</p>\r\n\r\n<p>Pentru acești juniori, următorul turneu va fi la finalul lunii martie.&nbsp;</p>\r\n\r\n<p>Răzvan Cenean, antrenor U-BT U14</p>\r\n\r\n<blockquote>\r\n<p>Mă bucură faptul că s-au reluat campionatele de juniori. Am avut mari emoții din prisma faptului că a fost o pauză de la competiție foarte mare, &icirc;n care doar ne-am antrenat și a fost greu să facem o analiză corectă a evoluției sau a involuției jucătorilor. Sunt mulțumit &icirc;n mare parte de evoluția jucătorilor mei, pe care țin să &icirc;i și felicit pentru felul cum au jucat. &Icirc;n perioada următoare o să &icirc;ncercăm să &icirc;mbunătățim aspectele mai puțin reușite ale jocului nostru. De asemenea, ne dorim ca jucătorii să devină mai performanți cu fiecare antrenament.&nbsp;</p>\r\n</blockquote>\r\n'),
(52, 1, 'KURCSI Norbert', '2021-04-30', 'Întâlniri_cu_BC_CSU_Sibiu_și_BC_FC_Argeș_Pitești_pentru_echipa_noastră', 'cover.jpg', '<p><strong>U-Banca Transilvania</strong>&nbsp;dispută turneul cu numărul XIII al Ligii Naționale pe teren propriu. Gruparea clujeană va da piept cu BC CSU Sibiu și BC FC Argeș Pitești duminică, 25 aprilie, respectiv luni, 26 aprilie. Partidele vor avea loc la BTarena. Mai mult, Derby-ul Ardealului va consemna jocul cu numărul 100 pentru U-Banca Transilvania &icirc;n Sala Polivalentă.&nbsp;</p>\r\n\r\n<p>Formația condusă de Du&scaron;ko Vujo&scaron;ević și Mihai Silvășan poate &icirc;ncheia sezonul regulat pe primul loc, astfel că &icirc;și dorește două victorii la acest turneu. Jucătorii noștri vin după un eșec suferit la Craiova.&nbsp;<strong>U-Banca Transilvania</strong>&nbsp;a fost depășită de SCM U Craiova cu 82-77. &Icirc;n celălalt meci, studenții au &icirc;nvins-o pe Dinamo București cu 79-63.</p>\r\n\r\n<p>Drept urmare,&nbsp;<strong>U-Banca Transilvania</strong>&nbsp;va &icirc;ncepe turneul cu un joc &icirc;n fața celor de la BC CSU Sibiu. Trupa lui Dan Fleșeriu este pe trei, cu un bilanț de 17 succese și 4 &icirc;nfr&acirc;ngeri. Mai exact, vulturii au bifat 38 de puncta, fiind clasați &icirc;n urma celor de la CSO Voluntari, care au disputat &icirc;nsă meciuri mai multe.&nbsp;</p>\r\n\r\n<p>&Icirc;n actuala stagiune,&nbsp;<strong>U-Banca Transilvania</strong>&nbsp;a mai &icirc;nfruntat-o pe BC CSU Sibiu de două ori. De fiecare dată clujenii au obținut victorii. Ultima dată, Richard și compania s-au impus &icirc;n Cupa Rom&acirc;niei, confruntarea desfășur&acirc;ndu-se tot la BTarena. &Icirc;n luna martie, alb-negrii au c&acirc;știgat cu 106-103, după o repriză suplimentară. &Icirc;n schimb, &icirc;n jocul din campionat de la Sibiu, U-Banca Transilvania a c&acirc;știgat cu 90-83. Confruntarea se joacă, așadar, duminică, de la ora 21:00 și va fi transmisă &icirc;n direct la Digi Sport, Look Sport, respectiv FRB TV.</p>\r\n\r\n<p><strong>U-Banca Transilvania</strong>&nbsp;&icirc;și va măsura luni forțele cu BC FC Argeș Pitești. Formația antrenată de Tudor Costescu se află pe locul șase și a contabilizat p&acirc;nă la ora actuală 16 rezultate pozitive și 5 eșecuri. Drept urmare, echipa din Trivale a bifat 35 de puncte, fiind la mare luptă &icirc;n clasament cu Timișoara, Oradea și Craiova. Baschetbaliștii noștri au mai jucat de două ori cu FC Argeș Pitești, &icirc;nregistr&acirc;nd succese la peste 15 puncte at&acirc;t &icirc;n campionat, c&acirc;t și &icirc;n Cupa Rom&acirc;niei. &Icirc;ncleștarea este programată luni, de la ora 20:00 și va fi transmisă &icirc;n direct la Digi Sport, Look Sport, respectiv FRB TV.&nbsp;&nbsp;</p>\r\n\r\n<p>Justin Edwards, jucător U-Banca Transilvania</p>\r\n\r\n<blockquote>\r\n<p>Știm ce avem de făcut și credem că va fi un turneu foarte important. Dacă vom &icirc;nvinge Sibiul vom termina pe primul loc. Vrem avantajul terenului propriu &icirc;n Play-Off. Știm că ambele echipe vor fi pregătite. Noi am făcut planul de joc și vom da totul să c&acirc;știgăm.&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Mihai Silvășan, antrenor principal U-Banca Transilvania</p>\r\n\r\n<blockquote>\r\n<p>Va fi un turneu foarte important pentru noi. &Icirc;n primul r&acirc;nd, meciul cu Sibiul este foarte important. Va fi primul joc după &icirc;nfr&acirc;ngerea de la Craiova. Trebuie să revenim cu o evoluție bună, să fim puternici din punct de vedere mental și să facem tot ce ține de noi pentru a c&acirc;știga. Din alt punct de vedere, este important meciul cu Sibiul pentru că ne oferă, &icirc;n cazul unei victorii, locul &icirc;nt&acirc;i &icirc;n clasament. Sperăm să reușim să ne clasăm pe primul loc la finalul returului. Realmente, Sibiul se află pe locul doi. Sunt o formație puternică pe tranziție ofensivă, sunt buni la recuperări ofensive și au mulți jucători care pot să facă diferența. Cu siguranță va fi un meci de care pe care. Ca noutăți, pot să vă spun că va fi prezent pe teren Nandor Kuti. El a mai jucat doar &icirc;n Cupa Rom&acirc;niei. S-a antrenat cu echipa de c&acirc;teva zile și se simte destul de bine. Evident, nu avem așteptări să fie 100%, dar cu siguranță va fi un plus. De asemenea, și Donatas Tarolis și-a revenit după entorsa avută. Karlo Žganec nu va fi disponibil. La recomandarea doctorului, va face &icirc;n zilele următoare o serie de analize amănunțite. Noi suntem optimiști și putem doar spera că revine &icirc;n acest sezon, dar lucrurile nu arată extrem de bine &icirc;n acest moment.&nbsp;</p>\r\n</blockquote>\r\n'),
(53, 1, 'KURCSI Norbert', '2021-04-30', 'Baschetbaliștii_noștri_au_suferit_prima_înfrângere_în_Liga_Națională', 'cover.jpg', '<p><strong>U-Banca Transilvania</strong>&nbsp;a &icirc;ncheiat turneul de la Craiova cu o &icirc;nfr&acirc;ngere. Baschetbaliștii noștri au fost depășiți luni seara de SCM U Craiova cu scorul de 82-77 și au suferit primul eșec &icirc;n actuala stagiune a Ligii Naționale.</p>\r\n\r\n<p>Echipa ardeleană a &icirc;nceput mai bine meciul și a condus cu 6-0 după un coș al lui Justin Edwards. Craiova a răspuns cu un parțial de 7-0, apoi combatantele au mers cap la cap. Patrick Richard a &icirc;nscris pentru 20-13 și ne-a pus la conducere la finalul actului &icirc;nt&acirc;i. &Icirc;n sfertul al doilea, doljenii au oferit o replică mult mai d&acirc;rză. Jucătorii lui Aleksandar Todorov s-au găsit perfect și au punctat de la trei puncte &icirc;ntr-o manieră impresionantă. U-Banca Transilvania a izbutit numai 9 puncte, pe c&acirc;nd Craiova a terminat repriza &icirc;n avantaj, 37-29.&nbsp;</p>\r\n\r\n<p>Ecartul oltenilor a crescut &icirc;n partea a doua, odată cu reușita lui Dragoș Diculescu, 44-31. Același Diculescu a dus scorul la 56-41, așa că elevii lui Mihai Silvășan au &icirc;ncercat &icirc;n permanență să reducă din diferență. Patrick Richard s-a luptat cu defensiva adversarilor, dar fără prea mare succes.</p>\r\n\r\n<p>Patrick Richard, căpitan U-Banca Transilvania</p>\r\n\r\n<blockquote>\r\n<p>Cu siguranță a fost un meci greu. Niciodată nu vrei să pierzi. Ne-am luptat și sunt mulțumit de acest lucru. Trebuie să ne păstrăm calmul. Știu că putem să &icirc;nvățam multe din această partidă. Ne așteaptă un nou turneu dificil și vom fi pregătiți. Apreciem sprijinul fanilor și le mulțumim că sunt alături de noi.&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Branko Cuic, director executiv sportiv U-Banca Transilvania</p>\r\n\r\n<blockquote>\r\n<p>&Icirc;n primul r&acirc;nd, vreau să felicit echipa Craiovei. 100% au c&acirc;știgat acest meci pe merit. Nu am nimic ce să spun din acest punct de vedere. Au jucat riscant, ne-au lăsat liberi adesea și tactica lor a funcționat. Sper că nu am intrat &icirc;ntr-o zonă de confort, deoarece aveam 21 de victorii. Nu am realizat &icirc;ncă nimic. Pe de altă parte, sunt dezamăgit de un alt aspect. Am participat la cel mai slab turneu din punct de vedere al organizării. &Icirc;n primul r&acirc;nd, toată lumea ar trebui să aibă aceleași condiții și să stea &icirc;n bulă. Ieri, Karlo Zganec s-a accidentat și a fost nevoie să meargă la spital cu taxiul. Nu aveau ambulanță la sală, deși este obligatoriu. Craiova nu trebuie să pună stickere cu sponsorul SuperBet, deși toată lumea respectă acest lucru. Azi dimineață, la antrenament, peste noi au intrat handbaliste. Despre ce bulă mai vorbim? De asemenea, Marius Toma, managerul, directorul sau orice funcție are la Craiova, stă &icirc;n spatele băncii și dă directive la arbitri. El nu a fost &icirc;n bulă, ci a dormit acasă. Totuși, a putut să vină la sală și să comenteze tot meciul. Chiar nu știu ce să zic. El e cunoscut ca fiind un curier la campania electorală care trebuie să fie, dar nu mi se pare normal să aibă alte beneficii. Sunt dezamăgit de felul cum s-a organizat această bulă. &Icirc;ncă o dată spun, sper ca &icirc;n viitor să avem aceleași condiții cu toții. Domnul comisar mi-a spus că au voie să stea pe bancă 20 de persoane. Așa putem să aducem și noi 20 de ultrași. Nu am luat &icirc;n seamă ce a spus domnul comisar. Nu are nicio legătură cu meciul, Craiova a c&acirc;știgat pe merit. &Icirc;i felicit, iar noi mai avem de muncă.&nbsp;&nbsp;</p>\r\n</blockquote>\r\n'),
(55, 1, 'KURCSI Norbert', '2021-04-30', 'Victorie_la_pas_în_fața_celor_de_la_Dinamo', 'cover.jpg', '<p>U-Banca Transilvania continuă seria impresionantă din Liga Națională. Gruparea ardeleană a &icirc;nceput cu dreptul turneul de la Craiova, acolo unde a reușit duminică seara să o &icirc;nvingă pe Dinamo București. A fost 79-63 pentru echipa noastră. Studenții se vor duela luni cu SCM U Craiova.</p>\r\n\r\n<p>Andrija Stipanović a adus primele patru puncte ale &icirc;ncleștării, &icirc;n timp ce Dinamo a răspuns prin Javon Masters. Ulterior, dunk-ul lui Karel Guzman ne-a desprins la 8-2. U-Banca Transilvania a condus cu 22-14 la finalul primului sfert, iar la pauză tabela indica 44-30.&nbsp;</p>\r\n\r\n<p>&Icirc;n debutul actului trei, Justin Edwards a marcat pentru 59-39. Canadianul a oferit un recital ofensiv remarcabil, &icirc;n timp ce Stipanović și Guzman au continuat să furnizeze puncte. Din păcate, după pauză, Karlo Žganec s-a accidentat la umăr și nu a mai fost folosit &icirc;n meci. Colegii săi au mărșăluit &icirc;nsă spre victoria cu numărul 21.&nbsp;</p>\r\n\r\n<p>Andrija Stipanović, jucător U-Banca Transilvania</p>\r\n\r\n<blockquote>\r\n<p>A fost un meci bun pentru noi, &icirc;n special din punct de vedere defensiv. Am jucat dur și de aceea adversarii au &icirc;nscris numai 63 de puncte. Chiar dacă dinamoviștilor le-a lipsit un jucător, sunt o echipă bună. Este greu să joci &icirc;mpotriva lor. M&acirc;ine ne așteaptă un alt meci, trebuie să avem aceeași atitudine.&nbsp;</p>\r\n</blockquote>\r\n\r\n<p>Mihai Silvășan, antrenor principal U-Banca Transilvania</p>\r\n\r\n<blockquote>\r\n<p>Mă bucură această victorie, &icirc;nsă mă &icirc;ntristează faptul că, probabil, l-am pierdut pe Karlo Žganec. El a suferit o accidentare la același umăr la care a fost operat. Se află la spital și putem doar să ne rugăm să nu fie foarte grav. Acesta era scopul nostru, să ne impunem. M&acirc;ine urmează un nou meci important, cu o echipă bună. Ne dorim să c&acirc;știgăm și acest meci.&nbsp;</p>\r\n</blockquote>\r\n'),
(56, 2, 'KURCSI Norbert', '2021-05-06', 'Programul_și_loturile_echipelor_U13', 'cover.jpg', '<p>Federația Rom&acirc;nă de Baschet a decis că sezonul 2020/2021 poate &icirc;ncepe și pentru juniori. Astfel, toate competițiile se vor desfășura sub formă de turnee, lu&acirc;nd &icirc;n calcul pandemia de COVID-19. La &icirc;ntrecerea U13, clubul nostru va &icirc;nscrie nu mai puțin de trei echipe. Acestea au fost deja distribuite &icirc;n grupa F, care este alcătuită după cum urmează: ACS U-BT 1 Cluj-Napoca, ACS U-BT 2 Cluj-Napoca, ACS U-BT 3 Cluj-Napoca, respectiv CSS Viitorul Cluj-Napoca.&nbsp;</p>\r\n\r\n<p>Iată și componența celor trei formații:</p>\r\n\r\n<p><strong>ACS U-BT 1 Cluj-Napoca &ndash; Antrenor &ndash; Flavius Lăpuște</strong></p>\r\n\r\n<p>Jucători &ndash; Robert Andrei Uță, Dragoș Muntean, Alexandru-Dimitrie Onac, Răzvan-Filip Ardelean, Victor-Matei Corondan, David-Andrei Zanc, Bogdan-Ștefan Chendrean, Ștefan Kelemen, David-Andrei Lăpușan, Eduard-Ștefan Kișpal, Radu-Andrei Cepoi, Vlad Goia, Alexandru Ungureanu, Ștefan Saplacan, Ștefan-Emil Rotariu, Dragoș Popa, Marc-David Pop, Cristian-Phillip Pop, Lăpuștea Luca.</p>\r\n\r\n<p><strong>ACS U-BT 2 Cluj-Napoca &ndash; Antrenori &ndash; Mioara Iurian, Andrei Cosma</strong></p>\r\n\r\n<p>Jucători &ndash; Denis Alexandru Șerban, Andrei Alexandru Paul, Darius Miron, Cezar Cristian Micu, Zoran Istrătescu, Constantin Ghiț, Alexandru C&acirc;mpean, Mihai Popescu, Sebastian Petru Lăpuște, Cezar Ștefan Drăgan, Andrei Tudor Pop, Marc Sebastian Todor, Thomas Bernat, Mihnea C&acirc;mpian, Marcus Văcar, Andrei Luca Lupșan, Radu Andrei Fodor.</p>\r\n\r\n<p><strong>ACS U-BT 3 Cluj-Napoca &ndash; Antrenori &ndash; Simona Mușat, Gyorgy Grunwald&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Jucători &ndash; Robert Albert, Ștefan Hațegan, Raul-Mihai Szekely-Kiraly-Pop, Cristian Predescu, Alex Oprița, Mihnea Căruntu, Ștefan Ivașcău, Răzvan Hoza, Andrei Vomir Bizo, Cătălin Vancea, George Ciurea, Alex Mușatescu, Vlad Chișu, Matei Crainic, Ștefan Baciu, Luca Briciu, Victor Lungu, Raul Riti, Demeter Victor.<br />\r\n<br />\r\nLa competiție vor lua startul 34 de echipe, programul turneelor fiind următorul:<br />\r\n<br />\r\n&bull; Turneul 1 &ndash; 27/28 februarie<br />\r\n&bull; Turneul 2 &ndash; 20/21 martie<br />\r\n&bull; Turneul 3 &ndash; 17/18 aprilie<br />\r\n&bull; Turneul final &ndash; 2/6 iunie</p>\r\n'),
(57, 2, 'KURCSI Norbert', '2021-05-06', 'Sfârșit_de_săptămână_plin_de_meciuri_la_U13', 'cover.jpg', '<p>Juniorii U13 de la U-BT sunt pregătiți să dispute un nou turneu la această săptăm&acirc;nă. ACS U-BT 1 U13 va avea meciuri pe teren propriu, &icirc;n perioada 20-21 martie. Baschetbaliștii lui Flavius Lăpuște se vor duela &icirc;n sala B din BTarena cu CSS CSM Sighetu Marmației, ACS Alfa Sport Team Verde Sibiu și LPS 2 T&acirc;rgu Mureș. Iată și programul partidelor:&nbsp;</p>\r\n\r\n<p><strong>S&acirc;mbătă, 20 martie, BTarena</strong><br />\r\n10:00 ACS U-BT 1 Cluj-Napoca vs LPS 2 T&acirc;rgu Mureș<br />\r\n12:00 ACS Alfa Sport Team Verde Sibiu vs CSS CSM Sighetu Marmației&nbsp;<br />\r\n17:00 CSS CSM Sighetu Marmației vs ACS U-BT 1 Cluj-Napoca<br />\r\n19:00 LPS 2 T&acirc;rgu Mureș vs ACS Alfa Sport Team Verde Sibiu</p>\r\n\r\n<p><strong>Duminică, 21 martie, BTarena&nbsp;</strong><br />\r\n10:00 ACS U-BT 1 Cluj-Napoca vs ACS Alfa Sport Team Verde Sibiu<br />\r\n12:00 CSS CSM Sighetu Marmației vs LPS 2 T&acirc;rgu Mureș.&nbsp;</p>\r\n\r\n<p>&Icirc;n schimb, formația ACS U-BT 2 U13 va merge la Sibiu. Sportivii pregătiți de Mioara Iurean și Andrei Cosma vor da piept cu BC CSU Sibiu, CSM CSU Oradea și ACS Gladius T&acirc;rgu Mureș, după următorul program:</p>\r\n\r\n<p><strong>S&acirc;mbătă, 20 martie, Sala Transilvania&nbsp;</strong><br />\r\n11:00 ACS U-BT 2 Cluj-Napoca vs BC CSU Sibiu<br />\r\n13:00 CSM CSU Oradea vs ACS Gladius T&acirc;rgu Mureș&nbsp;<br />\r\n17:30 CSM CSU Oradea vs BC CSU Sibiu<br />\r\n19:30 ACS U-BT 2 Cluj-Napoca vs ACS Gladius T&acirc;rgu Mureș</p>\r\n\r\n<p><strong>Duminică, 21 martie, Sala CSS</strong><br />\r\n09:00 CSM CSU Oradea vs ACS U-BT 2 Cluj-Napoca&nbsp;<br />\r\n11:00 BC CSU Sibiu vs ACS Gladius T&acirc;rgu Mureș&nbsp;</p>\r\n\r\n<p>&Icirc;n schimb, ACS U-BT 3 Cluj-Napoca va disputa partide la Sala Ion Ag&acirc;rbiceanu din Cluj-Napoca. Trupa Simonei Mușat va juca cu CSS Viitorul Cluj-Napoca, ACS Alpha Sport Team Alb Sibiu și LPS 1 T&acirc;rgu Mureș.&nbsp;</p>\r\n\r\n<p><strong>S&acirc;mbătă, 20 martie, Sala Ion Ag&acirc;rbiceanu&nbsp;</strong><br />\r\n9:30 ACS U-BT 3 Cluj-Napoca vs CSS Viitorul Cluj-Napoca&nbsp;<br />\r\n12:00 ACS ALPHA SPORT TEAM ALB Sibiu vs LPS 1 T&acirc;rgu Mureș&nbsp;<br />\r\n16:30 LPS 1 T&acirc;rgu Mureș vs ACS U-BT 3 Cluj-Napoca<br />\r\n19: 00 ACS ALPHA SPORT TEAM ALB Sibiu vs CSS Viitorul Cluj-Napoca&nbsp;</p>\r\n\r\n<p><strong>Duminică, 21 martie, Sala Ion Ag&acirc;rbiceanu&nbsp;</strong><br />\r\n9:30 LPS 1 T&acirc;rgu Mureș vs CSS Viitorul Cluj-Napoca&nbsp;<br />\r\n12:00 ACS ALPHA SPORT TEAM ALB Sibiu vs ACS U-BT 3 Cluj-Napoca&nbsp;</p>\r\n'),
(61, 2, 'KURCSI Norbert', '2021-05-06', 'Competițiile_baschetbalistice_la_nivel_juvenil_au_fost_amânate', 'cover.jpg', '<p>Comitetul Director al Federației Rom&acirc;ne de Baschet s-a &icirc;ntrunit online, &icirc;n data de 28.11.2020, iar printre subiectele dezbătute s-au numărat și competițiile juvenile din țara noastră. Astfel, s-a aprobat, cu majoritate de voturi, ca &icirc;ntrecerile naționale de juniori să fie am&acirc;nate pentru o dată ulterioară &icirc;n anul 2021.&nbsp;</p>\r\n\r\n<p>Cluburile au fost anunțate de această decizie &icirc;n cursul dimineții de marți, 2 decembrie. Mai mult, &icirc;n comunicatul postat pe site-ul Federației Rom&acirc;ne de Baschet se anunță faptul că startul sezonului la nivel juvenil depinde de evoluția pandemiei. Drept urmare, campionatele ar putea &icirc;ncepe cel mai devreme la finalul lunii ianuarie sau &icirc;nceputul lunii februarie.&nbsp;</p>\r\n\r\n<p>P&acirc;nă atunci, juniorii Academiei U-BT se vor pregăti, sub coordonarea antrenorilor, la Cluj-Napoca.&nbsp;</p>\r\n'),
(62, 2, 'KURCSI Norbert', '2021-05-06', 'Primul_turneu_U13_va_avea_loc_la_BTarena', 'cover.jpg', '<p>Juniorii clubului nostru vor intra, &icirc;ncep&acirc;nd cu această săptăm&acirc;nă, &icirc;n focurile primei competiții din 2021. Echipele U13 vor disputa turneul inaugural la BTarena. Meciurile vor avea loc &icirc;n Sala B &icirc;n perioada 27-28 februarie. La această competiție vom participa cu trei echipe, care au fost repartizate &icirc;n Grupa F, alături de CSS Viitorul Cluj-Napoca.&nbsp;</p>\r\n\r\n<p>&Icirc;n acest sens, s-a stabilit și programul &icirc;ntrecerii:</p>\r\n\r\n<p><strong>Etapa I &ndash; 27.02.2021</strong></p>\r\n\r\n<p>9:00 ACS U-BT 1 Cluj-Napoca vs ACS U-BT 2 Cluj-Napoca (scor 77 - 45)</p>\r\n\r\n<p>11:30 CSS Viitorul Cluj-Napoca vs ACS U-BT 3 Cluj-Napoca (scor 85 - 45)</p>\r\n\r\n<p><strong>Etapa II &ndash; 27.02.2021</strong></p>\r\n\r\n<p>15:30 ACS U-BT 2 Cluj-Napoca vs CSS Viitorul Cluj-Napoca (scor 73 - 79)</p>\r\n\r\n<p>18:00 ACS U-BT 3 Cluj-Napoca vs ACS U-BT 1 Cluj-Napoca (scor 19 - 87)</p>\r\n\r\n<p><strong>Etapa III &ndash; 28.02.2021</strong></p>\r\n\r\n<p>9:00 ACS U-BT 2 Cluj-Napoca vs ACS U-BT 3 Cluj-Napoca (scor 107 - 27)</p>\r\n\r\n<p>11:30 CSS Viitorul Cluj-Napoca vs ACS U-BT 1 Cluj-Napoca (scor 47 - 104)</p>\r\n\r\n<p>La fel ca la meciurile seniorilor, sunt impuse anumite reguli cu scopul de a-i proteja pe participanți de o posibilă infectare cu COVID-19. Astfel, echipele vor fi cazate la hotel, iar toți jucătorii și antrenorii vor fi testați RC-PCR cu 48 de ore &icirc;nainte de startul competiției. Partidele se vor desfășura fără spectatori.</p>\r\n'),
(67, 2, 'KURCSI Norbert', '2021-05-06', 'Reîncep_antrenamentele_juniorilor', 'cover.jpg', '<p><strong>Academia U-BT</strong>&nbsp;re&icirc;ncepe de luni antrenamentele, &icirc;n acest sens fiind instalate trei terenuri profesionale &icirc;n fața Sălii Sporturilor &rdquo;Horia Demian&rdquo;.<strong>&nbsp;Federația Rom&acirc;nă de Baschet</strong>&nbsp;a anunțat că, &icirc;n funcție de evoluția pandemiei de coronavirus din țara noastră, cel mai probabil&nbsp;<strong>Turneele Finale</strong>&nbsp;ale campionatelor juvenile vor avea loc &icirc;n luna august, posibil &icirc;n aer liber.&nbsp;</p>\r\n\r\n<p>Toate echipele noastre vor &icirc;ncepe pregătirea de luni, inclusiv cele de baby și minibaschet, toți antrenorii Academiei fiind implicați &icirc;n această acțiune. Sportivii vor avea fiecare c&acirc;te o minge, &icirc;n această fază antrenamentele fiind de tehnică individuală, fără pase sau elemente de tactică, clubul nostru lu&acirc;nd toate măsurile pentru dezinfectarea și igienizarea tuturor suprafețelor și materialelor folosite, conform reglementărilor &icirc;n vigoare.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>BRANKO ĆUIĆ, director executiv sportiv U-BT:</strong></h2>\r\n\r\n<p><em>&rdquo;După o perioadă lungă fără baschet pe viu, &icirc;n care noi ne-am antrenat prin platforma Zoom, ne vom &icirc;nt&acirc;lni cu copiii &icirc;n sf&acirc;rșit.</em></p>\r\n\r\n<p><em>Vom avea trei terenuri profesionale amenajate pe platforma din fața Sălii Sporturilor &laquo;Horia Demian&raquo; și &icirc;ncepem, astfel, pregătirea pentru turneele finale care urmează. Am stabilit &icirc;mpreună cu antrenorii din cadrul Academiei că vom &icirc;ncepe de luni antrenamente individuale și fizice cu juniorii, cel puțin p&acirc;nă c&acirc;nd se vor modifica restricțiile impuse de autorități.</em></p>\r\n\r\n<p><em>Totodată, de luni vor &icirc;ncepe și seniorii care se află &icirc;n Rom&acirc;nia și care &icirc;ncă sunt sub contract cu noi, ei se vor antrena cu Mihai Silvășan și cu mine&rdquo;.</em></p>\r\n'),
(72, 3, 'KURCSI Norbert', '2021-05-06', 'Se_suspendă_meciurile_de_juniori_și_Liga_I', 'cover.jpg', '<p><strong>Federația Rom&acirc;nă de Baschet&nbsp;</strong>a anunțat suspendarea competițiilor din cadrul Campionatelor Naționale de Juniori și Liga I.</p>\r\n\r\n<p>Decizia a fost luată ca urmare ca &icirc;nchiderii școlilor &icirc;n perioada 11-22 martie, cu posibilitate de prelungire a perioadei pentru prevenirea extinderii virusului COVID-19.</p>\r\n\r\n<p>Iată &nbsp;comunicatul postat de Federația Rom&acirc;nă de Baschet pe site-ul propriu, frbaschet.ro:</p>\r\n\r\n<blockquote>\r\n<p>Av&acirc;nd &icirc;n vedere noile măsuri impuse, luni seara, de autoritățile rom&acirc;ne, privind prevenirea extinderii &nbsp;virusului COVID-19, și anume &icirc;nchiderea tuturor școlilor și grădinițelor &icirc;ntre 11-22 martie, cu posibilitatea de prelungire a acestei perioade, Consiliul Director al FRB a decis, astăzi, &icirc;n regim de urgență, cu majoritate de voturi, următoarele:</p>\r\n\r\n<p>1. Suspendarea pe durata &icirc;nchiderii unităților de &icirc;nvățăm&acirc;nt preuniversitare a tuturor competițiilor oficiale de baschet la nivel de juniori, inclusiv U20, organizate de catre FRB și de către Asociațiile Județene de Baschet și Asociația Municipală de Baschet București. Din cauza faptului ca &icirc;n Liga 1 activează preponderant sportivi juniori, se decide și supendarea acestei competiții pentru aceeași perioadă.<br />\r\n2. Pentru operativitate &icirc;n luarea deciziilor, se instituie un Comitet pentru Situații de Urgentă care va putea lua orice hotăr&acirc;re necesară &icirc;n domeniul baschetablistic &icirc;n contextul prevenirii epidemiei de COVID-19. Comitetul pentru Situații de Urgență din cadrul FRB este format din Horia Paun, Dan Berceanu, Claudiu Fometescu și Doru Toma</p>\r\n</blockquote>\r\n\r\n<p>Echipele de juniori ale clubului nostru care aveau programate meciuri &icirc;n perioada 11- 22 martie sunt:</p>\r\n\r\n<ul>\r\n	<li><strong>Liga I:&nbsp;</strong>semifinale play-off - 19, 24 și 29 martie</li>\r\n	<li><strong>U16:&nbsp;</strong>meci programat &icirc;n 21 martie: U-BT Cluj-Napoca - Dinamo CSȘ 6 București</li>\r\n	<li><strong>U14:&nbsp;</strong>Turneu am&acirc;nat &icirc;n EYBL. Acesta trebuia sa aibă&nbsp;loc &icirc;n perioada 2-5 aprilie, &icirc;n Bulgaria.&nbsp;</li>\r\n	<li><strong>U13:&nbsp;</strong>Turneele din etapa a 8-a unde avem două echipe participante. Aceste turnee erau programate &icirc;n perioada 14-15 martie.</li>\r\n</ul>\r\n'),
(73, 3, 'KURCSI Norbert', '2021-05-06', 'Se_cunosc_datele_de_disputare_ale_turneelor_finale_la_juniori', 'cover.jpg', '<p><strong>Federația Rom&acirc;nă de Baschet</strong>&nbsp;a anunțat datele de disputare ale&nbsp;<strong>Turneelor Finale</strong>&nbsp;ale&nbsp;<strong>Campionateleor Naționale de Juniori.</strong>&nbsp;De asemenea, se cunosc și echipele care au reconfirmat participarea la turneele care vor stabil campioanele naționale pentru sezonul 2019 - 2020. Meciurile vor avea loc &icirc;n aer liber, locațiile urm&acirc;nd să fie anunțate &icirc;n c&acirc;teva zile.</p>\r\n\r\n<p>Astfel,&nbsp;<strong>turneul final la categoria U13, va avea loc &icirc;n perioada 12-15 septembrie.</strong></p>\r\n\r\n<p>&middot;Echipele participante: ACS Dan Dacian - Portocaliu București, ABC Lynx Ploiești, ABC Laguna București, ACS Academia de Baschet Phoenix Galați, ACS Alpha Sport Team - Alb Sibiu, &nbsp;ACS Transilvania Brașov,&nbsp;ACS U-BT - 1 Cluj -Napoca.</p>\r\n\r\n<p><strong>Categoria U14: 17 - 20 septembrie:</strong></p>\r\n\r\n<p>&middot;Echipe participante: ABC Slam București, ACS Dan Dacian București, ABC Laguna București,ABC Leii București,&nbsp;ACS U-BT-1 Cluj - Napoca, LPS T&acirc;rgu Mureș,&nbsp;ACS ID &Icirc;ngerii Băniei Craiova.</p>\r\n\r\n<p><strong>Categoria U15: 7-10 septembrie.&nbsp;</strong>Echipa clubului nostru nu s-a calificat la Turneul Final.</p>\r\n\r\n<p><strong>Categoria U16: 12 -15 septembrie:</strong></p>\r\n\r\n<p>&middot;Echipe participante: ABC Leii București, CS Otopeni,&nbsp;CSS Nr. 4 București, CS Dinamo CSS Nr. 6 București, ABC Laguna București, ACS U-BT Cluj-Napoca, CSS T&acirc;rgoviște.</p>\r\n\r\n<p><strong>Categoria U18: 17-20 septembrie</strong></p>\r\n\r\n<p>&middot;Echipe participante: &nbsp;ACS U-BT Cluj-Napoca, LPS Focșani,&nbsp;CSS Nr. 4 București, CSU Sibiu, CS Agronomia București.</p>\r\n\r\n<p><strong>Categoria U20: 7-10 septembrie.&nbsp;</strong>Clubul nostru nu a &icirc;nscris echipă la această categorie.</p>\r\n\r\n<p>Meciurile vor avea loc &icirc;n aer liber, locațiile și programul meciurilor urm&acirc;nd să fie anunțate &icirc;n c&acirc;teva zile.</p>\r\n\r\n<p>Toate echipele participante la&nbsp;<strong>Turneele Finale</strong>, masculin și feminin, le puteți găsi pe site-ul&nbsp;<a href=\"https://www.frbaschet.ro/stiri/generale/s-au-stabilit-datele-turneelor-nationale-de-juniori?fbclid=IwAR09ED8gn5_N5zjO-p3b-f4A0JqeWDaake-zAF6bzAIYy7RHmN1546EMO6M\">frbaschet.ro</a></p>\r\n'),
(74, 3, 'KURCSI Norbert', '2021-05-06', 'Turneele_Finale_ale_juniorilor,_amânate', 'cover.jpg', '<p><strong>Campionatelor Naționale de juniori</strong>, categoriile Under 13 - Under 20, să fie reprogramate după data de 17 august 2020.&nbsp;</p>\r\n\r\n<p>Clubul nostru are calificate la&nbsp;<strong>Turneele Finale A</strong>&nbsp;echipele de&nbsp;<strong>Under 13, Under 14, Under 16</strong>&nbsp;și&nbsp;<strong>Under 18</strong>, &icirc;n timp ce echipa de&nbsp;<strong>Under 15&nbsp;</strong>va evolua la&nbsp;<strong>Turneul Final B. U-BT&nbsp;</strong>nu a &icirc;nscris echipă la<strong>&nbsp;Under 20.</strong></p>\r\n\r\n<p>FRB va studia modalitățile prin care se pot desfășura&nbsp;<strong>Turneele Finale</strong>, &icirc;n funcție de evoluția pandemiei și de măsurile impuse de Guvern &icirc;n următoarea perioadă și va reveni cu precizări.</p>\r\n'),
(76, 3, 'KURCSI Norbert', '2021-05-06', 'Luptă_mare_pentru_cei_mai_mici', 'cover.jpg', '<p>Cea mai echilibrată competiție pentru juniorii noștri este cea de la categoria&nbsp;<strong>Under 13</strong>, acolo unde&nbsp;<strong>U-BT</strong>&nbsp;a &icirc;nscris două echipe.&nbsp;</p>\r\n\r\n<p>Prima echipă de&nbsp;<strong>Under 13</strong>&nbsp;a clubului nostru, antrenată de&nbsp;<strong>Mihai Popa</strong>, are p&acirc;nă acum un bilanț pozitiv &icirc;n&nbsp;<strong>Campionatul Național U13</strong>, av&acirc;nd la activ 9 victorii și 5 &icirc;nfr&acirc;ngeri.</p>\r\n\r\n<p><strong>Rezultate obținute de U-BT 1 Cluj-Napoca:</strong></p>\r\n\r\n<ul>\r\n	<li>ACS U-BT 1 Cluj-Napoca - LPS T&acirc;rgu Mureș 76-48</li>\r\n	<li>ACS Transilvania Brașov - ACS U-BT 1 Cluj-Napoca 48-40&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS Alpha Sport Team Alb Sibiu - ACS U-BT 1 Cluj-Napoca 79-48</li>\r\n	<li>ACS U-BT 1 Cluj-Napoca - CSS CSM Sighetu Marmației &nbsp;99-30&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS Transilvania Brașov - ACS U-BT 1 Cluj-Napoca 58-54&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 1 Cluj-Napoca - CS MP Sport Timișoara&nbsp;&nbsp; &nbsp;70-51</li>\r\n	<li>ACS U-BT 1 Cluj-Napoca - CSU Sibiu 76-39</li>\r\n	<li>ACS Alpha Sport Team Alb Sibiu - ACS U-BT 1 Cluj-Napoca 70-41&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 1 Cluj-Napoca - ACS Transilvania Brașov 53-73&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS Gladius T&acirc;rgu Mureș - ACS U-BT 1 Cluj-Napoca 39-98&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 1 Cluj-Napoca - CSS CSM Sighetu Marmației 105-35</li>\r\n	<li>ACS BC Lions Craiova - ACS U-BT 1 Cluj-Napoca 34-71&nbsp;&nbsp; &nbsp;</li>\r\n	<li>CSS Viitorul Cluj-Napoca - ACS U-BT 1 Cluj-Napoca 11-73&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 1 Cluj-Napoca - CS MP Sport Timișoara&nbsp;&nbsp; &nbsp;72-31</li>\r\n</ul>\r\n\r\n<p><strong>Campionatul Național&nbsp;</strong>a ajuns la<strong>&nbsp;Etapa a 8-a</strong>, iar&nbsp;<strong>U-BT 1</strong>&nbsp;urma să organizele turneul din&nbsp;<strong>Grupa C1.&nbsp;</strong>Echipa antrenată de&nbsp;<strong>Mihai Popa</strong>&nbsp;se află pe locul 3 &icirc;n&nbsp;<strong>Clasamentul General al Grupelor C-D</strong>, cu 52 de puncte. Primele patru clasate erau prevăzute a se califica la<strong>&nbsp;Turneul Final</strong>&nbsp;după disputarea a zece runde.&nbsp;</p>\r\n\r\n<p><strong>U-BT 1</strong>&nbsp;&icirc;i are &icirc;n componență pe sportivii Radu Andrei Cepoi, Ianis Andrei Domocoș, Lorin Ștefan Drăguș, Andi Dan Folea, Andrei Ganea, Andrei Tudor Hedeșiu, Erik Ștefan Istrătescu, Mihnea Legian, Pietro Mărginean, Csoregi Mate, Alexandru Moldovan, Ștefan Neacșu, Tudor Alexis Petric, Eduard Alexandru Poenar, Neemia Pop, Luca Vlad Rebrean, Matei Sălăjan și David Sucală. Antrenorul principal<strong>&nbsp;Mihai Popa</strong>&nbsp;este secondat de&nbsp;<strong>Simona Mușat.</strong></p>\r\n\r\n<p>Cea de-a doua echipă,&nbsp;<strong>U-BT 2 Cluj-Napoca</strong>, a reușit p&acirc;nă acum &icirc;n&nbsp;<strong>Campionatul Național&nbsp;</strong>o prestație foarte bună, av&acirc;nd &icirc;n vedere că jucătorii sunt mai mici cu un an sau doi dec&acirc;t categoria. Elevii antrenați de<strong>&nbsp;Flavius Lăpuște</strong>&nbsp;au obținut 6 victorii și 7 &icirc;nfr&acirc;ngeri.</p>\r\n\r\n<p><strong>Rezultatele obținute de U-BT 2 Cluj-Napoca:</strong></p>\r\n\r\n<ul>\r\n	<li>ACS U-BT 2 Cluj-Napoca - CSS Viitorul Cluj-Napoca 52-40</li>\r\n	<li>CSU C-tin Br&acirc;ncuși T&acirc;rgu Jiu - ACS U-BT 2 Cluj-Napoca 23-70</li>\r\n	<li>ASC Lucky Dragons T&acirc;rgu Mureș - ACS U-BT 2 Cluj-Napoca 48:31&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 2 Cluj-Napoca - CSM 2008 Oradea 69-84&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 2 Cluj-Napoca - CSS Mediaș 76-34</li>\r\n	<li>ACS U-BT 2 Cluj-Napoca - CSM 2008 Oradea 52-63&nbsp;&nbsp; &nbsp;</li>\r\n	<li>1ACS CS Heart Drobeta Turnu Severin - ACS U-BT 2 Cluj-Napoca 51-42&nbsp;&nbsp; &nbsp;</li>\r\n	<li>CSS Viitorul Cluj-Napoca - ACS U-BT 2 Cluj-Napoca 40-88&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 2 Cluj-Napoca - CSU C-tin Br&acirc;ncuși T&acirc;rgu Jiu 86-12&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 2 Cluj-Napoca - CS MP Sport Timișoara 13-61&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>CSM 2007 Oradea - ACS U-BT 2 Cluj-Napoca 76-30&nbsp;&nbsp; &nbsp;</li>\r\n	<li>CSM 2008 Oradea - ACS U-BT 2 Cluj-Napoca 96-33&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</li>\r\n	<li>ACS U-BT 2 Cluj-Napoca - LPS Bihorul Oradea 37-32</li>\r\n</ul>\r\n\r\n<p>&Icirc;nainte de &icirc;ntreruperea campionatului,&nbsp;<strong>U-BT 2 Cluj-Napoca</strong>&nbsp;urma să joace la Baia Mare &icirc;n etapa a 8-a a<strong>&nbsp;Grupei D3</strong>. &Icirc;n&nbsp;<strong>Clasamentul General al Grupelor C-D</strong>, baschetbaliștii antrenați de<strong>&nbsp;Flavius Lăpuște</strong>&nbsp;se află pe locul 17, cu 20 de puncte.&nbsp;</p>\r\n\r\n<p><strong>U-BT 2</strong>&nbsp;a &icirc;nscris &icirc;n acest sezon un lot format din Rafael Vasile Barbur, Bogdan-Ștefan Chendrean, Victor-Matei Corondan, Patrick Dener, Vlad Goia, Lenard Marc Gozman, Eduard Ștefan Kispal, Luca-David Lăpuștea, Alexandru-Dimitrie Onac, Dragoș Nicolae Popa, Ștefan Emil Rotariu, Ștefan Săplăcan, Andrei Tolan, Alexandru Ungureanu, Robert Andrei Uță și David-Andrei Zanc.&nbsp;<strong>Flavius Lăpuște</strong>, antrenorul principal, este secondat de&nbsp;<strong>Ștefana Botoș</strong>.</p>\r\n'),
(77, 3, 'KURCSI Norbert', '2021-05-06', 'Componența_grupelor_echipelor_noastre_pentru_etapa_a_3-a', 'cover.jpg', '<p>Week-end-ul trecut, ambele echipe &icirc;nscrise de clubul nostru &icirc;n<strong>&nbsp;Campionatul Național Under 13</strong>&nbsp;au avut jocuri &icirc;n cadrul<strong>&nbsp;etapei a 2-a</strong>.&nbsp;</p>\r\n\r\n<p><strong>U-BT 1 (antrenor Mihai Popa)&nbsp;</strong>a c&acirc;știgat<strong>&nbsp;Grupa D1&nbsp;</strong>și va evolua &icirc;n aceeași grupă și &icirc;n&nbsp;<strong>etapa a 3-a</strong>. Adversarele &icirc;n această rundă vor fi echipele ACS Transilvania Brașov și Gladius T&acirc;rgu Mureș. Niciuna dintre aceste echipe nu s-a mai confruntat cu vreuna dintre echipele noastre &icirc;n aces sezon.</p>\r\n\r\n<p><strong>U-BT 1&nbsp;</strong>&icirc;mparte prima poziție a clasamentului general al<strong>&nbsp;Grupelor C și D</strong>&nbsp;cu Alpha Sport Team Alb Sibiu, ambele cu maxim de puncte, respectiv 12.</p>\r\n\r\n<p>&Icirc;n cazul<strong>&nbsp;U-BT 2,</strong>&nbsp;echipa antrenată de&nbsp;<strong>Flavius Lăpuște</strong>&nbsp;a cedat ambele jocuri ale etapei secunde din&nbsp;<strong>Grupa C3</strong>&nbsp;și va evolua &icirc;n runda a treia &icirc;n&nbsp;<strong>Grupa C4</strong>. Adversarele sunt CSU Constantin Br&acirc;ncuși T&acirc;rgu Jiu și concitadina CSȘ Viitorul. Și &icirc;n acest caz, meciurile vor fi &icirc;n premieră &icirc;n acest sezon.</p>\r\n\r\n<p><strong>U-BT 2&nbsp;</strong>este pe poziția a 17-a &icirc;n clasamentul general, cu 5 puncte acumulate &icirc;n primele două etape.&nbsp;</p>\r\n\r\n<p><strong>Etapa a 3-a</strong>&nbsp;este prevăzută să se dispute &icirc;n&nbsp;<strong>9 sau 10 noiembrie,&nbsp;</strong>locațiile nefiind &icirc;ncă stabilite.&nbsp;</p>\r\n\r\n<p>-----------------</p>\r\n\r\n<p>Pentru calificarea la&nbsp;<strong>Turneul Final&nbsp;</strong>se vor disputa 10 etape (incluz&acirc;nd aici etapa preliminară). După fiecare etapă, echipele primesc un număr de puncte &icirc;n funcție de locul ocupat &icirc;n grupele valorice, exist&acirc;nd un clasament general &icirc;mpărțit pe două zone geografice (Grupele A și B, respectiv C și D).&nbsp;</p>\r\n\r\n<p>&Icirc;n următoarele etape, c&acirc;știgătoarele grupelor valorice 1 vor primi 9 puncte, locurile doi 8 puncte, iar ultimele clasate 7, la fel ca formațiile care c&acirc;știgă grupele valorice 2. &Icirc;n acestea, locul secund primește 6 puncte și locul al treilea 5. Tot 5 primesc c&acirc;știgătoarele grupelor valorice 3, 4 puncte vor fi acordate locului al doilea și trei puncte pentru ultimul loc. &Icirc;n mod similar, &icirc;n ultima grupă valorică se vor acumula trei puncte la c&acirc;știgătoarea grupei, două la ocupanta locului secund și unul pentru ultimul loc.&nbsp;</p>\r\n\r\n<p>Se vor califica la&nbsp;<strong>Turneul Final</strong>&nbsp;primele patru echipe din cele două clasamente generale regionale (așadar, 4 din grupele A și B și 4 din C și D).</p>\r\n'),
(78, 5, 'KURCSI Norbert', '2021-05-06', 'Participăm_cu_două_echipe_la_Turneul_Next_Star_de_la_Oradea', 'cover.jpg', '<p>Clubul nostru participă cu două echipe de&nbsp;<strong>minibaschet&nbsp;</strong>și&nbsp;<strong>babybaschet&nbsp;</strong>la&nbsp;<strong>Turneul Next Star</strong>&nbsp;de la Oradea, care va avea loc &icirc;n perioada&nbsp;<strong>18-19 ianuarie</strong>. Ambele vor fi coordonate de antrenorii&nbsp;<strong>Mioara Iurian</strong>&nbsp;și&nbsp;<strong>Andrei Cosma</strong>. Echipa noastră de babybaschet (născuți 2010-2011) va lua startul și &icirc;n competiția de minibaschet &icirc;ncepători.&nbsp;</p>\r\n\r\n<p>La minibaschet avansați vor participa opt echipe, distribuite &icirc;n două grupe:&nbsp;</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li><strong>Grupa A:</strong>&nbsp;&nbsp;ACS Baschet Star Oradea 2008, Alpha Sibiu 2009, U-BT Cluj-Napoca, BC MBA Kragujevac (Serbia)</li>\r\n	<li><strong>Grupa B:&nbsp;</strong>Grupa B &ndash; Alpha Sibiu 2008, ACS Baschet Star Oradea 2009, Szedeak Szeged, Gladius T&icirc;rgu Mureș</li>\r\n	<li>Aceste meciuri vor avea loc &icirc;n Sala Sporturilor &rdquo;Antonio Alexe&rdquo;.</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>Programul meciurilor echipei noastre &icirc;n grupă:</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li><strong>S&acirc;mbătă, 18 ianuarie:</strong>\r\n\r\n	<ul>\r\n		<li>ora 11.30: Alpha Sibiu 2009 - U-BT Cluj-Napoca</li>\r\n		<li>ora 15.00: BC MBA Kragujevac - U-BT Cluj-Napoca</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Duminică, 19 ianuarie:&nbsp;</strong>\r\n	<ul>\r\n		<li>ora 10.00: U-BT Cluj-Napoca - ACS Baschet Star Oradea 2008</li>\r\n	</ul>\r\n	</li>\r\n	<li>&Icirc;ntre orele 13 și 18 vor avea loc meciurile pentru pozițiile &icirc;n ierarhia finală.</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>La categoria Minibaschet incepători s-au &icirc;nscris 13 echipe, repartizate astfel:</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li><strong>Grupa A:</strong>&nbsp;Alpha Sibiu, MP Sport Timișoara 1, Baschet Star Mini 1</li>\r\n	<li><strong>Grupa B:</strong>&nbsp;MP Sport Timișoara 2, Baschet Star Mini 2, Gladius T&icirc;rgu Mureș</li>\r\n	<li><strong>Grupa C:</strong>&nbsp;BC Baia Mare, U-BT Cluj-Napoca,Baschet Star Mini 3</li>\r\n	<li><strong>Grupa D:</strong>&nbsp;Valbon Pecica, Baschet Star Mini 4, Baschet Star Mini 5, Baschet Star Mini 6</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>Programul meciurilor echipei noastre &icirc;n grupe:</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li><strong>S&acirc;mbătă, 18 ianuarie:</strong>\r\n\r\n	<ul>\r\n		<li>ora 16.00: U-BT Cluj-Napoca - ACS Oradea Mini 3</li>\r\n		<li>ora 17.15: BC Baia Mare - U-BT Cluj-Napoca</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>La babybaschet vor participa 15 echipe, repartizate &icirc;n grupe de c&acirc;te trei formații:</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li><strong>Grupa A:</strong>&nbsp;New Generation Timișoara, CSȘ Sighetu Marmației 2, Baschet Star Baby 4</li>\r\n	<li><strong>Grupa B:&nbsp;</strong>Valbon Arad, Baschet Star Baby 5, Baschet Star Baby 3</li>\r\n	<li><strong>Grupa C:</strong>&nbsp;Szedeak Szeged, U-BT Cluj-Napoca, Baschet Star Baby 1</li>\r\n	<li><strong>Grupa D:</strong>&nbsp;CSȘ Sighetu Marmației 1, BC Baia Mare, Baschet Star Baby 2</li>\r\n	<li><strong>Grupa E:</strong>&nbsp;Baschet Star Baby 6, Baaschet Star Baby 7, Baschet Star Baby 8</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>Programul echipei noastre &icirc;n grupă:</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li><strong>Duminică, 19 ianuarie:</strong>\r\n\r\n	<ul>\r\n		<li>ora 09.00: U-BT Cluj-Napoca - Baschet Star Baby 1</li>\r\n		<li>ora 13.00: Szedeak Szeged - U-BT Cluj-Napoca</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>Meciurile de la&nbsp;<strong>minibaschet incepători</strong>&nbsp;și&nbsp;<strong>babybaschet&nbsp;</strong>vor avea loc &icirc;n&nbsp;<strong>Sala Colegiului Economic &rdquo;Partenie Cosma&rdquo;.</strong></p>\r\n'),
(79, 5, 'KURCSI Norbert', '2021-05-06', 'Participăm_cu_două_echipe_la_Alpha_Basketball_Tour_Sibiu', 'cover.jpg', '<p>Clubul nostru participă cu o echipă de&nbsp;<strong>minibaschet&nbsp;</strong>și una de&nbsp;<strong>babybaschet&nbsp;</strong>la turneul&nbsp;<strong>Alpha Basketball Tour</strong>, competiție care va avea loc &icirc;n perioada&nbsp;<strong>15-17 noiembrie 2019</strong>&nbsp;la Sala Transilvania din Sibiu.</p>\r\n\r\n<p><strong>U-BT</strong>&nbsp;va participa la categoria Minibaschet cu o echipă formată din sportivi născuți &icirc;n anul 2009, antrenată de&nbsp;<strong>Mioara Iurian</strong>&nbsp;și&nbsp;<strong>Adrian Cosma</strong>, care va lua startul alături de Gladius T&acirc;rgu Mureș, Baschet Star Oradea și gazdele de la Alpha Sport Team Sibiu.</p>\r\n\r\n<p><strong>Programul meciurilor echipei noastre:</strong></p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li><strong>S&acirc;mbătă, 16 noiembrie:</strong>\r\n\r\n	<ul>\r\n		<li>ora 12.00: U-BT Cluj-Napoca - Baschet Star Oradea</li>\r\n		<li>ora 18.00: U-BT Cluj-Napoca - Gladius T&acirc;rgu Mureș</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Duminică, 17 noiembrie:</strong>\r\n	<ul>\r\n		<li>ora 12.00: Alpha Sport Team Sibiu - U-BT Cluj-Napoca</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>Echipa de Babybaschet, formată din sportivi născuți &icirc;n 2010 și antrenată tot de&nbsp;<strong>Mioara Iurian</strong>&nbsp;și&nbsp;<strong>Adrian Cosma</strong>, va juca alături de Baschet Star Oradea și două echipe de la Alpha Sport Team Sibiu.</p>\r\n\r\n<blockquote>\r\n<p><strong>Programul meciurilor echipei noastre:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>S&acirc;mbătă, 16 noiembrie:</strong>\r\n\r\n	<ul>\r\n		<li>ora 13.00: U-BT Cluj-Napoca - Alpha Sport Team Verde</li>\r\n		<li>ora 19.00: U-BT Cluj-Napoca - Gladius T&acirc;rgu Mureș</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Duminică, 17 noiembrie:</strong>\r\n	<ul>\r\n		<li>ora 13.00: Alpha Sport Team Sibiu - U-BT Cluj-Napoca</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>Duminică vor avea loc concursuri de aruncări libere și &icirc;ndem&acirc;nare pentru ambele categorii.</p>\r\n'),
(80, 4, 'KURCSI Norbert', '2021-05-06', 'Am_câștigat_turneul_internațional_Pityke_Cup!', 'cover.jpg', '<p>Clubul nostru a triumfat la turneul internațional din&nbsp;<strong>Ungaria, Pityke Cup</strong>, competiție ce s-a desfășurat &icirc;n perioada&nbsp;<strong>26-28 octombrie</strong>&nbsp;&icirc;n țara vecină, la&nbsp;<strong>Nagykőr&ouml;s</strong>.</p>\r\n\r\n<p><strong>U-BT&nbsp;</strong>a participat cu o echipă de minibaschet, compusă din sportivi de 11 ani și pregătiți de&nbsp;<strong>Mioara Iurian</strong>&nbsp;și&nbsp;<strong>Andrei Cosma</strong>.&nbsp;La turneu au participat echipe de baschet masculin și feminin din Ungaria, Rom&acirc;nia, Polonia, Cehia, Slovenia, &icirc;mpărțite pe categoriile Under 11, Under 12 și Under 14.</p>\r\n\r\n<p>Echipa noastră a &icirc;nregistrat următoarele rezultate:</p>\r\n\r\n<ul>\r\n	<li>U-BT Cluj-Napoca -&nbsp;Pityke&nbsp;Nagykőr&ouml;s 81-13</li>\r\n	<li>Vasas Akademia -&nbsp;U-BT Cluj-Napoca 30-78</li>\r\n	<li>U-BT Cluj-Napoca - Szedeak 75-21</li>\r\n	<li>U-BT Cluj-Napoca - MAFC 57-33</li>\r\n	<li>U-BT&nbsp;Cluj-Napoca - Cseske Budejovice 73-16</li>\r\n</ul>\r\n\r\n<p>Sportivul nostru&nbsp;<strong>Alexandru C&acirc;mpean</strong>&nbsp;a fost declarat&nbsp;<strong>MVP-ul competiției</strong>, &icirc;n timp ce&nbsp;<strong>Cezar Micu</strong>&nbsp;și&nbsp;<strong>Darius Miron&nbsp;</strong>au fost selecționați &icirc;n&nbsp;<strong>echipa turneului</strong>.&nbsp;</p>\r\n\r\n<p>Componența&nbsp;<strong>U-BT:</strong>&nbsp;Darius Miron, Thomas Bernat, Andrei Androhovici, Constantin Ghit, Cezar Micu, Zoran Istrătescu, David Șerban, Alexandru C&acirc;mpean, Andrei Pop, Marc Todor, Cezar Dragan, Sebastian Lăpuște, Denis Șerban și Luca Lupșan.&nbsp;<strong>Antrenori: Mioara Iurian, Andrei Cosma.&nbsp;</strong></p>\r\n'),
(81, 3, 'KURCSI Norbert', '2021-05-06', 'Modul_de_disputare_a_Turneelor_Finale_ale_Campionatelor_Naționale_juvenile', 'cover.jpg', '<p><strong>Federația Rom&acirc;nă de Baschet</strong>&nbsp;a publicat&nbsp;<strong><a href=\"https://www.frbaschet.ro/stiri/interviul-saptamanii/decizie-consiliul-director-frb,-03.09.2020-0\">deciziile Consiliului Director din data de 3 septembrie</a></strong>, prin care este reglementată modalitatea de desfășurare a&nbsp;<strong>Turneelor Finale ale Campionatelor Naționale juvenile</strong>. Aceste modificări au survenit &icirc;n urma diverselor cerințe ale Ordinului comun al Ministerului Tineretului și Sportului și Ministerul Sănătății.</p>\r\n\r\n<p>Astfel, s-au adus amendamente și modificări la Regulamentele Specifice ale Campionatelor de Juniori, după cum urmează:</p>\r\n\r\n<ul>\r\n	<li>componența echipelor este de maxim 12 jucători + 3 persoane &icirc;n staff (inclusiv șoferul);</li>\r\n	<li>sportivii care pot fi incluși sunt cei din cadrul listei &icirc;nscrise la FRB &icirc;n momentul suspendării competițiilor;</li>\r\n	<li>&icirc;n timpul turneului, nu se pot face modificări la lista de jucători;</li>\r\n	<li>sportivii trebuie să aibă viza medicală valabilă și viza anuală pe legitimație și să aibă test RT-PCR negativ;</li>\r\n	<li>numărul minim de sportivi cu care se poate &icirc;ncepe un meci este 7;</li>\r\n	<li>echipele participante se &icirc;mpart &icirc;n două grupe ce evoluează &icirc;n sistem &rdquo;round robin&rdquo;, adică fiecare cu fiecare; la finalul acestei faze, locurile 1 din cele 2 grupe vor juca pentru medalia de aur, iar locurile doi din grupe vor juca finala mică.&nbsp;</li>\r\n</ul>\r\n\r\n<p>Nu se precizează modalitatea de constituire a grupelor, &icirc;nsă din moment c</p>\r\n'),
(82, 2, 'KURCSI Norbert', '2021-05-06', 'Trei_victorii_din_tot_atâtea_posibile', 'cover.jpg', '<p>U-BT a dominat primul turneu la categoria U16. Baschetbaliștii pregătiți de Mihai Racovițan au obținut trei victorii din tot at&acirc;tea posibile. Mai exact, juniorii noștri au &icirc;nceput competiția de la T&acirc;rgu Secuiesc cu o confruntare &icirc;mpotriva formației gazdă, ACS KSE. U-BT s-a impus &icirc;n respectivul joc, desfășurat s&acirc;mbătă, cu scorul de 99-18.</p>\r\n\r\n<p>Apoi, duminică, U-BT a depășit-o pe VSK Miercurea Ciuc cu scorul de 80-49. Băieții au mai avut un meci la ora pr&acirc;nzului și au &icirc;nt&acirc;lnit-o pe CSS Viitorul Cluj-Napoca. &Icirc;ncă o dată, alb-negrii s-au impus fără emoții, scor 99-23.&nbsp;</p>\r\n\r\n<p>Următorul turneu pentru U-BT U16 va avea loc &icirc;n perioada 20-21 martie, orașul gazdă urm&acirc;nd a fi anunțat &icirc;n cur&acirc;nd.</p>\r\n\r\n<p>Mihai Racovițan, antrenor principal U-BT U16</p>\r\n\r\n<blockquote>\r\n<p>Sunt foarte mulțumit de felul cum s-a desfășurat primul turneu. Nu pot să spun că am avut parte de un turneu greu, dar băieții au reacționat foarte bine după aproape un de zile de pauză de la meciurile oficiale. Toată lumea a fost &icirc;ncrezătoare și dornică de afirmare. Condițiile au fost foarte bune, nu am &icirc;nt&acirc;mpinat probleme la sistemul g&acirc;ndit de Federație. Sunt mulțumit de rezultate și de prestația băieților.&nbsp;</p>\r\n</blockquote>\r\n');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `jucatori_noi`
--
ALTER TABLE `jucatori_noi`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `stiri`
--
ALTER TABLE `stiri`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `jucatori_noi`
--
ALTER TABLE `jucatori_noi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `stiri`
--
ALTER TABLE `stiri`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
