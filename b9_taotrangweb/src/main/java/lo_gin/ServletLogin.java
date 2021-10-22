package lo_gin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletLogin",urlPatterns = "/login")
public class ServletLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 String use= request.getParameter("use");
 String pass= request.getParameter("pass");
 if("admin".equals(use)&&"admin".equals(pass)){
     String a="chao mung den voi xxx";
     request.setAttribute("comment",a);
 }else{
     String b= "cut";
     request.setAttribute("comment",b);
 }
 request.getRequestDispatcher("login.jsp").forward(request,response);
    }
}
