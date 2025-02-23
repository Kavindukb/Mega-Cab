package bookservlet;

import model.book;
import service.booking;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/bookservlet")
public class bookservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handles the HTTP request to add/update/delete a booking
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String bookingId = request.getParameter("bookingId");
            String vehicleId = request.getParameter("vehicleId");
            String driverId = request.getParameter("driverId");
            String customerId = request.getParameter("customerId");
            Date bookingDate = new Date(); // Current date
            String startLocation = request.getParameter("startLocation");
            String endLocation = request.getParameter("endLocation");

            // Safe parsing of fare (ensure it's an integer before parsing)
            int fare = 0;
            try {
                fare = Integer.parseInt(request.getParameter("fare"));
            } catch (NumberFormatException e) {
                // Handle invalid fare input here (e.g., show an error message)
                response.getWriter().write("Invalid fare input.");
                return;  // Stop further processing if fare is invalid
            }

            book newBooking = new book();
            newBooking.setBookingId(bookingId);
            newBooking.setVehicleId(vehicleId);
            newBooking.setDriverId(driverId);
            newBooking.setCustomerId(customerId);
            newBooking.setBookingDate(bookingDate);
            newBooking.setStartLocation(startLocation);
            newBooking.setEndLocation(endLocation);
            newBooking.setFare(fare);

            booking bookingService = new booking();
            bookingService.addBooking(newBooking);

            response.sendRedirect("booking.jsp");  // Redirect to booking page
        } 
        else if ("update".equals(action)) {
            // Handle updating booking
            String bookingId = request.getParameter("bookingId");
            String vehicleId = request.getParameter("vehicleId");
            String driverId = request.getParameter("driverId");
            String startLocation = request.getParameter("startLocation");
            String endLocation = request.getParameter("endLocation");

            // Safe parsing of fare
            int fare = 0;
            try {
                fare = Integer.parseInt(request.getParameter("fare"));
            } catch (NumberFormatException e) {
                response.getWriter().write("Invalid fare input.");
                return;  // Stop further processing if fare is invalid
            }

            book updatedBooking = new book();
            updatedBooking.setBookingId(bookingId);
            updatedBooking.setVehicleId(vehicleId);
            updatedBooking.setDriverId(driverId);
            updatedBooking.setStartLocation(startLocation);
            updatedBooking.setEndLocation(endLocation);
            updatedBooking.setFare(fare);

            booking bookingService = new booking();
            boolean result = bookingService.updateBooking(updatedBooking);

            if (result) {
                response.sendRedirect("booking.jsp");  // Redirect to booking page on success
            } else {
                response.getWriter().write("Failed to update the booking.");
            }
        } 
        else if ("delete".equals(action)) {
            // Handle deleting booking
            String bookingId = request.getParameter("bookingId");

            booking bookingService = new booking();
            boolean result = bookingService.deleteBooking(bookingId);

            if (result) {
                response.sendRedirect("booking.jsp");  // Redirect to booking page on success
            } else {
                response.getWriter().write("Failed to delete the booking.");
            }
        }
    }

    // Optionally, you can handle the GET requests here if needed
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // You can implement GET handling if necessary for fetching booking details or listing bookings
    }
}
