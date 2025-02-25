<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Get Contact Details</title>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-sm">
                    <div class="card-header text-center bg-primary text-white">
                        <h4>Get Contact Details</h4>
                    </div>
                    <div class="card-body">
                        <form action="getby" method="get">
                            <div class="mb-3">
                                <label for="email">Enter Email:</label>
                                <input type="text" id="email" name="email" class="form-control" placeholder="Enter Email" required>
                            </div>
                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary">Get Details</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="text-center mt-3">
                    <a href="home.jsp" class="btn btn-secondary">Back to Home</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
