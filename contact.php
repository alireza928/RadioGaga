<?php
// Contact pagina met formulier
require_once 'inc/functions.php';

// Check of formulier is verstuurd
$formSubmitted = false;
$firstName = '';
$lastName = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $firstName = htmlspecialchars($_POST['first_name']);
    $lastName = htmlspecialchars($_POST['last_name']);
    $formSubmitted = true;
}

HTMLhead("Contact Us - RadioGaga");
HTMLNav();
?>

    <div class="content">
        <h1>Contact Us</h1>
        
        <?php if ($formSubmitted) { ?>
            <!-- Bedankt bericht -->
            <div class="thank-you-message">
                <h2>✅ Thank you <?php echo $firstName . ' ' . $lastName; ?> for contacting RadioGaga!</h2>
                <p>We will get back to you as soon as possible.</p>
                <br>
                <a href="contact.php" class="btn">Send Another Message</a>
            </div>
        <?php } else { ?>
            <!-- Contact formulier -->
            <p>Neem contact met ons op via onderstaand formulier.</p>
            
            <form action="contact.php" method="POST" class="contact-form">
                
                <div class="form-group">
                    <label for="first_name">First Name: <span class="required">*</span></label>
                    <input type="text" id="first_name" name="first_name" placeholder="Enter your first name" required>
                </div>
                
                <div class="form-group">
                    <label for="last_name">Last Name: <span class="required">*</span></label>
                    <input type="text" id="last_name" name="last_name" placeholder="Enter your last name" required>
                </div>
                
                <div class="form-group">
                    <label for="contact_info">Email or Phone:</label>
                    <input type="text" id="contact_info" name="contact_info" placeholder="your.email@example.com or +31 6 12345678">
                </div>
                
                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="6" placeholder="Write your message here..."></textarea>
                </div>
                
                <div class="form-buttons">
                    <button type="submit" class="btn btn-submit">Submit</button>
                    <button type="reset" class="btn btn-reset">Reset</button>
                </div>
                
            </form>
        <?php } ?>
        
    </div>
    
<?php
HTMLfoot();
?>