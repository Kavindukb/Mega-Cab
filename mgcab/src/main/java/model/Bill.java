package model;

public class Bill {
    private String cusidno;
    private String cusname;
    private String cusconno;
    private String vtype;
    private String vno;
    private String dname;
    private String dconno;
    private String tripstartdate;
    private String tripenddate;
    private int kmsrun;
    private int pricePerKm;
    private int totalAmount;

    // Constructor to initialize all fields
    public Bill(String cusidno, String cusname, String cusconno, String vtype, String vno, 
                String dname, String dconno, String tripstartdate, String tripenddate, 
                int kmsrun, int pricePerKm) {
        this.cusidno = cusidno;
        this.cusname = cusname;
        this.cusconno = cusconno;
        this.vtype = vtype;
        this.vno = vno;
        this.dname = dname;
        this.dconno = dconno;
        this.tripstartdate = tripstartdate;
        this.tripenddate = tripenddate;
        this.kmsrun = kmsrun;
        this.pricePerKm = pricePerKm;

        // Calculate the total amount during initialization
        this.totalAmount = kmsrun * pricePerKm;
    }

    // Getter and Setter methods for all the fields
    public String getCusidno() {
        return cusidno;
    }

    public void setCusidno(String cusidno) {
        this.cusidno = cusidno;
    }

    public String getCusname() {
        return cusname;
    }

    public void setCusname(String cusname) {
        this.cusname = cusname;
    }

    public String getCusconno() {
        return cusconno;
    }

    public void setCusconno(String cusconno) {
        this.cusconno = cusconno;
    }

    public String getVtype() {
        return vtype;
    }

    public void setVtype(String vtype) {
        this.vtype = vtype;
    }

    public String getVno() {
        return vno;
    }

    public void setVno(String vno) {
        this.vno = vno;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getDconno() {
        return dconno;
    }

    public void setDconno(String dconno) {
        this.dconno = dconno;
    }

    public String getTripstartdate() {
        return tripstartdate;
    }

    public void setTripstartdate(String tripstartdate) {
        this.tripstartdate = tripstartdate;
    }

    public String getTripenddate() {
        return tripenddate;
    }

    public void setTripenddate(String tripenddate) {
        this.tripenddate = tripenddate;
    }

    public int getKmsrun() {
        return kmsrun;
    }

    public void setKmsrun(int kmsrun) {
        this.kmsrun = kmsrun;
    }

    public int getPricePerKm() {
        return pricePerKm;
    }

    public void setPricePerKm(int pricePerKm) {
        this.pricePerKm = pricePerKm;
    }

    public int getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(int totalAmount) {
        this.totalAmount = totalAmount;
    }
}
