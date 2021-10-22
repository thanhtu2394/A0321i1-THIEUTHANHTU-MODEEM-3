package hien_thi_thoi_gian;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet(name = "ServletTime", urlPatterns="/index")
public class ServletTime extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter write=response.getWriter();
        write.println("<html>");
        write.println("<p>thanhtu</p>");
        Date todat=new Date();
        write.println("<p>"+todat+"</p>");
        write.println("</html>");

    }
}
