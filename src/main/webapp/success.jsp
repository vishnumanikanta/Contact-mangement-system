<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp" %>

<html>
<head>
    <title>Feedback Submitted Successfully</title>
    <style>
        .confirmation-message {
            text-align: center;
            margin-top: 50px;
        }
        .confirmation-message h1 {
            color: #28a745;
        }
        .btn-back {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="confirmation-message">
            <h1>Thank You!</h1>
            <p>Your contact has been successfully submitted.</p>
            

            <!-- Button to go back to the main page or feedback form -->
            <a href="home.jsp" class="btn btn-primary btn-back">Go Back to Home</a>
        </div>
    </div>
</body>
</html>
