<?php
// RadioGaga functions file
// Bevat alle herbruikbare functies

// Debug functie - laat variabelen zien voor testing
function myDump($varName, $varValue, $die = false)
{
    $backtrace = debug_backtrace();
    $caller = $backtrace[0];
    
    echo '<div style="width:80%; margin:10px auto; padding:10px; background-color:#f9f9f9; border:1px solid #ccc; color:#000;">';
    echo '<strong style="color:#ff0000;">Debug van lijn ' . $caller['line'] . ':</strong><br><pre>';
    echo '<strong>Variabele: ' . htmlspecialchars($varName) . '</strong><br>';
    var_dump($varValue);
    echo '</pre>';
    
    if ($die) {
        echo '<p style="color:#008000;">Script gestopt.</p>';
        echo '</div>';
        HTMLfoot();
        exit;
    }
    
    echo '</div>';
}

// HTML head functie - maakt de header aan
function HTMLhead($title = "RadioGaga")
{
?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="Author" content="RadioGaga Alireza">
        <link rel="stylesheet" href="CSS/styles.css">
        <title><?php echo $title; ?></title>
    </head>
    <body>
<?php
}

// Navigatie functie - haalt menu items uit database
function HTMLNav()
{
    // Connectie maken met database
    $conn = mysqli_connect("localhost", "root", "", "radio");
    
    if (!$conn) {
        die("Database connectie mislukt: " . mysqli_connect_error());
    }
    
    // Query om navigatie items op te halen
    $sql = "SELECT * FROM navigation WHERE active = 1 ORDER BY position";
    $result = mysqli_query($conn, $sql);
    
?>
        <header class="header">
            <a href="index.php"><img src="IMG/Radio_Logo.png" alt="RadioGaga Logo" class="logo"></a>
            
            <nav>
                <ul>
                    <?php
                    // Loop door alle menu items
                    while ($nav_item = mysqli_fetch_assoc($result)) {
                        ?>
                        <li>
                            <a href="<?php echo $nav_item['url']; ?>">
                                <?php echo $nav_item['title']; ?>
                            </a>
                        </li>
                        <?php
                    }
                    ?>
                </ul>
            </nav>
        </header>
<?php
    mysqli_close($conn);
}


// Footer functie - sluit HTML af
function HTMLfoot()
{
?>
    <footer>
        <p>&copy; 2025 RadioGaga.</p>
    </footer>
    </body>
    </html>
<?php
}

// Functie om artiesten op te halen uit database
function getArtists()
{
    // Database connectie
    $conn = mysqli_connect("localhost", "root", "", "radio");
    
    if (!$conn) {
        die("Connectie mislukt: " . mysqli_connect_error());
    }
    
    // Haal alle artiesten op gesorteerd op display_order
    $sql = "SELECT * FROM artists ORDER BY display_order";
    $result = mysqli_query($conn, $sql);
    $artists = mysqli_fetch_all($result, MYSQLI_ASSOC);
    
    mysqli_close($conn);
    
    return $artists;
}

?>