package service;

import model.Bill;

public class BillService {

    // Generate a Bill object using provided details
    public Bill generateBill(String cusidno, String cusname, String cusconno, String vtype, 
                             String vehicleNo, String driverName, String driverContact, 
                             String tripstartdate, String tripenddate, int kmsrun, int priceperkm) {

        // Create Bill object using the constructor
        Bill bill = new Bill(cusidno, cusname, cusconno, vtype, vehicleNo, driverName, driverContact, 
                             tripstartdate, tripenddate, kmsrun, priceperkm);

        // No need to calculate the total amount separately, as it's handled in the Bill constructor
        return bill;
    }
}