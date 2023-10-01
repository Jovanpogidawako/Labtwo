-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2023 at 03:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicplayer`
--

-- --------------------------------------------------------

--
-- Table structure for table `music_tracks`
--

CREATE TABLE `music_tracks` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `music_tracks`
--

INSERT INTO `music_tracks` (`id`, `title`, `artist`, `file_path`) VALUES
(25, 'Nothing But The Blood', 'Awake84', 'Nothing But The Blood_Awake84.mp3'),
(26, 'Nothing But The Blood', 'Awake84', 'Nothing But The Blood_Awake84.mp3'),
(27, 'Saving Name', 'Mid-Cities', 'Saving Name_Mid-Cities.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`) VALUES
(18, 'Worship Song');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_tracks`
--

CREATE TABLE `playlist_tracks` (
  `id` int NOT NULL,
  `playlist_id` int NOT NULL,
  `track_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `playlist_tracks`
--

INSERT INTO `playlist_tracks` (`id`, `playlist_id`, `track_id`) VALUES
(8, 18, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music_tracks`
--
ALTER TABLE `music_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_tracks`
--
ALTER TABLE `playlist_tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `track_id` (`track_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music_tracks`
--
ALTER TABLE `music_tracks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `playlist_tracks`
--
ALTER TABLE `playlist_tracks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `playlist_tracks`
--
ALTER TABLE `playlist_tracks`
  ADD CONSTRAINT `playlist_tracks_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`),
  ADD CONSTRAINT `playlist_tracks_ibfk_2` FOREIGN KEY (`track_id`) REFERENCES `music_tracks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
