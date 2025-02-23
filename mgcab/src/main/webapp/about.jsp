<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Mega City Cab</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .about-header {
            background: #ff5722;
            color: white;
            text-align: center;
            padding: 40px 0;
        }
        .about-content {
            padding: 30px;
        }
        .about-content h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }
        .about-content p {
            font-size: 18px;
            line-height: 1.6;
        }
        .services-section {
            margin-top: 40px;
        }
        .services-section .service-card {
            border: 1px solid #ddd;
            margin: 15px 0;
            padding: 15px;
            border-radius: 8px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="about-header">
        <h1>About Mega City Cab</h1>
        <p>Your Reliable Ride in Colombo</p>
    </div>

    <!-- About Content Section -->
    <div class="about-content">
        <h2>Welcome to Mega City Cab</h2>
        <p>We are a leading cab service in Colombo City, offering comfortable and reliable rides to thousands of customers every month. Our mission is to provide the best cab service experience by focusing on customer satisfaction, ease of booking, and transparent billing.</p>

        <p>Our services cater to a wide range of customer needs, from daily commutes to special bookings for events. We are committed to providing timely services and ensuring the safety and comfort of our passengers.</p>

        <h3>Our Story</h3>
        <p>Mega City Cab has grown significantly over the years. Initially, we operated using manual systems to manage customer orders and details. However, as the demand for our services increased, we realized the need for a more efficient, computerized system. Our current system helps us manage customer bookings, calculate bills, and assign unique booking numbers for every transaction.</p>

        <p>Every new customer is registered in our system, where we capture vital information such as customer registration number, name, address, and NIC. This data allows us to streamline operations and ensure that our customers receive the best experience possible.</p>

        <h3>Our Services</h3>
        <div class="services-section">
            <div class="service-card">
                <h4>Customer Booking Management</h4>
                <p>Our system allows easy and efficient booking management, ensuring customers can book rides at their convenience. Every booking is assigned a unique number for tracking and managing customer orders.</p>
            </div>

            <div class="service-card">
                <h4>Transparent Billing</h4>
                <p>With our computerized system, we provide clear and accurate billing details, ensuring transparency in pricing. Customers receive itemized bills based on distance, time, and service type.</p>
            </div>

            <div class="service-card">
                <h4>Customer Registration</h4>
                <p>New customers are registered in our system, capturing essential details such as registration number, name, address, and NIC. This helps us maintain a smooth and efficient customer experience.</p>
            </div>

            <div class="service-card">
                <h4>Real-Time Booking Tracking</h4>
                <p>Our system provides real-time updates to customers on the status of their bookings, ensuring they are always informed about their ride's progress.</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center p-3">
        <p>&copy; 2025 Mega City Cab. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
