<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="employee.register" %>
<%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white text-center">
                        <h2>Update Employee</h2>
                    </div>
                    <div class="card-body">
                        <%
                            register employee = (register) request.getAttribute("employee");
                            if (employee != null) {
                        %>
                        <form action="update" method="post">
                            <input type="hidden" name="id" value="<%= employee.getId() %>">

                            <div class="mb-3">
                                <label class="form-label">Name:</label>
                                <input type="text" class="form-control" name="name" value="<%= employee.getName() %>" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Email:</label>
                                <input type="email" class="form-control" name="email" value="<%= employee.getEmail() %>" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Password:</label>
                                <input type="password" class="form-control" name="password" value="<%= employee.getPassword() %>" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Mobile Number:</label>
                                <input type="number" class="form-control" name="mobilenumber" value="<%= employee.getMobilenumber() %>" required>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                        <%
                            } else {
                        %>
                        <p class="text-danger text-center">No employee data found.</p>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
