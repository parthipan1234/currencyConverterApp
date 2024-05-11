package controllerForCC;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dataBaseManipulations.DataBaseManipulation;
import dtaTransferObject.User;
@WebServlet("/signupdata")
@MultipartConfig(maxFileSize = 10*1024*1024)
public class SignUpServer  extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//	currencyconvertor.userfromcurrency;
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long contact = Long.parseLong(req.getParameter("contact"));
		String password = req.getParameter("password");
		
		Part imagePart = req.getPart("image");
		byte[] imagebytes = imagePart.getInputStream().readAllBytes();
		
		DataBaseManipulation dbm = new DataBaseManipulation();
		
		
		try {
			User user= new User(dbm.getUserId(), name, email, password,contact, imagebytes);
			int res = dbm.saveUser(user);
			if(res>0) {
				resp.sendRedirect("login.jsp");
				req.getSession().setAttribute("user", user);
			}else {
				resp.sendRedirect("signup.jsp");

			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	

}
