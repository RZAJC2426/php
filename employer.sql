-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Mar 2023, 14:00
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ddd`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `secondname` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `birthdate` date NOT NULL,
  `salary` decimal(10,0) NOT NULL,
  `departamendID` int(11) NOT NULL,
  `Hiredate` date NOT NULL,
  `relieve date` date NOT NULL,
  `active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `employer`
--

INSERT INTO `employer` (`id`, `firstname`, `secondname`, `lastname`, `gender`, `birthdate`, `salary`, `departamendID`, `Hiredate`, `relieve date`, `active`) VALUES
(1, 'mary', '', 'Smith', 'W', '1985-12-18', '2200', 1, '2011-05-06', '0000-00-00', b'1'),
(2, 'PAUL', 'George', 'Johnson', 'M', '1990-01-13', '1500', 3, '2011-10-29', '0000-00-00', b'1'),
(3, 'Patricia', '', 'Wilson', 'W', '1995-05-28', '1000', 4, '2012-01-24', '2013-11-25', b'0'),
(4, 'Linda', 'Lisa', 'Brown', 'W', '1983-07-11', '2700', 2, '2012-06-15', '0000-00-00', b'1'),
(5, 'Johnatan', '', 'Davis', 'M', '1978-01-24', '1200', 1, '2013-01-15', '0000-00-00', b'1'),
(6, 'John', '', 'Miller', '', '1993-10-20', '2000', 4, '2013-03-27', '2014-10-06', b'0'),
(7, 'Elizabeth', 'Dorothy', 'Taylor', 'W', '1992-09-09', '2110', 1, '2013-05-01', '0000-00-00', b'1'),
(8, 'James', '', 'Wilson', 'M', '1987-03-19', '1000', 3, '2013-10-09', '2014-03-01', b'1'),
(9, 'Robert', '', 'Anderson', 'M', '1989-12-13', '2900', 2, '2013-12-20', '2014-05-05', b'0'),
(10, 'John', 'Mark', 'Smith', 'M', '1990-05-24', '2500', 1, '2014-01-24', '0000-00-00', b'1');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
