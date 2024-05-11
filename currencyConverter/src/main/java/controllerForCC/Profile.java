package controllerForCC;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dtaTransferObject.User;

@WebServlet("/pro")
@MultipartConfig(maxFileSize = 10*1024*1024)
public class Profile extends HttpServlet{
     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	Part part=req.getPart("image");
        byte []image=part.getInputStream().readAllBytes();
        User user=(User)req.getSession().getAttribute("userlogin");
        user.setUserimage(image);
        resp.sendRedirect("main.jsp");
     }
}
