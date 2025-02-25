package employee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

@WebServlet("/update")
public class update extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private static SessionFactory factory;
    
    static {
        try {
            factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        } catch (Exception e) {
            e.printStackTrace();
            throw new ExceptionInInitializerError("SessionFactory initialization failed!");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");

        try (Session session = factory.openSession()) {
            register employee = session.createQuery("from register where email = :email", register.class)
                                       .setParameter("email", email)
                                       .uniqueResult();
            
            if (employee != null) {
                req.setAttribute("employee", employee);  // ✅ Correctly setting employee object
                req.getRequestDispatcher("updateForm.jsp").forward(req, resp);
            } else {
                resp.getWriter().println("Employee not found!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println("Error retrieving employee data.");
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            long mobileNumber = Long.parseLong(req.getParameter("mobilenumber"));
            
            try (Session session = factory.openSession()) {
                Transaction transaction = session.beginTransaction();
                register employee = session.get(register.class, id);
                
                if (employee != null) {
                    employee.setName(name);
                    employee.setEmail(email);
                    employee.setPassword(password);
                    employee.setMobilenumber(mobileNumber);
                    session.update(employee);
                    transaction.commit();
                    resp.sendRedirect("userdetails.jsp");
                } else {
                    resp.getWriter().println("Employee not found!");
                }
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            resp.getWriter().println("Invalid input format.");
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println("Error updating employee.");
        }
    }
}
