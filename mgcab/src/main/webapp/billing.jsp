<form action="bill" method="POST">
    Customer ID: <input type="text" name="cusidno" required><br>
    Customer Name: <input type="text" name="cusname" required><br>
    Customer Contact: <input type="text" name="cusconno" required><br>

    Vehicle Type: 
    <select name="vtype" id="vtype" onchange="updatePrice()" required>
        <option value="tuktuk">Tuktuk</option>
        <option value="car">Car</option>
        <option value="minivan">Minivan</option>
        <option value="van">Van</option>
        <option value="jeep">Jeep</option>
        <option value="cab">Cab</option>
        <option value="lorry">Lorry</option>
    </select><br>

    Vehicle Number: <input type="text" name="vno" required><br>
    Driver Name: <input type="text" name="dname" required><br>
    Driver Contact: <input type="text" name="dconno" required><br>
    Trip Start Date: <input type="date" name="tripstartdate" required><br>
    Trip End Date: <input type="date" name="tripenddate" required><br>

    Kilometers Run: <input type="number" name="kmsrun" id="kmsrun" required><br>
    
    Price per Kilometer: <input type="number" name="priceperkm" id="priceperkm" readonly required><br>

    <input type="submit" value="Generate Bill">
</form>

<script>
    function updatePrice() {
        const vehicleRates = {
            "tuktuk": 100,
            "car": 180,
            "minivan": 200,
            "van": 250,
            "jeep": 290,
            "cab": 350,
            "lorry": 400
        };
        
        let selectedVehicle = document.getElementById("vtype").value;
        document.getElementById("priceperkm").value = vehicleRates[selectedVehicle];
    }

    // Initialize price when page loads
    window.onload = updatePrice;
</script>