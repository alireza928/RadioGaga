# 🎵 RadioGaga - Dynamic Music Playlist Website

A modern, full-stack multimedia website built with PHP, MySQL, HTML5, and CSS3. RadioGaga showcases dynamic music playlists with integrated audio players and video content.

![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)

---

## ✨ Features

- 🎸 **Dynamic Album System** - Browse multiple music albums with seamless navigation
- 🎧 **HTML5 Audio Player** - Play tracks directly in browser with native controls
- 🎬 **Video Integration** - Watch music videos embedded for each album
- 💾 **MySQL Database** - All album and track information dynamically retrieved
- 🎨 **Responsive Design** - Sleek black, grey, and gold color scheme
- 📱 **Mobile Friendly** - Fully responsive layout for all devices

---

## 🛠️ Technologies Used

**Frontend:**
- HTML5
- CSS3 (custom styling with gradients and animations)

**Backend:**
- PHP 7+
- MySQL

**Multimedia:**
- HTML5 `<audio>` tag
- Embedded video (YouTube/Vimeo)

---

## 📂 Project Structure
```
radiogaga/
│
├── index.php              # Homepage/landing page
├── playlist.php           # Dynamic playlist page
│
├── css/
│   └── main.css          # Main stylesheet
│
├── inc/
│   └── functions.php     # Reusable PHP functions
│
├── IMG/                  # Album cover images
│
└── audio/                # Audio files
```

---

## 🚀 Getting Started

### Prerequisites

- PHP 7.0 or higher
- MySQL 5.7 or higher
- Local server (XAMPP, WAMP, MAMP, or similar)

### Installation

1. **Clone the repository**
```bash
   git clone https://github.com/yourusername/radiogaga.git
   cd radiogaga
```

2. **Create the database**
```sql
   CREATE DATABASE radio;
```

3. **Import database schema**
   - Import your SQL file with albums and tracks tables

4. **Configure database connection**
   - Edit `playlist.php` with your database credentials
```php
   $conn = mysqli_connect("localhost", "your_user", "your_password", "radio");
```

5. **Place your media files**
   - Add album cover images to `/IMG/`
   - Add audio files to `/audio/`

6. **Run the application**
   - Start your local server
   - Navigate to `http://localhost/radiogaga/`

---

## 💡 How It Works

### Dynamic Album Switching
```php
// Albums are accessed via URL parameters
playlist.php?album=1  // Album 1
playlist.php?album=2  // Album 2
playlist.php?album=3  // Album 3
```

### Database Structure
```sql
-- Albums table
albums (album_id, name, image, video)

-- Tracks table
tracks (track_id, album_id, name, duration, audio_file, video, bio)
```

---

## 🎨 Design Highlights

- **Color Scheme:** Luxurious black, grey, and gold palette
- **Animations:** Smooth hover effects and transitions
- **Layout:** Clean table layout for track listings
- **Navigation:** Sticky header with logo and menu
- **Typography:** Modern, readable fonts

---

## 🎓 Learning Objectives

This project demonstrates proficiency in:

✅ PHP superglobals (`$_GET`, `$_POST`, `$_SERVER`)  
✅ MySQL database queries and data retrieval  
✅ HTML5 multimedia elements  
✅ Responsive CSS design  
✅ MVC-style code organization  
✅ Dynamic content generation  

---

## 📸 Screenshots

*(Add screenshots here)*

### Homepage
![Homepage Preview](#)

### Playlist Page
![Playlist Preview](#)

---

## 🔮 Future Improvements

- [ ] User authentication system
- [ ] Playlist creation and management
- [ ] Search functionality
- [ ] Like/favorite tracks
- [ ] Admin panel for content management
- [ ] API integration for streaming services

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Your Name**

- GitHub: [@alireza928](https://github.com/alireza928)
---

## 🙏 Acknowledgments

- Built as part of a web development course
- Inspired by modern music streaming platforms
- Queen's "Radio Ga Ga" for the project name inspiration

---

⭐ **Star this repo if you found it helpful!**