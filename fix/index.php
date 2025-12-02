<?php
// include functions file
require_once 'inc/functions.php';

// Output the HTML header for the home page
HTMLhead("RadioGaga Home");

// Output the navigation bar
HTMLNav();
?>

    <div class="content">

        <h1>Welcome to RadioGaga</h1>
        <p>Enjoy the greatest hip hop hits with music, audio, and videos!</p>
        <a href="playlist.php" class="btn">Go to Albums</a>

        <h2>Featured Albums</h2>
        
        <div class="albums-grid">
            <a href="playlist.php?album=1"><img src="IMG/album_1.png" alt="Album 1"><p>Album 1 - Hiphop</p></a>
            <a href="playlist.php?album=2"><img src="IMG/Rock.png" alt="Album 2"><p>Album 2 - Top 5 Rock Classics: 80s, 90s & 2000s</p></a>
            <a href="playlist.php?album=3"><img src="IMG/LAFU.png" alt="Album 3"><p>Album 3 - Top 5 DJ Lafuente Songs</p></a>
        </div>

    </div>
    
<?php
// Output the HTML footer
HTMLfoot();
?>