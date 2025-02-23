package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Bill;
import service.BillService;

@WebServlet("/bill")
public class BillServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BillService billService = new BillService();

    // Handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve parameters from the request
            String cusidno = request.getParameter("cusidno");
            String cusname = request.getParameter("cusname");
            String cusconno = request.getParameter("cusconno");
            String vtype = request.getParameter("vtype");
            String vno = request.getParameter("vno");
            String dname = request.getParameter("dname");
            String dconno = request.getParameter("dconno");
            String tripstartdate = request.getParameter("tripstartdate");
            String tripenddate = request.getParameter("tripenddate");
            String kmsrunStr = request.getParameter("kmsrun");

            // Validate required parameters
            if (isNullOrEmpty(cusidno, cusname, cusconno, vtype, vno, dname, dconno, tripstartdate, tripenddate, kmsrunStr)) {
                response.getWriter().write("Error: Missing required fields.");
                return;
            }

            // Convert kilometers run to integer
            int kmsrun;
            try {
                kmsrun = Integer.parseInt(kmsrunStr);
                if (kmsrun <= 0) {
                    response.getWriter().write("Error: Kilometers run must be a positive number.");
                    return;
                }
            } catch (NumberFormatException e) {
                response.getWriter().write("Error: Invalid value for kilometers run.");
                return;
            }

            // Get the predefined rate per kilometer based on vehicle type
            int priceperkm = getPricePerKm(vtype);
            if (priceperkm == 0) {
                response.getWriter().write("Error: Invalid vehicle type.");
                return;
            }

            // Generate Bill using BillService
            Bill bill = billService.generateBill(cusidno, cusname, cusconno, vtype, vno, dname, dconno, tripstartdate, tripenddate, kmsrun, priceperkm);

            if (bill != null) {
                HttpSession session = request.getSession();
                session.setAttribute("bill", bill);

                // Generate the text file for the bill
                generateBillFile(bill);

                // Send response for download
                response.setContentType("text/plain");
                response.setHeader("Content-Disposition", "attachment; filename=MegaCab_Bill.txt");

                PrintWriter out = response.getWriter();
                out.write(getBillText(bill));
                out.flush();
                out.close();
            } else {
                response.getWriter().write("Error generating bill. Please try again.");
            }
        } catch (Exception e) {
            response.getWriter().write("Unexpected error occurred. Check logs for details.");
            e.printStackTrace();
        }
    }

    // Method to get price per kilometer based on vehicle type
    private int getPricePerKm(String vtype) {
        if (vtype == null) return 0;
        
        switch (vtype.toLowerCase()) {
            case "tuktuk": return 100;
            case "car": return 180;
            case "minivan": return 200;
            case "van": return 250;
            case "jeep": return 290;
            case "cab": return 350;
            case "lorry": return 400;
            default: return 0; // Invalid vehicle type
        }
    }

    // Generate a formatted bill as a text file
    private void generateBillFile(Bill bill) throws IOException {
        File billFile = new File("MegaCab_Bill.txt");

        try (FileWriter writer = new FileWriter(billFile)) {
            writer.write(getBillText(bill));
        }
    }

    // Generate a nicely formatted text for the bill
    private String getBillText(Bill bill) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String billDate = dateFormat.format(new Date());

        String LINE = "==========================================\n";

        return LINE +
               "           MEGA CITY CAB SERVICES        \n" +
               LINE +
               "  Address  : 123, Main Street, Colombo   \n" +
               "  Contact  : 011-5205201                 \n" +
               "  Bill Date: " + billDate + "\n" +
               LINE +
               "  Customer ID   : " + bill.getCusidno() + "\n" +
               "  Customer Name : " + bill.getCusname() + "\n" +
               "  Contact No.   : " + bill.getCusconno() + "\n" +
               LINE +
               "  Vehicle Type  : " + bill.getVtype() + "\n" +
               "  Vehicle No.   : " + bill.getVno() + "\n" +
               LINE +
               "  Driver Name   : " + bill.getDname() + "\n" +
               "  Driver Contact: " + bill.getDconno() + "\n" +
               LINE +
               "  Trip Start    : " + bill.getTripstartdate() + "\n" +
               "  Trip End      : " + bill.getTripenddate() + "\n" +
               "  Distance      : " + bill.getKmsrun() + " km\n" +
               "  Rate per KM   : Rs. " + bill.getPricePerKm() + "\n" +   // Updated this line
               "  Total Amount  : Rs. " + bill.getTotalAmount() + "\n" +   // Updated this line
               LINE +
               "    Thank you for choosing Mega City Cab! \n" +
               LINE;
    }

    // Utility method to check if any string is null or empty
    private boolean isNullOrEmpty(String... values) {
        for (String value : values) {
            if (value == null || value.trim().isEmpty()) {
                return true;
            }
        }
        return false;
    }
}
