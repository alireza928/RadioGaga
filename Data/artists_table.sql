-- ===================================
-- RadioGaga - Artists Table
-- This creates a new table to store artist information
-- ===================================

USE `radio`;

-- Create the artists table
-- This table stores information about 3 artists
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,              -- Unique ID for each artist
  `name` varchar(100) NOT NULL,                      -- Artist name
  `bio` text NOT NULL,                               -- Biography/information about the artist
  `image` varchar(255) NOT NULL,                     -- Path to artist image
  `top_song_1` varchar(100) NOT NULL,                -- First top song
  `top_song_2` varchar(100) NOT NULL,                -- Second top song
  `top_song_3` varchar(100) NOT NULL,                -- Third top song
  `display_order` int(11) NOT NULL DEFAULT 1,        -- Order to display artists
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insert data for 3 artists
-- Artist 1: Eminem
INSERT INTO `artists` (`id`, `name`, `bio`, `image`, `top_song_1`, `top_song_2`, `top_song_3`, `display_order`) VALUES
(1, 'Eminem', 
'Eminem, born Marshall Bruce Mathers III, is an American rapper, songwriter, and record producer. He is widely regarded as one of the greatest rappers of all time. Eminem gained mainstream popularity in 1999 with his album "The Slim Shady LP" and has since sold over 220 million records worldwide. Known for his rapid-fire delivery and controversial lyrics, he has won 15 Grammy Awards and an Academy Award for Best Original Song. His alter-ego Slim Shady and his raw, autobiographical storytelling have made him a cultural icon in hip-hop.',
'IMG/eminem.jpg',
'Lose Yourself',
'Stan',
'Without Me',
1);

-- Artist 2: Dr. Dre
INSERT INTO `artists` (`id`, `name`, `bio`, `image`, `top_song_1`, `top_song_2`, `top_song_3`, `display_order`) VALUES
(2, 'Dr. Dre',
'Dr. Dre, born Andre Romelle Young, is an American rapper, record producer, and entrepreneur. He is the founder of Aftermath Entertainment and Beats Electronics. Dr. Dre began his career as a member of the World Class Wreckin\' Cru and later found fame with the gangsta rap group N.W.A. His solo albums "The Chronic" (1992) and "2001" (1999) are considered classics. As a producer, he has shaped the careers of Eminem, Snoop Dogg, and 50 Cent. He is credited with popularizing West Coast G-funk and is one of the wealthiest figures in hip-hop.',
'IMG/drdre.jpg',
'Still D.R.E.',
'I Need A Doctor',
'Nuthin\' but a \'G\' Thang',
2);

-- Artist 3: Post Malone
INSERT INTO `artists` (`id`, `name`, `bio`, `image`, `top_song_1`, `top_song_2`, `top_song_3`, `display_order`) VALUES
(3, 'Post Malone',
'Post Malone, born Austin Richard Post, is an American rapper, singer, and songwriter. He first gained recognition in 2015 with his debut single "White Iverson." Known for blending hip-hop, pop, rock, and R&B, Post Malone has become one of the best-selling music artists of all time. His albums "Stoney," "Beerbongs & Bentleys," and "Hollywood\'s Bleeding" have all topped the Billboard 200. With his distinctive voice, face tattoos, and laid-back style, he has won multiple American Music Awards and Billboard Music Awards. His song "Rockstar" featuring 21 Savage became a global phenomenon.',
'IMG/postmalone.jpg',
'Rockstar',
'Circles',
'Sunflower',
3);

-- That's it! Now you have 3 artists in your database
