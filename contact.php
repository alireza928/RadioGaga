<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Radio Gaga - Contact</title>
        <link rel="stylesheet" href="CSS\styles.css">
    </head>
    
    <body>
        
        <div id = "navbar">
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="radio.php">Radio</a></li>
                <li><a href="playlist.php">Playlist</a></li>
                <li><a href="contact.php">Contact</a></li>
            </ul>
        </div>

        <div id="welcome-section">
            <h1>Welcome to Radio Gaga contact</h1>
            <p> You can contact us by filing out the form below:</p>
        </div>
        
        <div id="contact-form">
            <form action="submit_contact.php" method="post">
                <label for="name">Name:</label><br>
                <input type="text" id="name" name="name" required><br>
                <label for="email">Email:</label><br>
                <input type="email" id="email" name="email" required><br>
                <label for="message">Message:</label><br>
                <textarea id="message" name="message" rows="4" cols="50" required></textarea><br><br>
                <input type="submit" value="Submit">
            </form>
        </div>
    
    </body>
</html>