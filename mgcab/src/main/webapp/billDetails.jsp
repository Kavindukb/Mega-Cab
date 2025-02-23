<%@ page import="model.Bill" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bill Details</title>
</head>
<body>
<%
    Bill bill = (Bill) session.getAttribute("bill");
    if (bill != null) {
%>
    <h2>Billing Details</h2>
    <p><strong>Customer Name:</strong> <%= bill.getCusname() %></p>
    <p><strong>Vehicle Type:</strong> <%= bill.getVtype() %></p>
    <p><strong>Distance:</strong> <%= bill.getKmsrun() %> km</p>
    <p><strong>Total Amount:</strong> Rs. <%= bill.getTotalAmount() %></p>
    
    <a href="bill" download="MegaCab_Bill.txt">
        <button type="button">Download Bill as TXT</button>
    </a>
<%
    } else {
%>
    <p style="color:red;">Error: No billing data found.</p>
<%
    }
%>
</body>
</html>