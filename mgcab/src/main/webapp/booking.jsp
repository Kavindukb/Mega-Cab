<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Booking System</title>
</head>
<body>
    <h2>Booking Form</h2>
    <form action="bookservlet" method="POST">
        <label for="bookingId">Booking ID:</label>
        <input type="text" id="bookingId" name="bookingId" required><br><br>

        <label for="vehicleId">Vehicle ID:</label>
        <input type="text" id="vehicleId" name="vehicleId" required><br><br>

        <label for="driverId">Driver ID:</label>
        <input type="text" id="driverId" name="driverId" required><br><br>

        <label for="customerId">Customer ID:</label>
        <input type="text" id="customerId" name="customerId" required><br><br>

        <label for="startLocation">Start Location:</label>
        <input type="text" id="startLocation" name="startLocation" required><br><br>

        <label for="endLocation">End Location:</label>
        <input type="text" id="endLocation" name="endLocation" required><br><br>

        <label for="fare">Fare:</label>
        <input type="number" id="fare" name="fare" required><br><br>

        <input type="submit" value="Book">
    </form>

    <h3>Current Bookings</h3>
    <!-- Display list of bookings here (can be retrieved from a service) -->
</body>
</html>
