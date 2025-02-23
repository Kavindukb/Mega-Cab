<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mega City Cab - Home</title>
    
    <!-- Bootstrap for Responsiveness -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        /* General Styling */
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        /* Header */
        .header {
            background: linear-gradient(to right, #ff9800, #ff5722);
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 26px;
            font-weight: bold;
        }

        /* Navigation Bar */
        .navbar {
            background: #333;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            font-size: 18px;
            transition: 0.3s;
        }

        .navbar a:hover {
            background: #ff5722;
            border-radius: 5px;
        }

        /* Search Bar */
        .search-bar {
            display: flex;
            align-items: center;
        }

        .search-bar input {
            padding: 5px;
            border: none;
            border-radius: 5px;
            width: 200px;
        }

        .search-bar button {
            background: #ff9800;
            border: none;
            padding: 6px 10px;
            margin-left: 5px;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

        .search-bar button:hover {
            background: #ff5722;
        }

        /* Signup & Login Buttons */
        .auth-buttons {
            display: flex;
            gap: 10px;
        }

        .auth-buttons a {
            background: #28a745;
            padding: 7px 12px;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
        }

        .auth-buttons a:hover {
            background: #218838;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 50px;
            background-image: url("images/home_banner.jpg"); /* Change to your actual image */
            background-size: cover;
            background-position: center;
            color: white;
            height: 400px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            animation: fadeIn 2s ease-in-out;
        }

        .hero h1 {
            font-size: 50px;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.6);
        }
 
        .hero p {
            font-size: 22px;
            margin-top: 10px;
        }

        /* Booking Section */
        .booking-section, .cart-section {
            text-align: center;
            padding: 30px;
            background: #ffedd5;
        }

        .btn-book, .btn-cart {
            background: #ff5722;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 18px;
            transition: 0.3s;
        }

        .btn-book:hover, .btn-cart:hover {
            background: #ff9800;
        }

        /* Footer */
        .footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 30px;
        }

        .footer .social-icons a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
            font-size: 20px;
        }

        .footer .social-icons a:hover {
            color: #ff9800;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        Welcome to Mega City Cab 🚖
    </div>

    <!-- Navigation Bar -->
    <div class="navbar">
        <div>
            <a href="home.jsp">Home</a>
            <a href="booking.jsp">Bookings</a>
            <a href="about.jsp">About Us</a>
            <a href="help.jsp">Help</a>
        </div>
        <div class="search-bar">
            <input type="text" id="searchBox" placeholder="Search for rides...">
            <button onclick="searchFunction()">🔍</button>
        </div>
        <div class="auth-buttons">
            <a href="regs.jsp">Sign Up</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        
        
        
        
    </div>

    <!-- Booking Section -->
    <div class="booking-section">
        <h2>Book a Ride Now!</h2>
        <p>Fast and easy cab booking at your fingertips.</p>
        <a href="booking.jsp" class="btn-book">Book a Ride</a>
    </div>

    <!-- Add to Cart Section -->
    <div class="cart-section">
        <h2>Add Your Favorite Rides to Cart!</h2>
        <p>Save your preferred bookings and checkout later.</p>
        <a href="cart.jsp" class="btn-cart">🛒 Add to Cart</a>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Mega City Cab. All Rights Reserved.</p>
        <div class="social-icons">
            <a href="#"><i class="fab fa-facebook"></i> Facebook</a>
            <a href="#"><i class="fab fa-twitter"></i> Twitter</a>
            <a href="#"><i class="fab fa-instagram"></i> Instagram</a>
        </div>
    </div>

    <!-- Background Music -->
    <audio id="bgMusic" loop>
        <source src="${pageContext.request.contextPath}/music/background_music.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>

    <script>
        // Play background music after user interaction (click anywhere on the page)
        document.body.addEventListener('click', function () {
            let audio = document.getElementById("bgMusic");
            let playPromise = audio.play();
            
            if (playPromise !== undefined) {
                playPromise.catch(() => {
                    console.log("Autoplay blocked. Play after user interaction.");
                });
            }
        });

        function searchFunction() {
            let query = document.getElementById('searchBox').value;
            if (query) {
                alert("Searching for: " + query);
            } else {
                alert("Please enter a search term.");
            }
        }
    </script>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
