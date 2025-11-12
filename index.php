<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RadioGaga</title>
    <link rel="stylesheet" href="CSS\styles.css">
</head>
<body>
<header>
    <a href="index.php"><img src="images/logo.png" alt="RadioGaga Logo" class="logo"></a>
    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="playlist.php">Playlist</a></li>
        </ul>
    </nav>
</header>

<main class="homepage">
    <div class="hero">
        <h1>Welcome to RadioGaga</h1>
        <p>Enjoy the greatest hits of Queen with music, audio, and videos!</p>
        <a href="playlist.php" class="btn">Go to Playlist</a>
    </div>

    <section class="featured-albums">
        <h2>Featured Albums</h2>
        <div class="albums-grid">
            <a href="playlist.php?album=1"><img src="images/queen.jpg" alt="Queen Greatest"><p>Queen Greatest</p></a>
            <a href="playlist.php?album=2"><img src="images/opera.jpg" alt="A Night at the Opera"><p>A Night at the Opera</p></a>
            <a href="playlist.php?album=3"><img src="images/news.jpg" alt="News of the World"><p>News of the World</p></a>
        </div>
    </section>
</main>

</body>
</html>
