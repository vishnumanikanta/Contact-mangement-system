<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
    body {
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .form-container {
        max-width: 800px;
        padding: 50px;
        background: white;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        border-radius: 12px;
        width: 100%;
    }
    .form-container h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
        font-size: 24px;
    }
    .form-group {
        display: flex;
        flex-direction: column;
        margin-bottom: 20px;
    }
    .form-group label {
        font-weight: bold;
        margin-bottom: 8px;
        font-size: 16px;
    }
    .form-control {
        border-radius: 8px;
        padding: 14px;
        font-size: 18px;
        width: 100%;
    }
    .form-control:focus {
        box-shadow: none;
        border-color: #764ba2;
    }
    .btn-primary {
        background: #764ba2;
        border: none;
        padding: 16px;
        border-radius: 8px;
        font-size: 18px;
        font-weight: bold;
        width: 100%;
    }
    .btn-primary:hover {
        background: #5a3b87;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h2>ADD Contact Here</h2>
        <form action="register" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
            </div>
            <div class="form-group">
                <label for="mobilenumber">Mobile Number</label>
                <input type="tel" class="form-control" id="mobilenumber" placeholder="Enter number" name="mobilenumber" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
