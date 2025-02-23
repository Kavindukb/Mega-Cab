<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow-sm">
                <div class="card-body">
                    <center>
                        <img src="images/1.jpg" class="card-img-top" alt="profile image" width="100px">
                        <h4 class="mt-3"><b>User Profile</b></h4>
                        <span>Account Status: Active</span>
                    </center>
                    <hr />

                    <form method="post" action="addvehicle">
                        <div class="mb-3">
                            <label class="form-label">Vehicle No</label>
                            <input type="text" class="form-control" name="vno" placeholder="Enter Vehicle No">
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">Vehicle Category</label>
                            <select class="form-control" name="vcat">
                                <option value="tuktuk">Tuktuk</option>
                                <option value="car">Car</option>
                                <option value="minivan">Minivan</option>
                                <option value="van">Van</option>
                                <option value="jeep">Jeep</option>
                                <option value="cab">Cab</option>
                                <option value="lorry">Lorry</option>
                            </select>
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">Vehicle Model</label>
                            <input type="text" class="form-control" name="vmodel" placeholder="Enter Vehicle Model">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Vehicle Brand</label>
                            <input type="text" class="form-control" name="vbrand" placeholder="Enter Vehicle Brand">
                        </div>
                         <div class="mb-3">
                            <label class="form-label">Vehicle Color</label>
                            <input type="text" class="form-control" name="vcolor" placeholder="Enter Vehicle Color">
                        </div>
                      
                        <div class="mb-3">
                            <label class="form-label">Vehicle Chassis No</label>
                            <input type="text" class="form-control" name="vchasi" placeholder="Enter Vehicle Chassis No">
                        </div>
                      

                        <div class="mb-3">
                            <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                    </form>
                    
                   
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
