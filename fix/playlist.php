<?php
// Database connection
$conn = mysqli_connect("localhost", "root", "", "radio");
if (!$conn) { 
    die("Connection failed: " . mysqli_connect_error()); 
}

// Get album ID from URL
$album_id = isset($_GET['album']) ? intval($_GET['album']) : 1;

// Fetch album details
$album_sql = "SELECT * FROM albums WHERE album_id = $album_id";
$album_result = mysqli_query($conn, $album_sql);
$album = mysqli_fetch_assoc($album_result);

// Fetch tracks from this album
$tracks_sql = "SELECT * FROM tracks WHERE album_id = $album_id";
$tracks_result = mysqli_query($conn, $tracks_sql);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">'
    <link rel="stylesheet" href="CSS/styles.css">
    <title>Playlist - <?php echo $album['name']; ?><</title>
</head>
<body>
    
    <div class="header">
    <a href="index.php"><img src="IMG/Radio_Logo.png" alt="RadioGaga Logo" class="logo"></a>
    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="playlist.php">Playlist</a></li>
        </ul>
    </nav>
    </div>

    <div class="content">
        <h1><?php echo $album['name']; ?></h1>
        <img src="<?php echo $album['image']; ?>" alt="<?php echo $album['name']; ?>" class="album-cover">
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
            <?php while($track = mysqli_fetch_assoc($tracks_result)) { ?>
            <tr>
                <td class="track-name"><?php echo htmlspecialchars($track['name']); ?></td>
                <td class="track-duration"><?php echo htmlspecialchars($track['duration']); ?></td>
                <td>
                    <audio controls>
                        <source src="<?php echo htmlspecialchars($track['audio_file']); ?>" type="audio/mpeg">
                    </audio>
                </td>
            </tr>
            <?php } ?>
        </tbody>
    </table>

        <h2>Song Bio:</h2>
        <p>
            <?php 
            echo $track ['bio'];
            ?>
        </p>
        <h2>Song Video:</h2>
        <video src="<?php echo $track ['video'] ?>"></video>
        
    </div>    
</body>
</html>