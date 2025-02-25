package employee;



import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;


@WebServlet("/delete")
public class delete extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email=req.getParameter("email");
	StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
	Metadata md=new MetadataSources(ssr).getMetadataBuilder().build();
	SessionFactory sf=md.buildSessionFactory();
	Session s=sf.openSession();
	Transaction t=s.beginTransaction();
	register reg = s.createQuery("from register where email = :email", register.class) .setParameter("email", email) .uniqueResult();

	   s.delete(reg);
	   
//	   List<register> li = s.createQuery("from register where email = :email", register.class)
//	              .setParameter("email", email)
//	              .list();
//
//	li.forEach(s::delete); 
	t.commit();
	resp.sendRedirect("success.jsp");

}
}