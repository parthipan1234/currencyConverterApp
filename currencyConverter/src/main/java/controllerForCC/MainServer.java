package controllerForCC;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import dataBaseManipulations.DataBaseManipulation;
@WebServlet("/main")
public class MainServer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double amount=Double.parseDouble(req.getParameter("amount"));
       
    	String fromCur=req.getParameter("sel1");
    	String toCur=req.getParameter("sel2");
        DataBaseManipulation cc=new  DataBaseManipulation();
       
       try {
		float big=cc.getApiRequest(amount, fromCur,toCur);
		req.getSession().setAttribute("result", big);
		req.getSession().setAttribute("from", fromCur);
		req.getSession().setAttribute("to", toCur);
		req.getSession().setAttribute("amount", amount);
		resp.sendRedirect("main.jsp");
		
	} catch (IOException | JSONException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
        
    }

}
