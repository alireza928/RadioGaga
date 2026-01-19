-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 03 dec 2025 om 11:28
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
-- Create the navigation table
-- This table stores all the menu items that appear in the navigation bar
CREATE TABLE IF NOT EXISTS `navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,           -- Unique ID for each menu item
  `title` varchar(50) NOT NULL,                   -- The text that shows in the menu (like "Home", "Albums")
  `url` varchar(255) NOT NULL,                    -- The page it links to (like "index.php")
  `position` int(11) NOT NULL DEFAULT 0,          -- The order of the menu items (lower numbers appear first)
  `active` tinyint(1) NOT NULL DEFAULT 1,         -- 1 = show this menu item, 0 = hide it
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insert the navigation menu items
-- These are the 5 pages in your website
INSERT INTO `navigation` (`id`, `title`, `url`, `position`, `active`) VALUES
(1, 'Home', 'index.php', 1, 1),                   -- Home page - shows first
(2, 'Albums', 'playlist.php', 2, 1),              -- Albums/Playlist page - shows second
(3, 'Artists', 'artists.php', 3, 1),              -- Artists page - shows third
(4, 'Popular Artists', 'popular_artists.php', 4, 1), -- Popular Artists - shows fourth
(5, 'Contact', 'contact.php', 5, 1);              -- Contact page - shows last

-- That's it! Now you have a navigation table with 5 menu items


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
-- AUTO_INCREMENT voor een tabel `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
