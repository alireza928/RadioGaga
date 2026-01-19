<?php
// Playlist pagina - laat tracks van een album zien
require_once 'inc/functions.php';

// Database connectie
$conn = mysqli_connect("localhost", "root", "", "radio");
if (!$conn) { 
    die("Connection failed: " . mysqli_connect_error()); 
}

// Haal album ID op uit URL
$album_id = isset($_GET['album']) ? intval($_GET['album']) : 1;

// Haal album info op
$album_sql = "SELECT * FROM albums WHERE album_id = $album_id";
$album_result = mysqli_query($conn, $album_sql);
$album = mysqli_fetch_assoc($album_result);

// Haal tracks op
$tracks_sql = "SELECT * FROM tracks WHERE album_id = $album_id";
$tracks_result = mysqli_query($conn, $tracks_sql);
$tracks = mysqli_fetch_all($tracks_result, MYSQLI_ASSOC);

HTMLhead("Playlist - " . $album['name']);
HTMLNav();
?>

    <div class="albums-grid">
        <a href="playlist.php?album=1"><img src="IMG/album_1.png" alt="Album 1"><p>Album 1 - Hiphop</p></a>
        <a href="playlist.php?album=2"><img src="IMG/Rock.png" alt="Album 1"><p>Album 2 - Top 5 Rock Classics: 80s, 90s & 2000s</p></a>
        <a href="playlist.php?album=3"><img src="IMG/LAFU.png" alt="Album 3"><p>Album 3 - Top 5 DJ Lafuente Songs</p></a>
    </div>

    <div class="content">
        <h1><?php echo $album['name']; ?></h1>
        <h2>Tracks</h2>
    </div>
    
    <div class="track">
    <table>
        <thead>
            <tr>
                <th>Track Name</th>
                <th>Duration</th>
                <th>Audio</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($tracks as $track) { ?>
            <tr>
                <td class="track-name"><?php echo $track['name']; ?></td>
                <td class="track-duration"><?php echo $track['duration']; ?></td>
                <td>
                    <audio controls>
                        <source src="<?php echo $track['audio_file']; ?>" type="audio/mpeg">
                    </audio>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <h2>Video:</h2>
                    <iframe src="<?php echo $track ['video']; ?>" title="Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                </td>
            <tr>
                <td colspan="3">
                    <h2>Song Bio:</h2>
                    <?php echo nl2br($track ['bio']); ?>
                </td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
    </div>    

<?php
HTMLfoot();
?>