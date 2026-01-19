<?php
/* ===================================
   RadioGaga - functions
   =================================== */


/**
 * - Summary of myDump
 * - A custom function for debugging that dumps variable information.
 * - with enhanced formatting for better readability.
 * - will also show the file name and line number where it was called.
 * - Optionally terminates the script after dumping if $die is true.
 * @param string $varName The literal name of the variable (e.g., '$_POST').
 * @param mixed $varValue The variable value to dump.
 * @param bool $die Whether to terminate the script after dumping. Defaults to false.
 * @return void
 */
function myDump($varName, $varValue, $die = false)
{
    // get the backtrace to find caller info
    $backtrace = debug_backtrace();
    // get the first caller outside this function
    $caller = $backtrace[0];
   
    // output formatted debug information
    echo '
    <div style="
    width:80%;
    margin: 10px auto;
    padding:10px;
    background-color:#f9f9f9;
    border:1px solid #ccc;
    color:#000;
    overflow-x:auto;">' . "\n";
   
    // --- Display Caller Info ---
    echo '<strong style="color:#ff0000;">Debug Dump called from<br />File: ' . htmlspecialchars($caller['file']) . '<br />Line ' . $caller['line'] . ':</strong><br /><pre>';
   
    // --- Display Variable Name and Dump ---
    echo '<strong>Variable Name: ' . htmlspecialchars($varName) . '</strong><br />';
    var_dump($varValue);
 
    echo '</pre>';
 
    if ($die)
    {
        // 1. Output the termination message inside the myDump container
        echo '<p style="color:#008000; font-weight: bold;">Script terminated by myDump.</p>';
       
        // 2. Close the myDump container
        echo '</div>';
       
        // 3. Output the HTML footer (which contains the main closing tags)
        HTMLfoot();
       
        // 4. Terminate the script immediately
        exit;
    }
   
    // If $die is false, just close the myDump container and continue
    echo '</div>';
}

/**
 * Outputs the HTML header for general pages.
 **/
function HTMLhead($title = "RadioGaga")
{
?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <!-- Character encoding declaration -->
        <meta charset="UTF-8">
        <!-- Viewport for responsive design -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Author meta tag -->
        <meta name="Author" content="RadioGaga Alireza">
        <!-- Main stylesheet -->
        <link rel="stylesheet" href="CSS/styles.css">
        <!-- Page title -->
        <title><?php echo htmlspecialchars($title); ?></title>
    </head>
    <body>
<?php
}

// Outputs the navigation bar
function HTMLNav()
{
?>
        <!-- Header section with logo and navigation -->
        <header class="header">
            <!-- Logo with link to homepage -->
            <a href="index.php"><img src="IMG/Radio_Logo.png" alt="RadioGaga Logo" class="logo"></a>
            
            <!-- Main navigation menu -->
            <nav>
                <ul>
                    <!-- Home page link -->
                    <li><a href="index.php">Home</a></li>
                    <!-- Albums/Playlist page link -->
                    <li><a href="playlist.php">Albums</a></li>
                    <!-- Artists page link -->
                    <li><a href="artists.php">Artists</a></li>
                    <!-- Popular Artists page link -->
                    <li><a href="popular_artists.php">Popular Artists</a></li>
                    <!-- Contact page link -->
                    <li><a href="contact.php">Contact</a></li>
                </ul>
            </nav>
        </header>
<?php
}

/**
 * Outputs the HTML footer - closes the body and html tags
 * This function should be called at the end of every page
 */
function HTMLfoot()
{
?>
    <!-- Footer section -->
    <footer>
        <p>&copy; 2025 RadioGaga.</p>
    </footer>
    <!-- Close body tag -->
    </body>
    <!-- Close html tag -->
    </html>
<?php
}

?>