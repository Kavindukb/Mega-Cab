<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Mega City Cab</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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

                    <!-- Login Form -->
                    <form method="post" action="log">
                        <div class="mb-3">
                            <label class="form-label">User Name</label>
                            <input type="text" class="form-control" name="username" placeholder="Enter User Name" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="pass" placeholder="Enter Password" required>
                        </div>

                        <!-- User Type Dropdown -->
                        <div class="mb-3">
                            <label class="form-label">Select User Type</label>
                            <select class="form-select" name="userType" required>
                                <option value="" disabled selected>Select User Type</option>
                                <option value="admin">Admin</option>
                                <option value="customer">Customer</option>
                                <option value="driver">Driver</option>
                            </select>
                        </div>

                        <!-- Action Buttons (Submit, Registration Links) -->
                        <div class="d-flex justify-content-between">
                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-danger">Submit</button>

                            <!-- Registration Buttons -->
                            <div>
                                <a href="regs.jsp" class="btn btn-primary">User Registration</a>
                                <a href="newdriver.jsp" class="btn btn-success">Driver Registration</a>
                                <a href="newvehicle.jsp" class="btn btn-warning">Vehicle Registration</a>
                            </div>
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
