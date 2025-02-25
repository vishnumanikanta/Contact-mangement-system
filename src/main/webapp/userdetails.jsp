<%@page import="employee.register"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.boot.MetadataSources"%>
<%@page import="org.hibernate.boot.Metadata"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistry"%>
<%@ include file="bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Records</title>
</head>
<body class="bg-light">

    
    <!-- Employee Table Container -->
    <div class="container mt-5">
        <div class="card shadow">
            <div class="card-header bg-primary text-white text-center">
                <h2>Contact Records</h2>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped">
                        <thead class="table-dark">
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Mobile Number</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
                            Metadata md = new MetadataSources(ssr).getMetadataBuilder().build();
                            SessionFactory sf = md.buildSessionFactory();
                            Session s = sf.openSession();
                            Transaction t = s.beginTransaction();

                            List<register> li = s.createQuery("from register", register.class).list();

                            for (register r : li) {
                            %>
                            <tr>
                                <td><%= r.getId() %></td>
                                <td><%= r.getName() %></td>
                                <td><%= r.getEmail() %></td>
                                <td><%= r.getPassword() %></td>
                                <td><%= r.getMobilenumber() %></td>
                                <td>
                                    <div class="d-flex gap-2">
                                        <form action="update" method="get">
                                            <input type="hidden" name="email" value="<%= r.getEmail() %>">
                                            <button type="submit" class="btn btn-sm btn-primary">Update</button>
                                        </form>
                                        <form action="delete" method="get">
                                            <input type="hidden" name="email" value="<%= r.getEmail() %>">
                                            <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                            <%
                            }
                            t.commit();
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    

</body>
</html>
