package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.book;
import controller.database;

public class booking {

    // Add a new booking
    public void addBooking(book booking) {
        String query = "INSERT INTO bookings (bookingId, vehicleId, driverId, customerId, bookingDate, startLocation, endLocation, fare) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        
        // Using try-with-resources to ensure proper closing of resources
        try (Connection con = database.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
             
            ps.setString(1, booking.getBookingId());
            ps.setString(2, booking.getVehicleId());
            ps.setString(3, booking.getDriverId());
            ps.setString(4, booking.getCustomerId());
            ps.setDate(5, new java.sql.Date(booking.getBookingDate().getTime()));
            ps.setString(6, booking.getStartLocation());
            ps.setString(7, booking.getEndLocation());
            ps.setDouble(8, booking.getFare());
            
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();  // Ideally, log the exception using a logger
        }
    }
    
    // Update booking details
    public boolean updateBooking(book booking) {
        String query = "UPDATE bookings SET vehicleId = ?, driverId = ?, startLocation = ?, endLocation = ?, fare = ? WHERE bookingId = ?";
        
        // Using try-with-resources to ensure proper closing of resources
        try (Connection con = database.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
             
            ps.setString(1, booking.getVehicleId());
            ps.setString(2, booking.getDriverId());
            ps.setString(3, booking.getStartLocation());
            ps.setString(4, booking.getEndLocation());
            ps.setDouble(5, booking.getFare());
            ps.setString(6, booking.getBookingId());
            
            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();  // Ideally, log the exception using a logger
            return false;
        }
    }

    // Delete booking
    public boolean deleteBooking(String bookingId) {
        String query = "DELETE FROM bookings WHERE bookingId = ?";
        
        // Using try-with-resources to ensure proper closing of resources
        try (Connection con = database.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
             
            ps.setString(1, bookingId);
            int rowsDeleted = ps.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            e.printStackTrace();  // Ideally, log the exception using a logger
            return false;
        }
    }
}
