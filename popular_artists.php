<?php
// Popular Artists pagina - zebra tabel met 100 artiesten
require_once 'inc/functions.php';

// Database connectie
$conn = mysqli_connect("localhost", "root", "", "radio");
if (!$conn) {
    die("Database connectie mislukt: " . mysqli_connect_error());
}

// Haal alle popular artists op
$sql = "SELECT * FROM popular_artists ORDER BY artist_name";
$result = mysqli_query($conn, $sql);

HTMLhead("Popular Artists - RadioGaga");
HTMLNav();
?>

    <div class="content">
        <h1>Popular Artists</h1>
        <p>Browse onze collectie van 100 populaire artiesten!</p>
        
        <div class="table-container">
            <table class="zebra-table">
                <thead>
                    <tr>
                        <th>Artist Name</th>
                        <th>Genre</th>
                        <th>Debut Year</th>
                        <th>Country</th>
                        <th>Notable Work</th>
                        <th>YouTube</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Loop door alle artiesten en maak tabel rijen
                    while ($artist = mysqli_fetch_assoc($result)) {
                    ?>
                    <tr>
                        <td>
                            <a href="<?php echo $artist['wikipedia_link']; ?>" target="_blank" class="artist-link">
                                <?php echo $artist['artist_name']; ?>
                            </a>
                        </td>
                        <td><?php echo $artist['genre']; ?></td>
                        <td><?php echo $artist['debut_year']; ?></td>
                        <td><?php echo $artist['country']; ?></td>
                        <td><?php echo $artist['notable_work']; ?></td>
                        <td class="youtube-cell">
                            <a href="<?php echo $artist['youtube_link']; ?>" target="_blank" class="youtube-link" title="Watch on YouTube">
                                <img src="IMG/YouTubeLogo.svg" alt="YouTube" class="youtube-icon">
                            </a>
                        </td>
                    </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
    
<?php
mysqli_close($conn);
HTMLfoot();
?>