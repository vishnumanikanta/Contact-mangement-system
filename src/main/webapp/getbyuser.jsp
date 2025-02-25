<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp"%>
<%@page import="employee.register"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Details</title>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-sm">
                    <div class="card-header text-center bg-info text-white">
                        <h4>Contact Details</h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Mobile Number</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                List<register> employees = (List<register>) request.getAttribute("employees");
                                if (employees != null && !employees.isEmpty()) {
                                    for (register emp : employees) {
                                %>
                                    <tr>
                                        <td><%= emp.getId() %></td>
                                        <td><%= emp.getName() %></td>
                                        <td><%= emp.getEmail() %></td>
                                        <td><%= emp.getPassword() %></td>
                                        <td><%= emp.getMobilenumber() %></td>
                                    </tr>
                                <%
                                    }
                                } else {
                                %>
                                    <tr>
                                        <td colspan="5" class="text-center">No employee found with the given email.</td>
                                    </tr>
                                <%
                                }
                                %>
                            </tbody>
                        </table>
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
