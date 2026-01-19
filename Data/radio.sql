-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 19 jan 2026 om 12:20
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radio`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `albums`
--

CREATE TABLE `albums` (
  `album_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `albums`
--

INSERT INTO `albums` (`album_id`, `name`, `image`) VALUES
(1, 'Album 1 - Hiphop', 'IMG/album_1.png'),
(2, 'Top 5 Rock Classics: 80s, 90s & 2000s ', 'IMG/Rock.png'),
(3, 'Album 3 - Top 5 DJ Lafuente Songs', 'IMG/LAFU.png\" ');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bio` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `top_song_1` varchar(100) NOT NULL,
  `top_song_2` varchar(100) NOT NULL,
  `top_song_3` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `artists`
--

INSERT INTO `artists` (`id`, `name`, `bio`, `image`, `top_song_1`, `top_song_2`, `top_song_3`, `display_order`) VALUES
(1, 'Eminem', 'Eminem, born Marshall Bruce Mathers III, is an American rapper, songwriter, and record producer. He is widely regarded as one of the greatest rappers of all time. Eminem gained mainstream popularity in 1999 with his album \"The Slim Shady LP\" and has since sold over 220 million records worldwide. Known for his rapid-fire delivery and controversial lyrics, he has won 15 Grammy Awards and an Academy Award for Best Original Song. His alter-ego Slim Shady and his raw, autobiographical storytelling have made him a cultural icon in hip-hop.', 'IMG/eminem.jpg', 'Lose Yourself', 'Stan', 'Without Me', 1),
(2, 'Dr. Dre', 'Dr. Dre, born Andre Romelle Young, is an American rapper, record producer, and entrepreneur. He is the founder of Aftermath Entertainment and Beats Electronics. Dr. Dre began his career as a member of the World Class Wreckin\' Cru and later found fame with the gangsta rap group N.W.A. His solo albums \"The Chronic\" (1992) and \"2001\" (1999) are considered classics. As a producer, he has shaped the careers of Eminem, Snoop Dogg, and 50 Cent. He is credited with popularizing West Coast G-funk and is one of the wealthiest figures in hip-hop.', 'IMG/drdre.jpg', 'Still D.R.E.', 'I Need A Doctor', 'Nuthin\' but a \'G\' Thang', 2),
(3, 'Post Malone', 'Post Malone, born Austin Richard Post, is an American rapper, singer, and songwriter. He first gained recognition in 2015 with his debut single \"White Iverson.\" Known for blending hip-hop, pop, rock, and R&B, Post Malone has become one of the best-selling music artists of all time. His albums \"Stoney,\" \"Beerbongs & Bentleys,\" and \"Hollywood\'s Bleeding\" have all topped the Billboard 200. With his distinctive voice, face tattoos, and laid-back style, he has won multiple American Music Awards and Billboard Music Awards. His song \"Rockstar\" featuring 21 Savage became a global phenomenon.', 'IMG/postmalone.jpg', 'Rockstar', 'Circles', 'Sunflower', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `navigation`
--

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `navigation`
--

INSERT INTO `navigation` (`id`, `title`, `url`, `position`, `active`) VALUES
(1, 'Home', 'index.php', 1, 1),
(2, 'Albums', 'playlist.php', 2, 1),
(3, 'Artists', 'artists.php', 3, 1),
(4, 'Popular Artists', 'popular_artists.php', 4, 1),
(5, 'Contact', 'contact.php', 5, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `popular_artists`
--

CREATE TABLE `popular_artists` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `debut_year` year(4) NOT NULL,
  `country` varchar(100) NOT NULL,
  `notable_work` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `wikipedia_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `popular_artists`
--

INSERT INTO `popular_artists` (`artist_id`, `artist_name`, `genre`, `debut_year`, `country`, `notable_work`, `youtube_link`, `wikipedia_link`) VALUES
(1, 'The Beatles', 'Rock', '1960', 'United Kingdom', 'Hey Jude', 'https://www.youtube.com/watch?v=A_MjCqQoLLA', 'https://en.wikipedia.org/wiki/The_Beatles'),
(2, 'Elvis Presley', 'Rock and Roll', '1954', 'United States', 'Jailhouse Rock', 'https://www.youtube.com/watch?v=gj0Rz-uP4Mk', 'https://en.wikipedia.org/wiki/Elvis_Presley'),
(3, 'Michael Jackson', 'Pop', '1964', 'United States', 'Thriller', 'https://www.youtube.com/watch?v=sOnqjkJTMaA', 'https://en.wikipedia.org/wiki/Michael_Jackson'),
(4, 'Madonna', 'Pop', '1982', 'United States', 'Like a Prayer', 'https://www.youtube.com/watch?v=79fzeNUqQbQ', 'https://en.wikipedia.org/wiki/Madonna_(entertainer)'),
(5, 'Elton John', 'Rock', '1962', 'United Kingdom', 'Your Song', 'https://www.youtube.com/watch?v=GlPlfCy1urI', 'https://en.wikipedia.org/wiki/Elton_John'),
(6, 'Queen', 'Rock', '1970', 'United Kingdom', 'Bohemian Rhapsody', 'https://www.youtube.com/watch?v=fJ9rUzIMcZQ', 'https://en.wikipedia.org/wiki/Queen_(band)'),
(7, 'Pink Floyd', 'Progressive Rock', '1965', 'United Kingdom', 'Comfortably Numb', 'https://www.youtube.com/watch?v=_FrOQC-zEog', 'https://en.wikipedia.org/wiki/Pink_Floyd'),
(8, 'Led Zeppelin', 'Hard Rock', '1968', 'United Kingdom', 'Stairway to Heaven', 'https://www.youtube.com/watch?v=QkF3oxziUI4', 'https://en.wikipedia.org/wiki/Led_Zeppelin'),
(9, 'Nirvana', 'Grunge', '1987', 'United States', 'Smells Like Teen Spirit', 'https://www.youtube.com/watch?v=hTWKbfoikeg', 'https://en.wikipedia.org/wiki/Nirvana_(band)'),
(10, 'The Rolling Stones', 'Rock', '1962', 'United Kingdom', '(I Can’t Get No) Satisfaction', 'https://www.youtube.com/watch?v=nrIPxlFzDi0', 'https://en.wikipedia.org/wiki/The_Rolling_Stones'),
(11, 'Bob Dylan', 'Folk', '1961', 'United States', 'Like a Rolling Stone', 'https://www.youtube.com/watch?v=IwOfCgkyEj0', 'https://en.wikipedia.org/wiki/Bob_Dylan'),
(12, 'U2', 'Rock', '1976', 'Ireland', 'One', 'https://www.youtube.com/watch?v=ftjEcrrf7r0', 'https://en.wikipedia.org/wiki/U2'),
(13, 'Beyoncé', 'Pop', '1997', 'United States', 'Halo', 'https://www.youtube.com/watch?v=bnVUHWCynig', 'https://en.wikipedia.org/wiki/Beyonc%C3%A9'),
(14, 'Adele', 'Pop', '2006', 'United Kingdom', 'Someone Like You', 'https://www.youtube.com/watch?v=hLQl3WQQoQ0', 'https://en.wikipedia.org/wiki/Adele'),
(15, 'Coldplay', 'Alternative Rock', '1996', 'United Kingdom', 'Fix You', 'https://www.youtube.com/watch?v=k4V3Mo61fJM', 'https://en.wikipedia.org/wiki/Coldplay'),
(16, 'The Beach Boys', 'Rock', '1961', 'United States', 'Good Vibrations', 'https://www.youtube.com/watch?v=mdt0SOqPJcg', 'https://en.wikipedia.org/wiki/The_Beach_Boys'),
(17, 'Prince', 'Pop', '1978', 'United States', 'Purple Rain', 'https://www.youtube.com/watch?v=TvnYmWpD_T8', 'https://en.wikipedia.org/wiki/Prince_(musician)'),
(18, 'David Bowie', 'Rock', '1962', 'United Kingdom', 'Heroes', 'https://www.youtube.com/watch?v=Tgcc5V9Hu3g', 'https://en.wikipedia.org/wiki/David_Bowie'),
(19, 'Rihanna', 'Pop', '2005', 'Barbados', 'Umbrella', 'https://www.youtube.com/watch?v=CvBfHwUxHIk', 'https://en.wikipedia.org/wiki/Rihanna'),
(20, 'Taylor Swift', 'Pop', '2006', 'United States', 'Shake It Off', 'https://www.youtube.com/watch?v=nfWlot6h_JM', 'https://en.wikipedia.org/wiki/Taylor_Swift'),
(21, 'Drake', 'Hip Hop', '2001', 'Canada', 'Hotline Bling', 'https://www.youtube.com/watch?v=uxpDa-c-4Mc', 'https://en.wikipedia.org/wiki/Drake_(musician)'),
(22, 'Kanye West', 'Hip Hop', '2003', 'United States', 'Stronger', 'https://www.youtube.com/watch?v=PsO6ZnUZI0g', 'https://en.wikipedia.org/wiki/Kanye_West'),
(23, 'Jay-Z', 'Hip Hop', '1996', 'United States', 'Empire State of Mind', 'https://www.youtube.com/watch?v=0UjsXo9l6I8', 'https://en.wikipedia.org/wiki/Jay-Z'),
(24, 'Eminem', 'Hip Hop', '1996', 'United States', 'Lose Yourself', 'https://www.youtube.com/watch?v=_Yhyp-_hX2s', 'https://en.wikipedia.org/wiki/Eminem'),
(25, 'Whitney Houston', 'Pop', '1985', 'United States', 'I Will Always Love You', 'https://www.youtube.com/watch?v=3JWTaaS7LdU', 'https://en.wikipedia.org/wiki/Whitney_Houston'),
(26, 'Celine Dion', 'Pop', '1981', 'Canada', 'My Heart Will Go On', 'https://www.youtube.com/watch?v=WNIPqafd4As', 'https://en.wikipedia.org/wiki/Celine_Dion'),
(27, 'Maroon 5', 'Pop Rock', '2001', 'United States', 'Sugar', 'https://www.youtube.com/watch?v=09R8_2nJtjg', 'https://en.wikipedia.org/wiki/Maroon_5'),
(28, 'The Weeknd', 'R&B', '2010', 'Canada', 'Blinding Lights', 'https://www.youtube.com/watch?v=4NRXx6U8ABQ', 'https://en.wikipedia.org/wiki/The_Weeknd'),
(29, 'Ed Sheeran', 'Pop', '2011', 'United Kingdom', 'Shape of You', 'https://www.youtube.com/watch?v=JGwWNGJdvx8', 'https://en.wikipedia.org/wiki/Ed_Sheeran'),
(30, 'Bruno Mars', 'Pop', '2004', 'United States', 'Just the Way You Are', 'https://www.youtube.com/watch?v=LjhCEhWiKXk', 'https://en.wikipedia.org/wiki/Bruno_Mars'),
(31, 'Justin Bieber', 'Pop', '2009', 'Canada', 'Sorry', 'https://www.youtube.com/watch?v=fRh_vgS2dFE', 'https://en.wikipedia.org/wiki/Justin_Bieber'),
(32, 'Katy Perry', 'Pop', '2001', 'United States', 'Firework', 'https://www.youtube.com/watch?v=QGJuMBdaqIw', 'https://en.wikipedia.org/wiki/Katy_Perry'),
(33, 'Shakira', 'Pop', '1990', 'Colombia', 'Hips Don’t Lie', 'https://www.youtube.com/watch?v=DUT5rEU6pqM', 'https://en.wikipedia.org/wiki/Shakira'),
(34, 'Lady Gaga', 'Pop', '2008', 'United States', 'Bad Romance', 'https://www.youtube.com/watch?v=qrO4YZeyl0I', 'https://en.wikipedia.org/wiki/Lady_Gaga'),
(35, 'Harry Styles', 'Pop', '2010', 'United Kingdom', 'Sign of the Times', 'https://www.youtube.com/watch?v=qN4ooNx77u0', 'https://en.wikipedia.org/wiki/Harry_Styles'),
(36, 'Sam Smith', 'Pop', '2012', 'United Kingdom', 'Stay With Me', 'https://www.youtube.com/watch?v=pB-5XG-DbAA', 'https://en.wikipedia.org/wiki/Sam_Smith'),
(37, 'Ariana Grande', 'Pop', '2008', 'United States', 'Thank U, Next', 'https://www.youtube.com/watch?v=gl1aHhXnN1k', 'https://en.wikipedia.org/wiki/Ariana_Grande'),
(38, 'Post Malone', 'Hip Hop', '2015', 'United States', 'Circles', 'https://www.youtube.com/watch?v=wXhTHyIgQ_U', 'https://en.wikipedia.org/wiki/Post_Malone'),
(39, 'Billie Eilish', 'Pop', '2015', 'United States', 'Bad Guy', 'https://www.youtube.com/watch?v=DyDfgMOUjCI', 'https://en.wikipedia.org/wiki/Billie_Eilish'),
(40, 'Dua Lipa', 'Pop', '2015', 'United Kingdom', 'Don’t Start Now', 'https://www.youtube.com/watch?v=oygrmJFKYZY', 'https://en.wikipedia.org/wiki/Dua_Lipa'),
(41, 'Imagine Dragons', 'Alternative Rock', '2008', 'United States', 'Radioactive', 'https://www.youtube.com/watch?v=ktvTqknDobU', 'https://en.wikipedia.org/wiki/Imagine_Dragons'),
(42, 'The Killers', 'Alternative Rock', '2001', 'United States', 'Mr. Brightside', 'https://www.youtube.com/watch?v=gGdGFtwCNBE', 'https://en.wikipedia.org/wiki/The_Killers'),
(43, 'Green Day', 'Punk Rock', '1987', 'United States', 'Boulevard of Broken Dreams', 'https://www.youtube.com/watch?v=Soa3gO7tL-c', 'https://en.wikipedia.org/wiki/Green_Day'),
(44, 'Foo Fighters', 'Rock', '1994', 'United States', 'Everlong', 'https://www.youtube.com/watch?v=eBG7P-K-r1Y', 'https://en.wikipedia.org/wiki/Foo_Fighters'),
(45, 'Linkin Park', 'Nu Metal', '1996', 'United States', 'In the End', 'https://www.youtube.com/watch?v=eVTXPUF4Oz4', 'https://en.wikipedia.org/wiki/Linkin_Park'),
(46, 'Red Hot Chili Peppers', 'Funk Rock', '1983', 'United States', 'Californication', 'https://www.youtube.com/watch?v=YlUKcNNmywk', 'https://en.wikipedia.org/wiki/Red_Hot_Chili_Peppers'),
(47, 'Metallica', 'Heavy Metal', '1981', 'United States', 'Enter Sandman', 'https://www.youtube.com/watch?v=CD-E-LDc384', 'https://en.wikipedia.org/wiki/Metallica'),
(48, 'AC/DC', 'Hard Rock', '1973', 'Australia', 'Back in Black', 'https://www.youtube.com/watch?v=pAgnJDJN4VA', 'https://en.wikipedia.org/wiki/AC/DC'),
(49, 'Bon Jovi', 'Rock', '1983', 'United States', 'Livin’ on a Prayer', 'https://www.youtube.com/watch?v=lDK9QqIzhwk', 'https://en.wikipedia.org/wiki/Bon_Jovi'),
(50, 'ABBA', 'Pop', '1972', 'Sweden', 'Dancing Queen', 'https://www.youtube.com/watch?v=xFrGuyw1V8s', 'https://en.wikipedia.org/wiki/ABBA'),
(51, 'The Beatles', 'Rock', '1960', 'United Kingdom', 'Hey Jude', 'https://www.youtube.com/watch?v=A_MjCqQoLLA', 'https://en.wikipedia.org/wiki/The_Beatles'),
(52, 'Elvis Presley', 'Rock and Roll', '1954', 'United States', 'Jailhouse Rock', 'https://www.youtube.com/watch?v=gj0Rz-uP4Mk', 'https://en.wikipedia.org/wiki/Elvis_Presley'),
(53, 'Michael Jackson', 'Pop', '1964', 'United States', 'Thriller', 'https://www.youtube.com/watch?v=sOnqjkJTMaA', 'https://en.wikipedia.org/wiki/Michael_Jackson'),
(54, 'Madonna', 'Pop', '1982', 'United States', 'Like a Prayer', 'https://www.youtube.com/watch?v=79fzeNUqQbQ', 'https://en.wikipedia.org/wiki/Madonna_(entertainer)'),
(55, 'Elton John', 'Rock', '1962', 'United Kingdom', 'Your Song', 'https://www.youtube.com/watch?v=GlPlfCy1urI', 'https://en.wikipedia.org/wiki/Elton_John'),
(56, 'Queen', 'Rock', '1970', 'United Kingdom', 'Bohemian Rhapsody', 'https://www.youtube.com/watch?v=fJ9rUzIMcZQ', 'https://en.wikipedia.org/wiki/Queen_(band)'),
(57, 'Pink Floyd', 'Progressive Rock', '1965', 'United Kingdom', 'Comfortably Numb', 'https://www.youtube.com/watch?v=_FrOQC-zEog', 'https://en.wikipedia.org/wiki/Pink_Floyd'),
(58, 'Led Zeppelin', 'Hard Rock', '1968', 'United Kingdom', 'Stairway to Heaven', 'https://www.youtube.com/watch?v=QkF3oxziUI4', 'https://en.wikipedia.org/wiki/Led_Zeppelin'),
(59, 'Nirvana', 'Grunge', '1987', 'United States', 'Smells Like Teen Spirit', 'https://www.youtube.com/watch?v=hTWKbfoikeg', 'https://en.wikipedia.org/wiki/Nirvana_(band)'),
(60, 'The Rolling Stones', 'Rock', '1962', 'United Kingdom', '(I Can’t Get No) Satisfaction', 'https://www.youtube.com/watch?v=nrIPxlFzDi0', 'https://en.wikipedia.org/wiki/The_Rolling_Stones'),
(61, 'Bob Dylan', 'Folk', '1961', 'United States', 'Like a Rolling Stone', 'https://www.youtube.com/watch?v=IwOfCgkyEj0', 'https://en.wikipedia.org/wiki/Bob_Dylan'),
(62, 'U2', 'Rock', '1976', 'Ireland', 'One', 'https://www.youtube.com/watch?v=ftjEcrrf7r0', 'https://en.wikipedia.org/wiki/U2'),
(63, 'Beyoncé', 'Pop', '1997', 'United States', 'Halo', 'https://www.youtube.com/watch?v=bnVUHWCynig', 'https://en.wikipedia.org/wiki/Beyonc%C3%A9'),
(64, 'Adele', 'Pop', '2006', 'United Kingdom', 'Someone Like You', 'https://www.youtube.com/watch?v=hLQl3WQQoQ0', 'https://en.wikipedia.org/wiki/Adele'),
(65, 'Coldplay', 'Alternative Rock', '1996', 'United Kingdom', 'Fix You', 'https://www.youtube.com/watch?v=k4V3Mo61fJM', 'https://en.wikipedia.org/wiki/Coldplay'),
(66, 'The Beach Boys', 'Rock', '1961', 'United States', 'Good Vibrations', 'https://www.youtube.com/watch?v=mdt0SOqPJcg', 'https://en.wikipedia.org/wiki/The_Beach_Boys'),
(67, 'Prince', 'Pop', '1978', 'United States', 'Purple Rain', 'https://www.youtube.com/watch?v=TvnYmWpD_T8', 'https://en.wikipedia.org/wiki/Prince_(musician)'),
(68, 'David Bowie', 'Rock', '1962', 'United Kingdom', 'Heroes', 'https://www.youtube.com/watch?v=Tgcc5V9Hu3g', 'https://en.wikipedia.org/wiki/David_Bowie'),
(69, 'Rihanna', 'Pop', '2005', 'Barbados', 'Umbrella', 'https://www.youtube.com/watch?v=CvBfHwUxHIk', 'https://en.wikipedia.org/wiki/Rihanna'),
(70, 'Taylor Swift', 'Pop', '2006', 'United States', 'Shake It Off', 'https://www.youtube.com/watch?v=nfWlot6h_JM', 'https://en.wikipedia.org/wiki/Taylor_Swift'),
(71, 'Drake', 'Hip Hop', '2001', 'Canada', 'Hotline Bling', 'https://www.youtube.com/watch?v=uxpDa-c-4Mc', 'https://en.wikipedia.org/wiki/Drake_(musician)'),
(72, 'Kanye West', 'Hip Hop', '2003', 'United States', 'Stronger', 'https://www.youtube.com/watch?v=PsO6ZnUZI0g', 'https://en.wikipedia.org/wiki/Kanye_West'),
(73, 'Jay-Z', 'Hip Hop', '1996', 'United States', 'Empire State of Mind', 'https://www.youtube.com/watch?v=0UjsXo9l6I8', 'https://en.wikipedia.org/wiki/Jay-Z'),
(74, 'Eminem', 'Hip Hop', '1996', 'United States', 'Lose Yourself', 'https://www.youtube.com/watch?v=_Yhyp-_hX2s', 'https://en.wikipedia.org/wiki/Eminem'),
(75, 'Whitney Houston', 'Pop', '1985', 'United States', 'I Will Always Love You', 'https://www.youtube.com/watch?v=3JWTaaS7LdU', 'https://en.wikipedia.org/wiki/Whitney_Houston'),
(76, 'Celine Dion', 'Pop', '1981', 'Canada', 'My Heart Will Go On', 'https://www.youtube.com/watch?v=WNIPqafd4As', 'https://en.wikipedia.org/wiki/Celine_Dion'),
(77, 'Maroon 5', 'Pop Rock', '2001', 'United States', 'Sugar', 'https://www.youtube.com/watch?v=09R8_2nJtjg', 'https://en.wikipedia.org/wiki/Maroon_5'),
(78, 'The Weeknd', 'R&B', '2010', 'Canada', 'Blinding Lights', 'https://www.youtube.com/watch?v=4NRXx6U8ABQ', 'https://en.wikipedia.org/wiki/The_Weeknd'),
(79, 'Ed Sheeran', 'Pop', '2011', 'United Kingdom', 'Shape of You', 'https://www.youtube.com/watch?v=JGwWNGJdvx8', 'https://en.wikipedia.org/wiki/Ed_Sheeran'),
(80, 'Bruno Mars', 'Pop', '2004', 'United States', 'Just the Way You Are', 'https://www.youtube.com/watch?v=LjhCEhWiKXk', 'https://en.wikipedia.org/wiki/Bruno_Mars'),
(81, 'Justin Bieber', 'Pop', '2009', 'Canada', 'Sorry', 'https://www.youtube.com/watch?v=fRh_vgS2dFE', 'https://en.wikipedia.org/wiki/Justin_Bieber'),
(82, 'Katy Perry', 'Pop', '2001', 'United States', 'Firework', 'https://www.youtube.com/watch?v=QGJuMBdaqIw', 'https://en.wikipedia.org/wiki/Katy_Perry'),
(83, 'Shakira', 'Pop', '1990', 'Colombia', 'Hips Don’t Lie', 'https://www.youtube.com/watch?v=DUT5rEU6pqM', 'https://en.wikipedia.org/wiki/Shakira'),
(84, 'Lady Gaga', 'Pop', '2008', 'United States', 'Bad Romance', 'https://www.youtube.com/watch?v=qrO4YZeyl0I', 'https://en.wikipedia.org/wiki/Lady_Gaga'),
(85, 'Harry Styles', 'Pop', '2010', 'United Kingdom', 'Sign of the Times', 'https://www.youtube.com/watch?v=qN4ooNx77u0', 'https://en.wikipedia.org/wiki/Harry_Styles'),
(86, 'Sam Smith', 'Pop', '2012', 'United Kingdom', 'Stay With Me', 'https://www.youtube.com/watch?v=pB-5XG-DbAA', 'https://en.wikipedia.org/wiki/Sam_Smith'),
(87, 'Ariana Grande', 'Pop', '2008', 'United States', 'Thank U, Next', 'https://www.youtube.com/watch?v=gl1aHhXnN1k', 'https://en.wikipedia.org/wiki/Ariana_Grande'),
(88, 'Post Malone', 'Hip Hop', '2015', 'United States', 'Circles', 'https://www.youtube.com/watch?v=wXhTHyIgQ_U', 'https://en.wikipedia.org/wiki/Post_Malone'),
(89, 'Billie Eilish', 'Pop', '2015', 'United States', 'Bad Guy', 'https://www.youtube.com/watch?v=DyDfgMOUjCI', 'https://en.wikipedia.org/wiki/Billie_Eilish'),
(90, 'Dua Lipa', 'Pop', '2015', 'United Kingdom', 'Don’t Start Now', 'https://www.youtube.com/watch?v=oygrmJFKYZY', 'https://en.wikipedia.org/wiki/Dua_Lipa'),
(91, 'Imagine Dragons', 'Alternative Rock', '2008', 'United States', 'Radioactive', 'https://www.youtube.com/watch?v=ktvTqknDobU', 'https://en.wikipedia.org/wiki/Imagine_Dragons'),
(92, 'The Killers', 'Alternative Rock', '2001', 'United States', 'Mr. Brightside', 'https://www.youtube.com/watch?v=gGdGFtwCNBE', 'https://en.wikipedia.org/wiki/The_Killers'),
(93, 'Green Day', 'Punk Rock', '1987', 'United States', 'Boulevard of Broken Dreams', 'https://www.youtube.com/watch?v=Soa3gO7tL-c', 'https://en.wikipedia.org/wiki/Green_Day'),
(94, 'Foo Fighters', 'Rock', '1994', 'United States', 'Everlong', 'https://www.youtube.com/watch?v=eBG7P-K-r1Y', 'https://en.wikipedia.org/wiki/Foo_Fighters'),
(95, 'Linkin Park', 'Nu Metal', '1996', 'United States', 'In the End', 'https://www.youtube.com/watch?v=eVTXPUF4Oz4', 'https://en.wikipedia.org/wiki/Linkin_Park'),
(96, 'Red Hot Chili Peppers', 'Funk Rock', '1983', 'United States', 'Californication', 'https://www.youtube.com/watch?v=YlUKcNNmywk', 'https://en.wikipedia.org/wiki/Red_Hot_Chili_Peppers'),
(97, 'Metallica', 'Heavy Metal', '1981', 'United States', 'Enter Sandman', 'https://www.youtube.com/watch?v=CD-E-LDc384', 'https://en.wikipedia.org/wiki/Metallica'),
(98, 'AC/DC', 'Hard Rock', '1973', 'Australia', 'Back in Black', 'https://www.youtube.com/watch?v=pAgnJDJN4VA', 'https://en.wikipedia.org/wiki/AC/DC'),
(99, 'Bon Jovi', 'Rock', '1983', 'United States', 'Livin’ on a Prayer', 'https://www.youtube.com/watch?v=lDK9QqIzhwk', 'https://en.wikipedia.org/wiki/Bon_Jovi'),
(100, 'ABBA', 'Pop', '1972', 'Sweden', 'Dancing Queen', 'https://www.youtube.com/watch?v=xFrGuyw1V8s', 'https://en.wikipedia.org/wiki/ABBA');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tracks`
--

CREATE TABLE `tracks` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `audio_file` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `tracks`
--

INSERT INTO `tracks` (`id`, `album_id`, `name`, `duration`, `audio_file`, `video`, `bio`) VALUES
(1, 1, 'I need a doctor Eminem - Dr Dre', '4:43', 'audio/I Need A Doctor.mp3', 'https://www.youtube.com/embed/VA770wpLX-Q', 'A cinematic song detailing the relationship between Eminem and Dr. Dre.\r\n\r\nEm talks about Dre being stuck creatively, unable to make music the way he used to due to his grief and depression. Em, who went through this himself after his best friend died in 2006, is making a passionate attempt to get through to him so Dre will start believing in his own abilities again. Dre is a “perfectionist”, but the legend is currently stuck in the mud and Eminem is afraid for him. Eminem references his own struggles to make it and Dre’s assistance, and also cites the super-producer’s personal troubles including the death of his son, Andre Young Jr.\r\n\r\nDre then rhymes about the pair’s history, from “Guilty Conscience” to the present.\r\n\r\nhttps://www.youtube.com/watch?v=VA770wpLX-Q'),
(2, 1, 'Black Privilege Dr.Dre', '2:51', 'audio/Dr.Dre-BlackPrivilege.mp3', 'https://www.youtube.com/embed/iHYRhf2Mij4?list=RDiHYRhf2Mij4', '“Black Privilege” is one of the songs originally released as part of the “The Contract” update to Grand Theft Auto Online, featured during the mission series “The Contract: Dr. Dre” as one of the leaked songs from Dre’s stolen files of unreleased music.\r\n\r\nThe song is prominently featured as the track during the mission “South Central Leak: Finale”, where the in-game gang, the Vagos, are loudly playing it in a lowrider, and the player teams up with a convoy of two other gangs, the Ballas and the Families, to steal the files back.'),
(3, 1, 'rockstar ft 21 Savage - Post Malone', '3:38', 'audio/Post Malone - rockstar ft. 21 Savage (Official Audio).mp3', 'https://www.youtube.com/embed/UceaB4D0jpo?list=RDUceaB4D0jpo', 'On “rockstar,” Post Malone compares his habits to the “live fast, die young” rock and roll lifestyle. Along the way, he references real events in rock history, name-drops Bon Scott and Jim Morrison, and highlights rockstar traditions like throwing TVs out of hotel windows.\r\n\r\nPost previewed the song in December 2016, nine months before he released it, by posting a video of himself jamming to it in the studio. The preview received thousands of retweets on Twitter over the course of the year, so the track was highly anticipated by the time it finally dropped.\r\n\r\nIn late December of 2017, it was also revealed that Joey Bada$$ had co-written the track as well as penning an extra verse after Music Mafia leaked the original version of the song. This version also contained a verse from T-Pain, which he confirmed, in place of the 21 Savage’s contributions that ultimately appeared on the final version of the song.\r\n\r\nOn January 9, 2018, “rockstar” broke the record for holding the number one spot on Spotify’s Global chart with 108 days spent on the top of the list. The previous record holder was Ed Sheeran’s “Shape Of You.” It remains the most streamed rap song on Spotify.'),
(4, 2, 'Sweet Child O’ Mine - Guns N’ Roses', '5:56', 'audio/Sweet Child O\' Mine - Guns N\' Roses.mp3', 'https://www.youtube.com/embed/1w7OgIMMRc4', '“Sweet Child O’ Mine” is the 9th track of Guns N’ Roses’ debut album Appetite for Destruction. The song became GNR’s most successful single, topping the Billboard Hot 100.\r\n\r\nThe guitar solo was ranked as one of the greatest of all-time by Guitar World. Amazingly, it was recorded in one take.\r\n\r\nThe lyrics were written by frontman Axl Rose as a dedication to his then-girlfriend Erin Everly. Once he heard guitarist Slash noodling downstairs, Axl found the musical backing he needed.\r\n\r\nIn 2015, the Australian website MAX TV revealed the song’s striking similarity to “Unpublished Critics,” a song released in 1981 by the band Australian Crawl. Duff McKagan, bass player for Guns N\' Roses during the recording of “Sweet Child O\' Mine,” said the similarities were startling. Speaking to Radio.com in 2015:\r\n\r\nIt is pretty stunning. But we didn’t steal it from them! I swear [puts his hand on his heart], I never heard that song until a couple of days ago.\"'),
(5, 2, ' Eye of the Tiger - Survivor', '4:05', ' audio/Eye of the Tiger - Survivor.mp3', 'https://www.youtube.com/embed/btPJPFnesV4', '“Eye of the Tiger”, the most well-known song by Survivor, held the #1 spot on the Billboard Hot 100 chart for six consecutive weeks in the summer of 1982 and topped charts in several other countries including Canada, Japan, Norway, Finland and the UK. It also won the band a Grammy for Best Rock Performance by a Duo Or Group with Vocal.\r\n\r\nWritten by guitarist Frankie Sullivan and keyboardist Jim Peterik, the lyrics describe someone training hard to overcome hardships – fitting well its original intention, over the training montage in the film Rocky III. It has since become an anthem of sports events, particularly fighting ones, and is tied with “Gonna Fly Now” for Rocky Balboa’s theme song.\r\n\r\nAccording to The Billboard Book Of Number 1 Hits, within 90 minutes of seeing an early tape of the film, the band had the song written. They based the title and lyrics on a line repeated several times by a boxing trainer in the film – “eye of the tiger.”'),
(6, 2, 'Enter Sandman - Metallica', '5:31', 'audio/Enter Sandman.mp3', 'https://www.youtube.com/embed/CD-E-LDc384', 'The lead single from Metallica’s commercially successful self-titled album, “Enter Sandman” was certified platinum, selling over 1 million copies. The song was Metallica’s biggest radio hit and it’s considered their signature song.\r\n\r\nThe song follows the theme of childhood fear, in nightmares, with the eponymous Sandman symbolizing the sleep that he dreads. However, the Sandman of European folklore actually represents the bringer of good dreams.\r\n\r\nIn 2007, drummer Lars Ulrich told Uncut:\r\n\r\n‘Enter Sandman’ was the first thing we came up with when we sat down for the songwriting process in July 1990. The 10-minute, 12-tempo-changes side of Metallica had run its course. We wanted to streamline and simplify things. We wrote the song in a day or two. All the bits of ‘Enter Sandman’ are derived from the main riff.\r\n\r\nMeanwhile, James Hetfield told Uncut:\r\n\r\nI wanted more of the mental thing where this kid gets manipulated by what adults say. You know when you wake up with that shit in your eye? That’s supposedly been put in there by the sandman to make you dream. So the guy in the song tells this little kid that and he kinda freaks. He can’t sleep after that and it works the opposite way. Instead of a soothing thing, the table’s turned.\r\n\r\nTwenty years after the song’s release, producer Bob Rock shared the original concept of the song’s lyrics with Music Radar:\r\n\r\nAt first, based on the music and the riff, the band and their management thought it could be the first single. Then they heard James’ lyrics and realized the song was about crib death. That didn’t go over well. I sat down with James and talked to him about his words. I told him, ‘What you have is great, but it can be better. Does it have to be so literal?’ Not that I was thinking about the single; I just wanted him to make the song great. It was a process, him learning to say what he wanted but in a more poetic and open sort of way. He rewrote some lyrics and it was all there… the first single.'),
(7, 2, 'To Hell and Back - Sabaton', '3:26', 'audio/To Hell and Back.mp3', 'https://www.youtube.com/embed/RhmHSAClG1c?list=RDRhmHSAClG1c', 'This is the story of Audie Murphy, the most decorated US soldier in WW2. There are simply too many stories about his deeds to even try to cover them in such a short text, but among his fellow soldiers, he was truly a hero and a great inspiration. When he returned from the war he suffered heavily from post-traumatic stress (back then called “shell-shock”) and after a long time on medicines, he finally locked himself into a motel for one week to cure his addiction to the drugs. After this, he became a very famous movie star and even acted in the movie about himself. That was titled To Hell and Back that was also the title of his book.'),
(8, 2, 'The Last Stand - Sabaton', '3:55', 'audio/The Last Stand.mp3', 'https://www.youtube.com/embed/gtbbIB776ks?list=RDgtbbIB776ks', 'The title track of The Last Stand tells of the Stand of the Swiss Guard during the 1527 sack of Rome.\r\n\r\nDuring the War of the League of Cognac, a Habsburg army composed of troops from the Holy Roman Empire, Spain, and Lutheran mercenaries under the command of the Constable of France, the Duc de Bourbon attacked the supposed inviolable capital of Christendom, Rome.\r\n\r\nWith only 5000 civilians rising to the defense, the Habsburg army ran wild through the holy city. As the sack took place, Kaspar Röist, commander of Pope Clement’s elite bodyguard of Swiss Guards deployed his men to cover Clement’s escape along the Passetto di Borgo.\r\n\r\nAlongside the remnants of the city garrison, 189 Swiss Guards made their stand in a cemetery inside the Vatican. Röist was killed during the fighting but the Swiss Gaurd fought on, covering the retreat of the Pope’s entourage along the Passetto di Borgo to the Castel Sant\'Angelo.'),
(9, 3, 'Ratata - Outsiders Remix - La Fuente', '2:55', 'audio/Ratata - Outsiders Remix.mp3', 'https://www.youtube.com/embed/KcpZ-bLbqQ8', 'This song has 16,089,760 views on spotify.'),
(10, 3, 'I Want You - La Fuente', '3:39', 'audio/I Want You.mp3', 'https://www.youtube.com/embed/hDaWCcMnUjM?list=RDhDaWCcMnUjM', 'This song has 54,533,749 Views on Spotify.'),
(11, 3, 'Doe Me Dansje - La Fuente - Ronnie Flex - Kraantje Pappie', '2:41', 'audio/Doe Me Dansje.mp3', 'https://www.youtube.com/embed/UjQOQNUs_kc?list=RDUjQOQNUs_kc', 'This song has no bio'),
(12, 3, 'Lights Out - La Fuente', '3:10', 'audio/Lights Out - Official song Formula 1 Heineken Dutch Grand Prix.mp3', 'https://www.youtube.com/embed/btRXU1UoR4c?list=RDbtRXU1UoR4c', 'Official song Formula 1 Heineken Dutch Grand Prix'),
(13, 3, 'Dominator (2K23) -  La Fuente', '3:10', 'audio/Dominator (2K23).mp3', 'https://www.youtube.com/embed/3lgyokKjngk?list=RD3lgyokKjngk', 'This song has no bio');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexen voor tabel `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `popular_artists`
--
ALTER TABLE `popular_artists`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexen voor tabel `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `album_id` (`album_id`) USING BTREE;

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `albums`
--
ALTER TABLE `albums`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `popular_artists`
--
ALTER TABLE `popular_artists`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT voor een tabel `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
