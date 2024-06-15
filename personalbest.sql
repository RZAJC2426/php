-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Mar 2023, 20:44
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `rekordy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personalbest`
--

CREATE TABLE `personalbest` (
  `id_skoczka` int(11) NOT NULL,
  `imie` text NOT NULL,
  `drugie_imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `kraj` varchar(3) NOT NULL,
  `dlugosc_skoku` float NOT NULL,
  `miejsce_ustanowienia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `personalbest`
--

INSERT INTO `personalbest` (`id_skoczka`, `imie`, `drugie_imie`, `nazwisko`, `kraj`, `dlugosc_skoku`, `miejsce_ustanowienia`) VALUES
(1, 'Anders ', '0', 'Haare', 'NOR', 230.5, 'Vikersund'),
(2, 'Anders ', '0', 'Fannemel', 'NOR', 251.5, 'Vikersund'),
(3, 'Joachim', '0', 'Bjoereng', 'NOR', 232.5, 'Vikersund'),
(4, 'Fredrik', '0', 'Villumstad', 'NOR', 208.5, 'Planica'),
(5, 'Junshiro', '0', 'Kobayashi', 'JPN', 239.5, 'Planica'),
(6, 'Clemens', '0', 'Aigner', 'AUT', 214.5, 'Kulm'),
(7, 'Simon', '0', 'Ammann', 'SUI', 239.5, 'Vikersund'),
(8, 'Eetu', '0', 'Nousiainen', 'FIN', 223.5, 'Oberstdorf'),
(9, 'Andrzej', '0', 'Stekala', 'POL', 235, 'Vikersund'),
(10, 'Taku', '0', 'TAKEUCHI', 'JPN', 240, 'Vikersund'),
(11, 'Philipp', '0', 'Raimund', 'GER', 177.5, 'Vikersund'),
(12, 'Erik', '0', 'Belshaw', 'USA', 152, 'Vikersund'),
(13, 'Justin', '0', 'Lisso', 'GER', 207.5, 'Kulm'),
(14, 'Mackenzie', 'Boyd', 'Clowes', 'CAN', 224, 'Planica'),
(15, 'Sabirzan', '0', 'Muminow', 'KAZ', 190, 'Kulm'),
(16, 'Pawel', '0', 'Wasek', 'POL', 210.5, 'Vikersund'),
(17, 'Sondre', '0', 'Ringen', 'NOR', 241, 'Vikersund'),
(18, 'Bendik', '0', 'Heggli', 'NOR', 230, 'Vikersund'),
(19, 'Michael', '0', 'Hayboeck', 'AUT', 245.5, 'Planica'),
(20, 'Keiichi', '0', 'Sato', 'JPN', 219, 'Planica'),
(21, 'Karl', '0', 'Geiger', 'GER', 243.5, 'Planica'),
(22, 'Artti', '0', 'Aigro', 'EST', 228, 'Planica'),
(23, 'Daniel', '0', 'Tschofenig', 'AUT', 224.5, 'Planica'),
(24, 'Rok', '0', 'Masle', 'SLO', 191.5, 'Vikersund'),
(25, 'Danil', '0', 'Vassilyev', 'KAZ', 157.5, 'Vikersund'),
(26, 'Ali', '0', 'Bedir', 'TUR', 212.5, 'Kulm'),
(27, 'Remo', '0', 'Imhof', 'SUI', 164.5, 'Vikersund'),
(28, 'Casey', '0', 'Larson', 'USA', 216.5, 'Vikersund'),
(29, 'Fatih', '0', 'Ipcioglu', 'TUR', 209.5, 'Kulm'),
(30, 'Francesco', '0', 'Cecon', 'ITA', 128.5, 'Vikersund'),
(31, 'Constantin', '0', 'Schmid', 'GER', 234, 'Planica'),
(32, 'Decker', '0', 'Dean', 'USA', 212.5, 'Kulm'),
(33, 'Maximilian', '0', 'Steiner', 'AUT', 236, 'Kulm'),
(34, 'Stephan', '0', 'Leyhe', 'GER', 226.5, 'Kulm'),
(35, 'Alex', '0', 'Insam', 'ITA', 232.5, 'Planica'),
(36, 'Robert', '0', 'Johansson', 'NOR', 252, 'Vikersund'),
(37, 'Niko', '0', 'Kytosaho', 'FIN', 233, 'Planica'),
(38, 'Yukiya', '0', 'Sato', 'JPN', 242.5, 'Planica'),
(39, 'Kristoffer', '0', 'Sundal', 'NOR', 214.5, 'Kulm'),
(40, 'Benjamin', '0', 'Oestvold', 'NOR', 243.5, 'Vikersund'),
(41, 'Naoki', '0', 'Nakamura', 'JPN', 236, 'Planica'),
(42, 'Giovanni', '0', 'Bresadola', 'ITA', 225.5, 'Kulm'),
(43, 'Lovro', '0', 'Kos', 'SLO', 236, 'Planica'),
(44, 'Aleksander', '0', 'Zniszczol', 'POL', 222.5, 'Kulm'),
(45, 'Kamil', '0', 'Stoch', 'POL', 251.5, 'Planica'),
(46, 'Gregor', '0', 'Deschwanden', 'SUI', 230.5, 'Kulm'),
(47, 'Ryoyu', '0', 'Kobayashi', 'JPN', 252, 'Planica'),
(48, 'Dawid', '0', 'Kubacki', 'POL', 236.5, 'Planica'),
(49, 'Johann', 'Andre', 'Forfang', 'NOR', 245.5, 'Vikersund'),
(50, 'Daniel', '0', 'Tande', 'NOR', 243.5, 'Planica'),
(51, 'Manuel', '0', 'Fettner', 'AUT', 243, 'Vikersund'),
(52, 'Markus', '0', 'Eisenbichler', 'GER', 248, 'Planica'),
(53, 'Anze', '0', 'Lanisek', 'SLO', 244.5, 'Planica'),
(54, 'Marius', '0', 'Lindvik', 'NOR', 245.5, 'Planica'),
(55, 'Ziga', '0', 'Jelar', 'SLO', 239, 'Planica'),
(56, 'Andreas', '0', 'Wellinger', 'GER', 245, 'Vikersund'),
(57, 'Domen', '0', 'Prevc', 'SLO', 245.5, 'Vikersund'),
(58, 'Jan', '0', 'Hoerl', 'AUT', 233, 'Planica'),
(59, 'Piotr', '0', 'Zyla', 'POL', 248, 'Planica'),
(60, 'Timi', '0', 'Zajc', 'SLO', 245, 'Vikersund'),
(61, 'Stefan', '0', 'Kraft', 'AUT', 253.5, 'Vikersund'),
(62, 'Halvor', 'Egner', 'Granerud', 'NOR', 244.5, 'Planica');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `personalbest`
--
ALTER TABLE `personalbest`
  ADD PRIMARY KEY (`id_skoczka`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `personalbest`
--
ALTER TABLE `personalbest`
  MODIFY `id_skoczka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
