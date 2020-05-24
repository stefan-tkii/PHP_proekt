-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2020 at 02:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_repository`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `firstName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `birthDate` date NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `firstName`, `lastName`, `email`, `username`, `password`, `birthDate`, `isAdmin`) VALUES
(1, 'Admin1', 'administrator', 'stefan_admin@gmail.com', 'admin01', 'admin', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `Id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compNames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platforms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `releaseDate` date NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`Id`, `name`, `compNames`, `platforms`, `releaseDate`, `adminId`) VALUES
(1, 'World of Warcraft', 'Blizzard Activision', 'Desktop PC, Laptop', '2004-11-23', 1),
(3, 'Need for Speed: Most Wanted', 'EA Canada, EA Blackbox, Electronic Arts', ' PlayStation 2, Xbox, GameCube, Nintendo DS, Microsoft Windows, Game Boy Advance, Xbox 360', '2005-11-11', 1),
(5, 'Amnesia: The Dark Descent', 'Frictional Games, The Chinese Room', 'PlayStation 4, Xbox One, Nintendo Switch, macOS, Linux, Macintosh operating systems, Microsoft Windows', '2010-09-08', 1),
(7, 'Silent Hill', 'Team Silent, Climax Group, Vatra Games, Double Helix Games', 'PlayStation, PlayStation 2, Xbox, Microsoft Windows', '1999-02-23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gamerating`
--

CREATE TABLE `gamerating` (
  `Id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `gameId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_genres`
--

CREATE TABLE `game_genres` (
  `Id` int(11) NOT NULL,
  `gameId` int(11) NOT NULL,
  `genreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_genres`
--

INSERT INTO `game_genres` (`Id`, `gameId`, `genreId`) VALUES
(3, 1, 1),
(1, 1, 2),
(2, 1, 15),
(8, 3, 4),
(7, 3, 15),
(11, 5, 3),
(12, 5, 7),
(13, 5, 12),
(17, 7, 3),
(18, 7, 7),
(19, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `Id` int(11) NOT NULL,
  `value` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`Id`, `value`) VALUES
(1, 'Strategy'),
(2, 'MMO RPG'),
(3, 'Survival'),
(4, 'Racing'),
(5, 'Turn based strategy'),
(6, 'Sports'),
(7, 'Horror'),
(8, 'Fighting'),
(9, 'Puzzle'),
(10, 'Psychological'),
(11, 'Real time strategy'),
(12, 'Adventure'),
(13, 'Action'),
(14, 'First person shooter'),
(15, 'Open world'),
(16, 'Third person shooter');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `gameId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviewrating`
--

CREATE TABLE `reviewrating` (
  `Id` int(11) NOT NULL,
  `helpful` tinyint(1) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL,
  `reviewId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `firstName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `birthDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `firstName`, `lastName`, `email`, `username`, `password`, `birthDate`) VALUES
(471, 'stef', 'stevo', 'stef@gmail.com', 'stefakis12', 'c3fcb63d0910f221eb18893a3e3b304a', '0000-00-00'),
(472, 'zoki', 'poki', 'zokija@gmail.com', 'zokizoc', 'c94550a16ed31bd2fcd060b4d01f95d9', '2001-02-03'),
(473, 'asd', 'dsadd', 'stefo@gmail.com', 'stefo', '8d6b99928bd83a089e48dd7304653287', '0021-02-02'),
(474, 'stefce', 'mevce', 'test4php2proekt@gmail.com', 'stefakos', '5ae22534a525742f8367c0989e30720d', '2001-04-02'),
(475, 'boki', 'ewrwer', 'hahao@gmail.com', 'sarw4r34r34r34rt3', '21661093e56e24cd60b10092005c4ac7', '1311-03-03'),
(476, 'yty', 'wew', 'hahaI@gmail.com', 'ERRRRRRRRRRRRRR', 'a77b4f006a4994d245a12247b8e4082c', '1222-02-02'),
(477, 'ewqrwr', 'wqeqweq', 'bolestagolema@gmail.com', 'bolest', '1fa380427cca2d08dd31a152fab780b8', '1122-02-02'),
(478, 'asasae32', 'ewrwer', 'barababos@gmail.com', 'Stefanccc', 'ffe553694f5096471590343432359e02', '2000-12-31'),
(479, 'saaaa2e', 'dasda', 'hola@yahoo.com', 'gegegeeg', '79a39edec4b468251cae717f1b5d4241', '1977-02-02'),
(480, 'asasae323', 'tfghbjnkm', 'stego@live.com', 'stegica', '958db713695659fef474a9ed1eb0ea3c', '2002-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `usergame`
--

CREATE TABLE `usergame` (
  `Id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compNames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platforms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `releaseDate` date NOT NULL,
  `isApproved` tinyint(1) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usergame`
--

INSERT INTO `usergame` (`Id`, `name`, `compNames`, `platforms`, `releaseDate`, `isApproved`, `userId`, `adminId`) VALUES
(5, 'Need for Speed: Underground 2', ' Electronic Arts, EA Black Box, EA Vancouver, Pocketeers, Ideaworks Game Studio', ' PlayStation 2, Microsoft Windows, Xbox, PlayStation Portable', '2004-11-09', 0, 473, 1),
(6, 'Need for Speed: Underground 3', 'dsada', 'dq2q', '2000-02-02', 0, 473, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usergame_genres`
--

CREATE TABLE `usergame_genres` (
  `Id` int(11) NOT NULL,
  `usergameId` int(11) NOT NULL,
  `genreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usergame_genres`
--

INSERT INTO `usergame_genres` (`Id`, `usergameId`, `genreId`) VALUES
(1, 5, 4),
(2, 5, 6),
(3, 5, 15),
(4, 6, 12),
(5, 6, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `gamerating`
--
ALTER TABLE `gamerating`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `userId` (`userId`,`gameId`),
  ADD KEY `gameId` (`gameId`);

--
-- Indexes for table `game_genres`
--
ALTER TABLE `game_genres`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `gameId` (`gameId`,`genreId`),
  ADD KEY `gameId_2` (`gameId`,`genreId`),
  ADD KEY `genreId` (`genreId`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `userId` (`userId`,`gameId`),
  ADD KEY `review_ibfk_1` (`gameId`);

--
-- Indexes for table `reviewrating`
--
ALTER TABLE `reviewrating`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `userId` (`userId`,`reviewId`),
  ADD KEY `reviewId` (`reviewId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usergame`
--
ALTER TABLE `usergame`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `userId` (`userId`,`adminId`),
  ADD KEY `reference_other` (`adminId`);

--
-- Indexes for table `usergame_genres`
--
ALTER TABLE `usergame_genres`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `usergameId` (`usergameId`,`genreId`),
  ADD KEY `genreId` (`genreId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gamerating`
--
ALTER TABLE `gamerating`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_genres`
--
ALTER TABLE `game_genres`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviewrating`
--
ALTER TABLE `reviewrating`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `usergame`
--
ALTER TABLE `usergame`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usergame_genres`
--
ALTER TABLE `usergame_genres`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `references` FOREIGN KEY (`adminId`) REFERENCES `admin` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gamerating`
--
ALTER TABLE `gamerating`
  ADD CONSTRAINT `gamerating_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gamerating_ibfk_2` FOREIGN KEY (`gameId`) REFERENCES `game` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game_genres`
--
ALTER TABLE `game_genres`
  ADD CONSTRAINT `game_genres_ibfk_1` FOREIGN KEY (`gameId`) REFERENCES `game` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_genres_ibfk_2` FOREIGN KEY (`genreId`) REFERENCES `genres` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`gameId`) REFERENCES `game` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reviewrating`
--
ALTER TABLE `reviewrating`
  ADD CONSTRAINT `reviewrating_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewrating_ibfk_2` FOREIGN KEY (`reviewId`) REFERENCES `review` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergame`
--
ALTER TABLE `usergame`
  ADD CONSTRAINT `reference` FOREIGN KEY (`userId`) REFERENCES `user` (`Id`),
  ADD CONSTRAINT `reference_other` FOREIGN KEY (`adminId`) REFERENCES `admin` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usergame_genres`
--
ALTER TABLE `usergame_genres`
  ADD CONSTRAINT `usergame_genres_ibfk_1` FOREIGN KEY (`usergameId`) REFERENCES `usergame` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usergame_genres_ibfk_2` FOREIGN KEY (`genreId`) REFERENCES `genres` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
