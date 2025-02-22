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

                    <form method="post" action="adddriver">
                        <div class="mb-3">
                            <label class="form-label">Driver ID</label>
                            <input type="text" class="form-control" name="drid" placeholder="Enter Your ID">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Name</label>
                            <input type="text" class="form-control" name="dname" placeholder="Enter Your Name">
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">Driver Address</label>
                            <input type="text" class="form-control" name="daddress" placeholder="Enter Your Address">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Contact No</label>
                            <input type="number" class="form-control" name="dtpno" placeholder="Enter Your Contact No">
                        </div>
                         <div class="mb-3">
                            <label class="form-label">Driver NIC No</label>
                            <input type="number" class="form-control" name="dnic" placeholder="Enter Your NIC No">
                        </div>
                      
                        <div class="mb-3">
                            <label class="form-label">Driver Licence No</label>
                            <input type="text" class="form-control" name="dlno" placeholder="Enter User Licence No">
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