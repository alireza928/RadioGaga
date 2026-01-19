<?php
/* ===================================
   RadioGaga - Artists page 
   Lists all artists in the database
   =================================== */

// Include functions file for shared HTML components
require_once 'inc/functions.php';

// Output the HTML header with page title
HTMLhead("Artists - RadioGaga");

// Output the navigation bar
HTMLNav();
?>

    <!-- Main content section -->
    <div class="content">
        <!-- Page heading -->
        <h1>Artists</h1>
        
        <!-- Artist listing will be implemented here -->
        <p>Browse our collection of talented artists.</p>
        
        <!-- TODO: Add database integration to display artist list -->
    </div>
    
<?php
// Output the HTML footer
HTMLfoot();
?>