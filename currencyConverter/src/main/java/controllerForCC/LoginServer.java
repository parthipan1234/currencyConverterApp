package controllerForCC;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dataBaseManipulations.DataBaseManipulation;
import dtaTransferObject.User;
@WebServlet("/log")
public class LoginServer extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String email=req.getParameter("email");
      String pass=req.getParameter("password");
 DataBaseManipulation cc=new  DataBaseManipulation();
    
       try {
			User user=cc.loginValidation(email);
			if(user!=null) {
				if(user.getUserpassword().equals(pass)) {
			     resp.sendRedirect("main.jsp");
			     req.getSession().setAttribute("userlogin", user);
				}
				else {
					req.setAttribute("message","Password Worng");
					resp.sendRedirect("login.jsp");
				}
            }
		else {
			resp.sendRedirect("login.jsp");
		}
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    }

}
