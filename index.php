<?php
/* ===================================
   RadioGaga - index or home page 
   =================================== */

// include functions file
require_once 'inc/functions.php';

// Output the HTML header for the home page
HTMLhead("RadioGaga Home");

// Output the navigation bar
HTMLNav();
?>

    <!-- Main content wrapper -->
    <div class="content">

        <!-- Page title and welcome message -->
        <h1>Welcome to RadioGaga</h1>
        <p>Enjoy the greatest hip hop hits with music, audio, and videos!</p>
        <a href="playlist.php" class="btn">Go to Albums</a>

        <!-- Featured albums section heading -->
        <h2>Featured Albums</h2>
        
        <!-- Albums grid displaying featured albums -->
        <div class="albums-grid">
            <!-- Album 1: Hip-hop collection -->
            <a href="playlist.php?album=1"><img src="IMG/album_1.png" alt="Album 1"><p>Album 1 - Hiphop</p></a>
            <!-- Album 2: Rock classics from 80s, 90s and 2000s -->
            <a href="playlist.php?album=2"><img src="IMG/Rock.png" alt="Album 2"><p>Album 2 - Top 5 Rock Classics: 80s, 90s & 2000s</p></a>
            <!-- Album 3: DJ Lafuente top songs -->
            <a href="playlist.php?album=3"><img src="IMG/LAFU.png" alt="Album 3"><p>Album 3 - Top 5 DJ Lafuente Songs</p></a>
        </div>

    </div>
    
<?php
// Output the HTML footer
HTMLfoot();
?>