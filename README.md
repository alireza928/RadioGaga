#🎵 RadioGaga - Dynamic Music Playlist Website
A modern, full-stack multimedia website built with PHP, MySQL, HTML5, and CSS3. RadioGaga showcases dynamic music playlists with integrated audio players and video content.
✨ Features

🎸 Dynamic Album System - Browse through multiple music albums with seamless navigation
🎧 HTML5 Audio Player - Play tracks directly in the browser with native audio controls
🎬 Video Integration - Watch music videos embedded for each album
💾 MySQL Database - All album and track information stored and retrieved from database
🎨 Responsive Design - Sleek black, grey, and gold color scheme with smooth hover effects
📱 Mobile Friendly - Fully responsive layout that works on all devices
🔄 PHP Dynamic Pages - Uses $_GET parameters to switch between albums dynamically

🛠️ Technologies Used

Frontend: HTML5, CSS3 (custom styling with gradients and animations)
Backend: PHP 7+
Database: MySQL
Audio: HTML5 <audio> tag
Video: Embedded iframes (YouTube/other platforms)

📂 Project Structure
radiogaga/
├── index.php           # Homepage/landing page
├── playlist.php        # Dynamic playlist page
├── css/
│   └── main.css       # Main stylesheet
├── inc/
│   └── functions.php  # Reusable PHP functions
├── IMG/               # Album cover images
└── audio/             # Audio files
🎯 Key Functionalities

Album Navigation: Switch between albums using URL parameters (?album=1)
Track Display: Each album shows 3 tracks minimum with name, duration, and playable audio
Database Integration: Fetches album and track data dynamically from MySQL
Clean UI: Professional navigation with logo, hover effects, and consistent design

🎓 Learning Objectives
This project demonstrates proficiency in:

PHP superglobals ($_GET, $_POST)
MySQL database queries and data retrieval
HTML5 multimedia elements
Responsive CSS design
MVC-style code organization

🚀 Setup Instructions

Clone the repository
Import the database schema (create radio database)
Configure database connection in playlist.php
Place audio files in the appropriate directory
Run on local server (XAMPP, WAMP, or similar)

🎨 Design Highlights

Luxurious black, grey, and gold color palette
Smooth animations and hover effects
Clean table layout for track listings
Sticky navigation header
Shadow effects and rounded corners