<?php
/* ===================================
   RadioGaga - Contact page 
   Contact form for user inquiries
   =================================== */

// Include functions file for shared HTML components
require_once 'inc/functions.php';

// Output the HTML header with page title
HTMLhead("Contact Us - RadioGaga");

// Output the navigation bar
HTMLNav();
?>

    <!-- Main content section -->
    <div class="content">
        <!-- Page heading -->
        <h1>Contact Us</h1>
        
        <!-- Contact information and form section -->
        <p>Get in touch with us! We'd love to hear from you.</p>
        
        <!-- Contact form -->
        <form action="contact.php" method="post" class="contact-form">
            <!-- Name field -->
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <!-- Email field -->
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <!-- Message field -->
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            
            <!-- Submit button -->
            <button type="submit" class="btn">Send Message</button>
        </form>
        
        <!-- TODO: Add PHP processing for form submissions -->
    </div>
    
<?php
// Output the HTML footer
HTMLfoot();
?>