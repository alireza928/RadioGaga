<?php
// Artists pagina - laat 3 artiesten zien uit database
require_once 'inc/functions.php';

// Haal artiesten op
$artists = getArtists();

HTMLhead("Artists - RadioGaga");
HTMLNav();
?>

    <div class="content">
        <h1>Artists</h1>
        <p>Onze featured hip-hop artiesten en hun top tracks.</p>
        
        <?php
        // Loop door alle artiesten
        foreach ($artists as $artist) {
        ?>
        
        <div class="artist-section">
            <h2><?php echo $artist['name']; ?></h2>
            
            <div class="artist-container">
                <div class="artist-image">
                    <img src="<?php echo $artist['image']; ?>" alt="<?php echo $artist['name']; ?>">
                </div>
                
                <div class="artist-info">
                    <p><?php echo $artist['bio']; ?></p>
                    
                    <h3>Top 3 Songs:</h3>
                    <ul class="top-songs">
                        <li><?php echo $artist['top_song_1']; ?></li>
                        <li><?php echo $artist['top_song_2']; ?></li>
                        <li><?php echo $artist['top_song_3']; ?></li>
                    </ul>
                </div>
            </div>
        </div>
        
        <?php
        }
        ?>
        
    </div>
    
<?php
HTMLfoot();
?>