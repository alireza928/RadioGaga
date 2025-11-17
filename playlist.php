<?php
$conn = mysqli_connect("localhost", "root", "", "radiogaga");
if (!$conn) { die("Connection failed: " . mysqli_connect_error()); }

$album_id = isset($_GET['album']) ? $_GET['album'] : 1;

$album_sql = "SELECT * FROM albums WHERE id = $album_id";
$album_result = mysqli_query($conn, $album_sql);
$album = mysqli_fetch_assoc($album_result);

$tracks_sql = "SELECT * FROM tracks WHERE album_id = $album_id";
$tracks_result = mysqli_query($conn, $tracks_sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Playlist - <?php echo $album['name']; ?></title>
    <link rel="stylesheet" href="CSS\styles.css">
</head>
<body>
<header>
    <a href="index.php"><img src="IMG/Radio_Logo.png" alt="RadioGaga Logo" class="logo"></a>
    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="playlist.php">Playlist</a></li>
        </ul>
    </nav>
</header>

<main class="playlist">
    <section class="album-card">
        <h1><?php echo $album['name']; ?></h1>
        <img src="<?php echo $album['image']; ?>" alt="<?php echo $album['name']; ?>" class="album-cover">
        <h2>Tracks</h2>
        <div class="tracks">
            <?php while($track = mysqli_fetch_assoc($tracks_result)) { ?>
            <div class="track">
                <p class="track-name"><?php echo $track['name']; ?> (<video?php echo $track['duration']; ?>)</p>
                <audio controls>
                    <source src="<?php echo $track['audio_file']; ?>" type="audio/mpeg">
                </audio>
            </div>
            <?php } ?>
        </div>

        <h2>Song Video:</h2>
        <video width="600"  controls loop muted autoplay>
            <source src="<?php echo $album['video']; ?>" type="video/mp4">
        </video>

        <h3>Switch Album</h3>
        <div class="album-switch">
            <a href="playlist.php?album=1" class="btn">Album 1</a>
            <a href="playlist.php?album=2" class="btn">Album 2</a>
            <a href="playlist.php?album=3" class="btn">Album 3</a>
        </div>
    </section>
</main>

</body>
</html>
