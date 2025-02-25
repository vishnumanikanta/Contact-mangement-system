
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp" %>

<html>
<head>
    <title>Error - Feedback Submission</title>
    <style>
        .error-message {
            text-align: center;
            margin-top: 50px;
            color: #dc3545;
        }
        .btn-back {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="error-message">
            <h1>Oops!</h1>
            <p>There was an issue submitting your feedback.</p>
            <p>Error Message: <%= request.getParameter("message") %></p>

            <!-- Button to go back to the feedback form or home -->
            <a href="feedbackform.jsp" class="btn btn-danger btn-back">Go Back to Feedback Form</a>
        </div>
    </div>
</body>
</html>
