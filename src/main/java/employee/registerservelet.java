
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
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
@WebServlet("/register")
public class registerservelet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name=req.getParameter("name");
	String email=req.getParameter("email");
	String password=req.getParameter("password");
	long mobilenumber=Long.parseLong( req.getParameter("mobilenumber"));

	StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
	Metadata md=new MetadataSources(ssr).getMetadataBuilder().build();
	SessionFactory sf=md.buildSessionFactory();
	Session s=sf.openSession();
	Transaction t=s.beginTransaction();
	
	register reg=new register();
	reg.setName(name);
	reg.setEmail(email);
	reg.setPassword(password);
	reg.setMobilenumber(mobilenumber);
	
	s.save(reg);
	
	t.commit();
	System.out.println("sucessfilly inserted");
	resp.sendRedirect("success.jsp");
}


}

