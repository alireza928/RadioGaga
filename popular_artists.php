<?php
/* ===================================
   RadioGaga - Popular Artists page 
   Showcases the most popular artists
   =================================== */

// Include functions file for shared HTML components
require_once 'inc/functions.php';

// Output the HTML header with page title
HTMLhead("Popular Artists - RadioGaga");

// Output the navigation bar
HTMLNav();
?>

    <!-- Main content section -->
    <div class="content">
        <!-- Page heading -->
        <h1>Popular Artists</h1>
        
        <!-- Popular artists showcase will be implemented here -->
        <p>Discover our most popular and trending artists.</p>
        
        <!-- TODO: Add database integration to display popular artists based on plays/ratings -->
    </div>
    
<?php
// Output the HTML footer
HTMLfoot();
?>