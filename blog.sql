-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Wrz 2020, 14:44
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `blog`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posty`
--

CREATE TABLE `posty` (
  `id` int(11) NOT NULL,
  `header` text COLLATE utf8mb4_polish_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_polish_ci NOT NULL,
  `date` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `posty`
--

INSERT INTO `posty` (`id`, `header`, `text`, `date`) VALUES
(1, 'dupa', 'sadgfsdcxjkSH', '04.09.2020'),
(2, 'dupxo', 'weoihfligfgkv8oxsagfqwehvkuyfvnnnnnnnnn', '11.09.2001'),
(3, 'jajco', 'asfdas', 'trzy'),
(4, '$header', '$text', '$data'),
(5, '$header', '$text', '$data'),
(6, 'lubie', 'jabka', '111'),
(7, 'asd', 'dsa', ''),
(8, 'gry', 'try', '5PM5'),
(9, 'dd', 'ddd', '5PM5'),
(10, 'sddf', 'sdfff', '04092020'),
(11, 'dsa', 'asss', '0'),
(12, 'da', 'sasss', '04092020'),
(13, 'jjjjaja', 'ugeebwqjvdjvcjevw bdsvmna sdmjsa bnads c,jsa ', '04092020');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `posty`
--
ALTER TABLE `posty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `posty`
--
ALTER TABLE `posty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
