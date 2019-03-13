-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 18.Apr 2018, 22:37
-- Verzia serveru: 10.1.30-MariaDB
-- Verzia PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `skuskadb`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `suma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Sťahujem dáta pre tabuľku `product`
--

INSERT INTO `product` (`id`, `name`, `amount`, `price`, `suma`) VALUES
(32, 'Produkt1254', 10, 8, 80),
(34, 'hjgjfghf', 3, 51, 153),
(47, 'Michalskuska2', 5, 765, 3825),
(54, 'fghfhgfhfh125', 8, 89, 712),
(64, 'hjgjfghf', 5, 123, 615),
(66, 'retretretr', 5, 50, 250);

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `product`
--
ALTER TABLE `product`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
