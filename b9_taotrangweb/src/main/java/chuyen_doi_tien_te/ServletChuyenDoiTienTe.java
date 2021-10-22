package chuyen_doi_tien_te;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "ServletChuyenDoiTienTe",urlPatterns = "/change")
public class ServletChuyenDoiTienTe extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
            double rate = Double.parseDouble(request.getParameter("rate"));
            double usd = Double.parseDouble(request.getParameter("usd"));
            double vnd = usd * rate;
            request.setAttribute("vnd", vnd);
            try {
                request.getRequestDispatcher("/chuyen_doi_tien_te/abc.jsp").forward(request, response);
            } catch (ServletException e) {
                System.out.println("eror");
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

    }



    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.getRequestDispatcher("/chuyen_doi_tien_te/abc.jsp").forward(request, response);
    }

}
