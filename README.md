# 🎵 RadioGaga - Music Streaming Platform

[![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://www.php.net/)
[![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://html.spec.whatwg.org/)
[![CSS](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://www.w3.org/Style/CSS/)

> A modern web application for streaming music, featuring hip-hop tracks, artist profiles, and curated playlists. Built with PHP and MySQL.

---

## ✨ Features

- 🎧 **Music Streaming** - Listen to curated playlists with integrated audio players
- 🎬 **Video Integration** - Watch music videos directly on the platform via YouTube embeds
- �‍🎤 **Artist Profiles** - Explore detailed artist biographies and their top tracks
- 📊 **Popular Artists Database** - Browse 100+ popular artists across multiple genres
- 📝 **Contact System** - Get in touch with personalized thank you messages
- 🎨 **Luxury UI** - Premium gold and black theme with smooth animations
- 📱 **Responsive Design** - Optimized for desktop, tablet, and mobile devices

---

## � Tech Stack

**Frontend:**
- HTML5 (Semantic markup)
- CSS3 (Flexbox, Grid, Gradients, Animations)
- JavaScript (Audio/Video integration)

**Backend:**
- PHP (Server-side logic)
- MySQL (Database management)

**Development:**
- XAMPP (Local development environment)
- Git (Version control)

---

## � Screenshots

### Home Page
Beautiful landing page with featured albums

### Playlist View
Interactive music player with YouTube video embeds and track information

### Artists Gallery
Detailed artist profiles with biographies and top songs

### Popular Artists
Zebra-striped table showcasing 100+ artists with Wikipedia and YouTube links

---

## �️ Installation

### Prerequisites
- XAMPP (or similar PHP/MySQL environment)
- Web browser (Chrome, Firefox, Edge, Safari)
- Git (optional, for cloning)

### Setup Instructions

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/RadioGaga.git
```

2. **Move to XAMPP directory**
```bash
# Windows
move RadioGaga C:\xampp\htdocs\

# Mac/Linux
mv RadioGaga /Applications/XAMPP/htdocs/
```

3. **Import Database**
- Open phpMyAdmin: `http://localhost/phpmyadmin`
- Create database named `radio`
- Import SQL files in order:
  1. `Data/radio.sql`
  2. `Data/navigation_update.sql`
  3. `Data/artists_table.sql`
  4. `Data/popular_artists.sql`

4. **Start XAMPP**
- Start Apache server
- Start MySQL server

5. **Access the application**
```
http://localhost/RadioGaga/
```

---

## � Project Structure

```
RadioGaga/
├── index.php              # Home page
├── playlist.php           # Album/playlist viewer
├── artists.php            # Featured artists
├── popular_artists.php    # Popular artists table
├── contact.php            # Contact form
├── CSS/
│   └── styles.css        # Main stylesheet
├── IMG/                   # Images and logos
├── audio/                 # Audio files
├── inc/
│   └── functions.php     # Shared PHP functions
└── Data/                  # Database SQL files
```

---

## 🎨 Features Overview

### Music Playback
- HTML5 audio players for each track
- Embedded YouTube videos
- Track duration display
- Song biographies

### Database-Driven
- Dynamic navigation from database
- Artist information from MySQL
- Popular artists table (100+ entries)
- Album and track management

### UI/UX
- Premium gold and black color scheme
- Smooth hover effects and transitions
- Responsive grid layouts
- Zebra-striped tables for readability
- Form validation and feedback

---

## 🔧 Configuration

### Database Connection
Edit connection details in PHP files if needed:
```php
$conn = mysqli_connect("localhost", "root", "", "radio");
```

### Customization
- **Colors**: Modify `CSS/styles.css` for theme changes
- **Logo**: Replace `IMG/Radio_Logo.png`
- **Content**: Update database tables via phpMyAdmin

---

## 📊 Database Schema

### Main Tables
- `albums` - Album information and cover images
- `tracks` - Individual tracks with audio files and videos
- `artists` - Featured artist profiles
- `popular_artists` - Extended artist database
- `navigation` - Dynamic menu items

---

## 🌟 Highlights

- **Semantic HTML5** markup for better SEO
- **Responsive design** works on all devices
- **Security features** including `htmlspecialchars()` for XSS prevention
- **Clean code** with comprehensive comments
- **Modern CSS** with gradients, shadows, and animations
- **Database-driven** navigation and content

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

---

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

---

## 👨‍💻 Developer

**Alireza Oftadeh**

- GitHub: [@yourusername](https://github.com/yourusername)
- LinkedIn: [Your LinkedIn](https://linkedin.com/in/yourprofile)

---

## 🙏 Acknowledgments

- Music metadata from Wikipedia
- YouTube API for video embeds
- Icons and graphics from various sources
- Inspiration from modern music streaming platforms

---

**Made with ❤️ and lots of ☕**

🎵 *Enjoy the music!* 🎵d