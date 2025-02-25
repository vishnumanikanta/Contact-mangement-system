<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Management System</title>
    <!-- Include Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Custom styles */
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar-custom {
            background-color: #007bff !important;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar-custom .navbar-brand, .navbar-custom .nav-link {
            color: #fff !important;
            font-weight: 500;
        }
        .navbar-custom .nav-link:hover {
            color: #d1e7ff !important;
        }
        .footer-custom {
            background-color: #343a40;
            color: #fff;
            padding: 20px 0;
            margin-top: 50px;
            text-align: center;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
        }
        .card-custom {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-radius: 15px;
            border: none;
            overflow: hidden;
            background: linear-gradient(135deg, #ffffff, #f1f3f5);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .card-custom:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }
        .card-header-custom {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 1.5rem;
            font-weight: 600;
        }
        .btn-custom {
            border-radius: 50px;
            padding: 10px 20px;
            font-weight: 500;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: #fff;
            border: none;
        }
        .btn-custom:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background: linear-gradient(135deg, #0056b3, #007bff);
        }
        .search-form {
            display: flex;
            align-items: center;
            gap: 10px;
            padding-top: 20px;
        }
        .search-form input {
            width: 350px;
            border-radius: 25px;
            border: 1px solid #ced4da;
            padding: 10px 15px;
            font-size: 14px;
            outline: none;
            transition: all 0.3s ease-in-out;
        }
        .search-form input:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        .search-form button {
            border-radius: 25px;
            padding: 10px 20px;
            font-weight: 500;
            background-color: #ffffff;
            border: 1px solid #007bff;
            color: #007bff;
            transition: all 0.3s ease-in-out;
        }
        .search-form button:hover {
            background-color: #007bff;
            color: white;
            transform: scale(1.05);
        }
        .action-card {
            margin-bottom: 20px;
        }
        .action-card .card-body {
            padding: 30px;
            text-align: center;
        }
        .action-card .card-title {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 15px;
        }
        .action-card .card-text {
            font-size: 0.95rem;
            color: #6c757d;
            margin-bottom: 20px;
        }
        .lead-text {
            font-size: 1.1rem;
            color: #495057;
            margin-bottom: 30px;
        }
        .container-main {
            margin-top: 30px;
            margin-bottom: 50px;
        }
        .card-icon {
            font-size: 3rem;
            color: #007bff;
            margin-bottom: 15px;
            transition: transform 0.3s ease;
        }
        .card-custom:hover .card-icon {
            transform: scale(1.1);
        }
        .card-custom:hover .btn-custom {
            background: linear-gradient(135deg, #0056b3, #007bff);
        }
    </style>
</head>
<body class="bg-light">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Contact Manager</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registration.jsp">Add Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="userdetails.jsp">View Contacts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="delete.jsp">Delete Contact</a>
                    </li>
                </ul>
                <form class="d-flex ms-auto search-form" action="getby" method="get">
                    <input type="text" id="email" name="email" class="form-control" placeholder="Enter Email" required>
                    <button type="submit" class="btn btn-light">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container container-main">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card shadow card-custom">
                    <div class="card-header card-header-custom">
                        <h2>Welcome to the Contact Management System</h2>
                    </div>
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <p class="lead-text">Manage your contacts efficiently with our system. Choose an action below to get started.</p>
                        </div>

                        <!-- Action Cards -->
                        <div class="row">
                            <div class="col-md-3 action-card">
                                <div class="card h-100 card-custom">
                                    <div class="card-body">
                                        <i class="fas fa-user-plus card-icon"></i>
                                        <h5 class="card-title">Add Contact</h5>
                                        <p class="card-text">Add a new contact to your address book.</p>
                                        <a href="registration.jsp" class="btn btn-primary btn-custom">Add Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 action-card">
                                <div class="card h-100 card-custom">
                                    <div class="card-body">
                                        <i class="fas fa-address-book card-icon"></i>
                                        <h5 class="card-title">View Contacts</h5>
                                        <p class="card-text">View all your saved contacts.</p>
                                        <a href="userdetails.jsp" class="btn btn-info btn-custom">View Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 action-card">
                                <div class="card h-100 card-custom">
                                    <div class="card-body">
                                        <i class="fas fa-search card-icon"></i>
                                        <h5 class="card-title">Search Contact</h5>
                                        <p class="card-text">Search for a specific contact.</p>
                                        <a href="input.jsp" class="btn btn-warning btn-custom">Search Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 action-card">
                                <div class="card h-100 card-custom">
                                    <div class="card-body">
                                        <i class="fas fa-trash-alt card-icon"></i>
                                        <h5 class="card-title">Delete Contact</h5>
                                        <p class="card-text">Delete an existing contact from your list.</p>
                                        <a href="delete.jsp" class="btn btn-danger btn-custom">Delete Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>